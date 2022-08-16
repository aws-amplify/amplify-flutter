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

Map<String, dynamic> _$EnumDefinitionToJson(EnumDefinition instance) {
  final val = <String, dynamic>{
    'value': instance.value,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('documentation', instance.documentation);
  val['tags'] = instance.tags;
  writeNotNull('deprecated', instance.deprecated);
  return val;
}
