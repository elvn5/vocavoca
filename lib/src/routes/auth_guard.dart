import 'package:auto_route/auto_route.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vocavoca/src/routes/router.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard({
    required this.supabaseClient,
  });

  final SupabaseClient supabaseClient;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final isAuthenticated = supabaseClient.auth.currentSession != null;

    if (isAuthenticated) {
      resolver.next(true);
    } else {
      resolver.redirect(
        LoginRoute(),
      );
    }
  }
}
