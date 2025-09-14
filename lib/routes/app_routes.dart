import 'package:flutter/material.dart';
import '../screens/auth/login_screen.dart';
import '../screens/alert_feed/alert_feed_page.dart'; // new file
import '../screens/auth/signup_screen.dart'; // if exists

class AppRoutes {
  static const login = '/login';
  static const home = '/home';
  static const signup = '/signup';

  static Map<String, WidgetBuilder> routes = {
    login: (context) => LoginScreen(),
    home: (context) => AlertFeedPage(),
    signup: (context) => SignupScreen(), // create if not already
  };
}
