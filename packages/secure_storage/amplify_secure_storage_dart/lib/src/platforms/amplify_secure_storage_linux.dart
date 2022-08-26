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
import 'package:async/async.dart';
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

/// The Linux implementation of [SecureStorageInterface].
class AmplifySecureStorageLinux extends AmplifySecureStorageInterface {
  AmplifySecureStorageLinux({
    required super.config,
    @visibleForTesting String? appId,
  }) : _appId = appId;

  final String? _appId;

  final _appIdMemo = AsyncMemoizer<String>();

  Future<String> _getAppId() async {
    if (_appId != null) return _appId!;
    return _appIdMemo.runOnce(getApplicationId);
  }

  @override
  Future<void> write({required String key, required String value}) async {
    final schemaName = await _getSchemaName();
    final labelName = await _createLabel(key);
    return using((Arena arena) {
      final label = labelName.toNativeUtf8(allocator: arena);
      final secret = value.toNativeUtf8(allocator: arena);
      final attributes = _getAttributes(key: key, arena: arena);
      final schema = _getSchema(schemaName, arena);
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
    final schemaName = await _getSchemaName();
    return using((Arena arena) {
      final attributes = _getAttributes(key: key, arena: arena);
      final schema = _getSchema(schemaName, arena);
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
    final schemaName = await _getSchemaName();
    return using((Arena arena) {
      final attributes = _getAttributes(key: key, arena: arena);
      final schema = _getSchema(schemaName, arena);
      libsecret.secret_password_clearv_sync(
        schema,
        attributes,
        nullptr,
        nullptr,
      );
    });
  }

  /// Removes all key-value pairs for the current scope.
  @override
  Future<void> removeAll() async {
    final schemaName = await _getSchemaName();
    return using((Arena arena) {
      final schema = _getSchema(schemaName, arena);
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
  Future<String> getAppNameSpace() async {
    final accessGroup = config.linuxOptions.accessGroup;
    if (accessGroup != null) return accessGroup;
    return _getAppId();
  }

  /// The name of the [SecretSchema] schema.
  Future<String> _getSchemaName() async {
    final appNameSpace = await getAppNameSpace();
    return '${config.defaultNamespace}.$appNameSpace';
  }

  /// A label for the current key.
  ///
  /// This will be visible to the user in GUI applications.
  Future<String> _createLabel(String key) async {
    final appNameSpace = await getAppNameSpace();
    return '$appNameSpace/$key';
  }

  /// Creates a [SecretSchema] pointer.
  ///
  /// [SecretSchema](https://developer-old.gnome.org/libsecret/0.18/libsecret-SecretSchema.html#SecretSchema)
  Pointer<SecretSchema> _getSchema(String name, Arena arena) {
    final schemaName = name.toNativeUtf8(allocator: arena);
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
