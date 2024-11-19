import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  double get topPadding => MediaQuery.of(this).padding.top;
}
