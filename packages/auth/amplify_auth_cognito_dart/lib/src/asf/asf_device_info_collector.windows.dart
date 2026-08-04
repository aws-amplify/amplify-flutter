// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: constant_identifier_names

import 'dart:ffi';

import 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.dart';
import 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.vm.dart';
import 'package:amplify_auth_cognito_dart/src/asf/package_info.dart';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:win32_registry/win32_registry.dart';

final class _LANGANDCODEPAGE extends Struct {
  @WORD()
  external int wLanguage;

  @WORD()
  external int wCodepage;
}

typedef _WindowsDeviceInfo = ({String? osVersion, String? deviceId});

/// {@template amplify_auth_cognito_dart.asf.asf_device_info_windows}
/// The Windows implementation of [NativeASFDeviceInfoCollector].
/// {@endtemplate}
final class ASFDeviceInfoWindows extends ASFDeviceInfoPlatform {
  /// {@macro amplify_auth_cognito_dart.asf.asf_device_info_windows}
  ASFDeviceInfoWindows() : super.base();

  WindowsException _exceptionFor(WIN32_ERROR error) =>
      WindowsException(error.toHRESULT());

  /// Retrieves the package information.
  /// Adapted from:
  /// - https://github.com/fluttercommunity/plus_plugins/blob/e8d3b445ce52012456126a3844ddb49b92c5c850/packages/package_info_plus/package_info_plus/lib/src/file_version_info.dart
  /// - https://github.com/dart-windows/win32/blob/5f305167bfe181abbc663a7f7f2a0787910fac21/example/filever.dart#L22
  /// - https://learn.microsoft.com/en-us/windows/win32/api/winver/nf-winver-verqueryvaluea
  late final PackageInfo? _packageInfo = using((arena) {
    final lptstrFilename = wsalloc(MAX_PATH, arena);
    final fileNameResult = GetModuleFileName(null, lptstrFilename, MAX_PATH);
    if (fileNameResult.value == 0) {
      logger.error(
        'Could not retrieve filename',
        _exceptionFor(fileNameResult.error),
      );
      return null;
    }
    final filenamePcwstr = PCWSTR(lptstrFilename);
    final verSizeResult = GetFileVersionInfoSize(filenamePcwstr, null);
    final verSize = verSizeResult.value;
    if (verSize == 0) {
      logger.error(
        'Could not retrieve file info size',
        _exceptionFor(verSizeResult.error),
      );
      return null;
    }
    final verData = arena<BYTE>(verSize);
    final verInfoResult = GetFileVersionInfo(filenamePcwstr, verSize, verData);
    if (!verInfoResult.value) {
      logger.error(
        'Could not retrieve file info',
        _exceptionFor(verInfoResult.error),
      );
      return null;
    }

    final fileInfoPtr = arena<Pointer<VS_FIXEDFILEINFO>>();
    final lenFileInfo = arena<UINT>();
    if (!VerQueryValue(verData, arena.pcwstr(r'\'), fileInfoPtr, lenFileInfo)) {
      logger.error('Could not query file info');
      return null;
    }

    final fileInfo = fileInfoPtr.value;
    final (:major, :minor, :patch, :build) = (
      major: HIWORD(fileInfo.ref.dwFileVersionMS),
      minor: LOWORD(fileInfo.ref.dwFileVersionMS),
      patch: HIWORD(fileInfo.ref.dwFileVersionLS),
      build: LOWORD(fileInfo.ref.dwFileVersionLS),
    );

    final lpTranslate = arena<Pointer<_LANGANDCODEPAGE>>();
    final lenTranslate = arena<UINT>();
    final lpTranslateSubBlock = arena.pcwstr(r'\VarFileInfo\Translation');
    if (!VerQueryValue(
      verData,
      lpTranslateSubBlock,
      lpTranslate,
      lenTranslate,
    )) {
      logger.error('Could not retrieve translation info');
    }

    String toHex(int value) => value.toRadixString(16).padLeft(4, '0');
    String? valueFor(String name) {
      if (lpTranslate == nullptr || lenTranslate.value == 0) return null;
      final langCodepageArr = lpTranslate.value;
      final n = lenTranslate.value / sizeOf<_LANGANDCODEPAGE>();
      final langCodepages = [
        for (var i = 0; i < n; i++) (langCodepageArr + i).ref,
      ];
      for (final _LANGANDCODEPAGE(:wLanguage, :wCodepage) in langCodepages) {
        final lpBuffer = arena<LPWSTR>();
        final puLen = arena<UINT>();
        final lang = toHex(wLanguage);
        final codepage = toHex(wCodepage);
        final lpSubBlock = arena.pcwstr(
          '\\StringFileInfo\\$lang$codepage\\$name',
        );
        if (VerQueryValue(lpTranslateSubBlock, lpSubBlock, lpBuffer, puLen)) {
          if (lpBuffer != nullptr && puLen.value > 0) {
            return lpBuffer.value.toDartString(length: puLen.value);
          }
        }
      }

      return null;
    }

    final applicationName = valueFor('ProductName');
    return PackageInfo(
      appName: applicationName,
      version: '$major.$minor.$patch',
      buildNumber: build.toString(),
    );
  });

  @override
  Future<String?> get applicationName async => _packageInfo?.appName;

  @override
  Future<String?> get applicationVersion async => switch (_packageInfo) {
    PackageInfo(:final version?, :final buildNumber?) =>
      '$version($buildNumber)',
    PackageInfo(:final version?) => version,
    _ => null,
  };

  // Device methods adapted from `device_info_plus`:
  // https://github.com/fluttercommunity/plus_plugins/blob/e8d3b445ce52012456126a3844ddb49b92c5c850/packages/device_info_plus/device_info_plus/lib/src/device_info_plus_windows.dart

  late final _WindowsDeviceInfo _systemInfo = using((arena) {
    // See: https://learn.microsoft.com/en-us/windows/win32/api/sysinfoapi/nf-sysinfoapi-rtlgetversion
    var osVersion = 'Windows';
    final osVersionInfo = arena<OSVERSIONINFO>()
      ..ref.dwOSVersionInfoSize = sizeOf<OSVERSIONINFO>();
    final status = RtlGetVersion(osVersionInfo);
    if (status.isOk) {
      final OSVERSIONINFO(:dwMajorVersion, :dwMinorVersion, :dwBuildNumber) =
          osVersionInfo.ref;
      osVersion += '/$dwMajorVersion.$dwMinorVersion.$dwBuildNumber';
    } else {
      logger.error('Error retrieving OS version: $status');
    }
    if (IsWindows10OrGreater()) {
      osVersion += '/10+';
    }
    if (IsWindowsServer()) {
      osVersion += '/Server';
    }
    // See: https://stackoverflow.com/a/65912938
    final sqmClientKey = LOCAL_MACHINE.open(r'SOFTWARE\Microsoft\SQMClient');
    final deviceId = sqmClientKey.getString('MachineId');
    sqmClientKey.close();
    return (osVersion: osVersion, deviceId: deviceId);
  });

  @override
  Future<String?> get deviceFingerprint async => null;

  @override
  late final Future<String?> deviceLanguage = using((arena) async {
    // From: https://learn.microsoft.com/en-us/windows/win32/intl/locale-name-constants
    const LOCALE_NAME_MAX_LENGTH = 85;
    final lpLocaleName = wsalloc(LOCALE_NAME_MAX_LENGTH, arena);
    final result = GetUserDefaultLocaleName(
      lpLocaleName,
      LOCALE_NAME_MAX_LENGTH,
    );
    if (result.value == 0) {
      logger.error(
        'Could not retrieve device language',
        _exceptionFor(result.error),
      );
      return null;
    }
    return lpLocaleName.toDartString();
  });

  @override
  late final Future<String?> deviceName = using((arena) async {
    // Retrieves the computer's name using `GetComputerName`:
    // https://learn.microsoft.com/en-us/windows/win32/api/winbase/nf-winbase-getcomputernamew
    final lpBuffer = wsalloc(256, arena);
    final nSize = arena<DWORD>()..value = 256;
    final result = GetComputerName(lpBuffer, nSize);
    if (!result.value) {
      logger.error(
        'Could not retrieve computer name',
        _exceptionFor(result.error),
      );
      return null;
    }
    return lpBuffer.toDartString(length: nSize.value);
  });

  @override
  Future<int?> get screenHeightPixels async => GetSystemMetrics(SM_CYSCREEN);

  @override
  Future<int?> get screenWidthPixels async => GetSystemMetrics(SM_CXSCREEN);

  @override
  Future<String?> get thirdPartyDeviceId async => _systemInfo.deviceId;

  @override
  Future<String?> get deviceOsReleaseVersion async {
    if (_systemInfo case (:final osVersion?, deviceId: _)) {
      return osVersion;
    }
    return null;
  }
}
