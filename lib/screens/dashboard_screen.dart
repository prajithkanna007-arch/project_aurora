import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); // ✅ GlobalKey
  String selectedDrawer = "notifications"; // default drawer

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // ✅ Attach key to Scaffold
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text("Dashboard",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        actions: [
          Row(
            children: [
              _buildActionButton(
                Icons.train_outlined,
                "Notifications",
                Colors.lightBlueAccent,
                "notifications",
              ),
              SizedBox(width: 10),
              _buildActionButton(
                Icons.directions_car,
                "Rover",
                Colors.greenAccent,
                "rover",
              ),
              SizedBox(width: 10),
              _buildActionButton(
                Icons.sensors,
                "Sensors",
                Colors.orangeAccent,
                "sensors",
              ),
              SizedBox(width: 10),
            ],
          ),
        ],
      ),

      /// ✅ Single Drawer but shows different content
      endDrawer: Drawer(
        backgroundColor: Colors.black,
        child: selectedDrawer == "notifications"
            ? _buildNotifications()
            : selectedDrawer == "rover"
                ? _buildRoverNotifications()
                : _buildSensorNotifications(),
      ),

      body: _buildDashboard(),
    );
  }

  /// ✅ Reusable AppBar Action Button
  Widget _buildActionButton(
      IconData icon, String label, Color color, String drawerKey) {
    return TextButton.icon(
      icon: Icon(icon, color: color, size: 20),
      label: Text(label, style: TextStyle(color: color)),
      onPressed: () {
        setState(() => selectedDrawer = drawerKey);
        _scaffoldKey.currentState?.openEndDrawer(); // ✅ Opens Drawer
      },
    );
  }

  // ✅ Dashboard Body
  Widget _buildDashboard() {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(16),
      children: [
        _buildCard("Rover Map", Icons.map, Colors.blue),
      ],
    );
  }

  // ✅ Notifications Drawer
  Widget _buildNotifications() {
    return _drawerBox(
      "Notifications",
      Icons.notifications,
      Colors.lightBlueAccent,
      [
        "Track A1 inspection pending",
        "Delay on Line C3",
        "Maintenance scheduled B2",
      ],
    );
  }

  // ✅ Rover Drawer
  Widget _buildRoverNotifications() {
    return _drawerBox(
      "Rover Status",
      Icons.directions_car,
      Colors.greenAccent,
      [
        "Rover online",
        "Battery: 78%",
        "Sensors calibrated",
      ],
    );
  }

  // ✅ Sensors Drawer
  Widget _buildSensorNotifications() {
    return _drawerBox(
      "Sensor Readings",
      Icons.sensors,
      Colors.orangeAccent,
      [
        "Temperature: 26°C",
        "Pressure: 101 kPa",
        "Vibration levels normal",
      ],
    );
  }

  // ✅ Reusable drawer style
  Widget _drawerBox(
      String title, IconData icon, Color color, List<String> items) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black54, blurRadius: 8, offset: Offset(2, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Icon(icon, color: color, size: 22),
            SizedBox(width: 8),
            Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ]),
          Divider(color: Colors.white54),
          Expanded(
            child: ListView(
              children: items
                  .map((msg) => ListTile(
                        leading: Icon(Icons.arrow_right, color: Colors.white),
                        title: Text(msg,
                            style: TextStyle(color: Colors.white70)),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  // ✅ Card Helper
  Widget _buildCard(String title, IconData icon, Color color) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 40, color: color),
            SizedBox(height: 10),
            Text(title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
