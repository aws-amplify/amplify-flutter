// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_endpoint_discovery_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientEndpointDiscoveryTrait _$ClientEndpointDiscoveryTraitFromJson(
        Map<String, dynamic> json) =>
    ClientEndpointDiscoveryTrait(
      operation: const ShapeIdConverter().fromJson(json['operation'] as String),
      error: _$JsonConverterFromJson<String, ShapeId>(
          json['error'], const ShapeIdConverter().fromJson),
    );

Map<String, dynamic> _$ClientEndpointDiscoveryTraitToJson(
        ClientEndpointDiscoveryTrait instance) =>
    <String, dynamic>{
      'operation': const ShapeIdConverter().toJson(instance.operation),
      'error': _$JsonConverterToJson<String, ShapeId>(
          instance.error, const ShapeIdConverter().toJson),
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
