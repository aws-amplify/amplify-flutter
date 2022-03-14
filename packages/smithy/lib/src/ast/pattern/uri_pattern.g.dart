// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uri_pattern.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UriPattern _$UriPatternFromJson(Map<String, dynamic> json) => UriPattern(
      pattern: json['pattern'] as String,
      segments: (json['segments'] as List<dynamic>)
          .map((e) => Segment.fromJson(e as Map<String, dynamic>))
          .toList(),
      queryLiterals: Map<String, String>.from(json['queryLiterals'] as Map),
    );

Map<String, dynamic> _$UriPatternToJson(UriPattern instance) =>
    <String, dynamic>{
      'pattern': instance.pattern,
      'segments': instance.segments,
      'queryLiterals': instance.queryLiterals,
    };
