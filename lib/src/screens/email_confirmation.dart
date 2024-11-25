import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vocavoca/src/routes/router.dart';
import 'package:vocavoca/src/utils/app_images.dart';
import 'package:vocavoca/src/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:vocavoca/src/extensions/media_query_extension.dart';

@RoutePage()
class EmailConfirmationScreen extends StatelessWidget {
  EmailConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: context.topPadding),
        child: SizedBox(
          width: double.infinity,
          child: AppContainer(
            child: Center(
              child: Container(
                child: Column(
                  children: [
                    Gap(100.h),
                    const TitleLarge(
                      "Почта успешно подтверждена",
                      textAlign: TextAlign.center,
                    ),
                    Image.asset(
                      thankYou,
                      height: 400.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: AppElevatedButton(
                        onPressed: () {
                          context.router.push(HomeRoute());
                        },
                        text: "ОК",
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
