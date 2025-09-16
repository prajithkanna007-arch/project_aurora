import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double? height;
  final double? width;

  const AppLogo({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/track.jpg', // ✅ Replace with your logo path
      height: height ?? 40,
      width: width,
    );
  }
}
