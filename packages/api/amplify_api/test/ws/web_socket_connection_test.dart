// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/src/graphql/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api/src/graphql/ws/web_socket_types.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

import '../util.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockWebSocketConnection connection;

  const graphQLDocument = '''subscription MySubscription {
    onCreateBlog {
      id
      name
      createdAt
    }
  }''';
  final subscriptionRequest = GraphQLRequest<String>(document: graphQLDocument);

  setUp(() {
    connection = MockWebSocketConnection(
      testApiKeyConfig,
      getTestAuthProviderRepo(),
    );
  });

  group('WebSocketConnection', () {
    test(
        'init() should connect with authorized query params in URI and send connection init message',
        () async {
      await connection.init();
      await expectLater(connection.ready, completes);
      expect(
        connection.connectedUri.toString(),
        expectedApiKeyWebSocketConnectionUrl,
      );
      expect(
        connection.lastSentMessage?.messageType,
        MessageType.connectionInit,
      );
    });

    test('subscribe() should initialize the connection and call onEstablished',
        () async {
      connection.subscribe(subscriptionRequest, expectAsync0(() {}));
      await expectLater(connection.ready, completes);
    });

    test(
        'subscribe() should send SubscriptionRegistrationMessage with authorized payload correctly serialized',
        () async {
      await connection.init();
      await connection.ready;
      final establishedCompleter = Completer<void>();
      connection.subscribe(subscriptionRequest, establishedCompleter.complete);
      await establishedCompleter.future;

      final lastMessage = connection.lastSentMessage;
      expect(lastMessage?.messageType, MessageType.start);
      final payloadJson = lastMessage?.payload?.toJson();
      final apiKeyFromPayload =
          // ignore: avoid_dynamic_calls
          payloadJson?['extensions']['authorization'][xApiKey];
      expect(apiKeyFromPayload, testApiKeyConfig.apiKey);
    });

    test('subscribe() should return a subscription stream', () async {
      final subscription = connection.subscribe(
        subscriptionRequest,
        null,
      );

      late StreamSubscription<GraphQLResponse<String>> streamSub;
      streamSub = subscription.listen(
        expectAsync1((event) {
          expect(event.data, json.encode(mockSubscriptionData));
          streamSub.cancel();
        }),
      );
    });

    test('cancel() should send a stop message', () async {
      final dataCompleter = Completer<String>();
      final subscription = connection.subscribe(subscriptionRequest, null);
      final streamSub = subscription.listen(
        (event) => dataCompleter.complete(event.data),
      );
      await dataCompleter.future;

      unawaited(streamSub.cancel());
      expect(connection.lastSentMessage?.messageType, MessageType.stop);
    });
  });
}
