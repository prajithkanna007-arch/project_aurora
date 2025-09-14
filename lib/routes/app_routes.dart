import 'package:flutter/material.dart';
import 'package:track_management_3/screens/reports_screen.dart';
import 'package:track_management_3/screens/settings_screen.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/signup_screen.dart';
import '../screens/home_screen.dart';
import '../screens/alerts_screen.dart';

class AppRoutes {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String alerts = '/alerts';
  static const String reports = '/reports';
  static const String settings = '/settings';

  static Map<String, WidgetBuilder> routes = {
    login: (context) => LoginScreen(),
    signup: (context) => SignupScreen(),
    home: (context) => HomeScreen(),
    alerts: (context) => AlertsScreen(),
    reports: (context) => ReportsScreen(),
    settings: (context) => SettingsScreen(),
  };
}
