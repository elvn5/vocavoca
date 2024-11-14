// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voca_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VocaThemeImpl _$$VocaThemeImplFromJson(Map<String, dynamic> json) =>
    _$VocaThemeImpl(
      id: (json['id'] as num).toInt(),
      created_at: json['created_at'] as String,
      name: json['name'] as String,
      img: json['img'] as String,
    );

Map<String, dynamic> _$$VocaThemeImplToJson(_$VocaThemeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at,
      'name': instance.name,
      'img': instance.img,
    };
