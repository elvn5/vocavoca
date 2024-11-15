import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vocavoca/src/services/services.dart';
import 'package:vocavoca/src/utils/app_images.dart';
import 'package:vocavoca/src/utils/theme_colors.dart';
import 'package:vocavoca/src/widgets/app_container.dart';
import 'package:vocavoca/src/widgets/app_elevated_button.dart';
import 'package:vocavoca/src/widgets/typography.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String email = supabaseService.auth.currentUser?.email ?? "";

    return Scaffold(
      appBar: AppBar(
        title: const TitleLarge("Профиль"),
        actions: [
          const Icon(
            Icons.dark_mode_outlined,
            size: 24,
          ),
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
                    Gap(165.h),
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
                    )
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
