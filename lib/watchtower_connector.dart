// Package imports:
import 'package:async/async.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/service_api.dart' as grpc_services_api;

// Project imports:
import 'package:watchtower_sdk/watchtower_logger.dart';
import 'package:watchtower_sdk/watchtower_proto/proto/server.pbgrpc.dart';

var logger = getLogger("watchtower_connector");

class WatchtowerConnector {
  final String host;
  final int port;
  final bool useTls;
  final int pingInetrval;
  final Function(bool state)? onConnectionStateChanged;

  bool isGrpcChannelReady = false;
  late WatchTowerApiClient stub;
  late RestartableTimer pingTimer;

  WatchtowerConnector(
      {this.host = '127.0.0.1',
      this.port = 8008,
      this.useTls = false,
      this.pingInetrval = 5,
      this.onConnectionStateChanged});

  Future<void> createChannel() async {
    logger.d("Create watchtower connection");
    final channel = ClientChannel(
      host,
      port: port,
      options: ChannelOptions(
        credentials: useTls
            ? ChannelCredentials.secure(
                onBadCertificate: (certificate, host) {
                  logger.e("Certificate validation error");
                  logger.e("Certificate $certificate");
                  logger.e("Certificate $host");
                  return false;
                },
              )
            : const ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
    _monitorChannelState(channel);
    channel.createConnection();
    stub = _createStub(channel);

    pingTimer = RestartableTimer(Duration(seconds: pingInetrval), () {
      try {
        stub.ping(PingRequest());
      } catch (e) {
        logger.w("Watchtower ping error: $e");
      }
    });
    pingTimer.cancel();
  }

  WatchTowerApiClient _createStub(grpc_services_api.ClientChannel channel) {
    return WatchTowerApiClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> _monitorChannelState(ClientChannel channel) async {
    await for (var state in channel.onConnectionStateChanged) {
      logger.d("Connection state: $state, ${state.name}");
      // Couldn't find the needed import, so had to compare with the string value
      if (state.name == "idle") {
        isGrpcChannelReady = false;
        logger.d('Reset ping timer');
        pingTimer.reset();
      } else if (state.name == "ready") {
        isGrpcChannelReady = true;
        logger.d('Cancel ping timer');
        pingTimer.reset();
      }
      if (onConnectionStateChanged != null) {
        onConnectionStateChanged!(isGrpcChannelReady);
      }
    }
  }

  void pingWatchtower() {}
}
