// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'references_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferencesTrait _$ReferencesTraitFromJson(Map<String, dynamic> json) =>
    ReferencesTrait(
      (json['references'] as List<dynamic>)
          .map((e) => ResourceReference.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReferencesTraitToJson(ReferencesTrait instance) =>
    <String, dynamic>{
      'references': instance.references,
    };

ResourceReference _$ResourceReferenceFromJson(Map<String, dynamic> json) =>
    ResourceReference(
      resource: const ShapeIdConverter().fromJson(json['resource'] as String),
      service:
          const NullableShapeIdConverter().fromJson(json['service'] as String?),
      ids: (json['ids'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      rel: json['rel'] as String?,
    );

Map<String, dynamic> _$ResourceReferenceToJson(ResourceReference instance) =>
    <String, dynamic>{
      'resource': const ShapeIdConverter().toJson(instance.resource),
      'ids': instance.ids,
      'service': const NullableShapeIdConverter().toJson(instance.service),
      'rel': instance.rel,
    };
