// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_download_file_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3DownloadFilePluginOptions _$S3DownloadFilePluginOptionsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'S3DownloadFilePluginOptions',
      json,
      ($checkedConvert) {
        final val = S3DownloadFilePluginOptions(
          getProperties:
              $checkedConvert('getProperties', (v) => v as bool? ?? false),
          useAccelerateEndpoint: $checkedConvert(
              'useAccelerateEndpoint', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$S3DownloadFilePluginOptionsToJson(
        S3DownloadFilePluginOptions instance) =>
    <String, dynamic>{
      'getProperties': instance.getProperties,
      'useAccelerateEndpoint': instance.useAccelerateEndpoint,
    };
