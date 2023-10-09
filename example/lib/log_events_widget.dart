import 'package:flutter/material.dart';
import 'package:watchtower_sdk/watchtower_sdk.dart';
import 'package:logger/logger.dart';

class LogEventWidget extends StatelessWidget {
  LogEventWidget({super.key});

  final _messageController = TextEditingController();
  final _moduleNameController = TextEditingController()
    ..text = "log_events_widget.dart";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Text(
                      "Log event",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: TextFormField(
                  controller: _moduleNameController,
                  decoration: const InputDecoration(
                    labelText: "Module name",
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Fill this field";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: TextFormField(
                  controller: _messageController,
                  decoration: const InputDecoration(
                    labelText: "Message",
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Fill this field";
                    }
                    return null;
                  },
                ),
              ),
              Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16, bottom: 16),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () async {
                        Watchtower.sendLogEvent(
                            level: Level.debug,
                            moduleName: _moduleNameController.text,
                            message: _messageController.text);
                      },
                      child: const Text("Send Debug"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, bottom: 16),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.blue,
                      ),
                      onPressed: () async {
                        Watchtower.sendLogEvent(
                            level: Level.info,
                            moduleName: _moduleNameController.text,
                            message: _messageController.text);
                      },
                      child: const Text("Send Info"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, bottom: 16),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.orange,
                      ),
                      onPressed: () async {
                        Watchtower.sendLogEvent(
                            level: Level.warning,
                            moduleName: _moduleNameController.text,
                            message: _messageController.text);
                      },
                      child: const Text("Send Warning"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, bottom: 16),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.red,
                      ),
                      onPressed: () async {
                        Watchtower.sendLogEvent(
                            level: Level.error,
                            moduleName: _moduleNameController.text,
                            message: _messageController.text);
                      },
                      child: const Text("Send Error"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, bottom: 16),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.purple,
                      ),
                      onPressed: () async {
                        Watchtower.sendLogEvent(
                            moduleName: _moduleNameController.text,
                            message: _messageController.text);
                      },
                      child: const Text("Send Unknow"),
                    ),
                  ),
                  // sendOpenLinkEvent({required String uri, int? responseCode, String? responseText}) async {
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
