import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  final List<String> mockAlerts = [
    "Track section A1 requires inspection.",
    "Maintenance scheduled for track B2 at 10:00 AM.",
    "Alert: Train delay on line C3 due to signal issue.",
    "Track D4 cleared after inspection.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Real-Time Track Alerts")),
      body: ListView.builder(
        itemCount: mockAlerts.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: Icon(Icons.warning, color: Colors.red,),
              title: Text(mockAlerts[index],
              style: TextStyle
              (
                color: Colors.black,
              ))
            ),
          );
        },
      ),
    );
  }
}
