import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vocavoca/src/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class EmailConfirmationScreen extends StatelessWidget {
  const EmailConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TitleLarge("Профиль"),
        actions: [
          const Icon(
            Icons.dark_mode_outlined,
            size: 24,
          ),
          Gap(20.w),
        ],
      ),
      body: const SizedBox(
        width: double.infinity,
        child: AppContainer(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
