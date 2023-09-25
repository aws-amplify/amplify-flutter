// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_test/amplify_secure_storage_test.dart';
import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

AmplifySecureStorageDart storageFactory({
  required AmplifySecureStorageConfig config,
}) {
  // ignore: invalid_use_of_internal_member
  return AmplifySecureStorageDart(config: config);
}

AmplifySecureStorageInterface remoteStorageFactory({
  required AmplifySecureStorageConfig config,
}) {
  // ignore: invalid_use_of_internal_member
  return AmplifySecureStorageWorker(config: config);
}

void main() {
  AWSLogger().logLevel = LogLevel.verbose;

  group('local', () => runTests(storageFactory));
  group('remote', () => runTests(remoteStorageFactory));
}
