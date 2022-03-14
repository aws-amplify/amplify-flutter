// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_malformed_request_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpMalformedRequestDefinition _$HttpMalformedRequestDefinitionFromJson(
        Map<String, dynamic> json) =>
    HttpMalformedRequestDefinition(
      body: json['body'] as String?,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      host: json['host'] as String?,
      method: json['method'] as String,
      queryParams: (json['queryParams'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$HttpMalformedRequestDefinitionToJson(
        HttpMalformedRequestDefinition instance) =>
    <String, dynamic>{
      'body': instance.body,
      'headers': instance.headers,
      'host': instance.host,
      'method': instance.method,
      'queryParams': instance.queryParams,
      'uri': instance.uri,
    };
