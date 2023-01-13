// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api_dart/src/util/amplify_api_config.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  late EndpointConfig endpointConfig;

  group('GraphQL Config', () {
    const endpointType = EndpointType.graphQL;
    const endpoint =
        'https://abc123.appsync-api.us-east-1.amazonaws.com/graphql';
    const region = 'us-east-1';
    const authorizationType = APIAuthorizationType.apiKey;
    const apiKey = 'abc-123';

    setUpAll(() async {
      const config = AWSApiConfig(
        endpointType: endpointType,
        endpoint: endpoint,
        region: region,
        authorizationType: authorizationType,
        apiKey: apiKey,
      );

      endpointConfig = const EndpointConfig('GraphQL', config);
    });

    test('should return valid URI with null params', () async {
      final uri = endpointConfig.getUri();
      final expected = Uri.parse('$endpoint/');

      expect(uri, equals(expected));
    });
  });

  group('REST Config', () {
    const endpointType = EndpointType.rest;
    const endpoint = 'https://abc123.appsync-api.us-east-1.amazonaws.com/test';
    const region = 'us-east-1';
    const authorizationType = APIAuthorizationType.iam;

    setUpAll(() async {
      const config = AWSApiConfig(
        endpointType: endpointType,
        endpoint: endpoint,
        region: region,
        authorizationType: authorizationType,
      );

      endpointConfig = const EndpointConfig('REST', config);
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
