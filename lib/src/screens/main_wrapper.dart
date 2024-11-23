import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vocavoca/src/di/di.dart';
import 'package:vocavoca/src/routes/router.dart';

@RoutePage()
class MainWrapperScreen extends StatefulWidget {
  const MainWrapperScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainWrapperScreen> {
  StreamSubscription<Uri>? _linkSubscription;

  @override
  void initState() {
    super.initState();
    initDeepLinks();
  }

  Future<void> initDeepLinks() async {
    final appLinks = getIt<AppLinks>();

    _linkSubscription = appLinks.uriLinkStream.listen((uri) {
      if (uri.host == "confirmation") {
        if (!mounted) {
          return;
        }
      }
    });
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
