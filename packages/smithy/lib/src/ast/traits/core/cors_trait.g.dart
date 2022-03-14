// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cors_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CorsTrait _$CorsTraitFromJson(Map<String, dynamic> json) => CorsTrait(
      origin: json['origin'] as String? ?? CorsTrait.defaultOrigin,
      maxAge: json['maxAge'] as int? ?? CorsTrait.defaultMaxAge,
      additionalAllowedHeaders:
          (json['additionalAllowedHeaders'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toSet() ??
              const {},
      additionalExposedHeaders:
          (json['additionalExposedHeaders'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toSet() ??
              const {},
    );

Map<String, dynamic> _$CorsTraitToJson(CorsTrait instance) => <String, dynamic>{
      'origin': instance.origin,
      'maxAge': instance.maxAge,
      'additionalAllowedHeaders': instance.additionalAllowedHeaders.toList(),
      'additionalExposedHeaders': instance.additionalExposedHeaders.toList(),
    };
