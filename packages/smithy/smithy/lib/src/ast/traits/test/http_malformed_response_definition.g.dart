// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_malformed_response_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpMalformedResponseDefinition _$HttpMalformedResponseDefinitionFromJson(
        Map<String, dynamic> json) =>
    HttpMalformedResponseDefinition(
      body: json['body'] == null
          ? null
          : HttpMalformedResponseBodyDefinition.fromJson(
              json['body'] as Map<String, dynamic>),
      code: json['code'] as int,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$HttpMalformedResponseDefinitionToJson(
        HttpMalformedResponseDefinition instance) =>
    <String, dynamic>{
      'body': instance.body,
      'code': instance.code,
      'headers': instance.headers,
    };
