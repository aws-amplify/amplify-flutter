// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api_dart/src/util/amplify_api_config.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  group('EndpointConfig.getUri', () {
    test('should return existing uri', () async {
      const endpoint = 'https://abc123.amazonaws.com/graphql';
      final endpointConfig = createEndpointConfig(endpoint);
      final uri = endpointConfig.getUri();
      expect(uri.toString(), equals(endpoint));
    });

    test('should return existing uri with a trailing slash', () async {
      const endpoint = 'https://abc123.amazonaws.com/graphql/';
      final endpointConfig = createEndpointConfig(endpoint);
      final uri = endpointConfig.getUri();
      expect(uri.toString(), equals(endpoint));
    });

    test('should return existing uri with no path segments', () async {
      const endpoint = 'https://abc123.amazonaws.com';
      final endpointConfig = createEndpointConfig(endpoint);
      final uri = endpointConfig.getUri();
      expect(uri.toString(), equals(endpoint));
    });

    test('should return valid URI with path and params', () async {
      const endpoint = 'https://abc123.amazonaws.com/test';
      const path = 'path/to/nowhere';
      final params = {'foo': 'bar', 'bar': 'baz'};
      final endpointConfig = createEndpointConfig(
        endpoint,
        type: EndpointType.rest,
      );
      final uri = endpointConfig.getUri(path: path, queryParameters: params);
      const expected = '$endpoint/$path?foo=bar&bar=baz';
      expect(uri.toString(), equals(expected));
    });

    test('should handle a path with a leading or trailing slash', () async {
      const endpoint = 'https://abc123.amazonaws.com/test';
      const path = '/path/to/nowhere/';
      final params = {'foo': 'bar', 'bar': 'baz'};
      final endpointConfig = createEndpointConfig(
        endpoint,
        type: EndpointType.rest,
      );
      final uri = endpointConfig.getUri(path: path, queryParameters: params);
      const expected = '$endpoint$path?foo=bar&bar=baz';
      expect(uri.toString(), equals(expected));
    });
  });
}

EndpointConfig createEndpointConfig(
  String endpoint, {
  EndpointType type = EndpointType.graphQL,
  APIAuthorizationType authorizationType = APIAuthorizationType.apiKey,
}) {
  const region = 'us-east-1';
  const apiKey = 'abc-123';

  final config = AWSApiConfig(
    endpointType: type,
    endpoint: endpoint,
    region: region,
    authorizationType: authorizationType,
    apiKey: apiKey,
  );

  final endpointConfig = EndpointConfig('GraphQL', config);
  return endpointConfig;
}
