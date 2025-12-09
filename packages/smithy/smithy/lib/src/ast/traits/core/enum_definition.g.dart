// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enum_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnumDefinition _$EnumDefinitionFromJson(Map<String, dynamic> json) =>
    EnumDefinition(
      value: json['value'] as String,
      name: json['name'] as String?,
      documentation: json['documentation'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      deprecated: json['deprecated'] as bool?,
    );

Map<String, dynamic> _$EnumDefinitionToJson(EnumDefinition instance) =>
    <String, dynamic>{
      'value': instance.value,
      'name': ?instance.name,
      'documentation': ?instance.documentation,
      'tags': instance.tags,
      'deprecated': ?instance.deprecated,
    };
