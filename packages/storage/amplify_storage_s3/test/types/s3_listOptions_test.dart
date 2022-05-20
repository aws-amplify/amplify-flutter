/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/src/S3List/S3ListOptions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('S3ListOptions can be serialized as a Map', () async {
    S3ListOptions options = S3ListOptions(
        accessLevel: StorageAccessLevel.private,
        targetIdentityId: 'testIdentityId');
    var serializedResult = options.serializeAsMap();
    expect(serializedResult,
        {'accessLevel': 'private', 'targetIdentityId': 'testIdentityId'});
  });

  test(
      'S3ListOptions has accessLevel as guest and other properties null by default',
      () async {
    S3ListOptions options = S3ListOptions();
    var serializedResult = options.serializeAsMap();
    expect(serializedResult, {'accessLevel': 'guest'});
  });
}
