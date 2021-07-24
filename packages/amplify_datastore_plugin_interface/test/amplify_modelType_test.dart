/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:flutter_test/flutter_test.dart';

import 'testData/ModelProvider.dart';

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
      "content": "Comment content",
      "post": {
        "id": "1",
        "title": null,
        "rating": null,
        "created": null,
        "blog": null,
        "comments": null
      }
    });
  });

  test('Test that nested serializedData generates proper json', () async {
    Map<String, dynamic> inputMap = {
      "id": "1",
      "modelName": "Parent",
      "serializedData": {
        "id": "1",
        "name": "My name is Parent",
        "child": {
          "id": "2",
          "modelName": "Child",
          "serializedData": {
            "id": "2",
            "name": "My name is Child",
            "innerChild": {
              "id": "3",
              "modelName": "InnerChild",
              "serializedData": {"id": "3", "name": "My name is InnerChild"}
            }
          }
        }
      }
    };
  });

  // Test toJson and fromJson of nullable lists

  test(
      'TestNullableListsString.classType with min parameters generates proper json from serializedMap modelschema',
      () async {
    Map<String, dynamic> inputMap = {
      "id": "3",
      "modelName": "TestNullableListsString",
      "serializedData": {
        "id": "3",
        "requiredList": [],
        "requiredListOfRequired": [],
      }
    };

    expect(
        TestNullableListsString.classType.fromSerializedMap(inputMap).toJson(),
        {
          "id": "3",
          "list": null,
          "requiredList": [],
          "requiredListOfRequired": [],
          "listOfRequired": null
        });
  });

  test(
      'TestNullableListsString.classType with empty lists generates proper json from serializedMap modelschema',
      () async {
    Map<String, dynamic> inputMap = {
      "id": "4",
      "modelName": "TestNullableListsString",
      "serializedData": {
        "id": "4",
        "list": [],
        "requiredList": [],
        "requiredListOfRequired": [],
        "listOfRequired": []
      }
    };

    expect(
        TestNullableListsString.classType.fromSerializedMap(inputMap).toJson(),
        {
          "id": "4",
          "list": [],
          "requiredList": [],
          "requiredListOfRequired": [],
          "listOfRequired": []
        });
  });

  test(
      'TestNullableListsString.classType with nullable values generates proper json from serializedMap modelschema',
      () async {
    Map<String, dynamic> inputMap = {
      "id": "5",
      "modelName": "TestNullableListsString",
      "serializedData": {
        "id": "5",
        "list": [null, "listTestString"],
        "requiredList": [null, "requiredListTestString"],
        "requiredListOfRequired": ["requiredListOfRequiredString"],
        "listOfRequired": ["listOfRequiredString"]
      }
    };

    expect(
        TestNullableListsString.classType.fromSerializedMap(inputMap).toJson(),
        {
          "id": "5",
          "list": [null, "listTestString"],
          "requiredList": [null, "requiredListTestString"],
          "requiredListOfRequired": ["requiredListOfRequiredString"],
          "listOfRequired": ["listOfRequiredString"]
        });
  });
}
