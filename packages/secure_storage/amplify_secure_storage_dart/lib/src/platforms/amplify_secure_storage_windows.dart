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

import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/unknown_exception.dart';
import 'package:amplify_secure_storage_dart/src/ffi/win32/dpapi.dart';
import 'package:amplify_secure_storage_dart/src/ffi/win32/utils.dart';
import 'package:amplify_secure_storage_dart/src/utils/file_key_value_store.dart';
import 'package:ffi/ffi.dart';
import 'package:file/memory.dart';
import 'package:win32/win32.dart';

const _keyValueStoreFileName = 'secure_storage.json';

/// The windows implementation of [SecureStorageInterface].
class AmplifySecureStorageWindows extends AmplifySecureStorageInterface {
  AmplifySecureStorageWindows({
    required super.config,
    super.applicationDirectory,
  });

  late final FileKeyValueStore keyValueStore = () {
    final directory = config.windowsOptions.storagePath ?? applicationDirectory;
    if (directory != null) {
      return FileKeyValueStore(
        fileName: '${config.defaultNamespace}_$_keyValueStoreFileName',
        path: directory,
      );
    }
    return FileKeyValueStore(
      fileName: '${config.defaultNamespace}_$_keyValueStoreFileName',
      path: 'tmp',
      fs: MemoryFileSystem(),
    );
  }();

  @override
  Future<void> write({required String key, required String value}) async {
    return using((Arena arena) async {
      final encrypted = _encrypt(value, arena);
      await keyValueStore.writeKey(key: key, value: encrypted);
      final errorCode = GetLastError();
      if (errorCode != ERROR_SUCCESS) {
        throw _getExceptionFromErrorCode(errorCode);
      }
    });
  }

  @override
  Future<String?> read({required String key}) async {
    return using((Arena arena) async {
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
      final value = _decrypt(encrypted, arena);
      final errorCode = GetLastError();
      if (errorCode != ERROR_SUCCESS) {
        throw _getExceptionFromErrorCode(errorCode);
      }
      return value;
    });
  }

  @override
  Future<void> delete({required String key}) {
    return keyValueStore.removeKey(key: key);
  }

  Uint8List _encrypt(String value, Arena arena) {
    final utf8Value = utf8.encode(value) as Uint8List;
    final blob = utf8Value.allocatePointerWith(arena);
    final dataPtr = arena<DATA_BLOB>()
      ..ref.cbData = utf8Value.length
      ..ref.pbData = blob;
    final encryptedPtr = arena<DATA_BLOB>();
    CryptProtectData(
      dataPtr,
      nullptr, // no label
      nullptr, // no added entropy
      nullptr, // reserved
      nullptr, // no prompt
      0, // default flag
      encryptedPtr,
    );
    final encryptedBlob = encryptedPtr.ref;
    LocalFree(encryptedPtr.ref.pbData.address);
    return encryptedBlob.pbData.asTypedList(encryptedBlob.cbData);
  }

  String _decrypt(Uint8List data, Arena arena) {
    final blob = data.allocatePointerWith(arena);
    final dataPtr = arena<DATA_BLOB>()
      ..ref.cbData = data.length
      ..ref.pbData = blob;
    final unencryptedPtr = arena<DATA_BLOB>();
    CryptUnprotectData(
      dataPtr,
      nullptr, // no label
      nullptr, // no added entropy
      nullptr, // reserved
      nullptr, // no prompt
      0, // default flag
      unencryptedPtr,
    );
    final unencryptedDataBlob = unencryptedPtr.ref;
    final unencryptedBlob = unencryptedDataBlob.pbData.asTypedList(
      unencryptedDataBlob.cbData,
    );
    LocalFree(unencryptedPtr.ref.pbData.address);
    return utf8.decode(unencryptedBlob);
  }

  /// Returns a [SecureStorageException] from the Win32 error code
  SecureStorageException _getExceptionFromErrorCode(int errorCode) {
    final underlying = WindowsException(
      HRESULT_FROM_WIN32(errorCode),
    );
    return UnknownException(
      'An unknown exception occurred.',
      recoverySuggestion: SecureStorageException.missingRecovery,
      underlyingException: underlying,
    );
  }
}
