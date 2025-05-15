// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackageInfo _$PackageInfoFromJson(Map<String, dynamic> json) => PackageInfo(
  appName: json['app_name'] as String?,
  version: json['version'] as String?,
  buildNumber: json['build_number'] as String?,
  packageName: json['package_name'] as String?,
);

Map<String, dynamic> _$PackageInfoToJson(PackageInfo instance) =>
    <String, dynamic>{
      if (instance.appName case final value?) 'app_name': value,
      if (instance.version case final value?) 'version': value,
      if (instance.buildNumber case final value?) 'build_number': value,
      if (instance.packageName case final value?) 'package_name': value,
    };
