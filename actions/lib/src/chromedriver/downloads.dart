// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/src/os.dart';
import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'downloads.g.dart';

const serializable = JsonSerializable(
  createToJson: false,
  anyMap: true,
);

@serializable
final class AllChromeDownloads {
  const AllChromeDownloads({
    required this.versions,
  });

  factory AllChromeDownloads.fromJson(Map<String, Object?> json) =>
      _$AllChromeDownloadsFromJson(json);

  final List<ChromeVersion> versions;

  /// Returns the ChromeDriver download URL for the given Chrome [version] and [platform].
  String chromeDriverUrl(String version, ChromePlatform platform) {
    final exactVersion = versions.firstWhereOrNull(
      (el) => el.version == version,
    );
    var url = exactVersion?.chromeDriverUrl(platform);
    // If the exact version doesn't match, get the latest for the patch version.
    if (url == null) {
      final patchVersion = version.split('.').sublist(0, 3).join('.');
      final latestChromeVersion = versions
          .where((v) => v.version.startsWith(patchVersion))
          .sortedBy<num>((v) => int.parse(v.version.split('.').last))
          .lastOrNull;
      url = latestChromeVersion?.chromeDriverUrl(platform);
    }
    return url ??
        (throw StateError('No download for Chrome $version ($platform)'));
  }
}

@serializable
final class ChromeVersion {
  const ChromeVersion({
    required this.version,
    required this.revision,
    required this.downloads,
  });

  factory ChromeVersion.fromJson(Map<String, Object?> json) =>
      _$ChromeVersionFromJson(json);

  final String version;
  final String revision;
  final ChromeVersionDownloads downloads;

  String? chromeDriverUrl(ChromePlatform platform) => downloads.chromedriver
      .firstWhereOrNull((download) => download.platform == platform)
      ?.url;
}

@serializable
final class ChromeVersionDownloads {
  const ChromeVersionDownloads({
    this.chrome = const [],
    this.chromedriver = const [],
  });

  factory ChromeVersionDownloads.fromJson(Map<String, Object?> json) =>
      _$ChromeVersionDownloadsFromJson(json);

  final List<ChromeDownload> chrome;
  final List<ChromeDownload> chromedriver;
}

@serializable
final class ChromeDownload {
  const ChromeDownload({
    required this.platform,
    required this.url,
  });

  factory ChromeDownload.fromJson(Map<String, Object?> json) =>
      _$ChromeDownloadFromJson(json);

  final ChromePlatform platform;
  final String url;
}

enum ChromePlatform {
  linux64,
  @JsonValue('mac-arm64')
  macArm64,
  @JsonValue('mac-x64')
  macX64,
  win32,
  win64;

  static ChromePlatform fromOsArch(OS os, Arch arch) => switch ((os, arch)) {
        (OS.linux, Arch.x64) => ChromePlatform.linux64,
        (OS.macOS, Arch.x64) => ChromePlatform.macX64,
        (OS.macOS, Arch.arm64) => ChromePlatform.macArm64,
        final unsupported =>
          throw UnsupportedError('Unsupported OS/arch combo: $unsupported'),
      };
}
