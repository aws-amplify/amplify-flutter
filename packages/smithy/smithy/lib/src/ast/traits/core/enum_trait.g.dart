// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enum_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnumTrait _$EnumTraitFromJson(Map<String, dynamic> json) => EnumTrait(
      (json['definitions'] as List<dynamic>)
          .map((e) => EnumDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EnumTraitToJson(EnumTrait instance) => <String, dynamic>{
      'definitions': instance.definitions,
    };
