import 'package:freezed_annotation/freezed_annotation.dart';
import 'question.dart';

part 'voca_quiz.freezed.dart';
part 'voca_quiz.g.dart';

@freezed
class VocaQuiz with _$VocaQuiz {
  const factory VocaQuiz({
    required String id,
    required String description,
    required String imageUrl,
    @JsonKey(name: "Question") required List<Question> questions,
  }) = _VocaQuiz;

  factory VocaQuiz.fromJson(Map<String, dynamic> json) =>
      _$VocaQuizFromJson(json);
}
