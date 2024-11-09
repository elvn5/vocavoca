import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:vocavoca/src/utils/app_images.dart';
import 'package:vocavoca/src/widgets/app_container.dart';
import 'package:vocavoca/src/widgets/app_elevated_button.dart';
import 'package:vocavoca/src/widgets/app_text_button.dart';
import 'package:vocavoca/src/widgets/app_text_field.dart';

@RoutePage()
class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AppContainer(
          child: Column(
            children: [
              Image.asset(signUpImage),
              Gap(55.h),
              const AppTextField(
                labelText: "example@gmail.com",
              ),
              Gap(20.h),
              const AppTextField(
                labelText: "Password",
              ),
              Gap(20.h),
              const AppTextField(
                labelText: "Confirm password",
              ),
              Gap(20.h),
              const Divider(),
              SizedBox(
                width: double.infinity,
                child: AppElevatedButton(onPressed: () => {}, text: "GO"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
