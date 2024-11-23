import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vocavoca/src/extensions/media_query_extension.dart';
import 'package:vocavoca/src/routes/router.dart';
import 'package:vocavoca/src/utils/app_images.dart';
import 'package:vocavoca/src/widgets/app_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vocavoca/src/widgets/app_elevated_button.dart';
import 'package:vocavoca/src/widgets/typography.dart';
import 'package:auto_route/auto_route.dart';

class VocaResult extends StatelessWidget {
  const VocaResult(
      {super.key,
      required this.quizTheme,
      required this.totalMistakes,
      required this.totalQuestions,
      required this.onTapRestart});

  final String quizTheme;
  final int totalMistakes;
  final int totalQuestions;
  final VoidCallback onTapRestart;

  @override
  Widget build(BuildContext context) {
    void onTapMain() {
      context.router.push(const VocaVocaRoute());
    }

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
                Paragraph("Ошибок совершено: $totalMistakes"),
                Image.asset(
                  resultScreen,
                  height: 340.h,
                ),
                Gap(20.h),
                SizedBox(
                  width: double.infinity,
                  child:
                      AppElevatedButton(onPressed: onTapMain, text: "Главная"),
                ),
                Gap(20.h),
                SizedBox(
                  width: double.infinity,
                  child: AppElevatedButton(
                    onPressed: onTapRestart,
                    text: "Пройти еще раз",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
