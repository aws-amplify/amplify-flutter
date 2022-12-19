// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Comment.classType generates proper json from serializedMap modelschema',
      () async {
    Map<String, dynamic> inputMap = {
      "id": "2",
      "modelName": "Comment",
      "serializedData": {
        "id": "2",
        "content": "Comment content",
        "post": {
          "id": "1",
          "modelName": "",
          "serializedData": {"id": "1"}
        }
      }
    };

    expect(Comment.classType.fromSerializedMap(inputMap).toJson(), {
      "id": "2",
      "post": {
        "id": "1",
        "title": null,
        "rating": null,
        "created": null,
        "likeCount": null,
        "blog": null,
        "comments": null,
        'createdAt': null,
        'updatedAt': null
      },
      "content": "Comment content",
      'createdAt': null,
      'updatedAt': null
    });
  });
}
