// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_response_test_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpResponseTestCase _$HttpResponseTestCaseFromJson(
        Map<String, dynamic> json) =>
    HttpResponseTestCase(
      id: json['id'] as String,
      documentation: json['documentation'] as String?,
      protocol: const ShapeIdConverter().fromJson(json['protocol'] as String),
      authScheme: const NullableShapeIdConverter()
          .fromJson(json['authScheme'] as String?),
      body: json['body'] as String?,
      bodyMediaType: json['bodyMediaType'] as String?,
      params: json['params'] as Map<String, dynamic>? ?? const {},
      vendorParamsShape: const NullableShapeIdConverter()
          .fromJson(json['vendorParamsShape'] as String?),
      vendorParams: json['vendorParams'] as Map<String, dynamic>? ?? const {},
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      forbidHeaders: (json['forbidHeaders'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      requireHeaders: (json['requireHeaders'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      appliesTo: $enumDecodeNullable(_$AppliesToEnumMap, json['appliesTo']),
      code: json['code'] as int,
    );

Map<String, dynamic> _$HttpResponseTestCaseToJson(
        HttpResponseTestCase instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentation': instance.documentation,
      'protocol': const ShapeIdConverter().toJson(instance.protocol),
      'authScheme':
          const NullableShapeIdConverter().toJson(instance.authScheme),
      'body': instance.body,
      'bodyMediaType': instance.bodyMediaType,
      'params': instance.params,
      'vendorParamsShape':
          const NullableShapeIdConverter().toJson(instance.vendorParamsShape),
      'vendorParams': instance.vendorParams,
      'headers': instance.headers,
      'forbidHeaders': instance.forbidHeaders,
      'requireHeaders': instance.requireHeaders,
      'tags': instance.tags,
      'appliesTo': _$AppliesToEnumMap[instance.appliesTo],
      'code': instance.code,
    };

const _$AppliesToEnumMap = {
  AppliesTo.client: 'client',
  AppliesTo.server: 'server',
};
