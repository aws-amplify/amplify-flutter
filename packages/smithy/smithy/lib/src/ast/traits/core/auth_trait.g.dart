// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthTrait _$AuthTraitFromJson(Map<String, dynamic> json) => AuthTrait(
      (json['values'] as List<dynamic>)
          .map((e) => const ShapeIdConverter().fromJson(e as String))
          .toSet(),
    );

Map<String, dynamic> _$AuthTraitToJson(AuthTrait instance) => <String, dynamic>{
      'values': instance.values.map(const ShapeIdConverter().toJson).toList(),
    };
