import 'package:flutter/material.dart';
import 'package:watchtower_sdk/watchtower_sdk.dart';

class SDKActionsWidget extends StatelessWidget {
  const SDKActionsWidget({super.key});
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
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Text(
                      "SDK Actions",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.red,
                      ),
                      onPressed: () async {
                        await Watchtower.clearData();
                      },
                      child: const Text("Clear SDK data"),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () async {
                      await Watchtower.sendAppStartEvent();
                    },
                    child: const Text("App start"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
