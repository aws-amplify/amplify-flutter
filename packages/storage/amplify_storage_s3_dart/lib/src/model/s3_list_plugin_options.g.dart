// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_list_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3ListPluginOptions _$S3ListPluginOptionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'S3ListPluginOptions',
      json,
      ($checkedConvert) {
        final val = S3ListPluginOptions(
          excludeSubPaths:
              $checkedConvert('excludeSubPaths', (v) => v as bool? ?? false),
          delimiter: $checkedConvert('delimiter', (v) => v as String? ?? '/'),
        );
        return val;
      },
    );

Map<String, dynamic> _$S3ListPluginOptionsToJson(
        S3ListPluginOptions instance) =>
    <String, dynamic>{
      'excludeSubPaths': instance.excludeSubPaths,
      'delimiter': instance.delimiter,
    };
