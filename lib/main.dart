import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vocavoca/src/di/di.dart';
import 'package:vocavoca/src/routes/router.dart';
import 'package:vocavoca/src/utils/utils.dart';

void main() async {
  // Init OS native functions
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  // Load env variables
  await dotenv.load();

  // Init supabase instance
  String supabaseUrl = dotenv.env['SUPABASE_URL'] ?? '';
  String supabaseKey = dotenv.env['SUPABASE_ANON_KEY'] ?? '';

  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseKey,
  );
  // Setup DI with GetIt
  setupDi();
  // Init localization
  await EasyLocalization.ensureInitialized();

  // Set preffered orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await Future.delayed(const Duration(milliseconds: 150));

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale("en"),
        Locale("ru"),
      ],
      path: "assets/translations",
      fallbackLocale: const Locale("en"),
      assetLoader: const YamlAssetLoader(),
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  final _router = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 892),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          theme: lightTheme,
          routerConfig: _router.config(deepLinkBuilder: (deepLink) {
            if (deepLink.uri.host == "confirmation") {
              return DeepLink([EmailConfirmationRoute()]);
            }
            return DeepLink.defaultPath;
          }),
        );
      },
    );
  }
}
