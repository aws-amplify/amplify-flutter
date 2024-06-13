// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_upload_file_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3UploadFilePluginOptions _$S3UploadFilePluginOptionsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'S3UploadFilePluginOptions',
      json,
      ($checkedConvert) {
        final val = S3UploadFilePluginOptions(
          getProperties:
              $checkedConvert('getProperties', (v) => v as bool? ?? false),
          useAccelerateEndpoint: $checkedConvert(
              'useAccelerateEndpoint', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$S3UploadFilePluginOptionsToJson(
        S3UploadFilePluginOptions instance) =>
    <String, dynamic>{
      'getProperties': instance.getProperties,
      'useAccelerateEndpoint': instance.useAccelerateEndpoint,
    };
