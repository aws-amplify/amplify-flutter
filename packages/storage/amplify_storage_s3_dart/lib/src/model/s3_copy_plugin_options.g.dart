// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_copy_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3CopyPluginOptions _$S3CopyPluginOptionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'S3CopyPluginOptions',
      json,
      ($checkedConvert) {
        final val = S3CopyPluginOptions(
          getProperties:
              $checkedConvert('getProperties', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$S3CopyPluginOptionsToJson(
        S3CopyPluginOptions instance) =>
    <String, dynamic>{
      'getProperties': instance.getProperties,
    };
