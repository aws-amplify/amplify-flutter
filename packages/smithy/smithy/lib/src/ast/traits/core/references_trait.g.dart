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
      service: _$JsonConverterFromJson<String, ShapeId>(
          json['service'], const ShapeIdConverter().fromJson),
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
      'service': _$JsonConverterToJson<String, ShapeId>(
          instance.service, const ShapeIdConverter().toJson),
      'rel': instance.rel,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
