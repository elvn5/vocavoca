import 'dart:collection';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vocavoca/src/extensions/media_query_extension.dart';
import 'package:vocavoca/src/features/features.dart';
import 'package:vocavoca/src/models/models.dart';
import 'package:vocavoca/src/routes/router.dart';
import 'package:vocavoca/src/utils/random_shuffle.dart';
import 'package:vocavoca/src/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class VocaGameScreen extends StatefulWidget {
  const VocaGameScreen({
    super.key,
    required this.questions,
    required this.theme,
  });

  final List<Question> questions;
  final String theme;

  @override
  State<StatefulWidget> createState() {
    return _VocaGameState();
  }
}

class _VocaGameState extends State<VocaGameScreen> {
  final Queue<Question> _queue = Queue();
  String? _selectedOption;
  bool _isChecked = false;
  int _totalMistakes = 0;
  late int _totalQuestions;

  void _setSelectedOption(String? id) {
    if (_isChecked) {
      return;
    }
    setState(
      () {
        _selectedOption = id;
      },
    );
  }

  @override
  void initState() {
    final List<Question> list = [];
    for (var i = 0; i < widget.questions.length; i++) {
      final el = widget.questions[i].copyWith(
        options: randomShuffle(widget.questions[i].options),
      );

      list.add(el);
    }
    _queue.addAll(list);

    setState(() {
      _totalQuestions = list.length;
    });

    super.initState();
  }

  @override
  Widget build(context) {
    Question? currentQuestion;

    if (_queue.isNotEmpty) {
      currentQuestion = _queue.first;
    }

    if (_queue.isEmpty) {
      // context.router.push(const HomeRoute());
    }

    void next() {
      final selectedItem = currentQuestion?.options.firstWhere(
        (el) => el.id == _selectedOption,
      );

      setState(() {
        _selectedOption = null;
        _isChecked = false;
      });

      if (selectedItem!.is_correct) {
        setState(() {
          // User answers correct
          if (_queue.isNotEmpty) {
            _queue.removeFirst();
          }
        });
      } else {
        // User makes mistake, add this question to the end of Queue
        setState(() {
          _totalMistakes++;

          final firstElement = _queue.removeFirst();
          _queue.addLast(firstElement);
        });
      }
    }

    void checkAnswer() {
      setState(() {
        _isChecked = true;
      });
    }

    void onTapRestart() {
      context.router.push(VocaGameRoute(
        questions: widget.questions,
        theme: widget.theme,
      ));
    }

    if (currentQuestion == null) {
      return VocaResult(
        quizTheme: widget.theme,
        totalMistakes: _totalMistakes,
        totalQuestions: _queue.length,
        onTapRestart: onTapRestart,
      );
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: context.topPadding,
        ),
        child: AppContainer(
            child: Column(
          children: [
            Gap(71.h),
            Center(
              child: TitleLarge(
                currentQuestion.desc,
                fontSize: 36.sp,
              ),
            ),
            Gap(36.h),
            // const Timer(),
            Gap(48.h),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 390.h,
                maxWidth: double.infinity,
              ),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ...currentQuestion.options.map((el) {
                    return VocaOption(
                      desc: el.desc,
                      id: el.id,
                      onTapOption: _setSelectedOption,
                      selectedOption: _selectedOption,
                      isChecked: _isChecked,
                      isCorrect: el.is_correct,
                    );
                  }),
                ],
              ),
            ),
            Gap(60.h),
            SizedBox(
              width: double.infinity,
              height: 100.h,
              child: AppElevatedButton(
                onPressed: _isChecked ? next : checkAnswer,
                text: _isChecked ? "Далее" : "Проверить",
                disabled: _selectedOption == null,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
