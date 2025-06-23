// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_download_data_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3DownloadDataPluginOptions _$S3DownloadDataPluginOptionsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('S3DownloadDataPluginOptions', json, ($checkedConvert) {
  final val = S3DownloadDataPluginOptions(
    getProperties: $checkedConvert('getProperties', (v) => v as bool? ?? false),
    bytesRange: $checkedConvert(
      'bytesRange',
      (v) => v == null
          ? null
          : S3DataBytesRange.fromJson(v as Map<String, dynamic>),
    ),
    useAccelerateEndpoint: $checkedConvert(
      'useAccelerateEndpoint',
      (v) => v as bool? ?? false,
    ),
  );
  return val;
});

Map<String, dynamic> _$S3DownloadDataPluginOptionsToJson(
  S3DownloadDataPluginOptions instance,
) => <String, dynamic>{
  if (instance.bytesRange?.toJson() case final value?) 'bytesRange': value,
  'getProperties': instance.getProperties,
  'useAccelerateEndpoint': instance.useAccelerateEndpoint,
};
