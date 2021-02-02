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

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const MethodChannel apiChannel = MethodChannel('com.amazonaws.amplify/api');
  const String channelName = 'com.amazonaws.amplify/api_observe_events';

  AmplifyAPI api = AmplifyAPI();

  TestWidgetsFlutterBinding.ensureInitialized();

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

  test('Subscribe API sets up the subscription over the method channel',
      () async {
    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      expect(methodCall.method, 'subscribe');
    });
    String graphQLDocument = '';
    var isOnEstablishCalled = false;
    await api.subscribe(
        request: GraphQLRequest<String>(document: graphQLDocument),
        onData: (msg) {},
        onEstablished: () {
          isOnEstablishCalled = true;
        });

    await Future<void>.delayed(Duration.zero);
    expect(isOnEstablishCalled, true);
  });

  test('Receives an event in the onDone callback', () async {
    String graphQLDocument = 'test document';
    final request = GraphQLRequest<String>(document: graphQLDocument);
    var json = {'id': request.cancelToken, 'type': 'DONE'};
    var isOnDoneCalled = false;
    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      expect(methodCall.method, 'subscribe');
    });
    handler(const StandardMethodCodec().encodeSuccessEnvelope(json));

    api.subscribe(
      request: request,
      onEstablished: () {},
      onData: (event) {
        fail('No event should be received in the onData callback');
      },
      onDone: () {
        isOnDoneCalled = true;
      },
    );

    await Future<void>.delayed(Duration.zero);
    expect(isOnDoneCalled, true);
  });

  test('Receives an event in the onData callback', () async {
    String graphQLDocument = 'test document';
    final request = GraphQLRequest<String>(document: graphQLDocument);
    var json = {
      'id': request.cancelToken,
      'payload': {
        'errors': [],
        'data': 'test data',
      },
      'type': 'DATA'
    };
    handler(StandardMethodCodec().encodeSuccessEnvelope(json));
    api.subscribe(
        request: request,
        onData: (event) {
          expect(event, isInstanceOf<GraphQLResponse<String>>());
          expect(event.data, 'test data');
          expect(event.errors, isInstanceOf<List<GraphQLResponseError>>());
        });
  });
}
