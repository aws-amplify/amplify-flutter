// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: omit_local_variable_types

import 'dart:ffi';
import 'dart:io';

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_dart/src/exception/access_denied_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/duplicate_item_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/item_not_found_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/unknown_exception.dart';
import 'package:amplify_secure_storage_dart/src/ffi/cupertino/cupertino.dart';
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
    required super.config,
  });

  /// The value of the service name attribute for all keychain items.
  String get _serviceName => config.defaultNamespace;

  String? get _accessGroup => Platform.isIOS
      ? config.iOSOptions.accessGroup
      : config.macOSOptions.accessGroup;

  CFStringRef get _accessible => Platform.isIOS
      ? config.iOSOptions.accessible.toCFStringRef()
      : config.macOSOptions.accessible.toCFStringRef();

  bool get _useDataProtection =>
      Platform.isMacOS && config.macOSOptions.useDataProtection;

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

  @override
  void removeAll() {
    using((Arena arena) {
      try {
        _removeAll(arena: arena);
      } on ItemNotFoundException {
        // do nothing if no items are found
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
    final baseQueryAttributes = _getBaseAttributes(key: key, arena: arena);
    final query = _createCFDictionary(map: baseQueryAttributes, arena: arena);
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
    final baseQueryAttributes = _getBaseAttributes(key: key, arena: arena);
    final secret = _createCFData(value: value, arena: arena);
    final query = _createCFDictionary(
      map: {
        ...baseQueryAttributes,
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
    final baseQueryAttributes = _getBaseAttributes(key: key, arena: arena);
    final query = _createCFDictionary(
      map: baseQueryAttributes,
      arena: arena,
    );
    final status = security.SecItemDelete(query);
    if (status != errSecSuccess) {
      throw _getExceptionFromResultCode(status);
    }
  }

  /// Removes all items from the keychain.
  ///
  /// throws [ItemNotFoundException] if no items are found in the keychain.
  void _removeAll({
    required Arena arena,
  }) {
    final baseQueryAttributes = _getBaseAttributes(arena: arena);
    final query = _createCFDictionary(
      map: {
        ...baseQueryAttributes,
        // when useDataProtection (MacOS only) is disabled, SecItemDelete
        // requires a match limit of kSecMatchLimitAll. However, SecItemDelete
        // will return `errSecParam` when used on iOS with a match limit of kSecMatchLimitAll.
        // When useDataProtection is true on MacOS, this match limit has no effect.
        // This behavior is undocumented, and possibly a bug in keychain on iOS.
        if (Platform.isMacOS && !config.macOSOptions.useDataProtection)
          security.kSecMatchLimit: security.kSecMatchLimitAll,
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
    final baseQueryAttributes = _getBaseAttributes(key: key, arena: arena);
    final query = _createCFDictionary(
      map: {
        ...baseQueryAttributes,
        security.kSecMatchLimit: security.kSecMatchLimitOne,
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

  /// Get the query attributes that are common to all queries.
  Map<Pointer<NativeType>, Pointer<NativeType>> _getBaseAttributes({
    String? key,
    required Arena arena,
  }) {
    final service = _createCFString(value: _serviceName, arena: arena);
    return {
      security.kSecClass: security.kSecClassGenericPassword,
      security.kSecAttrService: service,
      security.kSecAttrAccessible: _accessible,
      if (key != null)
        security.kSecAttrAccount: _createCFString(value: key, arena: arena),
      if (_accessGroup != null)
        security.kSecAttrAccessGroup: _createCFString(
          value: _accessGroup!,
          arena: arena,
        ),
      if (_useDataProtection)
        security.kSecUseDataProtectionKeychain: security.kCFBooleanTrue,
    };
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
    for (final entry in map.entries) {
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
    final securityFrameworkError = _SecurityFrameworkError.fromCode(code);
    return securityFrameworkError.toSecureStorageException();
  }
}

/// An error from the Security Framework.
class _SecurityFrameworkError {
  _SecurityFrameworkError({required this.code, required this.message});

  /// Creates an error from the given result code.
  factory _SecurityFrameworkError.fromCode(int code) {
    final cfString = security.SecCopyErrorMessageString(code, nullptr);
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
        message: 'The error string could not be parsed.',
      );
    } finally {
      if (cfString != nullptr) {
        coreFoundation.CFRelease(cfString.cast());
      }
    }
  }

  final int code;
  final String message;

  static const _noErrorStringMessage = 'No error string is available.';

  /// Maps the error to a [SecureStorageException].
  SecureStorageException toSecureStorageException() {
    switch (code) {
      case errSecItemNotFound:
        // A missing recovery is used because this should be caught
        // and handled internally
        return ItemNotFoundException(
          'Them item was not found in the keychain.',
          recoverySuggestion: SecureStorageException.missingRecovery,
          underlyingException: this,
        );
      case errSecDuplicateItem:
        // A missing recovery is used because this should be caught
        // and handled internally
        return DuplicateItemException(
          'The item is already present in the keychain.',
          recoverySuggestion: SecureStorageException.missingRecovery,
          underlyingException: this,
        );
      case errSecUserCanceled:
      case errSecAuthFailed:
      case errSecInteractionRequired:
        return AccessDeniedException(
          'Could not access the items in the keychain.',
          recoverySuggestion:
              'Ensure that the keychain is available and unlocked.',
          underlyingException: this,
        );
      case errSecMissingEntitlement:
        // TODO(Jordan-Nelson): point to amplify documentation when available.
        final recoverySuggestion = Platform.isMacOS
            ? 'If you have not explicitly disabled `useDataProtection` this may be a result of your app not being in any app groups. See `MacOSSecureStorageOptions.useDataProtection` for more info.'
            : SecureStorageException.missingRecovery;
        return AccessDeniedException(
          'Could not access the items in the keychain due to a missing entitlement.',
          recoverySuggestion: recoverySuggestion,
          underlyingException: this,
        );
      default:
        return UnknownException(
          'An unknown exception occurred.',
          recoverySuggestion: SecureStorageException.missingRecovery,
          underlyingException: this,
        );
    }
  }

  @override
  String toString() {
    return 'SecurityFrameworkError: {code: $code, message: $message}';
  }
}
