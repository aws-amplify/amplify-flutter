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
      'app_name': ?instance.appName,
      'version': ?instance.version,
      'build_number': ?instance.buildNumber,
      'package_name': ?instance.packageName,
    };
