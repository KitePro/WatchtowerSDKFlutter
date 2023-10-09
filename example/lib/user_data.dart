import 'package:flutter/material.dart';
import 'package:watchtower_sdk/watchtower_sdk.dart';

class UserData extends StatelessWidget {
  final _gaidController = TextEditingController();
  final _oaidController = TextEditingController();
  final _idfaController = TextEditingController();
  final _fcmController = TextEditingController();
  final _hmsController = TextEditingController();

  UserData({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 32, left: 32, right: 32),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "User data",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )
                ],
              ),
              TextFormField(
                controller: _gaidController,
                decoration: const InputDecoration(
                  labelText: "GAID",
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Fill this field";
                  }
                  return null;
                },
                onChanged: (value) {
                  Watchtower.updateUserAppData(gaid: value);
                },
              ),
              TextFormField(
                controller: _oaidController,
                decoration: const InputDecoration(
                  labelText: "OAID",
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Fill this field";
                  }
                  return null;
                },
                onChanged: (value) {
                  Watchtower.updateUserAppData(oaid: value);
                },
              ),
              TextFormField(
                controller: _idfaController,
                decoration: const InputDecoration(
                  labelText: "IDFA",
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Fill this field";
                  }
                  return null;
                },
                onChanged: (value) {
                  Watchtower.updateUserAppData(idfa: value);
                },
              ),
              TextFormField(
                controller: _fcmController,
                decoration: const InputDecoration(
                  labelText: "FCM",
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Fill this field";
                  }
                  return null;
                },
                onChanged: (value) {
                  Watchtower.updateUserAppData(fcmToken: value);
                },
              ),
              TextFormField(
                controller: _hmsController,
                decoration: const InputDecoration(
                  labelText: "HMS",
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Fill this field";
                  }
                  return null;
                },
                onChanged: (value) {
                  Watchtower.updateUserAppData(hmsToken: value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
