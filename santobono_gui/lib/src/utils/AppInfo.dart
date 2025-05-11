import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppInfo {
  static const String appName = "MyApp";
  static const String appVersion = "1.0.0";
  static const String apiBaseUri = "https://api.example.com";
  static final ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.white,

    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      foregroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Color.fromARGB(255, 20, 62, 107),
      ),
      iconTheme: IconThemeData(color: Color.fromARGB(255, 20, 62, 107)),
    ),

    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,
      onPrimary: Colors.white,
      primary: Color.fromRGBO(173, 20, 83, 1),
      secondary: Color.fromARGB(255, 20, 62, 107),
    ),

    /*buttonTheme: const ButtonThemeData(

      textTheme: ButtonTextTheme.primary,
    ),*/
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    ),

    useMaterial3: true,
  );
}
