import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VocaGameScreen extends StatefulWidget {
  const VocaGameScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _VocaGameState();
  }
}

class _VocaGameState extends State<VocaGameScreen> {
  @override
  Widget build(context) {
    return const Scaffold();
  }
}
