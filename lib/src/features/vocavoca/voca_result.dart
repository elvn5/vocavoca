import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vocavoca/src/extensions/media_query_extension.dart';
import 'package:vocavoca/src/widgets/app_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vocavoca/src/widgets/typography.dart';

class VocaResult extends StatelessWidget {
  const VocaResult({
    super.key,
    required this.quizTheme,
    required this.totalMistakes,
    required this.totalQuestions,
  });

  final String quizTheme;
  final int totalMistakes;
  final int totalQuestions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: context.topPadding,
        ),
        child: AppContainer(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Gap(80.h),
                const TitleLarge("Поздравляю"),
                Gap(10.h),
                Paragraph("Вы прошли: $quizTheme"),
                Paragraph("Ошибок совершено: $totalMistakes")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
