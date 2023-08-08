// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// TODO(dnys1): Migrate to `js_interop`.
library;

import 'dart:convert';

import 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.dart';
import 'package:amplify_auth_cognito_dart/src/asf/package_info.dart';
import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
// ignore: implementation_imports
import 'package:aws_common/src/js/common.dart';
import 'package:js/js.dart';
import 'package:path/path.dart';

/// {@template amplify_auth_cognito_dart.asf.asf_device_info_js}
/// The JS/Browser implementation of [NativeASFDeviceInfoCollector].
/// {@endtemplate}
final class ASFDeviceInfoPlatform extends NativeASFDeviceInfoCollector {
  /// {@macro amplify_auth_cognito_dart.asf.asf_device_info_js}
  ASFDeviceInfoPlatform();

  /// Retrieves the package information when running as a Flutter app.
  /// Adapted from `package_info_plus`: https://github.com/fluttercommunity/plus_plugins/blob/e8d3b445ce52012456126a3844ddb49b92c5c850/packages/package_info_plus/package_info_plus/lib/src/package_info_plus_web.dart
  ///
  /// For Dart apps, there is not a good mechanism to retrieve this info.
  final AsyncMemoizer<PackageInfo> _packageInfoMemo = AsyncMemoizer();
  Future<PackageInfo> get _packageInfo => _packageInfoMemo.runOnce(() async {
        final cacheBuster = DateTime.now().millisecondsSinceEpoch;
        final uri = Uri.parse(url.join(_baseUrl, 'version.json')).replace(
          queryParameters: {'cachebuster': cacheBuster.toString()},
        );
        try {
          final versionResp = await AWSHttpRequest.get(uri).send().response;
          final versionJson = await versionResp.decodeBody();
          final versionData = jsonDecode(versionJson) as Map<String, Object?>;
          return PackageInfo.fromJson(versionData);
        } on Exception {
          return const PackageInfo();
        }
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
  Future<String?> get deviceLanguage async => window.navigator.language;

  @override
  Future<String?> get deviceName async =>
      window.navigator.userAgentData?.platform ?? window.navigator.platform;

  @override
  Future<int?> get screenHeightPixels async => window.screen.height?.toInt();

  @override
  Future<int?> get screenWidthPixels async => window.screen.width?.toInt();

  @override
  Future<String?> get thirdPartyDeviceId async => null;
}

/// The base URL
String get _baseUrl {
  final baseElement = document.querySelector('base');
  final basePath = baseElement?.getAttribute('href') ?? '/';
  return url.join(window.location.origin, basePath);
}

extension on Window {
  external _Screen get screen;
  external _Navigator get navigator;
}

@JS('Screen')
@staticInterop
class _Screen {}

extension on _Screen {
  external double? get width;
  external double? get height;
}

@JS('Navigator')
@staticInterop
class _Navigator {}

extension on _Navigator {
  external String? get language;
  external String? get platform;
  external _NavigatorUAData? get userAgentData;
}

@JS('NavigatorUAData')
@staticInterop
class _NavigatorUAData {}

extension on _NavigatorUAData {
  external String? get platform;
}
