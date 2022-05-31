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

import 'dart:ffi';

import 'package:amplify_secure_storage_dart/src/interfaces/amplify_secure_storage_interface.dart';
import 'package:amplify_secure_storage_dart/src/types/amplify_secure_storage_config.dart';
import 'package:ffi/ffi.dart';

import '../ffi/glib/glib.dart';
import '../ffi/libsecret/libsecret.dart';

/// The Linux implementation of [SecureStorageInterface].
class AmplifySecureStorageLinux extends AmplifySecureStorageInterface {
  const AmplifySecureStorageLinux({
    required AmplifySecureStorageConfig config,
  }) : super(config: config);

  @override
  void write({required String key, required String value}) {
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
  String? read({required String key}) {
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
  void delete({required String key}) {
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

  String _createLabel(String key) => '${config.namespace}.${config.scope}/$key';

  /// Creates a [SecretSchema] pointer.
  ///
  /// [SecretSchema](https://developer-old.gnome.org/libsecret/0.18/libsecret-SecretSchema.html#SecretSchema)
  Pointer<SecretSchema> _getSchema(Arena arena) {
    final schemaName = SECRET_COLLECTION_DEFAULT.toNativeUtf8(allocator: arena);
    return arena<SecretSchema>()
      ..ref.name = schemaName
      ..ref.flags = SecretSchemaFlags.SECRET_SCHEMA_NONE
      ..addAttributes(Attributes.values.map((e) => e.name), arena: arena);
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
          Attributes.service.name: config.namespace,
          Attributes.scope.name: config.scope,
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
  service,
  scope,
}
