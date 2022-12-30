// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_dart/src/platforms/amplify_secure_storage_web.dart';

/// [AmplifySecureStorageDartMixin] that will be used on the web
mixin AmplifySecureStorageDartMixin on AmplifySecureStorageInterface
    implements SecureStorageInterface {
  late final _instance = AmplifySecureStorageWeb(config: config);

  @override
  FutureOr<void> write({required String key, required String value}) {
    return _instance.write(key: key, value: value);
  }

  @override
  FutureOr<String?> read({required String key}) {
    return _instance.read(key: key);
  }

  @override
  FutureOr<void> delete({required String key}) {
    return _instance.delete(key: key);
  }

  @override
  FutureOr<void> removeAll() {
    return _instance.removeAll();
  }
}
