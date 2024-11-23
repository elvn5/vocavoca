// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AchievementsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AchievementsScreen(),
      );
    },
    EmailConfirmationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmailConfirmationScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MainWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<MainWrapperRouteArgs>(
          orElse: () => const MainWrapperRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MainWrapperScreen(key: args.key),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegisterScreen(key: args.key),
      );
    },
    VocaGameRoute.name: (routeData) {
      final args = routeData.argsAs<VocaGameRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VocaGameScreen(
          key: args.key,
          questions: args.questions,
          theme: args.theme,
        ),
      );
    },
    VocaVocaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VocaVocaScreen(),
      );
    },
  };
}

/// generated route for
/// [AchievementsScreen]
class AchievementsRoute extends PageRouteInfo<void> {
  const AchievementsRoute({List<PageRouteInfo>? children})
      : super(
          AchievementsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AchievementsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EmailConfirmationScreen]
class EmailConfirmationRoute extends PageRouteInfo<void> {
  const EmailConfirmationRoute({List<PageRouteInfo>? children})
      : super(
          EmailConfirmationRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmailConfirmationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainWrapperScreen]
class MainWrapperRoute extends PageRouteInfo<MainWrapperRouteArgs> {
  MainWrapperRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MainWrapperRoute.name,
          args: MainWrapperRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MainWrapperRoute';

  static const PageInfo<MainWrapperRouteArgs> page =
      PageInfo<MainWrapperRouteArgs>(name);
}

class MainWrapperRouteArgs {
  const MainWrapperRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MainWrapperRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<RegisterRouteArgs> page =
      PageInfo<RegisterRouteArgs>(name);
}

class RegisterRouteArgs {
  const RegisterRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key}';
  }
}

/// generated route for
/// [VocaGameScreen]
class VocaGameRoute extends PageRouteInfo<VocaGameRouteArgs> {
  VocaGameRoute({
    Key? key,
    required List<Question> questions,
    required String theme,
    List<PageRouteInfo>? children,
  }) : super(
          VocaGameRoute.name,
          args: VocaGameRouteArgs(
            key: key,
            questions: questions,
            theme: theme,
          ),
          initialChildren: children,
        );

  static const String name = 'VocaGameRoute';

  static const PageInfo<VocaGameRouteArgs> page =
      PageInfo<VocaGameRouteArgs>(name);
}

class VocaGameRouteArgs {
  const VocaGameRouteArgs({
    this.key,
    required this.questions,
    required this.theme,
  });

  final Key? key;

  final List<Question> questions;

  final String theme;

  @override
  String toString() {
    return 'VocaGameRouteArgs{key: $key, questions: $questions, theme: $theme}';
  }
}

/// generated route for
/// [VocaVocaScreen]
class VocaVocaRoute extends PageRouteInfo<void> {
  const VocaVocaRoute({List<PageRouteInfo>? children})
      : super(
          VocaVocaRoute.name,
          initialChildren: children,
        );

  static const String name = 'VocaVocaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
