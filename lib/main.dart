return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Aurora: Track Wellness',
  initialRoute: AppRoutes.login,
  routes: AppRoutes.routes,
  theme: ThemeData(
    primaryColor: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.grey[100],
    fontFamily: 'Roboto',
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.deepPurple,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  ),
);
