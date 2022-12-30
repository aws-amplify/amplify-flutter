// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:file/file.dart' as pkg_file;
import 'package:file/local.dart' as local_file;
import 'package:meta/meta.dart';
import 'package:path/path.dart' as pkg_path;

/// {@template amplify_secure_storage_dart.file_key_value_store}
/// A Key-Value Store that stores data in the provided file.
/// {@endtemplate}
//
// Note: This is only used in the Flutter impl of secure storage,
// but must be part of the dart package in order to be used in tests
// without bringing in flutter as a dependency to the tests.
class FileKeyValueStore {
  /// {@macro amplify_secure_storage_dart.file_key_value_store}
  const FileKeyValueStore({
    required this.path,
    required this.fileName,
    this.fs = const local_file.LocalFileSystem(),
  });

  /// The directory of the file.
  final String path;

  /// The name of the file.
  ///
  /// The file will be created if it does not yet exist.
  final String fileName;

  @visibleForTesting
  final pkg_file.FileSystem fs;

  File get file => fs.file(
        pkg_path.join(
          path,
          fileName,
        ),
      );

  /// Writes a single key to storage.
  Future<void> writeKey({
    required String key,
    required Object value,
  }) async {
    final data = await readAll();
    data[key] = value;
    return writeAll(data);
  }

  /// Overwrites the existing data.
  Future<void> writeAll(
    Map<String, Object> data,
  ) async {
    if (!await file.exists()) {
      await file.create(recursive: true);
    }
    final stringMap = json.encode(data);
    await file.writeAsString(stringMap);
  }

  /// Reads a single key from storage.
  Future<Object?> readKey({
    required String key,
  }) async {
    final data = await readAll();
    return data[key];
  }

  /// Removes a single key from storage.
  Future<void> removeKey({
    required String key,
  }) async {
    final data = await readAll();
    data.remove(key);
    await writeAll(data);
  }

  /// Returns true if the key exists in storage
  Future<bool> containsKey({
    required String key,
  }) async {
    final data = await readAll();
    return data.containsKey(key);
  }

  /// Reads all the key-value pairs from storage.
  Future<Map<String, Object>> readAll() async {
    if (await file.exists()) {
      final stringMap = await file.readAsString();
      if (stringMap.isNotEmpty) {
        final Object? data = json.decode(stringMap);
        if (data is Map) {
          return data.cast<String, Object>();
        }
      }
    }
    return <String, Object>{};
  }
}
