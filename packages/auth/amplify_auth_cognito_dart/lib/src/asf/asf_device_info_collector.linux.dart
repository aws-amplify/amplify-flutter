// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.dart';
import 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.vm.dart';
import 'package:amplify_auth_cognito_dart/src/asf/package_info.dart';
import 'package:async/async.dart';
import 'package:path/path.dart' as p;

/// {@template amplify_auth_cognito_dart.asf.asf_device_info_linux}
/// The Linux implementation of [NativeASFDeviceInfoCollector].
/// {@endtemplate}
final class ASFDeviceInfoLinux extends ASFDeviceInfoPlatform {
  /// {@macro amplify_auth_cognito_dart.asf.asf_device_info_linux}
  ASFDeviceInfoLinux() : super.base();

  /// Retrieves the package information when running as a Flutter app.
  /// Adapted from `package_info_plus`: https://github.com/fluttercommunity/plus_plugins/blob/e8d3b445ce52012456126a3844ddb49b92c5c850/packages/package_info_plus/package_info_plus/lib/src/package_info_plus_linux.dart
  ///
  /// For Dart apps, there is not a good mechanism to retrieve this info.
  final AsyncMemoizer<PackageInfo> _packageInfoMemo = AsyncMemoizer();
  Future<PackageInfo> get _packageInfo => _packageInfoMemo.runOnce(() async {
        final exePath = await File('/proc/self/exe').resolveSymbolicLinks();
        final appPath = p.dirname(exePath);
        final assetPath = p.join(appPath, 'data', 'flutter_assets');
        final versionFile = File(p.join(assetPath, 'version.json'));
        final versionJson = await versionFile.exists()
            ? await versionFile.readAsString()
            : null;
        if (versionJson == null) {
          return PackageInfo(
            // Fallback to the name of the executable in Dart-only environments.
            appName: p.basename(exePath),
          );
        }
        final versionData = jsonDecode(versionJson) as Map<String, Object?>;
        return PackageInfo.fromJson(versionData);
      });

  @override
  Future<String?> get applicationName async => (await _packageInfo).appName;

  @override
  Future<String?> get applicationVersion async => switch (await _packageInfo) {
        PackageInfo(:final version?, :final buildNumber?) =>
          '$version($buildNumber)',
        PackageInfo(:final version?) => version,
        _ => null,
      };

  @override
  Future<String?> get deviceFingerprint async => null;

  @override
  Future<String?> get deviceLanguage async {
    final locale = _parseValues(await _proc('locale') ?? '');
    return locale['LANGUAGE'] ??
        locale['LANG'] ??
        _env('LANGUAGE') ??
        _env('LANG');
  }

  @override
  Future<String?> get deviceName async => _proc('hostname');

  // There doesn't seem to be a way to reliably get these in
  // a generic, cross-distro way.
  @override
  Future<int?> get screenHeightPixels async => 0;

  @override
  Future<int?> get screenWidthPixels async => 0;

  // See: https://linux.die.net/man/1/lsb_release
  late final _lsbRelease = _tryReadValues('/etc/lsb-release');

  // See: https://man7.org/linux/man-pages/man5/os-release.5.html
  late final _osRelease = [
    '/etc/os-release',
    '/usr/lib/os-release',
    '/etc/initrd-release',
    '/usr/lib/extension-release.d/extension-release.IMAGE',
  ].fold<Future<Map<String, String>?>>(
    Future.value(null),
    (values, path) => values.then(
      (values) async => values ?? await _tryReadValues(path),
    ),
  );

  @override
  late final Future<String?> deviceOsReleaseVersion = () async {
    final (osRelease, lsbRelease) = await (_osRelease, _lsbRelease).wait;
    final osName = lsbRelease?['DISTRIB_ID'] ?? osRelease?['NAME'] ?? 'Linux';
    final osVersion =
        lsbRelease?['DISTRIB_RELEASE'] ?? osRelease?['VERSION_ID'] ?? '';
    return '$osName/$osVersion';
  }();

  @override
  late final Future<String?> thirdPartyDeviceId = _tryRead('/etc/machine-id');

  Future<String?> _tryRead(String path) async {
    try {
      return await File(path).readAsString();
    } on Exception {
      return null;
    }
  }

  static final _escapedString = RegExp(r'"(.*)"');

  Map<String, String> _parseValues(String output) {
    String unescape(String s) {
      if (_escapedString.firstMatch(s) case final RegExpMatch match) {
        s = match.group(1)!;
      }
      return s;
    }

    final lines = LineSplitter.split(output);
    return Map.fromEntries(
      lines
          .map(
            (line) => switch (line.split('=')) {
              [final key, final value] when value.isNotEmpty =>
                MapEntry(key, unescape(value)),
              _ => null,
            },
          )
          .nonNulls,
    );
  }

  Future<Map<String, String>?> _tryReadValues(String path) async {
    final file = await _tryRead(path);
    if (file == null) return null;
    return _parseValues(file);
  }

  Future<String?> _proc(String exe) async {
    final res = await Process.run(
      exe,
      const [],
      stdoutEncoding: const SystemEncoding(),
    );
    return switch (res.exitCode) {
      0 => res.stdout as String,
      _ => null,
    };
  }

  String? _env(String key) => switch (Platform.environment[key]) {
        final value? when value.isNotEmpty => value,
        _ => null,
      };
}
