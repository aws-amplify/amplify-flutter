// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:meta/meta.dart';

/// {@macro amplify_secure_storage.amplify_secure_storage}
class AmplifySecureStorage extends AmplifySecureStorageInterface {
  /// {@macro amplify_secure_storage.amplify_secure_storage.from_config}
  @internal
  AmplifySecureStorage({
    required super.config,
  });

  /// {@macro amplify_secure_storage.amplify_secure_storage.factory_from}
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

  late final SecureStorageInterface _instance =
      // ignore: invalid_use_of_internal_member
      AmplifySecureStorageDart(config: config);

  @override
  FutureOr<void> delete({required String key}) {
    return _instance.delete(key: key);
  }

  @override
  FutureOr<String?> read({required String key}) {
    return _instance.read(key: key);
  }

  @override
  FutureOr<void> write({required String key, required String value}) {
    return _instance.write(key: key, value: value);
  }
}
