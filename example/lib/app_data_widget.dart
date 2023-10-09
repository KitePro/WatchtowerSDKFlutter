import 'package:flutter/material.dart';
import 'package:watchtower_sdk/watchtower_sdk.dart';

class AppDataWidget extends StatelessWidget {
  AppDataWidget({super.key});
  final _importFormKey = GlobalKey<FormState>();
  final _appIdController = TextEditingController();
  final _appBundleController = TextEditingController();
  final _appKeyController = TextEditingController();
  final _appVersionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _importFormKey,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 32, left: 32, right: 32),
            child: FutureBuilder(
              initialData: false,
              future: _waitAppDataInit(),
              builder: (context, snapshot) => snapshot.requireData
                  ? Builder(builder: (context) {
                      _appIdController.text = Watchtower.appData.appId;
                      _appBundleController.text = Watchtower.appData.appBundle;
                      _appKeyController.text = Watchtower.appData.appKey;
                      _appVersionController.text = Watchtower.appData.appVersion;
                      return Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                "Application data",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              )
                            ],
                          ),
                          TextFormField(
                            controller: _appIdController,
                            readOnly: true,
                            decoration: const InputDecoration(
                              labelText: "App ID",
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return "Fill this field";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: _appBundleController,
                            readOnly: true,
                            decoration: const InputDecoration(
                              labelText: "App Bundle",
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return "Fill this field";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: _appKeyController,
                            readOnly: true,
                            decoration: const InputDecoration(
                              labelText: "App Key",
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return "Fill this field";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: _appVersionController,
                            readOnly: true,
                            decoration: const InputDecoration(
                              labelText: "App Version",
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return "Fill this field";
                              }
                              return null;
                            },
                          ),
                        ],
                      );
                    })
                  : const CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _waitAppDataInit() async {
    while (!Watchtower.isInitDone) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    return true;
  }
}
