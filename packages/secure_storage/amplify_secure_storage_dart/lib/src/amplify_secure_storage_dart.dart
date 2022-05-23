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

import 'package:amplify_secure_storage_dart/src/interfaces/amplify_secure_storage_interface.dart';
import 'package:amplify_secure_storage_dart/src/mixins/amplify_secure_storage_mixin.dart';
import 'package:amplify_secure_storage_dart/src/types/amplify_secure_storage_config.dart';

/// {@template amplify_secure_storage_dart.amplify_secure_storage_dart}
/// Secure Storage implementation in Dart, supporting web and desktop platforms.
///
///  Example:
/// ```dart
/// // create storage instance
/// AmplifySecureStorageDart storage = AmplifySecureStorageDart();
///
/// // write to storage
/// storage.write(key: 'my_key', value: 'my value');
///
/// // read from storage
/// final value = await storage.read(key: 'my_key');
///
/// // delete from storage
/// storage.delete(key: 'my_key');
/// ```
/// {@endtemplate}
class AmplifySecureStorageDart extends AmplifySecureStorageInterface
    with AmplifySecureStorageDartMixin {
  /// {@macro amplify_secure_storage_dart.amplify_secure_storage_dart}
  AmplifySecureStorageDart({
    required AmplifySecureStorageConfig config,
  }) : super(config: config);
}
