import 'package:freezed_annotation/freezed_annotation.dart';
import 'option.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required String id,
    required String desc,
    @JsonKey(name: "Option") required List<Option> options,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
