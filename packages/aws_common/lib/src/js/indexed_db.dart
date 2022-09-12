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

@JS()
library amplify_secure_storage_dart.js.indexed_db;

import 'dart:async';
import 'dart:js_util' as js_util;

import 'package:aws_common/src/js/common.dart';
import 'package:js/js.dart';

/// The global read-only [IDBFactory] instance.
@JS()
external IDBFactory? get indexedDB;

/// {@template amplify_secure_storage_dart.dom_string_list}
/// A type returned by some APIs which contains a list of DOMString (strings).
/// {@endtemplate}
@JS()
@staticInterop
class DOMStringList {}

/// {@macro amplify_secure_storage_dart.dom_string_list}
extension PropsDOMStringList on DOMStringList {
  /// Checks if the given string is in the list.
  external bool contains(String string);
}

/// {@template amplify_secure_storage_dart.idb_version_change_event}
/// The IDBVersionChangeEvent interface of the IndexedDB API indicates that the
/// version of the database has changed, as the result of an `onupgradeneeded`
/// event handler function.
/// {@endtemplate}
@JS()
@staticInterop
class IDBVersionChangeEvent extends Event {}

/// {@macro amplify_secure_storage_dart.idb_version_change_event}
extension PropsIDBVersionChangeEvent on IDBVersionChangeEvent {
  /// The target of this event, the DB open request.
  external IDBOpenDBRequest get target;
}

/// {@template amplify_secure_storage_dart.idb_request}
/// The IDBRequest interface of the IndexedDB API provides access to results of
/// asynchronous requests to databases and database objects using event handler
/// attributes.
///
/// Each reading and writing operation on a database is done using a request.
/// {@endtemplate}
@JS()
@staticInterop
abstract class IDBRequest<T> {}

/// {@macro amplify_secure_storage_dart.idb_request}
extension PropsIDBRequest<T> on IDBRequest<T> {
  /// The result of the request.
  ///
  /// If the request failed and the result is not available, an
  /// `InvalidStateError` exception is thrown.
  external T get result;

  /// Fired when an IDBRequest succeeds.
  set onsuccess(EventHandler newValue) {
    js_util.setProperty(this, 'onsuccess', allowInterop(newValue));
  }

  /// Fired when an error caused a request to fail.
  set onerror(EventHandler newValue) {
    js_util.setProperty(this, 'onerror', allowInterop(newValue));
  }

  /// Returns a [Future] which completes with the [result] of this request.
  Future<T> get future {
    final completer = Completer<T>.sync();
    onsuccess = (_) {
      completer.complete(result);
    };
    onerror = (_) {
      completer.completeError('Could not complete IDBRequest');
    };
    return completer.future;
  }
}

/// {@template amplify_secure_storage_dart.idb_open_db_request}
/// The IDBOpenDBRequest interface of the IndexedDB API provides access to the
/// results of requests to open or delete databases (performed using
/// `IDBFactory.open` and `IDBFactory.deleteDatabase`), using specific event
/// handler attributes.
/// {@endtemplate}
@JS()
@staticInterop
class IDBOpenDBRequest extends IDBRequest<IDBDatabase> {}

/// {@macro amplify_secure_storage_dart.idb_open_db_request}
extension PropsIDBOpenDBRequest on IDBOpenDBRequest {
  /// Fired when an attempt was made to open a database with a version number
  /// higher than its current version.
  set onupgradeneeded(EventHandler<IDBVersionChangeEvent> newValue) {
    js_util.setProperty(this, 'onupgradeneeded', allowInterop(newValue));
  }
}

/// {@template amplify_secure_storage_dart.idb_factory}
/// The IDBFactory interface of the IndexedDB API lets applications
/// asynchronously access the indexed databases.
/// {@endtemplate}
@JS()
@staticInterop
class IDBFactory {}

/// {@macro amplify_secure_storage_dart.idb_factory}
extension PropsIDBFactory on IDBFactory {
  /// The current method to request opening a connection to a database.
  external IDBOpenDBRequest open(String name, [int? version]);
}

/// {@template amplify_secure_storage_dart.idb_database}
/// The IDBDatabase interface of the IndexedDB API provides a connection to a
/// database; you can use an IDBDatabase object to open a transaction on your
/// database then create, manipulate, and delete objects (data) in that
/// database.
/// {@endtemplate}
@JS()
@staticInterop
class IDBDatabase {}

/// {@macro amplify_secure_storage_dart.idb_database}
extension PropsIDBDatabase on IDBDatabase {
  /// The list of the names of object stores in the database.
  external DOMStringList get objectStoreNames;

  /// Returns a new transaction with the given mode (`readonly` or `readwrite`)
  /// and scope which can be a single object store name or an array of names.
  IDBTransaction transaction(
    String storeNames, {
    IDBTransactionMode mode = IDBTransactionMode.readonly,
  }) =>
      js_util.callMethod(this, 'transaction', [storeNames, mode.name]);

  /// Creates a new object store with the given name and options and returns a
  /// new [IDBObjectStore].
  ///
  /// Throws an `InvalidStateError` DOMException if not called within an upgrade
  /// transaction.
  external IDBObjectStore createObjectStore(String name);
}

/// {@template amplify_secure_storage_dart.idb_object_store}
/// The IDBObjectStore interface of the IndexedDB API represents an object store
/// in a database.
///
/// Records within an object store are sorted according to their keys.
/// {@endtemplate}
@JS()
@staticInterop
class IDBObjectStore {}

/// {@macro amplify_secure_storage_dart.idb_object_store}
extension PropsIDBObjectStore on IDBObjectStore {
  /// Returns an [IDBRequest] object, and, in a separate thread, creates a
  /// structured clone of the value, and stores the cloned value in the object
  /// store.
  ///
  /// This is for updating existing records in an object store when the
  /// transaction's mode is `readwrite`.
  external IDBRequest<void> put(String value, String key);

  /// Returns an [IDBRequest] object, and, in a separate thread, creates a
  /// structured clone of the value, and stores the cloned value in the object
  /// store.
  ///
  /// This is for adding new records to an object store.
  external IDBRequest<void> add(String value, String key);

  /// Returns an [IDBRequest] object, and, in a separate thread, deletes the
  /// store object selected by the specified key.
  ///
  /// This is for deleting individual records out of an object store.
  external IDBRequest<void> delete(String query);

  /// Returns an [IDBRequest] object, and, in a separate thread, returns the
  /// store object store selected by the specified key.
  ///
  /// This is for retrieving specific records from an object store.
  @JS('get')
  external IDBRequest<String?> getObject(String query);
}

/// {@template amplify_secure_storage_dart.idb_transaction}
/// The IDBTransaction interface of the IndexedDB API provides a static,
/// asynchronous transaction on a database using event handler attributes.
///
/// All reading and writing of data is done within transactions.
/// {@endtemplate}
@JS()
@staticInterop
class IDBTransaction {}

/// {@macro amplify_secure_storage_dart.idb_transaction}
extension PropsIDBTransaction on IDBTransaction {
  /// Returns an [IDBObjectStore] in the transaction's scope.
  external IDBObjectStore objectStore(String name);
}

/// The mode for isolating access to data in the object stores that are in the
/// scope of an [IDBTransaction].
enum IDBTransactionMode {
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
