import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:vocavoca/src/routes/router.dart';
import 'package:vocavoca/src/utils/app_images.dart';
import 'package:vocavoca/src/widgets/widgets.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onTapRegister() {
      context.router.push(const RegisterRoute());
    }

    return SafeArea(
        child: Scaffold(
      body: AppContainer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(loginImage),
              Gap(55.h),
              AppTextField(
                labelText: "example@gmail.com",
              ),
              Gap(20.h),
              AppTextField(
                labelText: "Password",
              ),
              Gap(20.h),
              SizedBox(
                width: double.infinity,
                child: AppElevatedButton(
                  onPressed: () => {},
                  text: "Login",
                ),
              ),
              Gap(20.h),
              SizedBox(
                width: double.infinity,
                child: AppElevatedButton(
                  onPressed: onTapRegister,
                  text: "Register",
                ),
              ),
              Gap(10.h),
              const Divider(),
              SizedBox(
                width: double.infinity,
                child: AppTextButton(
                    onPressed: () => {}, text: "Forgot password?"),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
