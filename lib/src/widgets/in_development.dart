import 'package:flutter/cupertino.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:gap/gap.dart';
import 'package:vocavoca/src/services/emoji.dart';
import 'package:vocavoca/src/utils/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vocavoca/src/widgets/typography.dart';

class InDevelopment extends StatelessWidget {
  const InDevelopment({super.key});

  @override
  Widget build(BuildContext context) {
    var title = emojiParser.emojify('В разработке :heart:');

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleLarge(title),
              Gap(20.h),
              Image.asset(
                inDev,
                height: 300.h,
                width: 300.w,
              )
            ],
          )),
        ],
      ),
    );
  }
}
