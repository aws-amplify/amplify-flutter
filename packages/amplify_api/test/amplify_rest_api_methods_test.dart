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
    var body = Uint8List.fromList("{\"name\":\"Mow the lawn\"}".codeUnits);
    var queryParameters = {
      "queryParameterA": "queryValueA",
      "queryParameterB": "queryValueB"
    };
    var headers = {"headerA": "headerValueA", "headerB": "headerValueB"};

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "put") {
        Map<dynamic, dynamic> restOptions = methodCall.arguments["restOptions"];
        expect(restOptions["apiName"], "restapi");
        expect(restOptions["path"], "/items");
        expect(restOptions["body"], body);
        expect(restOptions["queryParameters"], queryParameters);
        expect(restOptions["headers"], headers);

        return {"data": responseData};
      }
    });

    RestOperation restOperation = api.put(
        restOptions: RestOptions(
            path: "/items",
            body: body,
            apiName: "restapi",
            queryParameters: queryParameters,
            headers: headers));

    RestResponse response = await restOperation.response;

    expect(response.data, responseData);
  });

  test('POST returns proper response.data', () async {
    var responseData = Uint8List.fromList(
        "{\"success\": \"post call succeed!\",\"url\":\"/items?queryParameterA=queryValueA&queryParameterB=queryValueB\",\"body\": {\"name\": \"Mow the lawn\"}}"
            .codeUnits);
    var body = Uint8List.fromList("{\"name\":\"Mow the lawn\"}".codeUnits);
    var queryParameters = {
      "queryParameterA": "queryValueA",
      "queryParameterB": "queryValueB"
    };
    var headers = {"headerA": "headerValueA", "headerB": "headerValueB"};

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "post") {
        Map<dynamic, dynamic> restOptions = methodCall.arguments["restOptions"];
        expect(restOptions["apiName"], "restapi");
        expect(restOptions["path"], "/items");
        expect(restOptions["body"], body);
        expect(restOptions["queryParameters"], queryParameters);
        expect(restOptions["headers"], headers);

        return {"data": responseData};
      }
    });

    RestOperation restOperation = api.post(
        restOptions: RestOptions(
            path: "/items",
            body: body,
            apiName: "restapi",
            headers: headers,
            queryParameters: queryParameters));

    RestResponse response = await restOperation.response;

    expect(response.data, responseData);
  });

  test('GET returns proper response.data', () async {
    var responseData = Uint8List.fromList(
        "{\"success\":\"get call succeed!\",\"url\":\"/items\"}".codeUnits);

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "get") {
        Map<dynamic, dynamic> restOptions = methodCall.arguments["restOptions"];
        expect(restOptions["path"], "/items");

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
        Map<dynamic, dynamic> restOptions = methodCall.arguments["restOptions"];
        expect(restOptions["path"], "/items");

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

  test('GET Status Code Error throws proper error', () async {
    var errorResponseMap = {
      "PLATFORM_EXCEPTIONS": {
        "platform": "iOS",
        "localizedErrorMessage": "The HTTP response status code is [400].",
        "recoverySuggestion":
            "The metadata associated with the response is contained in the HTTPURLResponse.\nFor more information on HTTP status codes, take a look at\nhttps://en.wikipedia.org/wiki/List_of_HTTP_status_codes"
      }
    };

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "get") {
        throw PlatformException(
            code: "AmplifyException",
            message: "AMPLIFY_API_GET_FAILED",
            details: errorResponseMap);
      }
    });

    RestOperation restOperation = api.get(
        restOptions: RestOptions(
      path: "/items",
    ));

    expect(
        restOperation.response,
        throwsA(isA<PlatformException>()
            .having((error) => error.code, "error code", "AmplifyException")
            .having((error) => error.message, "error message",
                "AMPLIFY_API_GET_FAILED")
            .having((error) => error.details as Map<String, dynamic>,
                "error details", [])));
  });
}
