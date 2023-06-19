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

Map<String, dynamic> _$PackageInfoToJson(PackageInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('app_name', instance.appName);
  writeNotNull('version', instance.version);
  writeNotNull('build_number', instance.buildNumber);
  writeNotNull('package_name', instance.packageName);
  return val;
}
