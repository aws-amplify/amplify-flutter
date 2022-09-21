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

import 'package:amplify_api/src/amplify_api_config.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

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
          apiKey: apiKey);

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
          authorizationType: authorizationType);

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
