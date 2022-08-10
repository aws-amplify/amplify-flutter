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

/// The Linux implementation of [SecureStorageInterface].
class AmplifySecureStorageLinux extends AmplifySecureStorageInterface {
  AmplifySecureStorageLinux({
    required super.config,
  }) {
    _initialize();
  }

  /// Initialization Completer.
  ///
  /// Used to prevent Read/Write/Delete operations from being invoked
  /// prior to initialization completing.
  final Completer<void> _initializationCompleter = Completer<void>();

  /// The unique ID of the application.
  ///
  /// Set during intialization.
  late final String _appId;

  Future<void> _initialize() async {
    _appId = await getApplicationId();
    final appDirectory = await getApplicationSupportPath(_appId);
    final fileStore = FileKeyValueStore(
      directory: appDirectory,
      fileName: 'amplify_secure_storage_scopes.json',
    );
    final isInitialized = await fileStore.containsKey(
      key: config.defaultNamespace,
    );
    if (!isInitialized) {
      _removeAll();
      await fileStore.writeKey(key: config.defaultNamespace, value: true);
    }
    _initializationCompleter.complete();
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

  void _removeAll() {
    return using((Arena arena) {
      final schema = _getSchema(arena);
      libsecret.secret_password_clearv_sync(
        schema,
        nullptr,
        nullptr,
        nullptr,
      );
    });
  }

  String get _schemaName {
    final appNamespace = config.linuxOptions.accessGroup ?? _appId;
    return '${config.defaultNamespace}.$appNamespace';
  }

  String _createLabel(String key) => '$_schemaName/$key';

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

  /// Creates a [GHashTable] pointer containing the account name.
  ///
  /// The hash table will be destroyed when the arena releases memory.
  Pointer<GHashTable> _getAttributes({
    required String key,
    required Arena arena,
  }) {
    final gHashTable = glib.g_hash_table_new(gStrHashPointer, nullptr)
      ..insertAll(
        {
          Attributes.key.name: key,
        },
        arena: arena,
      );
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
