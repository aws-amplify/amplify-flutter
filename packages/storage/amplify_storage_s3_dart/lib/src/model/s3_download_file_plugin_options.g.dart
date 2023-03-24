// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_download_file_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3DownloadFilePluginOptions _$S3DownloadFilePluginOptionsFromJson(
        Map<String, dynamic> json) =>
    S3DownloadFilePluginOptions(
      getProperties: json['getProperties'] as bool? ?? false,
      useAccelerateEndpoint: json['useAccelerateEndpoint'] as bool? ?? false,
    );

Map<String, dynamic> _$S3DownloadFilePluginOptionsToJson(
        S3DownloadFilePluginOptions instance) =>
    <String, dynamic>{
      'getProperties': instance.getProperties,
      'useAccelerateEndpoint': instance.useAccelerateEndpoint,
    };
