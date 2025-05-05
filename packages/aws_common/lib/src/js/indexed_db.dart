// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:aws_common/src/js/common.dart';
import 'package:web/web.dart';

/// The global read-only [IDBFactory] instance.
@JS()
external IDBFactory? get indexedDB;

/// {@macro amplify_secure_storage_dart.idb_version_change_event}
extension PropsIDBVersionChangeEvent on IDBVersionChangeEvent {
  /// The target of this event, the DB open request.
  IDBOpenDBRequest get target => getProperty('target'.toJS);
}

/// {@macro amplify_secure_storage_dart.idb_request}
extension PropsIDBRequest on IDBRequest {
  /// Returns a [Future] which completes with the [result] of this request.
  Future<JSAny?> get future {
    final completer = Completer<JSAny?>.sync();

    void onSuccess(Event _) => completer.complete(result);

    void onError(Event _) =>
        completer.completeError('Could not complete IDBRequest'.toJS);

    onsuccess = onSuccess.toJS;
    onerror = onError.toJS;
    return completer.future;
  }
}

/// {@macro amplify_secure_storage_dart.idb_database}
extension PropsIDBDatabase on IDBDatabase {
  /// Returns the object store for [storeName] in a new transaction.
  IDBObjectStore getObjectStore(String storeName) {
    final transaction = this.transaction(
      storeName.toJS,
      IDBTransactionMode.readwrite.jsValue!,
    );
    final store = transaction.objectStore(storeName);
    return store;
  }
}

/// The mode for isolating access to data in the object stores that are in the
/// scope of an [IDBTransaction].
enum IDBTransactionMode with JSEnum {
  /// Allows data to be read but not changed.
  readonly,

  /// Allows reading and writing of data in existing data stores to be changed.
  readwrite,

  /// Allows any operation to be performed, including ones that delete and
  /// create object stores and indexes.
  ///
  /// This mode is for updating the version number of transactions that were
  /// started using the `setVersion()` method of [IDBDatabase] objects.
  ///
  /// Transactions of this mode cannot run concurrently with other transactions.
  ///
  /// Transactions in this mode are known as "upgrade transactions."
  versionchange,
}
