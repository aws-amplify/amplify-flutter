// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_malformed_response_body_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpMalformedResponseBodyDefinition
    _$HttpMalformedResponseBodyDefinitionFromJson(Map<String, dynamic> json) =>
        HttpMalformedResponseBodyDefinition(
          contents: json['contents'] as String?,
          mediaType: json['mediaType'] as String,
          messageRegex: json['messageRegex'] as String?,
        );

Map<String, dynamic> _$HttpMalformedResponseBodyDefinitionToJson(
        HttpMalformedResponseBodyDefinition instance) =>
    <String, dynamic>{
      'contents': instance.contents,
      'mediaType': instance.mediaType,
      'messageRegex': instance.messageRegex,
    };
