import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  final List<Map<String, String>> mockReports = [
    {"title": "Inspection Report - Track A1", "status": "Pending"},
    {"title": "Maintenance Report - Track B2", "status": "Completed"},
    {"title": "Inspection Report - Track C3", "status": "In Progress"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reports")),
      body: ListView.builder(
        itemCount: mockReports.length,
        itemBuilder: (context, index) {
          final report = mockReports[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: Icon(Icons.assignment, color: Colors.green),
              title: Text(report["title"]!),
              subtitle: Text("Status: ${report["status"]}"),
            ),
          );
        },
      ),
    );
  }
}
