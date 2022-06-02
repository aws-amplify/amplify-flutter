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

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

/// {@macro amplify_secure_storage.amplify_secure_storage}
class AmplifySecureStorage extends AmplifySecureStorageInterface {
  /// {@macro amplify_secure_storage.amplify_secure_storage}
  AmplifySecureStorage({
    required AmplifySecureStorageConfig config,
  }) : super(config: config);

  late final SecureStorageInterface _instance =
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
