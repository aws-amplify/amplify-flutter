// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arn_reference_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArnReferenceTrait _$ArnReferenceTraitFromJson(Map<String, dynamic> json) =>
    ArnReferenceTrait(
      type: json['type'] as String?,
      service: _$JsonConverterFromJson<String, ShapeId>(
          json['service'], const ShapeIdConverter().fromJson),
      resource: _$JsonConverterFromJson<String, ShapeId>(
          json['resource'], const ShapeIdConverter().fromJson),
    );

Map<String, dynamic> _$ArnReferenceTraitToJson(ArnReferenceTrait instance) =>
    <String, dynamic>{
      'type': instance.type,
      'service': _$JsonConverterToJson<String, ShapeId>(
          instance.service, const ShapeIdConverter().toJson),
      'resource': _$JsonConverterToJson<String, ShapeId>(
          instance.resource, const ShapeIdConverter().toJson),
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
