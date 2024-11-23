import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiniLoader extends StatelessWidget {
  const MiniLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      width: 20.w,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
