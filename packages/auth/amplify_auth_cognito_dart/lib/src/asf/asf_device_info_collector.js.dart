// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library;

import 'dart:convert';
import 'dart:js_interop';

import 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.dart';
import 'package:amplify_auth_cognito_dart/src/asf/package_info.dart';
import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:path/path.dart';
import 'package:web/web.dart';

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
    final uri = Uri.parse(
      url.join(_baseUrl, 'version.json'),
    ).replace(queryParameters: {'cachebuster': cacheBuster.toString()});
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
  Future<int?> get screenHeightPixels async => window.screen.height;

  @override
  Future<int?> get screenWidthPixels async => window.screen.width;

  @override
  Future<String?> get thirdPartyDeviceId async => null;
}

/// The base URL
String get _baseUrl {
  final baseElement = document.querySelector('base');
  final basePath = baseElement?.getAttribute('href') ?? '/';
  return url.join(window.location.origin, basePath);
}

extension _PropsNavigator on Navigator {
  external _NavigatorUAData? get userAgentData;
}

@JS('NavigatorUAData')
extension type _NavigatorUAData._(JSObject _) implements JSObject {
  external String? get platform;
}
