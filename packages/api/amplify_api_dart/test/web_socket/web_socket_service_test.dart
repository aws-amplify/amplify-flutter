// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_api_dart/src/graphql/providers/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/services/web_socket_service.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

import '../util.dart';

void main() {
  group('AmplifyWebSocketService', () {
    group('generateProtocols', () {});
    const apiKey = 'fake-key';
    test(
      'should generate a protocol that includes the appropriate headers',
      () async {
        final (outputs, repo) = createOutputsAndRepo(
          AppSyncApiKeyAuthProvider(),
          APIAuthorizationType.apiKey,
          apiKey,
        );
        final service = AmplifyWebSocketService();
        final protocols = await service.generateProtocols(outputs, repo);
        final encodedHeaders = protocols[1].replaceFirst('header-', '');
        final headers =
            json.decode(String.fromCharCodes(base64Url.decode(encodedHeaders)))
                as Map<String, dynamic>;
        expect(headers[xApiKey], apiKey);
        expect(headers.containsKey(AWSHeaders.accept), true);
        expect(headers.containsKey(AWSHeaders.contentEncoding), true);
        expect(headers.containsKey(AWSHeaders.contentType), true);
        expect(headers.containsKey(AWSHeaders.host), true);
      },
    );

    group('transformStream', () {
      test(
        'carries the AppSync error reported with a connection_error',
        () async {
          final message = jsonEncode({
            'type': 'connection_error',
            'payload': {
              'errors': [
                {
                  'errorType': 'UnauthorizedException',
                  'message': 'Valid authorization header not provided.',
                },
              ],
            },
          });

          final event = await AmplifyWebSocketService()
              .transformStream(Stream<dynamic>.value(message))
              .first;

          expect(event, isA<ConnectionErrorEvent>());
          expect(
            (event as ConnectionErrorEvent).wsError?.errors,
            contains(containsPair('errorType', 'UnauthorizedException')),
          );
        },
      );

      test(
        'reports no error when connection_error carries no payload',
        () async {
          final message = jsonEncode({'type': 'connection_error'});

          final event = await AmplifyWebSocketService()
              .transformStream(Stream<dynamic>.value(message))
              .first;

          expect(event, isA<ConnectionErrorEvent>());
          expect((event as ConnectionErrorEvent).wsError, isNull);
        },
      );
    });
  });
}
