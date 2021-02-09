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

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const MethodChannel apiChannel = MethodChannel('com.amazonaws.amplify/api');
  const String channelName = 'com.amazonaws.amplify/api_observe_events';

  AmplifyAPI api = AmplifyAPI();

  TestWidgetsFlutterBinding.ensureInitialized();

  final request = GraphQLRequest<String>(document: 'test document');
  var isOnEstablishCalled = false;
  var isOnDoneCalled = false;
  var eventData = null;
  var errorEvent = null;

  tearDown(() {
    ServicesBinding.instance.defaultBinaryMessenger
        .setMockMessageHandler(channelName, null);
  });

  handler(event) {
    ServicesBinding.instance.defaultBinaryMessenger.handlePlatformMessage(
      channelName,
      event,
      (ByteData reply) {},
    );
  }

  test('Subscribe API callbacks are invoked correctly for all event types',
      () async {
    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      expect(methodCall.method, 'subscribe');
    });

    //Invoke the subscribe API with callbacks
    await api.subscribe(
        request: request,
        onData: (data) {
          eventData = data;
        },
        onEstablished: () {
          isOnEstablishCalled = true;
        },
        onError: (error) {
          errorEvent = error;
        },
        onDone: () {
          isOnDoneCalled = true;
        });

    //Test initial state
    expect(isOnEstablishCalled, true);
    expect(eventData, null);
    expect(isOnDoneCalled, false);
    expect(errorEvent, null);

    //Simulate a DATA event
    var json = {
      'id': request.cancelToken,
      'payload': {
        'errors': [],
        'data': 'test data',
      },
      'type': 'DATA'
    };
    handler(StandardMethodCodec().encodeSuccessEnvelope(json));
    await Future<void>.delayed(Duration.zero);

    //Test that onData() is called with the expected payload
    expect(eventData, isInstanceOf<GraphQLResponse<String>>());
    expect(eventData.data, 'test data');
    expect(eventData.errors, isInstanceOf<List<GraphQLResponseError>>());
    expect(isOnDoneCalled, false);
    expect(errorEvent, null);

    //Simulate a DONE event
    json = {'id': request.cancelToken, 'type': 'DONE'};
    handler(StandardMethodCodec().encodeSuccessEnvelope(json));
    await Future<void>.delayed(Duration.zero);

    //Test that onDone() is called as expected
    expect(isOnDoneCalled, true);
    expect(errorEvent, null);

    //Simulate a error event
    const details = {
      'message': 'Test error message',
      'recoverySuggestion': 'Test recovery suggestion',
      'underlyingException': 'Test underlying exception'
    };
    handler(StandardMethodCodec().encodeErrorEnvelope(
        message: 'Test', code: 'ApiException', details: details));
    await Future<void>.delayed(Duration.zero);

    //Test that the an APIException is received with the correct attributes
    expect(errorEvent.message, 'Test error message');
    expect(errorEvent.recoverySuggestion, 'Test recovery suggestion');
    expect(errorEvent.underlyingException, 'Test underlying exception');
  });
}
