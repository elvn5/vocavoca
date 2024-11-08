import 'package:flutter/material.dart';
import 'package:vocavoca/src/routes/router.dart';
import 'package:vocavoca/src/screens/login.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final _router = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router.config(),
    );
  }
}
