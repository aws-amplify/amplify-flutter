// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_secure_storage/src/messages.android.g.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

class AmplifySecureStorageAndroid extends AmplifySecureStorageInterface {
  const AmplifySecureStorageAndroid({
    required super.config,
  });

  static final AmplifySecureStorageApi _api = AmplifySecureStorageApi();

  @override
  Future<String?> read({required String key}) {
    return _api.read(config.defaultNamespace, key);
  }

  @override
  Future<void> write({required String key, required String value}) {
    return _api.write(config.defaultNamespace, key, value);
  }

  @override
  Future<void> delete({required String key}) {
    return _api.delete(config.defaultNamespace, key);
  }
}
