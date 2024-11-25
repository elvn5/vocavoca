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
      final args = routeData.argsAs<AchievementsRouteArgs>(
          orElse: () => const AchievementsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AchievementsScreen(key: args.key),
      );
    },
    EmailConfirmationRoute.name: (routeData) {
      final args = routeData.argsAs<EmailConfirmationRouteArgs>(
          orElse: () => const EmailConfirmationRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EmailConfirmationScreen(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeScreen(key: args.key),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginScreen(key: args.key),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileScreen(key: args.key),
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
      final args = routeData.argsAs<VocaVocaRouteArgs>(
          orElse: () => const VocaVocaRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VocaVocaScreen(key: args.key),
      );
    },
  };
}

/// generated route for
/// [AchievementsScreen]
class AchievementsRoute extends PageRouteInfo<AchievementsRouteArgs> {
  AchievementsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AchievementsRoute.name,
          args: AchievementsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AchievementsRoute';

  static const PageInfo<AchievementsRouteArgs> page =
      PageInfo<AchievementsRouteArgs>(name);
}

class AchievementsRouteArgs {
  const AchievementsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AchievementsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [EmailConfirmationScreen]
class EmailConfirmationRoute extends PageRouteInfo<EmailConfirmationRouteArgs> {
  EmailConfirmationRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          EmailConfirmationRoute.name,
          args: EmailConfirmationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EmailConfirmationRoute';

  static const PageInfo<EmailConfirmationRouteArgs> page =
      PageInfo<EmailConfirmationRouteArgs>(name);
}

class EmailConfirmationRouteArgs {
  const EmailConfirmationRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'EmailConfirmationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<LoginRouteArgs> page = PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<ProfileRouteArgs> page =
      PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key}';
  }
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
class VocaVocaRoute extends PageRouteInfo<VocaVocaRouteArgs> {
  VocaVocaRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          VocaVocaRoute.name,
          args: VocaVocaRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'VocaVocaRoute';

  static const PageInfo<VocaVocaRouteArgs> page =
      PageInfo<VocaVocaRouteArgs>(name);
}

class VocaVocaRouteArgs {
  const VocaVocaRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'VocaVocaRouteArgs{key: $key}';
  }
}
