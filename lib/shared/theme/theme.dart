import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: Colors.blueAccent,
  accentColor: Colors.blue,
  backgroundColor: Colors.red,
  scaffoldBackgroundColor: Colors.blue[50],
  fontFamily: GoogleFonts.chango().fontFamily,
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 72.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  appBarTheme: AppBarTheme(
    elevation: 0.1,
    color: Colors.white,
    iconTheme: IconThemeData(
      color: theme.textColor,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: theme.textColor,
      ),
      headline2: TextStyle(
        color: theme.textColor,
      ),
      headline3: TextStyle(
        color: theme.textColor,
      ),
      headline4: TextStyle(
        color: theme.textColor,
      ),
      headline5: TextStyle(
        color: theme.textColor,
      ),
      headline6: TextStyle(
        color: theme.textColor,
      ),
    ),
  ),
);

class ApplicationTheme {
  Color get mainColor {
    return Colors.green[400];
  }

  Color get appBarColor {
    return Colors.white;
  }

  Color get textColor {
    return Colors.grey[800];
  }

  Color get inactiveColor {
    return Colors.grey[600];
  }

  Color get success {
    return Colors.green;
  }

  Color get danger {
    return Colors.red;
  }

  Color get warning {
    return Colors.orange;
  }

  Color get info {
    return Colors.blue;
  }

  Color get primary {
    return Colors.grey[900];
  }

  Color get disabled {
    return Colors.grey[300];
  }
}

var theme = ApplicationTheme();
