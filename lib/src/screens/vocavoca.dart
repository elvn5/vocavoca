import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:vocavoca/src/bloc/bloc.dart';
import 'package:vocavoca/src/di/di.dart';
import 'package:vocavoca/src/features/features.dart';
import 'package:vocavoca/src/models/models.dart';
import 'package:vocavoca/src/routes/router.dart';
import 'package:vocavoca/src/utils/consts.dart';
import 'package:vocavoca/src/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class VocaVocaScreen extends StatelessWidget {
  const VocaVocaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final elementaryBloc = getIt<ElementaryBloc>();

    void onTapTheme(List<Question> questions) {
      context.router.push(
        VocaGameRoute(
          questions: questions,
        ),
      );
    }

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
                  var data = state.data;

                  return AppContainer(
                    child: ListView.builder(
                      itemCount: state.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return VocaTheme(
                          name: data[index].description,
                          img: data[index].imageUrl,
                          onTap: () => onTapTheme(
                            data[index].questions,
                          ),
                        );
                      },
                    ),
                  );
                }
                return kEmptyWidget;
              },
            ),
            const InDevelopment(),
            const InDevelopment(),
          ]),
        ),
      ),
    );
  }
}
