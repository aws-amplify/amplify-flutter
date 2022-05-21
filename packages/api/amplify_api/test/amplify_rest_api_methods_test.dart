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
import 'dart:typed_data';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'graphql_helpers_test.dart';

const statusOK = 200;
const statusBadRequest = 400;

// Matchers
final throwsRestException = throwsA(isA<RestException>());

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Amplify = MethodChannelAmplify();

  const MethodChannel apiChannel = MethodChannel('com.amazonaws.amplify/api');
  late AmplifyAPI api;

  setUpAll(() async {
    api = MockAmplifyAPI();
    await Amplify.addPlugin(api);
  });

  test('PUT returns proper response.data', () async {
    var responseData = Uint8List.fromList(
        '{"success": "put call succeed!","url":/items?queryParameterA=queryValueA&queryParameterB=queryValueB","body": {"name": "Mow the lawn"}}'
            .codeUnits);
    var body = Uint8List.fromList('{"name":"Mow the lawn"}'.codeUnits);
    var queryParameters = {
      'queryParameterA': 'queryValueA',
      'queryParameterB': 'queryValueB'
    };
    var headers = {'headerA': 'headerValueA', 'headerB': 'headerValueB'};

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'put') {
        Map<dynamic, dynamic> restOptions =
            methodCall.arguments['restOptions'] as Map;
        expect(restOptions['apiName'], 'restapi');
        expect(restOptions['path'], '/items');
        expect(restOptions['body'], body);
        expect(restOptions['queryParameters'], queryParameters);
        expect(restOptions['headers'], headers);

        return {'data': responseData, 'statusCode': statusOK};
      }
    });

    RestOperation restOperation = api.put(
      restOptions: RestOptions(
        path: '/items',
        body: body,
        apiName: 'restapi',
        queryParameters: queryParameters,
        headers: headers,
      ),
    );

    RestResponse response = await restOperation.response;

    expect(response.data, responseData);
  });

  test('POST returns proper response.data', () async {
    var responseData = Uint8List.fromList(
        '{"success": "post call succeed!","url":"/items?queryParameterA=queryValueA&queryParameterB=queryValueB","body": {"name": "Mow the lawn"}}'
            .codeUnits);
    var body = Uint8List.fromList('{"name":"Mow the lawn"}'.codeUnits);
    var queryParameters = {
      'queryParameterA': 'queryValueA',
      'queryParameterB': 'queryValueB'
    };
    var headers = {'headerA': 'headerValueA', 'headerB': 'headerValueB'};

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'post') {
        Map<dynamic, dynamic> restOptions =
            methodCall.arguments['restOptions'] as Map;
        expect(restOptions['apiName'], 'restapi');
        expect(restOptions['path'], '/items');
        expect(restOptions['body'], body);
        expect(restOptions['queryParameters'], queryParameters);
        expect(restOptions['headers'], headers);

        return {'data': responseData, 'statusCode': statusOK};
      }
    });

    RestOperation restOperation = api.post(
      restOptions: RestOptions(
        path: '/items',
        body: body,
        apiName: 'restapi',
        headers: headers,
        queryParameters: queryParameters,
      ),
    );

    RestResponse response = await restOperation.response;

    expect(response.data, responseData);
  });

  test('GET returns proper response.data', () async {
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

    RestOperation restOperation = api.get(
        restOptions: const RestOptions(
      path: '/items',
    ));

    RestResponse response = await restOperation.response;

    expect(response.data, responseData);
  });

  test('DELETE returns proper response.data', () async {
    var responseData = Uint8List.fromList(
        '{"success":"delete call succeed!","url":"/items"}'.codeUnits);

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'delete') {
        Map<dynamic, dynamic> restOptions =
            methodCall.arguments['restOptions'] as Map;
        expect(restOptions['path'], '/items');

        return {'data': responseData, 'statusCode': statusOK};
      }
    });

    RestOperation restOperation = api.delete(
        restOptions: const RestOptions(
      path: '/items',
    ));

    RestResponse response = await restOperation.response;

    expect(response.data, responseData);
  });

  test('GET Status Code Error throws proper error', () async {
    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'get') {
        throw PlatformException(code: 'ApiException', details: {
          'message': 'AMPLIFY_API_MUTATE_FAILED',
          'recoverySuggestion': 'some insightful suggestion',
          'underlyingException': 'Act of God'
        });
      }
    });

    try {
      RestOperation restOperation = api.get(
          restOptions: const RestOptions(
        path: '/items',
      ));
      await restOperation.response;
    } on ApiException catch (e) {
      expect(e.message, 'AMPLIFY_API_MUTATE_FAILED');
      expect(e.recoverySuggestion, 'some insightful suggestion');
      expect(e.underlyingException, 'Act of God');
    }
  });

  test('GET exception adds the httpStatusCode to exception if available',
      () async {
    const statusCode = 500;
    const data = 'Internal server error';

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'get') {
        return {
          'statusCode': statusCode,
          'headers': <String, String>{},
          'data': Uint8List.fromList(data.codeUnits),
        };
      }
    });

    try {
      RestOperation restOperation = api.get(
        restOptions: const RestOptions(
          path: '/items',
        ),
      );
      await restOperation.response;
    } on RestException catch (e) {
      expect(e.response.statusCode, 500);
      expect(e.response.body, data);
    }
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

    RestOperation restOperation = api.get(
        restOptions: const RestOptions(
      path: '/items',
    ));

    //RestResponse response = await restOperation.response;
    restOperation.cancel();
  });

  group('non-2xx status code', () {
    const testBody = 'test';
    const testResponseHeaders = {'key': 'value'};

    setUpAll(() {
      apiChannel.setMockMethodCallHandler((call) async {
        return {
          'data': utf8.encode(testBody),
          'statusCode': statusBadRequest,
          'headers': testResponseHeaders,
        };
      });
    });

    test('throws RestException', () async {
      final restOp = api.get(restOptions: const RestOptions(path: '/'));
      await expectLater(restOp.response, throwsRestException);
    });

    test('has valid RestResponse', () async {
      final restOp = api.get(restOptions: const RestOptions(path: '/'));

      RestException restException;
      try {
        await restOp.response;
        fail('RestOperation should throw');
      } on Exception catch (e) {
        expect(e, isA<RestException>());
        restException = e as RestException;
      }

      final response = restException.response;
      expect(response.statusCode, statusBadRequest);
      expect(response.headers, testResponseHeaders);
      expect(response.body, testBody);
    });
  });
}
