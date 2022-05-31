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
