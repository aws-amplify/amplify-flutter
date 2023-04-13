// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:amplify_secure_storage/src/amplify_secure_storage.android.dart';
import 'package:amplify_secure_storage/src/messages.cupertino.g.dart';
import 'package:amplify_secure_storage/src/path_provider_local.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
// ignore: implementation_imports
import 'package:amplify_secure_storage_dart/src/utils/file_key_value_store.dart';
import 'package:async/async.dart';
import 'package:meta/meta.dart';
import 'package:path_provider/path_provider.dart';

/// {@template amplify_secure_storage.amplify_secure_storage}
/// The default Secure Storage implementation used in Amplify packages.
/// {@endtemplate}
class AmplifySecureStorage extends AmplifySecureStorageInterface {
  /// {@template amplify_secure_storage.amplify_secure_storage.from_config}
  /// Generates a [AmplifySecureStorage] from a config.
  ///
  /// Should only be used within Amplify packages. See [factoryFrom] for
  /// external use.
  /// {@endtemplate}
  @internal
  AmplifySecureStorage({
    required super.config,
  });

  /// {@template amplify_secure_storage.amplify_secure_storage.factory_from}
  /// Returns a factory for creating [AmplifySecureStorage] instances.
  /// {@endtemplate}
  static AmplifySecureStorage Function(
    AmplifySecureStorageScope amplifyScope,
  ) factoryFrom({
    WebSecureStorageOptions? webOptions,
    WindowsSecureStorageOptions? windowsOptions,
    LinuxSecureStorageOptions? linuxOptions,
    MacOSSecureStorageOptions? macOSOptions,
    IOSSecureStorageOptions? iOSOptions,
  }) {
    return (AmplifySecureStorageScope scope) {
      return AmplifySecureStorage(
        config: AmplifySecureStorageConfig(
          scope: scope.name,
          webOptions: webOptions,
          windowsOptions: windowsOptions,
          linuxOptions: linuxOptions,
          macOSOptions: macOSOptions,
          iOSOptions: iOSOptions,
        ),
      );
    };
  }

  late final AmplifySecureStorageInterface _instance;

  /// A namespace for storing the list of registered scopes.
  ///
  /// Used as the file name on Linux and a prefix for the
  /// key in NSUserDefaults on iOS and MacOS.
  @visibleForTesting
  static const scopeStoragePrefix = 'amplify_secure_storage_scopes';

  final _initMemo = AsyncMemoizer<void>();

  Future<void> _init() async {
    await _initMemo.runOnce(
      () async {
        if (Platform.isAndroid) {
          _instance = AmplifySecureStorageAndroid(config: config);
        } else {
          var config = this.config;
          if (Platform.isWindows) {
            config = config.copyWith(
              windowsOptions: config.windowsOptions.copyWith(
                storagePath: config.windowsOptions.storagePath ??
                    (await getApplicationLocalSupportDirectory()).path,
              ),
            );
          }
          // ignore: invalid_use_of_internal_member
          _instance = AmplifySecureStorageWorker(config: config);
        }
        if (Platform.isIOS || Platform.isMacOS || Platform.isLinux) {
          final accessGroup = Platform.isLinux
              ? config.linuxOptions.accessGroup
              : Platform.isIOS
                  ? config.iOSOptions.accessGroup
                  : config.macOSOptions.accessGroup;
          // if accessGroup is set, do not clear data on initialization
          // since the data can be shared across applications.
          if (accessGroup == null) {
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

  @override
  Future<void> removeAll() async {
    await _init();
    // ignore: invalid_use_of_internal_member
    return _instance.removeAll();
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
    if (Platform.isLinux) {
      final path = (await getApplicationSupportDirectory()).path;
      final fileStore = FileKeyValueStore(
        path: path,
        fileName: '$scopeStoragePrefix.json',
      );
      final isInitialized = await fileStore.containsKey(key: config.scope!);
      if (!isInitialized) {
        // removeAll is marked as internal to prevent use from outside
        // of secure_storage. Use in amplify_secure_storage is acceptable.
        // ignore: invalid_use_of_internal_member
        await _instance.removeAll();
        await fileStore.writeKey(key: config.scope!, value: true);
      }
    }

    if (Platform.isIOS || Platform.isMacOS) {
      final userDefaults = NSUserDefaultsAPI();
      final key = '$scopeStoragePrefix.${config.scope}.isKeychainConfigured';
      final isInitialized = await userDefaults.boolFor(key);
      if (!isInitialized) {
        // ignore: invalid_use_of_internal_member
        await _instance.removeAll();
        await userDefaults.setBool(key, true);
      }
    }
  }
}
