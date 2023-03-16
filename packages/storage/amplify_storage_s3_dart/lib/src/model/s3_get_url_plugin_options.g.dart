// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_get_url_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3GetUrlPluginOptions _$S3GetUrlPluginOptionsFromJson(
        Map<String, dynamic> json) =>
    S3GetUrlPluginOptions(
      expiresIn: json['expiresIn'] == null
          ? const Duration(minutes: 15)
          : Duration(microseconds: json['expiresIn'] as int),
      checkObjectExistence: json['checkObjectExistence'] as bool? ?? false,
      useAccelerateEndpoint: json['useAccelerateEndpoint'] as bool? ?? false,
    );

Map<String, dynamic> _$S3GetUrlPluginOptionsToJson(
        S3GetUrlPluginOptions instance) =>
    <String, dynamic>{
      'expiresIn': instance.expiresIn.inMicroseconds,
      'checkObjectExistence': instance.checkObjectExistence,
      'useAccelerateEndpoint': instance.useAccelerateEndpoint,
    };
