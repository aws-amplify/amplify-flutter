// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_dart/src/exception/not_available_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';
import 'package:amplify_secure_storage_dart/src/platforms/amplify_secure_storage_in_memory.dart';
// ignore: implementation_imports
import 'package:aws_common/src/js/indexed_db.dart';
import 'package:web/web.dart';

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
    } on Object catch (e) {
      logger.warn(
        'Could not open IndexedDB database. '
        'It may not be supported by the current browser. '
        'Falling back to in-memory storage.',
        e,
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

  late final Future<IDBDatabase> _databaseFuture = _openDatabase();

  /// Checks for IDB availability and attempts to open the database.
  ///
  /// Will throw a [NotAvailableException] if IndexedDB is not available.
  Future<IDBDatabase> _openDatabase() async {
    if (indexedDB == null) {
      throw const NotAvailableException(
        'IndexedDB is not supported.',
        recoverySuggestion: SecureStorageException.missingRecovery,
      );
    }

    void onUpgradeNeeded(IDBVersionChangeEvent event) {
      final database = event.target?.getProperty<IDBDatabase>('result'.toJS);
      final objectStoreNames = database?.objectStoreNames;
      if (!(objectStoreNames?.contains(storeName) ?? false)) {
        database?.createObjectStore(storeName);
      }
    }

    final openRequest = indexedDB!.open(databaseName, 1)
      ..onupgradeneeded = onUpgradeNeeded.toJS;

    try {
      final result = await openRequest.future;
      if (result.isA<IDBDatabase>()) {
        return result as IDBDatabase;
      } else {
        throw Exception('IDBOpenDBRequest failed');
      }
    } on Object catch (e) {
      throw SecureStorageException(e.toString());
    }
  }

  @override
  Future<void> write({required String key, required String value}) async {
    final database = await _databaseFuture;
    final store = database.getObjectStore(storeName);
    try {
      await store.put(value.toJS, key.toJS).future;
    } on Object catch (e) {
      throw SecureStorageException(e.toString());
    }
  }

  @override
  Future<String?> read({required String key}) async {
    final database = await _databaseFuture;
    final store = database.getObjectStore(storeName);
    try {
      final result = store.get(key.toJS).future;
      return result.then((value) => (value as JSString?)?.toDart);
    } on Object catch (e) {
      throw SecureStorageException(e.toString());
    }
  }

  @override
  Future<void> delete({required String key}) async {
    final database = await _databaseFuture;
    final store = database.getObjectStore(storeName);
    try {
      await store.delete(key.toJS).future;
    } on Object catch (e) {
      throw SecureStorageException(e.toString());
    }
  }
}
