import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vocavoca/src/extensions/extensions.dart';
import 'package:vocavoca/src/widgets/typography.dart';

class Timer extends HookWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.h,
      width: 96.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: context.primaryColor,
      ),
      child: const Center(
        child: TitleMedium(
          "10",
          color: Colors.white,
        ),
      ),
    );
  }
}
