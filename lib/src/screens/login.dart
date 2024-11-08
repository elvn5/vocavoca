import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:vocavoca/src/utils/app_images.dart';
import 'package:vocavoca/src/widgets/typography.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(loginImage),
            Gap(55.h),
            TextField(
              decoration: InputDecoration(
              ),
            ),
            Gap(20.h),
            TextField(),
            Gap(20.h),
            ButtonTheme(
                minWidth: double.infinity,
                child: ElevatedButton(
                  onPressed: () => {},
                  child: TitleLarge("Everyone"),
                )),
          ],
        ),
      ),
    ));
  }
}
