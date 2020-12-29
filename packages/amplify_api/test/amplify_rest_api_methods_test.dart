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

import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_api/amplify_api.dart';

void main() {
  const MethodChannel apiChannel = MethodChannel('com.amazonaws.amplify/api');

  AmplifyAPI api = new AmplifyAPI();

  TestWidgetsFlutterBinding.ensureInitialized();

  test('PUT returns proper response.data', () async {
    var responseData = Uint8List.fromList(
        "{\"success\": \"put call succeed!\",\"url\":\"/items?queryParameterA=queryValueA&queryParameterB=queryValueB\",\"body\": {\"name\": \"Mow the lawn\"}}"
            .codeUnits);

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "put") {
        return {"data": responseData};
      }
    });

    RestOperation restOperation = api.put(
        restOptions: RestOptions(
            path: "/items",
            body: Uint8List.fromList("{\"name\":\"Mow the lawn\"}".codeUnits),
            apiName: "restapi",
            headers: {
          "headerA": "headerValueA",
          "headerB": "headerValueB"
        },
            queryParameters: {
          "queryParameterA": "queryValueA",
          "queryParameterB": "queryValueB"
        }));

    RestResponse response = await restOperation.response;

    expect(response.data, responseData);
  });

  test('POST returns proper response.data', () async {
    var responseData = Uint8List.fromList(
        "{\"success\": \"post call succeed!\",\"url\":\"/items?queryParameterA=queryValueA&queryParameterB=queryValueB\",\"body\": {\"name\": \"Mow the lawn\"}}"
            .codeUnits);

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "post") {
        return {"data": responseData};
      }
    });

    RestOperation restOperation = api.post(
        restOptions: RestOptions(
            path: "/items",
            body: Uint8List.fromList("{\"name\":\"Mow the lawn\"}".codeUnits),
            apiName: "restapi",
            headers: {
          "headerA": "headerValueA",
          "headerB": "headerValueB"
        },
            queryParameters: {
          "queryParameterA": "queryValueA",
          "queryParameterB": "queryValueB"
        }));

    RestResponse response = await restOperation.response;

    expect(response.data, responseData);
  });

  test('GET returns proper response.data', () async {
    var responseData = Uint8List.fromList(
        "{\"success\":\"get call succeed!\",\"url\":\"/items\"}".codeUnits);

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "get") {
        return {"data": responseData};
      }
    });

    RestOperation restOperation = api.get(
        restOptions: RestOptions(
      path: "/items",
    ));

    RestResponse response = await restOperation.response;

    expect(response.data, responseData);
  });

  test('DELETE returns proper response.data', () async {
    var responseData = Uint8List.fromList(
        "{\"success\":\"delete call succeed!\",\"url\":\"/items\"}".codeUnits);

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "delete") {
        return {"data": responseData};
      }
    });

    RestOperation restOperation = api.delete(
        restOptions: RestOptions(
      path: "/items",
    ));

    RestResponse response = await restOperation.response;

    expect(response.data, responseData);
  });
}
