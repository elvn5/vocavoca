import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vocavoca/src/routes/router.dart';
import 'package:vocavoca/src/services/services.dart';
import 'package:vocavoca/src/utils/utils.dart';
import 'package:vocavoca/src/utils/version.dart';
import 'package:vocavoca/src/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String email = supabaseService.auth.currentUser?.email ?? "";

    void onTapLogout() async {
      try {
        await supabaseService.auth.signOut();
        if (context.mounted) {
          context.router.replaceAll([LoginRoute()]);
        }
      } catch (e) {}
    }

    return Scaffold(
      appBar: AppBar(
        title: const TitleLarge("Профиль"),
        actions: [
          // const Icon(
          //   Icons.dark_mode_outlined,
          //   size: 24,
          // ),
          Gap(20.w),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: AppContainer(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Gap(52.h),
                    Image.asset(
                      genericAvatar,
                      width: 240.w,
                      height: 240.h,
                    ),
                    Gap(34.h),
                    Paragraph(email),
                    Gap(80.h),
                    SizedBox(
                      width: double.infinity,
                      child: AppElevatedButton(
                        onPressed: () {},
                        text: "Удалить аккаунт",
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                            errorColor,
                          ),
                        ),
                      ),
                    ),
                    Gap(20.h),
                    SizedBox(
                      width: double.infinity,
                      child: AppElevatedButton(
                        onPressed: onTapLogout,
                        text: "Выйти",
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                            errorColor,
                          ),
                        ),
                      ),
                    ),
                    Gap(20.h),
                    const Paragraph("Версия $appVersion")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
