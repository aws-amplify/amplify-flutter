// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:ffi';

import 'package:amplify_secure_storage_dart/src/exception/access_denied_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/duplicate_item_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/item_not_found_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/unknown_exception.dart';
import 'package:amplify_secure_storage_dart/src/ffi/cupertino/cupertino.dart';
import 'package:amplify_secure_storage_dart/src/interfaces/amplify_secure_storage_interface.dart';
import 'package:amplify_secure_storage_dart/src/types/amplify_secure_storage_config.dart';
import 'package:ffi/ffi.dart';

/// {@template amplify_secure_storage_dart.amplify_secure_storage_cupertino}
/// The implementation of [SecureStorageInterface] for iOS and MacOS.
/// {@endtemplate}
///
/// Data is stored with the item class of generic password, with the
/// "account" attribute set to the provided key, and the "service"
/// attribute set to the package identifier.
///
/// References:
/// - [Item Class](https://developer.apple.com/documentation/security/keychain_services/keychain_items/item_class_keys_and_values?language=objc)
/// - [Account Attribute](https://developer.apple.com/documentation/security/ksecattraccount?language=objc)
/// - [Service Attribute](https://developer.apple.com/documentation/security/kSecAttrService?language=objc)
class AmplifySecureStorageCupertino extends AmplifySecureStorageInterface {
  /// {@macro amplify_secure_storage_dart.amplify_secure_storage_cupertino}
  const AmplifySecureStorageCupertino({
    required AmplifySecureStorageConfig config,
  }) : super(config: config);

  /// The value of the service name attribute for all keychain items.
  String get _serviceName => '${config.packageId}.${config.scope}';

  @override
  void write({required String key, required String value}) {
    return using((Arena arena) {
      try {
        _add(key: key, value: value, arena: arena);
      } on DuplicateItemException {
        _update(key: key, value: value, arena: arena);
      }
    });
  }

  @override
  String? read({required String key}) {
    return using((Arena arena) {
      try {
        return _getValue(key: key, arena: arena);
      } on ItemNotFoundException {
        return null;
      }
    });
  }

  @override
  void delete({required String key}) {
    using((Arena arena) {
      try {
        _remove(key: key, arena: arena);
      } on ItemNotFoundException {
        // do nothing if the item is not found
      }
    });
  }

  /// Updates an item in the keychain.
  ///
  /// throws [ItemNotFoundException] if the item is not in the keychain.
  void _update({
    required String key,
    required String value,
    required Arena arena,
  }) {
    final account = _createCFString(value: key, arena: arena);
    final service = _createCFString(value: _serviceName, arena: arena);
    final query = _createCFDictionary(
      map: {
        security.kSecClass: security.kSecClassGenericPassword,
        security.kSecAttrAccount: account,
        security.kSecAttrService: service,
      },
      arena: arena,
    );
    final data = _createCFData(value: value, arena: arena);
    final attributes = _createCFDictionary(
      map: {security.kSecValueData: data},
      arena: arena,
    );
    final status = security.SecItemUpdate(query, attributes);
    if (status != errSecSuccess) {
      throw _getExceptionFromResultCode(status);
    }
  }

  /// Adds a new item into the keychain.
  ///
  /// throws [DuplicateItemException] if an item with the same key
  /// is already present in the keychain
  void _add({
    required String key,
    required String value,
    required Arena arena,
  }) {
    final account = _createCFString(value: key, arena: arena);
    final service = _createCFString(value: _serviceName, arena: arena);
    final secret = _createCFData(value: value, arena: arena);
    final query = _createCFDictionary(
      map: {
        security.kSecClass: security.kSecClassGenericPassword,
        security.kSecAttrAccount: account,
        security.kSecAttrService: service,
        security.kSecValueData: secret,
      },
      arena: arena,
    );
    final status = security.SecItemAdd(query, nullptr);
    if (status != errSecSuccess) {
      throw _getExceptionFromResultCode(status);
    }
  }

  /// Removes an item from the keychain.
  ///
  /// throws [ItemNotFoundException] if the item is not in the keychain.
  void _remove({
    required String key,
    required Arena arena,
  }) {
    final account = _createCFString(value: key, arena: arena);
    final service = _createCFString(value: _serviceName, arena: arena);
    final query = _createCFDictionary(
      map: {
        security.kSecClass: security.kSecClassGenericPassword,
        security.kSecAttrAccount: account,
        security.kSecAttrService: service,
        security.kSecReturnData: security.kCFBooleanTrue,
      },
      arena: arena,
    );
    final status = security.SecItemDelete(query);
    if (status != errSecSuccess) {
      throw _getExceptionFromResultCode(status);
    }
  }

  /// Returns the value for a given key in the keychain.
  ///
  /// throws [ItemNotFoundException] if the item is not in the keychain.
  String? _getValue({required String key, required Arena arena}) {
    final account = _createCFString(value: key, arena: arena);
    final service = _createCFString(value: _serviceName, arena: arena);
    final query = _createCFDictionary(
      map: {
        security.kSecMatchLimit: security.kSecMatchLimitOne,
        security.kSecClass: security.kSecClassGenericPassword,
        security.kSecAttrAccount: account,
        security.kSecAttrService: service,
        security.kSecReturnData: security.kCFBooleanTrue,
      },
      arena: arena,
    );
    final queryResult = arena<CFTypeRef>();
    final status = security.SecItemCopyMatching(query, queryResult);
    if (status != errSecSuccess) {
      throw _getExceptionFromResultCode(status);
    }
    try {
      final CFDataRef cfData = queryResult.value.cast();
      final value = cfData.toDartString();
      coreFoundation.CFRelease(cfData.cast());
      return value;
    } on Exception {
      // this should only occur if the data can not be parsed as
      // as UTF-8 string, possibly indicating that the data was corrupted.
      throw UnknownException(
        'Could not read data from keychain.',
        recoverySuggestion: SecureStorageException.missingRecovery,
        underlyingException: 'Could not parse the value for key: $key.',
      );
    }
  }

