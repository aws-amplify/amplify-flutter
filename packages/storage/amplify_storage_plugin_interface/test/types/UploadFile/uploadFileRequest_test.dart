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
import 'package:flutter_test/flutter_test.dart';
import 'dart:io';

void main() {
  test('A UploadFileRequest excluding options can be serialized as a Map',
      () async {
    UploadFileRequest request =
        UploadFileRequest(key: 'keyForFile', local: File('pathToFile'));
    var serializedResult = request.serializeAsMap();
    expect(serializedResult, {
      'uuid': request.uuid,
      'path': '${Directory.current.path}/pathToFile',
      'key': 'keyForFile'
    });
  });

  test('A UploadFileRequest including options can be serialized as a Map',
      () async {
    UploadFileOptions options = UploadFileOptions(
        accessLevel: StorageAccessLevel.protected,
        contentType: 'image/jpeg',
        metadata: {'description': 'test description'});
    UploadFileRequest request = UploadFileRequest(
        key: 'keyForFile', local: File('pathToFile'), options: options);
    var serializedResult = request.serializeAsMap();
    expect(serializedResult, {
      'uuid': request.uuid,
      'path': '${Directory.current.path}/pathToFile',
      'key': 'keyForFile',
      'options': {
        'accessLevel': 'protected',
        'contentType': 'image/jpeg',
        'metadata': {'description': 'test description'}
      }
    });
  });
}
