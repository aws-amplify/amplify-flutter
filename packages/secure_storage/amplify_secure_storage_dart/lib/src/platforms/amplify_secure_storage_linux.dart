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
import 'dart:ffi';

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_dart/src/ffi/glib/glib.dart';
import 'package:amplify_secure_storage_dart/src/ffi/libsecret/libsecret.dart';
import 'package:amplify_secure_storage_dart/src/ffi/utils/linux_utils.dart';
import 'package:amplify_secure_storage_dart/src/utils/file_key_value_store.dart';
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

/// The Linux implementation of [SecureStorageInterface].
class AmplifySecureStorageLinux extends AmplifySecureStorageInterface {
  AmplifySecureStorageLinux({
    required super.config,
    super.appDirectoryProvider,
    @visibleForTesting String? appId,
  }) {
    _initialize(appId);
  }

  /// The file where the list of scopes will be stored.
  static const scopeFileName = 'amplify_secure_storage_scopes.json';

  /// Initialization Completer.
  ///
  /// Used to prevent Read/Write/Delete operations from being invoked
  /// prior to initialization completing.
  final Completer<void> _initializationCompleter = Completer<void>();

  /// Initializes Secure Storage for the current scope.
  ///
  /// Sets _appNameSpace and initializes the scope.
  Future<void> _initialize(String? appId) async {
    final accessGroup = config.linuxOptions.accessGroup;
    _appNameSpace = accessGroup ?? appId ?? await getApplicationId();
    await _initializeScope(
      scope: config.defaultNamespace,
      accessGroup: accessGroup,
    );
    _initializationCompleter.complete();
  }

  /// Clears all keys for the given scope if this scope
  /// has not been initialized previously.
  ///
  /// Checks for an initialization flag in file storage.
  /// If the flag is not present storage will be cleared
  /// and then the flag will be set.
  ///
  /// Intended to clear storage after an app uninstall & re-install.
  Future<void> _initializeScope({
    required String scope,
    required String? accessGroup,
  }) async {
    // if accessGroup is set, do not clear data on initialization
    // since the data can be shared across applications.
    if (accessGroup != null) return;
    final path = await _getAppDirectoryPath();
    if (path == null) {
      logger.warn(
        'Could not determine the application support directory. ',
        'Data will persist across app installs.',
      );
    } else {
      final fileStore = FileKeyValueStore(path: path, fileName: scopeFileName);
      final isInitialized = await fileStore.containsKey(key: scope);
      if (!isInitialized) {
        removeAll();
        await fileStore.writeKey(key: scope, value: true);
      }
    }
  }

  Future<String?> _getAppDirectoryPath() async {
    return appDirectoryProvider == null
        ? null
        : (await appDirectoryProvider!());
  }

  @override
  Future<void> write({required String key, required String value}) async {
    await _initializationCompleter.future;
    return using((Arena arena) {
      final labelName = _createLabel(key);
      final label = labelName.toNativeUtf8(allocator: arena);
      final secret = value.toNativeUtf8(allocator: arena);
      final attributes = _getAttributes(key: key, arena: arena);
      final schema = _getSchema(arena);
      libsecret.secret_password_storev_sync(
        schema,
        attributes,
        nullptr,
        label,
        secret,
        nullptr,
        nullptr,
      );
    });
  }

  @override
  Future<String?> read({required String key}) async {
    await _initializationCompleter.future;
    return using((Arena arena) {
      final attributes = _getAttributes(key: key, arena: arena);
      final schema = _getSchema(arena);
      final result = libsecret.secret_password_lookupv_sync(
        schema,
        attributes,
        nullptr,
        nullptr,
      );
      if (result == nullptr) {
        return null;
      }
      final value = result.toDartString();
      libsecret.secret_password_free(result);
      return value;
    });
  }

  @override
  Future<void> delete({required String key}) async {
    await _initializationCompleter.future;
    return using((Arena arena) {
      final attributes = _getAttributes(key: key, arena: arena);
      final schema = _getSchema(arena);
      libsecret.secret_password_clearv_sync(
        schema,
        attributes,
        nullptr,
        nullptr,
      );
    });
  }

  /// Removes all key-value pairs for the current scope.
  @visibleForTesting
  void removeAll() {
    return using((Arena arena) {
      final schema = _getSchema(arena);
      final attributes = _getAttributes(arena: arena);
      libsecret.secret_password_clearv_sync(
        schema,
        attributes,
        nullptr,
        nullptr,
      );
    });
  }

  /// A namespace for the application.
  ///
  /// Set during initialization.
  ///
  /// Uses the access group if it is set, otherwise uses
  /// the App ID.
  late final String _appNameSpace;

  /// The name of the [SecretSchema] schema.
  String get _schemaName => '${config.defaultNamespace}.$_appNameSpace';

  /// A label for the current key.
  ///
  /// This will be visible to the user in GUI applications.
  String _createLabel(String key) => '$_appNameSpace/$key';

  /// Creates a [SecretSchema] pointer.
  ///
  /// [SecretSchema](https://developer-old.gnome.org/libsecret/0.18/libsecret-SecretSchema.html#SecretSchema)
  Pointer<SecretSchema> _getSchema(Arena arena) {
    final schemaName = _schemaName.toNativeUtf8(allocator: arena);
    return arena<SecretSchema>()
      ..ref.name = schemaName
      ..ref.flags = SecretSchemaFlags.SECRET_SCHEMA_NONE
      ..insertAttribute(0, Attributes.key.name, arena: arena);
  }

  /// Creates a [GHashTable] pointer containing the key.
  ///
  /// If no key is provided, an empty [GHashTable] is returned.
  ///
  /// The hash table will be destroyed when the arena releases memory.
  Pointer<GHashTable> _getAttributes({
    String? key,
    required Arena arena,
  }) {
    final gHashTable = glib.g_hash_table_new(gStrHashPointer, nullptr);
    if (key != null) {
      gHashTable.insertAll(
        {
          Attributes.key.name: key,
        },
        arena: arena,
      );
    }
    arena.onReleaseAll(() {
      glib.g_hash_table_destroy(gHashTable);
    });
    return gHashTable;
  }
}

/// The attributes used to identify the secret.
enum Attributes {
  key,
}
