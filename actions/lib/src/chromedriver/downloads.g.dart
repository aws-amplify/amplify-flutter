// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllChromeDownloads _$AllChromeDownloadsFromJson(Map json) => AllChromeDownloads(
      versions: (json['versions'] as List<dynamic>)
          .map((e) =>
              ChromeVersion.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
    );

ChromeVersion _$ChromeVersionFromJson(Map json) => ChromeVersion(
      version: json['version'] as String,
      revision: json['revision'] as String,
      downloads: ChromeVersionDownloads.fromJson(
          Map<String, Object?>.from(json['downloads'] as Map)),
    );

ChromeVersionDownloads _$ChromeVersionDownloadsFromJson(Map json) =>
    ChromeVersionDownloads(
      chrome: (json['chrome'] as List<dynamic>?)
              ?.map((e) =>
                  ChromeDownload.fromJson(Map<String, Object?>.from(e as Map)))
              .toList() ??
          const [],
      chromedriver: (json['chromedriver'] as List<dynamic>?)
              ?.map((e) =>
                  ChromeDownload.fromJson(Map<String, Object?>.from(e as Map)))
              .toList() ??
          const [],
    );

ChromeDownload _$ChromeDownloadFromJson(Map json) => ChromeDownload(
      platform: $enumDecode(_$ChromePlatformEnumMap, json['platform']),
      url: json['url'] as String,
    );

const _$ChromePlatformEnumMap = {
  ChromePlatform.linux64: 'linux64',
  ChromePlatform.macArm64: 'mac-arm64',
  ChromePlatform.macX64: 'mac-x64',
  ChromePlatform.win32: 'win32',
  ChromePlatform.win64: 'win64',
};
