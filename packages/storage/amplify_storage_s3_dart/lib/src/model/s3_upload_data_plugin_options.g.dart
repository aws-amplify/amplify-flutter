// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_upload_data_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3UploadDataPluginOptions _$S3UploadDataPluginOptionsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'S3UploadDataPluginOptions',
      json,
      ($checkedConvert) {
        final val = S3UploadDataPluginOptions(
          getProperties:
              $checkedConvert('getProperties', (v) => v as bool? ?? false),
          useAccelerateEndpoint: $checkedConvert(
              'useAccelerateEndpoint', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$S3UploadDataPluginOptionsToJson(
        S3UploadDataPluginOptions instance) =>
    <String, dynamic>{
      'getProperties': instance.getProperties,
      'useAccelerateEndpoint': instance.useAccelerateEndpoint,
    };
