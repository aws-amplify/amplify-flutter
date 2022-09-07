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
import 'dart:typed_data';

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/unknown_exception.dart';
import 'package:amplify_secure_storage_dart/src/ffi/win32/data_protection.dart';
import 'package:amplify_secure_storage_dart/src/utils/file_key_value_store.dart';
import 'package:file/memory.dart';

/// The windows implementation of [SecureStorageInterface].
class AmplifySecureStorageWindows extends AmplifySecureStorageInterface {
  AmplifySecureStorageWindows({
    required super.config,
    super.applicationDirectory,
  });

  late final FileKeyValueStore keyValueStore = () {
    final directory = config.windowsOptions.storagePath ?? applicationDirectory;
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
      encrypted = Uint8List.fromList(List<int>.from(rawData as List));
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
