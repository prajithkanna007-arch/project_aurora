import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: GridView.count(
        padding: EdgeInsets.all(5),
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: [
          _buildCard(context, "Track Alerts", Icons.warning, AppRoutes.alerts),
          _buildCard(context, "Reports", Icons.assignment, AppRoutes.reports),
          _buildCard(context, "Settings", Icons.settings, AppRoutes.settings),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, IconData icon, String route) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon, size: 15, color: Colors.blue),
            SizedBox(height: 5),
            Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
