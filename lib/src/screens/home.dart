import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vocavoca/src/routes/router.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        VocaVocaRoute(),
        AchievementsRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Container(
          color: Colors.white,
          height: 100.h,
          child: BottomNavigationBar(
            elevation: 0,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.language),
                label: "Academy",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mood),
                label: "Academy",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Academy",
              ),
            ],
          ),
        );
      },
    );
  }
}
