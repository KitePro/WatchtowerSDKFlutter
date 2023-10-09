import 'package:flutter/material.dart';
import 'package:watchtower_sdk/watchtower_sdk.dart';

class CustomEventWidget extends StatelessWidget {
  CustomEventWidget({super.key});

  final _customNameController = TextEditingController();
  final _customDataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  children: const [
                    Text(
                      "Custom event",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: TextFormField(
                  controller: _customNameController,
                  decoration: const InputDecoration(
                    labelText: "Name",
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
                  controller: _customDataController,
                  decoration: const InputDecoration(
                    labelText: "Data",
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Fill this field";
                    }
                    return null;
                  },
                ),
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () async {
                      Watchtower.sendCustomEvent(
                          name: _customNameController.text,
                          data: _customDataController.text);
                    },
                    child: const Text("Send"),
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
