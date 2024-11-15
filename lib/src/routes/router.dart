import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:vocavoca/src/screens/screens.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // Login & Sign-Up
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),

        // Bottom Navigation Bar
        AutoRoute(page: HomeRoute.page, initial: true, children: [
          AutoRoute(page: VocaVocaRoute.page, initial: true),
          AutoRoute(page: AchievementsRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),

        // VocaGame
        AutoRoute(page: VocaGameRoute.page)
      ];
}
