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

import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_flutter/src/amplify_impl.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'graphql_helpers_test.dart';

const statusOK = 200;
const statusBadRequest = 400;
const mowLawnBody = '{"name": "Mow the lawn"}';
const hello = 'Hello from lambda!';
final helloResponse = ascii.encode(hello);
final encodedMowLoanBody = ascii.encode(mowLawnBody);
const queryParameters = {
  'queryParameterA': 'queryValueA',
  'queryParameterB': 'queryValueB'
};
const headers = {
  'headerA': 'headerValueA',
  'headerB': 'headerValueB',
  AWSHeaders.contentType: 'text/plain'
};

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Amplify = MethodChannelAmplify();

  const MethodChannel apiChannel = MethodChannel('com.amazonaws.amplify/api');
  late AmplifyAPI api;

  setUpAll(() async {
    api = MockAmplifyAPI();
    await Amplify.addPlugin(api);
  });

  Future<void> _assertResponse(AWSBaseHttpResponse response) async {
    final actualResponseBody = await response.decodeBody();
    expect(actualResponseBody, hello);
    expect(response.statusCode, statusOK);
  }

  test('PUT returns proper response.data', () async {
    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'put') {
        Map<dynamic, dynamic> restOptions =
            methodCall.arguments['restOptions'] as Map;
        expect(restOptions['apiName'], 'restapi');
        expect(restOptions['path'], '/items');
        expect(restOptions['body'], encodedMowLoanBody);
        expect(restOptions['queryParameters'], queryParameters);
        expect(restOptions['headers'], headers);
        return {'data': helloResponse, 'statusCode': statusOK};
      }
    });

    final restOperation = api.put(
      '/items',
      body: HttpPayload.string(mowLawnBody),
      apiName: 'restapi',
      queryParameters: queryParameters,
      headers: headers,
    );

    final response = await restOperation.response;
    await _assertResponse(response);
  });

  test('POST returns proper response.data', () async {
    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'post') {
        Map<dynamic, dynamic> restOptions =
            methodCall.arguments['restOptions'] as Map;
        expect(restOptions['apiName'], 'restapi');
        expect(restOptions['path'], '/items');
        expect(restOptions['body'], encodedMowLoanBody);
        expect(restOptions['queryParameters'], queryParameters);
        expect(restOptions['headers'], headers);
        return {'data': helloResponse, 'statusCode': statusOK};
      }
    });

    final restOperation = api.post(
      '/items',
      body: HttpPayload.string(mowLawnBody),
      apiName: 'restapi',
      queryParameters: queryParameters,
      headers: headers,
    );

    final response = await restOperation.response;
    await _assertResponse(response);
  });

  test('GET returns proper response.data', () async {
    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'get') {
        Map<dynamic, dynamic> restOptions =
            methodCall.arguments['restOptions'] as Map;
        expect(restOptions['apiName'], 'restapi');
        expect(restOptions['path'], '/items');
        expect(restOptions['queryParameters'], queryParameters);
        expect(restOptions['headers'], headers);
        return {'data': helloResponse, 'statusCode': statusOK};
      }
    });

    final restOperation = api.get(
      '/items',
      apiName: 'restapi',
      queryParameters: queryParameters,
      headers: headers,
    );

    final response = await restOperation.response;
    await _assertResponse(response);
  });

  test('DELETE returns proper response.data', () async {
    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'delete') {
        Map<dynamic, dynamic> restOptions =
            methodCall.arguments['restOptions'] as Map;
        expect(restOptions['apiName'], 'restapi');
        expect(restOptions['path'], '/items');
        expect(restOptions['body'], encodedMowLoanBody);
        expect(restOptions['queryParameters'], queryParameters);
        expect(restOptions['headers'], headers);
        return {'data': helloResponse, 'statusCode': statusOK};
      }
    });

    final restOperation = api.delete(
      '/items',
      body: HttpPayload.string(mowLawnBody),
      apiName: 'restapi',
      queryParameters: queryParameters,
      headers: headers,
    );

    final response = await restOperation.response;
    await _assertResponse(response);
  });

  test(
      'POST with form-encoded body gets proper response with response headers included',
      () async {
    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'post') {
        Map<dynamic, dynamic> restOptions =
            methodCall.arguments['restOptions'] as Map;
        expect(restOptions['apiName'], 'restapi');
        expect(restOptions['path'], '/items');
        expect(restOptions['queryParameters'], queryParameters);
        expect(restOptions['headers'][AWSHeaders.contentType],
            'application/x-www-form-urlencoded; charset=utf-8');
        expect(utf8.decode(restOptions['body'] as List<int>), 'foo=bar');
        return {
          'data': helloResponse,
          'statusCode': statusOK,
          'headers': {'foo': 'bar'}
        };
      }
    });

    final restOperation = api.post(
      '/items',
      apiName: 'restapi',
      body: HttpPayload.formFields({'foo': 'bar'}),
      queryParameters: queryParameters,
    );

    final response = await restOperation.response;
    expect(response.headers['foo'], 'bar');
    await _assertResponse(response);
  });

  test(
      'POST with json-encoded body has property Content-Type and gets proper response',
      () async {
    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'post') {
        Map<dynamic, dynamic> restOptions =
            methodCall.arguments['restOptions'] as Map;
        expect(restOptions['apiName'], 'restapi');
        expect(restOptions['path'], '/items');
        expect(restOptions['queryParameters'], queryParameters);
        expect(restOptions['headers'][AWSHeaders.contentType],
            'application/json; charset=utf-8');
        expect(utf8.decode(restOptions['body'] as List<int>), '{"foo":"bar"}');
        return {
          'data': helloResponse,
          'statusCode': statusOK,
          'headers': {'foo': 'bar'}
        };
      }
    });

    final restOperation = api.post(
      '/items',
      apiName: 'restapi',
      body: HttpPayload.json({'foo': 'bar'}),
      queryParameters: queryParameters,
    );

    final response = await restOperation.response;
    await _assertResponse(response);
  });

  test('CANCEL success does not throw error', () async {
    // Need to reply with PLACEHOLDER to avoid null issues in _formatRestResponse
    // In actual production code, the methodChannel doesn't respond to the future response
    var responseData = Uint8List.fromList(
        '{"success":"get call succeed!","url":"/items"}'.codeUnits);

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'get') {
        Map<dynamic, dynamic> restOptions =
            methodCall.arguments['restOptions'] as Map;
        expect(restOptions['path'], '/items');
        return {'data': responseData, 'statusCode': statusOK};
      }
    });

    final restOperation = api.get('/items');

    //RestResponse response = await restOperation.response;
    restOperation.cancel();
  });
}
