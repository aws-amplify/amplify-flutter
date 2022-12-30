// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_secure_storage_dart/src/interfaces/secure_storage_interface.dart';

/// {@template amplify_secure_storage_dart.amplify_secure_storage_in_memory}
/// An in-memory implementation of [SecureStorageInterface].
/// {@endtemplate}
class AmplifySecureStorageInMemory extends SecureStorageInterface {
  const AmplifySecureStorageInMemory();

  static final Map<String, String> _data = {};

  @override
  void write({required String key, required String value}) {
    _data[key] = value;
  }

  @override
  String? read({required String key}) {
    return _data[key];
  }

  @override
  void delete({required String key}) {
    _data.remove(key);
  }
}
