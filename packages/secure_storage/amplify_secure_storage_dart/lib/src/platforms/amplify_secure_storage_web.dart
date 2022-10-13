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

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_dart/src/exception/not_available_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';
import 'package:amplify_secure_storage_dart/src/platforms/amplify_secure_storage_in_memory.dart';
import 'package:aws_common/src/js/indexed_db.dart';

/// The web implementation of [SecureStorageInterface].
class AmplifySecureStorageWeb extends AmplifySecureStorageInterface {
  AmplifySecureStorageWeb({required super.config});

  /// The [SecureStorageInterface] instance to use.
  late final Future<SecureStorageInterface> _instance = () async {
    if (config.webOptions.persistenceOption == WebPersistenceOption.inMemory) {
      return const AmplifySecureStorageInMemory();
    }
    if (indexedDB == null) {
      logger.warn(
        'IndexedDB is not available. '
        'Falling back to in-memory storage.',
      );
      return const AmplifySecureStorageInMemory();
    }
    // indexedDB will be non-null in Firefox private browsing,
    // but will fail to open.
    try {
      final openRequest = indexedDB!.open('test', 1);
      await openRequest.future;
      return _IndexedDBStorage(config: config);
    } on Object {
      logger.warn(
        'Could not open IndexedDB database. '
        'It may not be supported by the current browser. '
        'Falling back to in-memory storage.',
      );
      return const AmplifySecureStorageInMemory();
    }
  }();

  @override
  Future<void> write({required String key, required String value}) async {
    final instance = await _instance;
    return instance.write(key: key, value: value);
  }

  @override
  Future<String?> read({required String key}) async {
    final instance = await _instance;
    return instance.read(key: key);
  }

  @override
  Future<void> delete({required String key}) async {
    final instance = await _instance;
    return instance.delete(key: key);
  }
}

class _IndexedDBStorage extends AmplifySecureStorageInterface {
  _IndexedDBStorage({required super.config});

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

  /// Checks for IDB availability and attempts to open the database.
  ///
  /// Will throw a [NotAvailableException] if IndexedDB is not available.
  Future<void> _openDatabase() async {
    if (indexedDB == null) {
      throw const NotAvailableException(
        'IndexedDB is not supported.',
        recoverySuggestion: SecureStorageException.missingRecovery,
      );
    }
    final openRequest = indexedDB!.open(databaseName, 1)
      ..onupgradeneeded = (event) {
        final database = event.target.result;
        final objectStoreNames = database.objectStoreNames;
        if (!objectStoreNames.contains(storeName)) {
          database.createObjectStore(storeName);
        }
      };
    // TODO(Jordan-Nelson): update once https://github.com/dart-lang/sdk/issues/48835
    // is resolved in a stable version. setting _database instead of returning
    // it is a work around.
    try {
      _database = await openRequest.future;
    } on Object catch (e) {
      throw SecureStorageException(e.toString());
    }
  }

  /// Returns a new [IDBObjectStore] instance after waiting for initialization
  /// to complete.
  IDBObjectStore _getObjectStore() {
    final transaction = _database.transaction(
      storeName,
      mode: IDBTransactionMode.readwrite,
    );
    final store = transaction.objectStore(storeName);
    return store;
  }

  @override
  Future<void> write({required String key, required String value}) async {
    await _databaseOpenEvent;
    final store = _getObjectStore();
    try {
      await store.put(value, key).future;
    } on Object catch (e) {
      throw SecureStorageException(e.toString());
    }
  }

  @override
  Future<String?> read({required String key}) async {
    await _databaseOpenEvent;
    final store = _getObjectStore();
    try {
      final value = await store.getObject(key).future;
      return value;
    } on Object catch (e) {
      throw SecureStorageException(e.toString());
    }
  }

  @override
  Future<void> delete({required String key}) async {
    await _databaseOpenEvent;
    final store = _getObjectStore();
    try {
      await store.delete(key).future;
    } on Object catch (e) {
      throw SecureStorageException(e.toString());
    }
  }
}
