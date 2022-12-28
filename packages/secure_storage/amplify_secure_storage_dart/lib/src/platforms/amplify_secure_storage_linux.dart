// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
    @visibleForTesting String? packageId,
  }) : _packageId = packageId;

  @override
  Future<void> write({required String key, required String value}) async {
    final labelName = await _createLabel(key);
    final schemaName = await _getSchemaName();
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

  final String? _packageId;

  final _packageIdMemo = AsyncMemoizer<String>();

  /// The ID of the package, such as com.example.app
  Future<String> _getPackageId() async {
    if (_packageId != null) return _packageId!;
    return _packageIdMemo.runOnce(getApplicationId);
  }

  /// A namespace for the application.
  ///
  /// Uses the access group if it is set, otherwise uses
  /// the App ID.
  Future<String?> _getAppNameSpace() async {
    return config.linuxOptions.accessGroup ?? await _getPackageId();
  }

  /// The name of the [SecretSchema] schema.
  Future<String> _getSchemaName() async {
    final appNameSpace = await _getAppNameSpace();
    if (appNameSpace != null) {
      return '${config.defaultNamespace}.$appNameSpace';
    }
    return config.defaultNamespace;
  }

  /// A label for the current key.
  ///
  /// This will be visible to the user in GUI applications.
  Future<String> _createLabel(String key) async {
    final appNameSpace = await _getAppNameSpace();
    if (appNameSpace != null) {
      return '$appNameSpace/$key';
    }
    return key;
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
