// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:amplify_secure_storage_test/amplify_secure_storage_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

AmplifySecureStorage storageFactory({
  required AmplifySecureStorageConfig config,
}) {
  return AmplifySecureStorage(config: config);
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Secure Storage', () => runTests(storageFactory));
}
