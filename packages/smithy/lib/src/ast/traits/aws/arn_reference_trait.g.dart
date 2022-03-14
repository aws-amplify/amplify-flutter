// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arn_reference_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArnReferenceTrait _$ArnReferenceTraitFromJson(Map<String, dynamic> json) =>
    ArnReferenceTrait(
      type: json['type'] as String?,
      service:
          const NullableShapeIdConverter().fromJson(json['service'] as String?),
      resource: const NullableShapeIdConverter()
          .fromJson(json['resource'] as String?),
    );

Map<String, dynamic> _$ArnReferenceTraitToJson(ArnReferenceTrait instance) =>
    <String, dynamic>{
      'type': instance.type,
      'service': const NullableShapeIdConverter().toJson(instance.service),
      'resource': const NullableShapeIdConverter().toJson(instance.resource),
    };
