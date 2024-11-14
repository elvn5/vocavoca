import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vocavoca/src/bloc/bloc.dart';
import 'package:vocavoca/src/di/di.dart';
import 'package:vocavoca/src/services/services.dart';
import 'package:vocavoca/src/utils/consts.dart';
import 'package:vocavoca/src/widgets/app_container.dart';
import 'package:vocavoca/src/widgets/mini_loader.dart';
import 'package:vocavoca/src/widgets/typography.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class VocaVocaScreen extends StatelessWidget {
  const VocaVocaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final elementaryBloc = getIt<ElementaryBloc>();

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const TitleLarge("VocaVoca"),
          actions: [
            const Icon(
              Icons.dark_mode_outlined,
              size: 24,
            ),
            Gap(20.w),
          ],
          bottom: const TabBar(tabs: [
            Tab(
              child: Center(
                child: Paragraph("Elementary"),
              ),
            ),
            Tab(
              child: Center(
                child: Paragraph("Intermediate"),
              ),
            ),
            Tab(
              child: Center(
                child: Paragraph("Advanced"),
              ),
            ),
          ]),
        ),
        body: BlocProvider(
          create: (context) => elementaryBloc,
          child: TabBarView(children: [
            BlocBuilder<ElementaryBloc, ElementaryState>(
              bloc: elementaryBloc..add(ElementaryLoadEvent()),
              builder: (context, state) {
                if (state is ElementaryLoadingState) {
                  return const MiniLoader();
                }

                if (state is ElementaryLoadedState) {
                  final name = state.data[0].name;
                  final img = state.data[0].img;

                  return AppContainer(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 200.h),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Paragraph(name),
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              child: Image.network(
                                img,
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
                return kEmptyWidget;
              },
            ),
            kEmptyWidget,
            kEmptyWidget
          ]),
        ),
      ),
    );
  }
}
