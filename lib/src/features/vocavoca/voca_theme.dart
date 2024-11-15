import 'package:flutter/material.dart';
import 'package:vocavoca/src/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VocaTheme extends StatelessWidget {
  const VocaTheme({
    super.key,
    required this.name,
    required this.img,
    required this.onTap,
  });

  final String name;
  final String img;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 80.h,
        child: Card(
          margin: const EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Paragraph(name),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                child: CachedImage(
                  imageUrl: img,
                  width: 80.w,
                  height: 80.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
