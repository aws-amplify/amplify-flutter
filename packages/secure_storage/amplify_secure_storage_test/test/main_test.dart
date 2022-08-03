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

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_test/amplify_secure_storage_test.dart';
import 'package:test/test.dart';

AmplifySecureStorageDart storageFactory({
  required AmplifySecureStorageConfig config,
}) {
  return AmplifySecureStorageDart(config: config);
}

AmplifySecureStorageInterface remoteStorageFactory({
  required AmplifySecureStorageConfig config,
}) {
  return AmplifySecureStorageWorker(config: config);
}

void main() {
  group('local', () => runTests(storageFactory));
  group('remote', () => runTests(remoteStorageFactory));
}
