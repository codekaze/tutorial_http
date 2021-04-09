import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final defaultFontFamily = GoogleFonts.roboto();

final ThemeData appThemeData = ThemeData(
  primaryColor: Colors.white,
  accentColor: Colors.white,
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: defaultFontFamily.fontFamily,
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 72.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  appBarTheme: AppBarTheme(
    elevation: 2.0,
    shadowColor: Colors.grey[50],
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
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: theme.mainColor,
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

  //Radius
  double smallCircularRadius = 8.0;
  double mediumCircularRadius = 16.0;
  double largeCircularRadius = 32.0;

  BorderRadiusGeometry get smallRadius {
    return BorderRadius.all(Radius.circular(smallCircularRadius));
  }

  BorderRadiusGeometry get mediumRadius {
    return BorderRadius.all(Radius.circular(mediumCircularRadius));
  }

  BorderRadiusGeometry get largeRadius {
    return BorderRadius.all(Radius.circular(largeCircularRadius));
  }

  //Height
  double get smallHeight {
    return 48;
  }

  double get mediumHeight {
    return 52;
  }

  double get largeHeight {
    return 56;
  }

  //Shadow
  normalShadow(Color color) {
    return [
      BoxShadow(
        color: color.withOpacity(0.4),
        blurRadius: 6.0,
        spreadRadius: 4,
      ),
    ];
  }

  //Padding
  EdgeInsetsGeometry get normalPadding {
    return EdgeInsets.all(10.0);
  }

  EdgeInsetsGeometry get mediumPadding {
    return EdgeInsets.all(16.0);
  }

  EdgeInsetsGeometry get largePadding {
    return EdgeInsets.all(20.0);
  }

  //Border
  BoxBorder get defaultBorder {
    return Border.all(
      width: 1.0,
      color: Colors.grey[300],
    );
  }
}

var theme = ApplicationTheme();
