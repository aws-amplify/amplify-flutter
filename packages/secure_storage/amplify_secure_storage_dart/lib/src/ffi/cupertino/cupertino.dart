// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:ffi';

import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/unknown_exception.dart';
import 'package:amplify_secure_storage_dart/src/ffi/cupertino/core_foundation.bindings.g.dart';
import 'package:amplify_secure_storage_dart/src/ffi/cupertino/security.bindings.g.dart';
import 'package:amplify_secure_storage_dart/src/types/keychain_attribute_accessible.dart';
import 'package:ffi/ffi.dart';

export 'core_foundation.bindings.g.dart' hide CoreFoundation;
export 'security.bindings.g.dart' hide Security;

final DynamicLibrary _dynamicLibrary = DynamicLibrary.executable();

final Security security = Security(_dynamicLibrary);
final CoreFoundation coreFoundation = CoreFoundation(_dynamicLibrary);

extension CFDataRefX on Pointer<CFData> {
  /// Converts a [CFDataRef] to a Dart String.
  String? toDartString() {
    if (this == nullptr) return null;
    final bytePtr = coreFoundation.CFDataGetBytePtr(this);
    if (bytePtr == nullptr) return null;
    return bytePtr.cast<Utf8>().toDartString();
  }
}

extension CFStringPointerX on Pointer<CFString> {
  /// Converts a [CFStringRef] to a Dart String.
  String? toDartString() {
    if (this == nullptr) return null;
    final cStringPtr = coreFoundation.CFStringGetCStringPtr(
      this,
      kCFStringEncodingUTF8,
    );
    if (cStringPtr == nullptr) return null;
    return cStringPtr.cast<Utf8>().toDartString();
  }
}

extension KeychainAttributeAccessibleX on KeychainAttributeAccessible {
  /// Converts [KeychainAttributeAccessible] to the associated pointer constant.
  CFStringRef toCFStringRef() {
    switch (this) {
      case KeychainAttributeAccessible.accessibleAfterFirstUnlock:
        return security.kSecAttrAccessibleAfterFirstUnlock;
      case KeychainAttributeAccessible.accessibleAfterFirstUnlockThisDeviceOnly:
        return security.kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
      case KeychainAttributeAccessible.accessibleWhenPasscodeSetThisDeviceOnly:
        return security.kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly;
      case KeychainAttributeAccessible.accessibleWhenUnlocked:
        return security.kSecAttrAccessibleWhenUnlocked;
      case KeychainAttributeAccessible.accessibleWhenUnlockedThisDeviceOnly:
        return security.kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
      default:
        throw const UnknownException(
          'Could not convert KeychainAttributeAccessible to a native type.',
          recoverySuggestion: SecureStorageException.missingRecovery,
        );
    }
  }
}
