// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_definition_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthDefinitionTrait _$AuthDefinitionTraitFromJson(Map<String, dynamic> json) =>
    AuthDefinitionTrait(
      (json['traits'] as List<dynamic>?)
              ?.map((e) => const ShapeIdConverter().fromJson(e as String))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AuthDefinitionTraitToJson(
        AuthDefinitionTrait instance) =>
    <String, dynamic>{
      'traits': instance.traits.map(const ShapeIdConverter().toJson).toList(),
    };
