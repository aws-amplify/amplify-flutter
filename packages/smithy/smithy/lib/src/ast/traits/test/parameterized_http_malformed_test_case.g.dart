// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameterized_http_malformed_test_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParameterizedHttpMalformedRequestTestCase
    _$ParameterizedHttpMalformedRequestTestCaseFromJson(
            Map<String, dynamic> json) =>
        ParameterizedHttpMalformedRequestTestCase(
          documentation: json['documentation'] as String?,
          id: json['id'] as String,
          protocol:
              const ShapeIdConverter().fromJson(json['protocol'] as String),
          request: HttpMalformedRequestDefinition.fromJson(
              json['request'] as Map<String, dynamic>),
          response: HttpMalformedResponseDefinition.fromJson(
              json['response'] as Map<String, dynamic>),
          tags: (json['tags'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          testParameters: (json['testParameters'] as Map<String, dynamic>?)
                  ?.map(
                (k, e) => MapEntry(
                    k, (e as List<dynamic>).map((e) => e as String).toList()),
              ) ??
              const {},
        );

Map<String, dynamic> _$ParameterizedHttpMalformedRequestTestCaseToJson(
        ParameterizedHttpMalformedRequestTestCase instance) =>
    <String, dynamic>{
      'documentation': instance.documentation,
      'id': instance.id,
      'protocol': const ShapeIdConverter().toJson(instance.protocol),
      'request': instance.request,
      'response': instance.response,
      'tags': instance.tags,
      'testParameters': instance.testParameters,
    };
