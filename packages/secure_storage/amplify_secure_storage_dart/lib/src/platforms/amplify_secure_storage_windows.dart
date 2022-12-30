// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
import 'dart:typed_data';

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/unknown_exception.dart';
import 'package:amplify_secure_storage_dart/src/ffi/win32/data_protection.dart';
import 'package:file/memory.dart';

/// The windows implementation of [SecureStorageInterface].
class AmplifySecureStorageWindows extends AmplifySecureStorageInterface {
  AmplifySecureStorageWindows({
    required super.config,
  });

  late final FileKeyValueStore keyValueStore = () {
    final directory = config.windowsOptions.storagePath;
    if (directory != null) {
      return FileKeyValueStore(fileName: _fileName, path: directory);
    }
    return FileKeyValueStore(
      fileName: _fileName,
      path: 'tmp',
      fs: MemoryFileSystem(),
    );
  }();

  /// The name of the file that will be used to store
  /// encrypted data for this instance.
  ///
  /// Example: "com.amplify.auth.secure_storage.json" for
  /// a scope of "auth".
  String get _fileName => '${config.defaultNamespace}.secure_storage.json';

  @override
  Future<void> write({required String key, required String value}) async {
    final encrypted = encryptString(value);
    await keyValueStore.writeKey(key: key, value: encrypted);
  }

  @override
  Future<String?> read({required String key}) async {
    final rawData = await keyValueStore.readKey(key: key);
    if (rawData == null) {
      return null;
    }
    final Uint8List encrypted;
    try {
      encrypted = Uint8List.fromList((rawData as List).cast());
    } on Object catch (e) {
      throw UnknownException(
        'The data was not in the expected format',
        recoverySuggestion: SecureStorageException.missingRecovery,
        underlyingException: e,
      );
    }
    final value = decryptString(encrypted);
    return value;
  }

  @override
  Future<void> delete({required String key}) {
    return keyValueStore.removeKey(key: key);
  }
}
