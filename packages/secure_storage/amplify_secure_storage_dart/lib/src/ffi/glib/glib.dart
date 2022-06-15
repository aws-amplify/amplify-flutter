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

// ignore_for_file: constant_identifier_names

import 'dart:ffi';

import 'package:amplify_secure_storage_dart/src/ffi/utils/dynamic_library_utils.dart';
import 'package:ffi/ffi.dart';

import 'glib.bindings.g.dart';

export 'glib.bindings.g.dart' hide Glib;

final DynamicLibrary glibDyLib = (() => openDynamicLibrary('libglib-2.0'))();

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
