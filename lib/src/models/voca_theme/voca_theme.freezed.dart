// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voca_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VocaTheme _$VocaThemeFromJson(Map<String, dynamic> json) {
  return _VocaTheme.fromJson(json);
}

/// @nodoc
mixin _$VocaTheme {
  int get id => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;

  /// Serializes this VocaTheme to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VocaTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VocaThemeCopyWith<VocaTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VocaThemeCopyWith<$Res> {
  factory $VocaThemeCopyWith(VocaTheme value, $Res Function(VocaTheme) then) =
      _$VocaThemeCopyWithImpl<$Res, VocaTheme>;
  @useResult
  $Res call({int id, String created_at, String name, String img});
}

/// @nodoc
class _$VocaThemeCopyWithImpl<$Res, $Val extends VocaTheme>
    implements $VocaThemeCopyWith<$Res> {
  _$VocaThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VocaTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? name = null,
    Object? img = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VocaThemeImplCopyWith<$Res>
    implements $VocaThemeCopyWith<$Res> {
  factory _$$VocaThemeImplCopyWith(
          _$VocaThemeImpl value, $Res Function(_$VocaThemeImpl) then) =
      __$$VocaThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String created_at, String name, String img});
}

/// @nodoc
class __$$VocaThemeImplCopyWithImpl<$Res>
    extends _$VocaThemeCopyWithImpl<$Res, _$VocaThemeImpl>
    implements _$$VocaThemeImplCopyWith<$Res> {
  __$$VocaThemeImplCopyWithImpl(
      _$VocaThemeImpl _value, $Res Function(_$VocaThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of VocaTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? name = null,
    Object? img = null,
  }) {
    return _then(_$VocaThemeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VocaThemeImpl implements _VocaTheme {
  const _$VocaThemeImpl(
      {required this.id,
      required this.created_at,
      required this.name,
      required this.img});

  factory _$VocaThemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$VocaThemeImplFromJson(json);

  @override
  final int id;
  @override
  final String created_at;
  @override
  final String name;
  @override
  final String img;

  @override
  String toString() {
    return 'VocaTheme(id: $id, created_at: $created_at, name: $name, img: $img)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VocaThemeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.img, img) || other.img == img));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, created_at, name, img);

  /// Create a copy of VocaTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VocaThemeImplCopyWith<_$VocaThemeImpl> get copyWith =>
      __$$VocaThemeImplCopyWithImpl<_$VocaThemeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VocaThemeImplToJson(
      this,
    );
  }
}

abstract class _VocaTheme implements VocaTheme {
  const factory _VocaTheme(
      {required final int id,
      required final String created_at,
      required final String name,
      required final String img}) = _$VocaThemeImpl;

  factory _VocaTheme.fromJson(Map<String, dynamic> json) =
      _$VocaThemeImpl.fromJson;

  @override
  int get id;
  @override
  String get created_at;
  @override
  String get name;
  @override
  String get img;

  /// Create a copy of VocaTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VocaThemeImplCopyWith<_$VocaThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
