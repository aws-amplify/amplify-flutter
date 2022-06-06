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
import 'package:test/test.dart';

void main() {
  test('A GetUrlRequest excluding options can be serialized as a Map',
      () async {
    GetUrlRequest request = GetUrlRequest(key: 'keyForFile');
    var serializedResult = request.serializeAsMap();
    expect(serializedResult, {'key': 'keyForFile'});
  });

  test('A GetUrlRequest including options can be serialized as a Map',
      () async {
    GetUrlOptions options =
        GetUrlOptions(accessLevel: StorageAccessLevel.protected, expires: 1000);
    GetUrlRequest request = GetUrlRequest(key: 'keyForFile', options: options);
    var serializedResult = request.serializeAsMap();
    expect(serializedResult, {
      'key': 'keyForFile',
      'options': {
        'accessLevel': 'protected',
        'expires': 1000,
      }
    });
  });
}
