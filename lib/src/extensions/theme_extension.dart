import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  InputDecorationTheme get inputDecorationTheme =>
      Theme.of(this).inputDecorationTheme;

  Color get primaryColor => Theme.of(this).primaryColor;
}
