import 'package:flutter/material.dart';

class GlobalTheme {
  static ThemeData lighttheme = ThemeData(
    brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      secondaryHeaderColor: Colors.teal,
      appBarTheme: AppBarTheme(
        color: Colors.blue.shade200,
      ),
      primaryColor: Colors.grey,
      textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 28),
          titleMedium: TextStyle(fontSize: 22))
  );
  static ThemeData darktheme = ThemeData(
    scaffoldBackgroundColor: Colors.black38,
    brightness: Brightness.dark,
      primaryColor: Colors.teal,
      secondaryHeaderColor: Colors.grey,
      appBarTheme: AppBarTheme(
        color: Colors.lightGreen.shade400,
      ),
      textTheme: TextTheme(

          titleLarge: TextStyle(
              fontSize: 22
          ),
          titleMedium: TextStyle(
            fontSize: 28,
          )
      )
  );
}
