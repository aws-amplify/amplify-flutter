// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: constant_identifier_names

import 'dart:ffi';

import 'package:amplify_secure_storage_dart/src/ffi/glib/glib.bindings.g.dart';
import 'package:amplify_secure_storage_dart/src/ffi/utils/dynamic_library_utils.dart';
import 'package:ffi/ffi.dart';

export 'glib.bindings.g.dart' hide Glib;

final DynamicLibrary glibDyLib = openDynamicLibrary('libglib-2.0');

final Glib glib = Glib(glibDyLib);

final gStrHashPointer = glibDyLib
    .lookup<NativeFunction<guint Function(gconstpointer)>>('g_str_hash');

/// Extensions on Pointer<GHashTable>.
extension GHashTablePointer on Pointer<GHashTable> {
  /// Inserts a new String into the hash table with provided key/value.
  void insert({
    required String key,
    required String value,
    required Arena arena,
  }) {
    glib.g_hash_table_insert(
      this,
      key.toNativeUtf8(allocator: arena).cast(),
      value.toNativeUtf8(allocator: arena).cast(),
    );
  }

  /// Inserts each entry in the map into the hash table.
  void insertAll(Map<String, String> attributes, {required Arena arena}) {
    for (final entry in attributes.entries) {
      insert(key: entry.key, value: entry.value, arena: arena);
    }
  }
}
