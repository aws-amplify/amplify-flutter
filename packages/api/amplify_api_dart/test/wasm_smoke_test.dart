// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'dart:convert';

import 'package:amplify_api_dart/amplify_api_dart.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/web_socket_types.dart';
import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

/// Smoke test: proves dart2wasm compilation + browser execution works.
///
/// Run with: dart test test/wasm_smoke_test.dart -p chrome -c dart2wasm
void main() {
  group('WASM smoke test', () {
    test('zIsWeb is true on web targets', () {
      expect(zIsWeb, isTrue, reason: 'zIsWeb must be true on web targets');
    });

    test('plugin is constructable', () {
      expect(AmplifyAPIDart(), isA<AmplifyAPIDart>());
    });

    test('GraphQLRequest builds', () {
      final request = GraphQLRequest<String>(document: 'query { __typename }');
      expect(request.document, 'query { __typename }');
      expect(request.id, isNotEmpty);
    });

    // AppSync sends `connectionTimeoutMs` as a JSON number. Under dart2wasm
    // `json.decode` produces a `double` for numbers with no fractional part
    // in some cases, so this guards the int coercion path in the web socket
    // message decoder that dart2js never had to worry about.
    test('connection_ack decodes numeric timeout from a JSON string', () {
      const raw =
          '{"type":"connection_ack","payload":{"connectionTimeoutMs":300000}}';
      final json = jsonDecode(raw) as Map<String, Object?>;
      final message = WebSocketMessage.fromJson(json);
      expect(message.messageType, MessageType.connectionAck);
      final payload = message.payload! as ConnectionAckMessagePayload;
      expect(payload.connectionTimeoutMs, 300000);
    });
  });
}