  /// Creates a [CFDictionary] from a map of pointers, and registers
  /// a callback to release it from memory when the arena frees
  /// allocations.
  ///
  /// The attributes keys & values should be a pointer to a CF type such
  /// as Pointer<CFString> or Pointer<CFData>
  Pointer<CFDictionary> _createCFDictionary({
    required Map<Pointer, Pointer> map,
    required Arena arena,
  }) {
    final keysPtr = arena<CFTypeRef>(map.length);
    final valuesPtr = arena<CFTypeRef>(map.length);
    var index = 0;
    for (var entry in map.entries) {
      keysPtr[index] = entry.key.cast();
      valuesPtr[index] = entry.value.cast();
      index++;
    }
    final cFDictionary = coreFoundation.CFDictionaryCreate(
      nullptr, // default allocator
      keysPtr,
      valuesPtr,
      map.length,
      nullptr, // no-op callback
      nullptr, // no-op callback
    );
    arena.onReleaseAll(() {
      coreFoundation.CFRelease(cFDictionary.cast());
    });
    return cFDictionary;
  }

  /// Creates a CFString Pointer from a Dart String and registers
  /// a callback to release it from memory when the arena frees
  /// allocations.
  Pointer<CFString> _createCFString({
    required String value,
    required Arena arena,
  }) {
    final cfString = coreFoundation.CFStringCreateWithCString(
      nullptr, // default allocator
      value.toNativeUtf8(allocator: arena).cast<Char>(),
      kCFStringEncodingUTF8,
    );
    arena.onReleaseAll(() {
      coreFoundation.CFRelease(cfString.cast());
    });
    return cfString;
  }

  /// Creates a CFData Pointer from a Dart String and registers
  /// a callback to release it from memory when the arena frees
  /// allocations.
  Pointer<CFData> _createCFData({
    required String value,
    required Arena arena,
  }) {
    final valuePtr = value.toNativeUtf8(allocator: arena);
    final length = valuePtr.length;
    final bytes = valuePtr.cast<UnsignedChar>();
    final cfData = coreFoundation.CFDataCreate(
      nullptr, // default allocator
      bytes,
      length,
    );
    arena.onReleaseAll(() {
      coreFoundation.CFRelease(cfData.cast());
    });
    return cfData;
  }

  /// Maps the result code to a [SecureStorageException].
  SecureStorageException _getExceptionFromResultCode(int code) {
    final underlyingException = _getErrorFromResultCode(code).toString();
    switch (code) {
      case errSecItemNotFound:
        // A missing recovery is used because this should be caught
        // and handled internally
        return ItemNotFoundException(
          _notFoundMessage,
          recoverySuggestion: SecureStorageException.missingRecovery,
          underlyingException: underlyingException,
        );
      case errSecDuplicateItem:
        // A missing recovery is used because this should be caught
        // and handled internally
        return DuplicateItemException(
          _itemPresentMessage,
          recoverySuggestion: SecureStorageException.missingRecovery,
          underlyingException: underlyingException,
        );
      case errSecUserCanceled:
      case errSecAuthFailed:
      case errSecInteractionRequired:
        return AccessDeniedException(
          _couldNotAccessMessage,
          recoverySuggestion: _ensureUnlockedMessage,
          underlyingException: underlyingException,
        );
      default:
        return UnknownException(
          _unknownMessage,
          recoverySuggestion: SecureStorageException.missingRecovery,
          underlyingException: underlyingException,
        );
    }
  }

  /// Returns the error associated with the result code.
  _SecurityFrameworkError _getErrorFromResultCode(int code) {
    CFStringRef cfString = security.SecCopyErrorMessageString(code, nullptr);
    if (cfString == nullptr) {
      return _SecurityFrameworkError(
        code: code,
        message: _noErrorStringMessage,
      );
    }
    try {
      final message = cfString.toDartString() ?? _noErrorStringMessage;
      return _SecurityFrameworkError(code: code, message: message);
    } on Exception {
      return _SecurityFrameworkError(
        code: code,
        message: _couldNotBeParsedMessage,
      );
    } finally {
      if (cfString != nullptr) {
        coreFoundation.CFRelease(cfString.cast());
      }
    }
  }
}

const _notFoundMessage = 'Them item was not found in the keychain.';
const _itemPresentMessage = 'The item is already present in the keychain.';
const _couldNotAccessMessage = 'Could not access the items in the keychain.';
const _ensureUnlockedMessage =
    'Ensure that the users keychain is available and unlocked.';
const _unknownMessage = 'An unknown exception occurred.';
const _noErrorStringMessage = 'No error string is available.';
const _couldNotBeParsedMessage = 'The error string could not be parsed.';

/// An error from the Security Framework
class _SecurityFrameworkError {
  _SecurityFrameworkError({required this.code, required this.message});
  final int code;
  final String message;

  @override
  String toString() {
    return 'SecurityFrameworkError: {code: $code, message: $message}';
  }
}
