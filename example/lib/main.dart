import 'package:flutter/material.dart';
// ==========================================================
import 'package:watchtower_sdk/watchtower_sdk.dart';

import 'package:watchtower_sdk_app/app_data_widget.dart';
import 'package:watchtower_sdk_app/sdk_actions_widget.dart';
import 'package:watchtower_sdk_app/user_data.dart';
import 'package:watchtower_sdk_app/uri_events_widget.dart';
import 'package:watchtower_sdk_app/custom_events_widget.dart';
import 'package:watchtower_sdk_app/log_events_widget.dart';
import 'package:watchtower_sdk_app/config.dart';
import 'package:logger/logger.dart';

import 'dart:typed_data';

Logger logger = Watchtower.getWatchtoweLogger("main");

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watchtower Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.blue,
      ),
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Watchtower'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Uint8List? screenShot;
  GlobalKey repaintBoundary = GlobalKey();

  @override
  void initState() {
    super.initState();
    logger.i("Application init");

    Watchtower.init(
      appId: appId,
      appKey: appKey,
      repaintBoundary: repaintBoundary,
      enableSessionRecorder: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: repaintBoundary,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SDKActionsWidget(),
              AppDataWidget(),
              UserData(),
              UriEventWidget(),
              CustomEventWidget(),
              LogEventWidget(),
              Container(
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                  ),
                  child: screenShot != null ? Image.memory(screenShot!) : Container())
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.info),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("User info"),
                      content: Text("User ID: ${Watchtower.userAppData.userId}"),
                    );
                  });
            }),
      ),
    );
  }
}
