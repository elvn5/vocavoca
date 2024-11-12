import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiniLoader extends StatelessWidget {
  const MiniLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 50.w,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
