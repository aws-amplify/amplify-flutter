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

import 'dart:async';

import 'package:amplify_secure_storage_dart/src/exception/not_available_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';
import 'package:amplify_secure_storage_dart/src/interfaces/amplify_secure_storage_interface.dart';
import 'package:amplify_secure_storage_dart/src/interfaces/secure_storage_interface.dart';
import 'package:amplify_secure_storage_dart/src/js/indexed_db.dart';
import 'package:amplify_secure_storage_dart/src/types/amplify_secure_storage_config.dart';

/// The web implementation of [SecureStorageInterface].
class AmplifySecureStorageWeb extends AmplifySecureStorageInterface {
  AmplifySecureStorageWeb({required AmplifySecureStorageConfig config})
      : super(config: config);

  /// The name of the database
  ///
  /// Reference: https://www.w3.org/TR/IndexedDB/#name
  String get databaseName => config.webOptions.databaseName != null
      ? config.webOptions.databaseName!
      : config.defaultNamespace;

  /// The name of the object store
  ///
  /// Reference: https://www.w3.org/TR/IndexedDB/#object-store-name
  final storeName = 'default.store';

  late final Future<void> _databaseOpenEvent = _openDatabase();

  late final IDBDatabase _database;

  /// Opens the database and returns it as a future.
  ///
  /// Will throw a [NotAvailableException] if IndexedDB is not supported.
  Future<void> _openDatabase() async {
    if (indexedDB == null) {
      throw const NotAvailableException(
        'IndexedDB is not supported.',
        recoverySuggestion: SecureStorageException.missingRecovery,
      );
    }
    final openRequest = indexedDB!.open(databaseName, 1);
    openRequest.onupgradeneeded = (event) {
      final IDBDatabase database = event.target.result;
      final DOMStringList objectStoreNames = database.objectStoreNames;
      if (!objectStoreNames.contains(storeName)) {
        database.createObjectStore(storeName);
      }
    };
    // TODO: update once https://github.com/dart-lang/sdk/issues/48835
    // is resolved in a stable version. setting _database instead of returning
    // it is a work around.
    _database = await openRequest.future;
  }

  /// Returns a new [IDBObjectStore] instance after waiting for initialization
  /// to complete.
  IDBObjectStore _getObjectStore() {
    final IDBTransaction transaction = _database.transaction(
      storeName,
      mode: IDBTransactionMode.readwrite,
    );
    final IDBObjectStore store = transaction.objectStore(storeName);
    return store;
  }

  @override
  Future<void> write({required String key, required String value}) async {
    await _databaseOpenEvent;
    final IDBObjectStore store = _getObjectStore();
    await store.put(value, key).future;
  }

  @override
  Future<String?> read({required String key}) async {
    await _databaseOpenEvent;
    final IDBObjectStore store = _getObjectStore();
    final String? value = await store.getObject(key).future;
    return value;
  }

  @override
  Future<void> delete({required String key}) async {
    await _databaseOpenEvent;
    final IDBObjectStore store = _getObjectStore();
    await store.delete(key).future;
  }
}
