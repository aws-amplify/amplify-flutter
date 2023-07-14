// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api_dart/src/util/amplify_api_config.dart';
import 'package:amplify_core/amplify_config.dart';
import 'package:test/test.dart';

void main() {
  late EndpointConfig endpointConfig;

  group('GraphQL Config', () {
    final endpoint =
        Uri.parse('https://abc123.appsync-api.us-east-1.amazonaws.com/graphql');
    const region = 'us-east-1';
    const apiKey = 'abc-123';

    setUpAll(() async {
      final config = AWSApiEndpointConfig.appSync(
        endpoint: endpoint,
        region: region,
        authMode: const AWSApiAuthorizationMode.apiKey(apiKey),
      );

      endpointConfig = EndpointConfig('GraphQL', config);
    });

    test('should return valid URI with null params', () async {
      final uri = endpointConfig.getUri();
      final expected = Uri.parse('$endpoint/');

      expect(uri, equals(expected));
    });
  });

  group('REST Config', () {
    final endpoint =
        Uri.parse('https://abc123.appsync-api.us-east-1.amazonaws.com/test');
    const region = 'us-east-1';

    setUpAll(() async {
      final config = AWSApiEndpointConfig.apiGateway(
        endpoint: endpoint,
        region: region,
        authMode: const AWSApiAuthorizationMode.iam(),
      );

      endpointConfig = EndpointConfig('REST', config);
    });

    test('should return valid URI with params', () async {
      const path = 'path/to/nowhere';
      final params = {'foo': 'bar', 'bar': 'baz'};
      final uri = endpointConfig.getUri(path: path, queryParameters: params);

      final expected = Uri.parse('$endpoint/$path?foo=bar&bar=baz');

      expect(uri, equals(expected));
    });

    test('should handle a leading slash', () async {
      const path = '/path/to/nowhere';
      final params = {'foo': 'bar', 'bar': 'baz'};
      final uri = endpointConfig.getUri(path: path, queryParameters: params);

      final expected = Uri.parse('$endpoint$path?foo=bar&bar=baz');

      expect(uri, equals(expected));
    });
  });
}
