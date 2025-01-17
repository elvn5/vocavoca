import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:vocavoca/src/widgets/in_development.dart';

@RoutePage()
class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: InDevelopment(),
    );
  }
}
