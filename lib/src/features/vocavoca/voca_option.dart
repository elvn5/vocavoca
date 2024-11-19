import 'package:flutter/material.dart';
import 'package:vocavoca/src/widgets/typography.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VocaOption extends StatelessWidget {
  const VocaOption({
    super.key,
    required this.desc,
    required this.id,
    required this.onTapOption,
    required this.isCorrect,
    this.selectedOption,
    this.isChecked = false,
  });

  final String desc;
  final Function(String? id) onTapOption;
  final String id;
  final String? selectedOption;
  final bool isChecked;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    final isActive = id == selectedOption;

    if (isChecked && isActive && !isCorrect) {
      return AnimatedContainer(
        width: 185.w,
        height: 185.h,
        decoration: BoxDecoration(
          color: Theme.of(context).splashColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.red),
        ),
        duration: const Duration(milliseconds: 300),
        child: Center(
          child: Paragraph(
            desc,
            color: Colors.red,
          ),
        ),
      );
    }

    if (isChecked && isCorrect) {
      return AnimatedContainer(
        width: 185.w,
        height: 185.h,
        decoration: BoxDecoration(
          color: Theme.of(context).splashColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.green),
        ),
        duration: const Duration(milliseconds: 300),
        child: Center(
          child: Paragraph(
            desc,
            color: Colors.green,
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () => onTapOption(id),
      child: AnimatedContainer(
        width: 185.w,
        height: 185.h,
        decoration: BoxDecoration(
          color: Theme.of(context).splashColor,
          borderRadius: BorderRadius.circular(12),
          border:
              Border.all(color: isActive ? Colors.blue : Colors.transparent),
        ),
        duration: const Duration(milliseconds: 300),
        child: Center(
          child: Paragraph(
            desc,
            color: isActive ? Colors.blue : Colors.black,
          ),
        ),
      ),
    );
  }
}
