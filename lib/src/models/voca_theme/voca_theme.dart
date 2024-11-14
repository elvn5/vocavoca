import 'package:freezed_annotation/freezed_annotation.dart';

part 'voca_theme.freezed.dart';
part 'voca_theme.g.dart';

@freezed
class VocaTheme with _$VocaTheme {
  const factory VocaTheme({
    required int id,
    required String created_at,
    required String name,
    required String img,
  }) = _VocaTheme;

  factory VocaTheme.fromJson(Map<String, Object?> json) =>
      _$VocaThemeFromJson(json);
}