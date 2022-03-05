import 'package:flutter/material.dart';
import 'package:local/shared_preferences_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Local Storage")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                SharedPreferencesService prefs = SharedPreferencesService();
                await prefs.saveData();
                debugPrint("Done");
              },
              child: const Text("Save Data"),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                SharedPreferencesService prefs = SharedPreferencesService();
                final name = await prefs.getName();
                final age = await prefs.getAge();
                debugPrint(name);
                debugPrint(age.toString());
              },
              child: const Text("Read Data"),
            ),
          ],
        ),
      ),
    );
  }
}
