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

import 'package:amplify_secure_storage_dart/src/interfaces/amplify_secure_storage_interface.dart';
import 'package:amplify_secure_storage_dart/src/interfaces/secure_storage_interface.dart';
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
}
