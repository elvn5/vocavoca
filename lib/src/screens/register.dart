import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:vocavoca/src/utils/app_images.dart';
import 'package:vocavoca/src/widgets/widgets.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: AppContainer(
        child: SingleChildScrollView(
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
                child: AppElevatedButton(
                    onPressed: () => {}, text: "GO"),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
