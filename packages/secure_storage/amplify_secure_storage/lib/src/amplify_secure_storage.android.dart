// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_secure_storage/src/pigeons/amplify_secure_storage_pigeon.g.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

class AmplifySecureStorageAndroid extends AmplifySecureStorageInterface {
  const AmplifySecureStorageAndroid({
    required super.config,
  });

  static final _pigeon = AmplifySecureStoragePigeon();

  @override
  Future<String?> read({required String key}) {
    return _pigeon.read(config.defaultNamespace, key);
  }

  @override
  Future<void> write({required String key, required String value}) {
    return _pigeon.write(config.defaultNamespace, key, value);
  }

  @override
  Future<void> delete({required String key}) {
    return _pigeon.delete(config.defaultNamespace, key);
  }

  @override
  Future<void> removeAll() {
    return _pigeon.removeAll(config.defaultNamespace);
  }
}
