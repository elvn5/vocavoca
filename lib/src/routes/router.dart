import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:vocavoca/src/routes/auth_guard.dart';
import 'package:vocavoca/src/screens/screens.dart';
import 'package:vocavoca/src/models/models.dart';
import 'package:vocavoca/src/services/services.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: EmailConfirmationRoute.page),

        // Bottom Navigation Bar
        AutoRoute(page: HomeRoute.page, initial: true, guards: [
          AuthGuard(
            supabaseClient: supabaseService,
          ),
        ], children: [
          AutoRoute(page: VocaVocaRoute.page, initial: true),
          AutoRoute(page: AchievementsRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),

        // VocaGame
        AutoRoute(page: VocaGameRoute.page)
      ];
}
