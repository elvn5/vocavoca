import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:vocavoca/src/screens/screens.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: HomeRoute.page, children: [
          AutoRoute(page: VocaVocaRoute.page, initial: true),
          AutoRoute(page: AchievementsRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ])
      ];
}
