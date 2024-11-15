import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    toolbarHeight: 100.h,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.0),
        // Border radius
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 12.0.h,
      ), // Padding
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.0),
        // Border radius
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 12.0.h,
      ), // Padding
    ),
  ),
  useMaterial3: true,
  textTheme: TextTheme(
    titleLarge: TextStyle(fontFamily: "Roboto", fontSize: 22.sp),
    titleMedium: TextStyle(fontFamily: "Roboto", fontSize: 18.sp),
    labelLarge: TextStyle(fontFamily: "Roboto", fontSize: 14.sp),
    bodyMedium: TextStyle(fontFamily: "Roboto", fontSize: 10.sp),
    bodySmall: TextStyle(fontFamily: "Roboto", fontSize: 8.sp),
  ),
);
