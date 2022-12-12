// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api_dart/src/graphql/helpers/graphql_response_decoder.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/web_socket_types.dart';
import 'package:test/test.dart';

class MessageTypeTestEntry {
  MessageTypeTestEntry(this.json, this.expectedMessageType);

  final Map<String, Object> json;
  final MessageType expectedMessageType;
}

void main() {
  final expectedResults = [
    MessageTypeTestEntry(
      {
        'type': 'connection_ack',
        'payload': {'connectionTimeoutMs': 300000}
      },
      MessageType.connectionAck,
    ),
    MessageTypeTestEntry(
      {
        'type': 'ka',
      },
      MessageType.keepAlive,
    ),
    MessageTypeTestEntry(
      {'id': 'abc-123', 'type': 'start_ack'},
      MessageType.startAck,
    ),
    MessageTypeTestEntry(
      {
        'id': 'xyz-456',
        'type': 'data',
        'payload': {
          'data': {
            'onCreateBlog': {
              'id': 'def-789',
              'name': 'Integration Test Blog - subscription create',
              'createdAt': '2022-09-26T21:41:14.711Z',
              'updatedAt': '2022-09-26T21:41:14.711Z'
            }
          },
          'errors': null
        }
      },
      MessageType.data,
    ),
    MessageTypeTestEntry(
      {
        'id': 'abc-456',
        'type': 'error',
        'payload': {
          'errors': [
            {
              'errorType': 'UnknownOperationError',
              'message': 'Unknown operation id abc-456'
            }
          ]
        }
      },
      MessageType.error,
    ),
  ];

  group('WebSocketMessage should create expected messages from JSON', () {
    for (final entry in expectedResults) {
      test(entry.expectedMessageType.name, () {
        final message = WebSocketMessage.fromJson(entry.json);
        expect(message.messageType, entry.expectedMessageType);
      });
    }
  });

  group('Error handling', () {
    test('WebsocketMessage should decode data errors as a list', () {
      const errorMessage =
          'Cannot return null for non-nullable type: "AWSDateTime" within parent "Blog" (/onCreateBlog/updatedAt)';
      final errors = [
        {
          'message': errorMessage,
          'path': ['onCreateBlog', 'updatedAt']
        }
      ];
      final entry = {
        'id': 'xyz-456',
        'type': 'data',
        'payload': {'data': null, 'errors': errors}
      };
      final message = WebSocketMessage.fromJson(entry);
      expect(message.messageType, MessageType.data);
      expect(
        message.payload!.toJson()['errors'],
        errors,
      );

      /// GraphQLResponseDecoder should handle a payload with errors.
      final response = GraphQLResponseDecoder.instance.decode<String>(
        request: GraphQLRequest<String>(
          document: '',
        ),
        response: message.payload!.toJson(),
      );
      expect(
        response.errors.first.message,
        errorMessage,
      );
    });
  });
}
