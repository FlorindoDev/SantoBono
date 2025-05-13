import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppInfo {
  static const String appName = "MyApp";
  static const String logoPath = "assets/images/LogoSantobonoCurve.svg";
  static const String appVersion = "1.0.0";
  static const String apiBaseUri = "https://api.example.com";

  static SvgPicture SvgIcon(
    Color color,
    double width,
    double height,
    String asset,
  ) {
    return SvgPicture.asset(
      asset,
      width: width,
      height: height,
      fit: BoxFit.cover,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }

  static final ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.white,

    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      foregroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
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

    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color.fromARGB(255, 20, 62, 107),
      ),

      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Color.fromARGB(255, 20, 62, 107),
      ),

      bodySmall: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: Color.fromARGB(255, 20, 62, 107),
      ),

      titleSmall: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(173, 20, 83, 1), // Colore marrone scuro
      ),

      titleMedium: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(173, 20, 83, 1), // Colore marrone scuro
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    ),

    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Color.fromARGB(255, 20, 62, 107),
      indicatorColor: Color.fromRGBO(173, 20, 83, 1),
      labelTextStyle: MaterialStateProperty.all(
        TextStyle(color: Colors.white, fontSize: 14),
      ),
    ),

    useMaterial3: true,
  );
}
