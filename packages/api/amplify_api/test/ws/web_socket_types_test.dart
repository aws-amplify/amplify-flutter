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

import 'package:amplify_api/src/graphql/ws/web_socket_types.dart';
import 'package:flutter_test/flutter_test.dart';

class MessageTypeTestEntry {
  MessageTypeTestEntry(this.json, this.expectedMessageType);

  final Map<String, Object> json;
  final MessageType expectedMessageType;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

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
}
