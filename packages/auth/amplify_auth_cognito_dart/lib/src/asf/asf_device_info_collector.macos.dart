// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.dart';
import 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.vm.dart';
import 'package:amplify_auth_cognito_dart/src/platform/macos_bindings.g.dart';
import 'package:amplify_auth_cognito_dart/src/platform/macos_utils.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:ffi/ffi.dart';

// Implementation derived from amplify-swift:
// https://github.com/aws-amplify/amplify-swift/blob/6b8946fd527f94d6ccbd419e180295ebf64a9c89/AmplifyPlugins/Auth/Sources/AWSCognitoAuthPlugin/ASF/ASFDeviceInfo.swift

/// {@template amplify_auth_cognito_dart.asf.asf_device_info_macos}
/// The macOS implementation of [NativeASFDeviceInfoCollector].
/// {@endtemplate}
final class ASFDeviceInfoMacOS extends ASFDeviceInfoPlatform {
  /// {@macro amplify_auth_cognito_dart.asf.asf_device_info_macos}
  ASFDeviceInfoMacOS() : super.base();

  final _native = NativeMacOsFramework(DynamicLibrary.process());

  late final _kCFBundleShortVersionString =
      'CFBundleShortVersionString'.toNSString(_native);
  late final _kCFBundleVersionKey = NSString.castFromPointer(
    _native,
    _native.kCFBundleVersionKey.cast(),
  );

  NSBundle? get _bundle => NSBundle.getMainBundle(_native);

  NSProcessInfo? get _processInfo => NSProcessInfo.getProcessInfo(_native);

  @override
  Future<String?> get deviceName async => _processInfo?.hostName?.toString();

  @override
  Future<String?> get applicationName async =>
      _bundle?.bundleIdentifier?.toString();

  @override
  Future<String?> get applicationVersion async {
    final nsAppVersion =
        _bundle?.objectForInfoDictionaryKey_(_kCFBundleShortVersionString);
    if (nsAppVersion == null || !NSString.isInstance(nsAppVersion)) {
      return null;
    }
    final appVersion = NSString.castFrom(nsAppVersion).toString();
    final nsAppBuild =
        _bundle?.objectForInfoDictionaryKey_(_kCFBundleVersionKey);
    final appBuild = nsAppBuild != null && NSString.isInstance(nsAppBuild)
        ? NSString.castFrom(nsAppBuild).toString()
        : null;
    return appBuild == null || appVersion == appBuild
        ? appVersion
        : '$appVersion($appBuild)';
  }

  @override
  Future<String?> get deviceFingerprint async => using((arena) {
        final model = _ioValueFor<CFData>('model');
        final systemInfo = arena<utsname>();
        var type = '';
        if (_native.uname(systemInfo) == 0) {
          final sysname = systemInfo.ref.sysname;
          final bytes = <int>[];
          for (var i = 0;; i++) {
            final byte = sysname[i];
            if (byte == 0) break;
            bytes.add(byte);
          }
          type = utf8.decode(bytes);
        }
        const build = zDebugMode ? 'debug' : 'release';

        return 'Apple/$model/$type/-:$_osVersion/-/-:-/$build';
      });

  @override
  Future<String?> get deviceLanguage async {
    final nsDeviceLanguage =
        NSLocale.getPreferredLanguages(_native)?.objectAtIndex_(0);
    return nsDeviceLanguage == null || !NSString.isInstance(nsDeviceLanguage)
        ? null
        : NSString.castFrom(nsDeviceLanguage).toString();
  }

  @override
  Future<String?> get deviceOsReleaseVersion async => 'macOS/$_osVersion';

  NSScreen? get _mainScreen {
    // NSScreen is not linked in Dart-only apps.
    if (!zIsFlutter) {
      return null;
    }
    // TODO(dnys1): https://github.com/dart-lang/ffigen/issues/608
    // return NSScreen.getMainScreen(_native);
    return null;
  }

  @override
  Future<int?> get screenHeightPixels async =>
      _mainScreen?.visibleFrame.size.height.toInt() ?? 0;

  @override
  Future<int?> get screenWidthPixels async =>
      _mainScreen?.visibleFrame.size.width.toInt() ?? 0;

  String? _ioValueFor<CFType>(String key) => using((arena) {
        const serviceName = 'IOPlatformExpertDevice';
        final service = _native.IOServiceGetMatchingService(
          _native.kIOMasterPortDefault,
          _native.IOServiceMatching(
            serviceName.toNativeUtf8(allocator: arena).cast(),
          ),
        );
        logger.verbose('Found service matching $serviceName: $service');
        if (service == IO_OBJECT_NULL) {
          return null;
        }
        arena.onReleaseAll(() => _native.IOObjectRelease(service));
        final data = _native.IORegistryEntryCreateCFProperty(
          service,
          key.toCFString(lib: _native, arena: arena).cast(),
          _native.kCFAllocatorDefault,
          0,
        );
        logger.verbose('Got data for $key: $data');
        if (data == nullptr) {
          return null;
        }
        arena.onReleaseAll(() => _native.CFRelease(data));
        return switch (CFType) {
          const (CFData) => data.cast<CFData>().toDartString(_native),
          const (CFString) => data.cast<CFString>().toDartString(_native),
          _ => null,
        };
      });

  @override
  Future<String?> get thirdPartyDeviceId async =>
      _ioValueFor<CFString>(kIOPlatformUUIDKey);

  String get _osVersion =>
      _processInfo?.operatingSystemVersionString?.toString() ??
      Platform.operatingSystemVersion;
}
