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

import 'dart:collection';
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
    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "get") {
        throw PlatformException(code: 'ApiException', details: {
          'message': 'AMPLIFY_API_MUTATE_FAILED',
          'recoverySuggestion': 'some insightful suggestion',
          'underlyingException': 'Act of God'
        });
      }
    });

    try {
      RestOperation restOperation = api.get(
          restOptions: RestOptions(
        path: "/items",
      ));
      await restOperation.response;
    } on ApiException catch (e) {
      expect(e.message, 'AMPLIFY_API_MUTATE_FAILED');
      expect(e.recoverySuggestion, 'some insightful suggestion');
      expect(e.underlyingException, 'Act of God');
    }
  });

  test('CANCEL success does not throw error', () async {
    // Need to reply with PLACEHOLDER to avoid null issues in _formatRestResponse
    // In actual production code, the methodChannel doesn't respond to the future response
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

    //RestResponse response = await restOperation.response;
    restOperation.cancel();
  });
}
