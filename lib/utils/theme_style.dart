import 'package:flutter/material.dart';
import 'package:mini_zoo/utils/app_color.dart';

class ThemeStyle {

  static ThemeData lightTheme() {
    return ThemeData(
      // Define the default brightness and colors.
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue[800],
      primarySwatch: Colors.blue,


      // Define the default font family.
      fontFamily: 'Georgia',

      // Define the default `TextTheme`. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      // Define the default font family.
      fontFamily: 'Georgia',
      // Define the default `TextTheme`. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    );
  }

}