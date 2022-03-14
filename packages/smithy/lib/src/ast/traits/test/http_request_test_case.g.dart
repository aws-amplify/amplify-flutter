// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_request_test_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpRequestTestCase _$HttpRequestTestCaseFromJson(Map json) =>
    HttpRequestTestCase(
      id: json['id'] as String,
      documentation: json['documentation'] as String?,
      protocol: const ShapeIdConverter().fromJson(json['protocol'] as String),
      authScheme: const NullableShapeIdConverter()
          .fromJson(json['authScheme'] as String?),
      body: json['body'] as String?,
      bodyMediaType: json['bodyMediaType'] as String?,
      params: (json['params'] as Map?)?.map(
            (k, e) => MapEntry(k as String, e),
          ) ??
          const {},
      vendorParamsShape: const NullableShapeIdConverter()
          .fromJson(json['vendorParamsShape'] as String?),
      vendorParams: (json['vendorParams'] as Map?)?.map(
            (k, e) => MapEntry(k as String, e),
          ) ??
          const {},
      headers: (json['headers'] as Map?)?.map(
            (k, e) => MapEntry(k as String, e as String),
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
      method: json['method'] as String,
      uri: json['uri'] as String,
      host: json['host'] as String?,
      resolvedHost: json['resolvedHost'] as String?,
      queryParams: (json['queryParams'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      forbidQueryParams: (json['forbidQueryParams'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      requireQueryParams: (json['requireQueryParams'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HttpRequestTestCaseToJson(
        HttpRequestTestCase instance) =>
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
      'method': instance.method,
      'uri': instance.uri,
      'host': instance.host,
      'resolvedHost': instance.resolvedHost,
      'queryParams': instance.queryParams,
      'forbidQueryParams': instance.forbidQueryParams,
      'requireQueryParams': instance.requireQueryParams,
    };

const _$AppliesToEnumMap = {
  AppliesTo.client: 'client',
  AppliesTo.server: 'server',
};
