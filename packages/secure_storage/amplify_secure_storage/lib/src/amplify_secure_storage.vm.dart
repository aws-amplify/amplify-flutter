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
import 'dart:io';

import 'package:amplify_secure_storage/src/amplify_secure_storage.android.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_dart/src/utils/file_key_value_store.dart';
import 'package:async/async.dart';
import 'package:path_provider/path_provider.dart';

/// The file where the list of scopes will be stored on Linux.
const _scopeFileName = 'amplify_secure_storage_scopes.json';

/// {@template amplify_secure_storage.amplify_secure_storage}
/// The default Secure Storage implementation used in Amplify packages.
/// {@endtemplate}
class AmplifySecureStorage extends AmplifySecureStorageInterface {
  /// {@macro amplify_secure_storage.amplify_secure_storage}
  AmplifySecureStorage({
    required super.config,
  });

  late final AmplifySecureStorageInterface _instance;

  final _initMemo = AsyncMemoizer();

  Future<void> _init() async {
    await _initMemo.runOnce(
      () async {
        if (Platform.isAndroid) {
          _instance = AmplifySecureStorageAndroid(config: config);
        } else {
          _instance = AmplifySecureStorageWorker(
            config: config.copyWith(
              windowsOptions: config.windowsOptions.copyWith(
                storagePath: config.windowsOptions.storagePath ??
                    (await getApplicationSupportDirectory()).path,
              ),
            ),
          );
        }
        if (Platform.isLinux) {
          // if accessGroup is set, do not clear data on initialization
          // since the data can be shared across applications.
          if (config.linuxOptions.accessGroup == null) {
            await _initializeScope();
          }
        }
      },
    );
  }

  @override
  Future<void> delete({required String key}) async {
    await _init();
    return _instance.delete(key: key);
  }

  @override
  Future<String?> read({required String key}) async {
    await _init();
    return _instance.read(key: key);
  }

  @override
  Future<void> write({required String key, required String value}) async {
    await _init();
    return _instance.write(key: key, value: value);
  }

  /// Clears all keys for the given scope if this scope
  /// has not been initialized previously.
  ///
  /// Checks for an initialization flag in file storage.
  /// If the flag is not present storage will be cleared
  /// and then the flag will be set.
  ///
  /// Intended to clear storage after an app uninstall & re-install.
  Future<void> _initializeScope() async {
    final path = (await getApplicationSupportDirectory()).path;
    final fileStore = FileKeyValueStore(path: path, fileName: _scopeFileName);
    final isInitialized = await fileStore.containsKey(key: config.scope!);
    if (!isInitialized) {
      // removeAll is marked as internal to prevent use from outside
      // of secure_storage. Use in amplify_secure_storage is acceptable.
      // ignore: invalid_use_of_internal_member
      await _instance.removeAll();
      await fileStore.writeKey(key: config.scope!, value: true);
    }
  }
}
