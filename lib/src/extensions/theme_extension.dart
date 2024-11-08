import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  InputDecorationTheme get inputDecorationTheme =>
      Theme.of(this).inputDecorationTheme;
}
