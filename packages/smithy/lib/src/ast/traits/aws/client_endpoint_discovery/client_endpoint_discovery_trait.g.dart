// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_endpoint_discovery_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientEndpointDiscoveryTrait _$ClientEndpointDiscoveryTraitFromJson(
        Map<String, dynamic> json) =>
    ClientEndpointDiscoveryTrait(
      operation: const ShapeIdConverter().fromJson(json['operation'] as String),
      error:
          const NullableShapeIdConverter().fromJson(json['error'] as String?),
    );

Map<String, dynamic> _$ClientEndpointDiscoveryTraitToJson(
        ClientEndpointDiscoveryTrait instance) =>
    <String, dynamic>{
      'operation': const ShapeIdConverter().toJson(instance.operation),
      'error': const NullableShapeIdConverter().toJson(instance.error),
    };
