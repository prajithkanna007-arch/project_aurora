import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"), // ✅ Only appears in Reports page
      ),
      body: Center(
        child: Text(
          "Settings Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
