// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_download_data_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3DownloadDataPluginOptions _$S3DownloadDataPluginOptionsFromJson(
        Map<String, dynamic> json) =>
    S3DownloadDataPluginOptions(
      getProperties: json['getProperties'] as bool? ?? false,
      bytesRange: json['bytesRange'] == null
          ? null
          : S3DataBytesRange.fromJson(
              json['bytesRange'] as Map<String, dynamic>),
      useAccelerateEndpoint: json['useAccelerateEndpoint'] as bool? ?? false,
    );

Map<String, dynamic> _$S3DownloadDataPluginOptionsToJson(
    S3DownloadDataPluginOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bytesRange', instance.bytesRange?.toJson());
  val['getProperties'] = instance.getProperties;
  val['useAccelerateEndpoint'] = instance.useAccelerateEndpoint;
  return val;
}
