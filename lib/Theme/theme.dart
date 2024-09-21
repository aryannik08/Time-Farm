import 'package:flutter/material.dart';
import 'package:spotify/Theme/color.dart';

ThemeData lightTheme() {
  return ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedIconTheme: IconThemeData(size: 25, color: Colors.grey),
      selectedIconTheme: IconThemeData(color: Color(0xff4839fd),size: 25),
      selectedLabelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 10),
      unselectedLabelStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 10),
      type: BottomNavigationBarType.fixed,
    ),
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: onPrimaryColor,
          secondary: secondaryColor,
          onSecondary: onSecondaryColor,
          error: errorColor,
          onError: onErrorColor,
          surface: surfaceColor,
          onSurface: onSurfaceColor),
      fontFamily: 'Product Sans');
}
