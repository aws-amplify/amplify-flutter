// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_list_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3ListPluginOptions _$S3ListPluginOptionsFromJson(Map<String, dynamic> json) =>
    S3ListPluginOptions(
      excludeSubPaths: json['excludeSubPaths'] as bool? ?? false,
      delimiter: json['delimiter'] as String? ?? '/',
    );

Map<String, dynamic> _$S3ListPluginOptionsToJson(
        S3ListPluginOptions instance) =>
    <String, dynamic>{
      'excludeSubPaths': instance.excludeSubPaths,
      'delimiter': instance.delimiter,
    };
