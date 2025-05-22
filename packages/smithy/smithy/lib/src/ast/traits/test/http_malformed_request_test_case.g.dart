// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_malformed_request_test_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpMalformedRequestTestCase _$HttpMalformedRequestTestCaseFromJson(
        Map<String, dynamic> json) =>
    HttpMalformedRequestTestCase(
      documentation: json['documentation'] as String?,
      id: json['id'] as String,
      protocol: const ShapeIdConverter().fromJson(json['protocol'] as String),
      request: HttpMalformedRequestDefinition.fromJson(
          json['request'] as Map<String, dynamic>),
      response: HttpMalformedResponseDefinition.fromJson(
          json['response'] as Map<String, dynamic>),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$HttpMalformedRequestTestCaseToJson(
        HttpMalformedRequestTestCase instance) =>
    <String, dynamic>{
      'documentation': instance.documentation,
      'id': instance.id,
      'protocol': const ShapeIdConverter().toJson(instance.protocol),
      'request': instance.request,
      'response': instance.response,
      'tags': instance.tags,
    };
