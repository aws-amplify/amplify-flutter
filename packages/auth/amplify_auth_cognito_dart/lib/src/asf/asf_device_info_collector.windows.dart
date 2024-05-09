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

typedef _WindowsDeviceInfo = ({
  String? osVersion,
  String? deviceId,
});

/// {@template amplify_auth_cognito_dart.asf.asf_device_info_windows}
/// The Windows implementation of [NativeASFDeviceInfoCollector].
/// {@endtemplate}
final class ASFDeviceInfoWindows extends ASFDeviceInfoPlatform {
  /// {@macro amplify_auth_cognito_dart.asf.asf_device_info_windows}
  ASFDeviceInfoWindows() : super.base();

  WindowsException get _lastException =>
      WindowsException(HRESULT_FROM_WIN32(GetLastError()));

  /// Retrieves the package information.
  /// Adapted from:
  /// - https://github.com/fluttercommunity/plus_plugins/blob/e8d3b445ce52012456126a3844ddb49b92c5c850/packages/package_info_plus/package_info_plus/lib/src/file_version_info.dart
  /// - https://github.com/dart-windows/win32/blob/5f305167bfe181abbc663a7f7f2a0787910fac21/example/filever.dart#L22
  /// - https://learn.microsoft.com/en-us/windows/win32/api/winver/nf-winver-verqueryvaluea
  late final PackageInfo? _packageInfo = using((arena) {
    final lptstrFilename = wsalloc(MAX_PATH);
    arena.onReleaseAll(() => free(lptstrFilename));
    if (FAILED(
      GetModuleFileName(0, lptstrFilename, MAX_PATH),
    )) {
      logger.error('Could not retrieve filename', _lastException);
      return null;
    }
    final verSize = GetFileVersionInfoSize(lptstrFilename, nullptr);
    if (verSize == 0) {
      logger.error('Could not retrieve file info size', _lastException);
      return null;
    }
    final verData = arena<BYTE>(verSize);
    if (FAILED(
      GetFileVersionInfo(lptstrFilename, NULL, verSize, verData),
    )) {
      logger.error('Could not retrieve file info', _lastException);
      return null;
    }

    final fileInfoPtr = arena<Pointer<VS_FIXEDFILEINFO>>();
    final lenFileInfo = arena<UINT>();
    final lpSubBlock = TEXT(r'\');
    arena.onReleaseAll(() => free(lpSubBlock));
    if (FAILED(
      VerQueryValue(verData, lpSubBlock, fileInfoPtr, lenFileInfo),
    )) {
      logger.error('Could not query file info', _lastException);
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
    final lpTranslateSubBlock = TEXT(r'\VarFileInfo\Translation');
    arena.onReleaseAll(() => free(lpTranslateSubBlock));
    if (FAILED(
      VerQueryValue(
        verData,
        lpTranslateSubBlock,
        lpTranslate,
        lenTranslate,
      ),
    )) {
      logger.error('Could not retrieve translation info', _lastException);
    }

    String toHex(int value) => value.toRadixString(16).padLeft(4, '0');
    String? valueFor(String name) {
      if (lpTranslate == nullptr || lenTranslate.value == 0) return null;
      final langCodepageArr = lpTranslate.value;
      final n = lenTranslate.value / sizeOf<_LANGANDCODEPAGE>();
      final langCodepages = [
        // TODO(equartey): `.elementAt(i)` is depreciated in Dart 3.3.0. Use `(langCodepageArr + i).ref` when min Dart version is 3.3.0 or higher
        // ignore: deprecated_member_use
        for (var i = 0; i < n; i++) langCodepageArr.elementAt(i).ref,
      ];
      for (final _LANGANDCODEPAGE(:wLanguage, :wCodepage) in langCodepages) {
        final lpBuffer = arena<LPWSTR>();
        final puLen = arena<UINT>();
        final lang = toHex(wLanguage);
        final codepage = toHex(wCodepage);
        final lpSubBlock = TEXT('\\StringFileInfo\\$lang$codepage\\$name');
        arena.onReleaseAll(() => free(lpSubBlock));
        if (SUCCEEDED(
          VerQueryValue(
            lpTranslateSubBlock,
            lpSubBlock,
            lpBuffer,
            puLen,
          ),
        )) {
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
    // TODO(dnys1): Use better mechanism for determining OS version.
    // See:
    // - https://learn.microsoft.com/en-us/windows/win32/api/sysinfoapi/nf-sysinfoapi-getversionexw
    // - https://github.com/dart-windows/win32/blob/5f305167bfe181abbc663a7f7f2a0787910fac21/example/manifest/README.md
    var osVersion = 'Windows';
    final osVersionInfo = arena<OSVERSIONINFO>()
      ..ref.dwOSVersionInfoSize = sizeOf<OSVERSIONINFO>();
    if (SUCCEEDED(GetVersionEx(osVersionInfo))) {
      final OSVERSIONINFO(:dwMajorVersion, :dwMinorVersion, :dwBuildNumber) =
          osVersionInfo.ref;
      osVersion += '/$dwMajorVersion.$dwMinorVersion.$dwBuildNumber';
    } else {
      logger.error('Error retrieving OS version', _lastException);
    }
    if (IsWindows10OrGreater() == TRUE) {
      osVersion += '/10+';
    }
    if (IsWindowsServer() == TRUE) {
      osVersion += '/Server';
    }
    // See: https://stackoverflow.com/a/65912938
    final sqmClientKey = Registry.openPath(
      RegistryHive.localMachine,
      path: r'SOFTWARE\Microsoft\SQMClient',
    );
    final deviceId = sqmClientKey.getValueAsString('MachineId');
    return (osVersion: osVersion, deviceId: deviceId);
  });

  @override
  Future<String?> get deviceFingerprint async => null;

  @override
  late final Future<String?> deviceLanguage = using((arena) async {
    // From: https://learn.microsoft.com/en-us/windows/win32/intl/locale-name-constants
    const LOCALE_NAME_MAX_LENGTH = 85;
    final lpLocaleName = wsalloc(LOCALE_NAME_MAX_LENGTH);
    arena.onReleaseAll(() => free(lpLocaleName));
    if (FAILED(
      GetUserDefaultLocaleName(lpLocaleName, LOCALE_NAME_MAX_LENGTH),
    )) {
      logger.error('Could not retrieve device language', _lastException);
      return null;
    }
    return lpLocaleName.toDartString();
  });

  @override
  late final Future<String?> deviceName = using((arena) async {
    // Retrieves the computer's name using `GetComputerName`:
    // https://learn.microsoft.com/en-us/windows/win32/api/winbase/nf-winbase-getcomputernamew
    final lpBuffer = arena<Uint16>(256).cast<Utf16>();
    final nSize = arena<DWORD>()..value = 256;
    if (FAILED(GetComputerName(lpBuffer, nSize))) {
      logger.error('Could not retrieve computer name', _lastException);
      return null;
    }
    return lpBuffer.toDartString(length: nSize.value);
  });

  @override
  // TODO(Jordan-Nelson): Use new enums when min win32 version is v5.4.0 or
  // higher
  // ignore: deprecated_member_use
  Future<int?> get screenHeightPixels async => GetSystemMetrics(SM_CYSCREEN);

  @override
  // TODO(Jordan-Nelson): Use new enums when min win32 version is v5.4.0 or
  // higher
  // ignore: deprecated_member_use
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
