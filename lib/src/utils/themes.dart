import 'package:flutter/material.dart';
import 'package:vocavoca/src/utils/theme_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData lightTheme = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    fillColor: Colors.red,
  ),
  brightness: Brightness.light,
  scaffoldBackgroundColor: scaffoldBackgroundColor,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    toolbarHeight: 100.h,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: true,
      selectedItemColor: primaryColor,
      unselectedItemColor: secondaryColor,
      selectedLabelStyle: TextStyle(
        color: primaryColor,
        fontFamily: "zenMaruGothic",
        fontSize: 11.sp,
        fontWeight: FontWeight.w400,
      ),
      unselectedLabelStyle: TextStyle(
        color: secondaryColor,
        fontFamily: "zenMaruGothic",
        fontSize: 11.sp,
        fontWeight: FontWeight.w400,
      ),
      selectedIconTheme: const IconThemeData(
        color: primaryColor,
      )),
  unselectedWidgetColor: grey200,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: white,
    secondary: secondaryColor,
    onSecondary: white,
    error: Colors.redAccent,
    onError: white,
    surface: white,
    onSurface: Color(0xFF241E30),
  ),
  useMaterial3: true,
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontFamily: "Roboto"),
    titleMedium: TextStyle(fontFamily: "Roboto"),
    bodyLarge: TextStyle(fontFamily: "Roboto"),
    bodyMedium: TextStyle(fontFamily: "Roboto"),
    bodySmall: TextStyle(fontFamily: "Roboto"),
  ),
);
