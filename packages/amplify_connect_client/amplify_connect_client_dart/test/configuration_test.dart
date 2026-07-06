// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_connect_client_dart/amplify_connect_client_dart.dart';
import 'package:test/test.dart';

Map<String, dynamic> _outputs({String? endpoint, String? region}) => {
  'notifications': {
    'amazon_connect_customer_profiles': {
      'endpoint': ?endpoint,
      'aws_region': ?region,
    },
  },
};

void main() {
  group('ConnectClientConfiguration.fromAmplifyOutputs', () {
    test(
      'parses the notifications.amazon_connect_customer_profiles section',
      () {
        final config = ConnectClientConfiguration.fromAmplifyOutputs(
          _outputs(
            endpoint: 'https://abc.execute-api.us-east-1.amazonaws.com',
            region: 'us-east-1',
          ),
        );
        expect(
          config.endpoint,
          'https://abc.execute-api.us-east-1.amazonaws.com',
        );
        expect(config.region, 'us-east-1');
      },
    );

    test('trims a trailing slash from the endpoint', () {
      final config = ConnectClientConfiguration.fromAmplifyOutputs(
        _outputs(
          endpoint: 'https://abc.execute-api.us-east-1.amazonaws.com/',
          region: 'us-east-1',
        ),
      );
      expect(
        config.endpoint,
        'https://abc.execute-api.us-east-1.amazonaws.com',
      );
    });

    test('throws when the section is missing', () {
      expect(
        () => ConnectClientConfiguration.fromAmplifyOutputs(const {
          'auth': {'aws_region': 'us-east-1'},
        }),
        throwsA(isA<ConnectConfigurationException>()),
      );
    });

    test('throws when endpoint is missing', () {
      expect(
        () => ConnectClientConfiguration.fromAmplifyOutputs(
          _outputs(region: 'us-east-1'),
        ),
        throwsA(isA<ConnectConfigurationException>()),
      );
    });

    test('throws when aws_region is missing', () {
      expect(
        () => ConnectClientConfiguration.fromAmplifyOutputs(
          _outputs(endpoint: 'https://abc.example.com'),
        ),
        throwsA(isA<ConnectConfigurationException>()),
      );
    });
  });

  group('https enforcement', () {
    test('accepts an https endpoint', () {
      final config = ConnectClientConfiguration(
        endpoint: 'https://abc.execute-api.us-east-1.amazonaws.com',
        region: 'us-east-1',
      );
      expect(
        config.endpoint,
        'https://abc.execute-api.us-east-1.amazonaws.com',
      );
    });

    test('rejects an http endpoint', () {
      expect(
        () => ConnectClientConfiguration(
          endpoint: 'http://abc.execute-api.us-east-1.amazonaws.com',
          region: 'us-east-1',
        ),
        throwsA(isA<ConnectConfigurationException>()),
      );
    });

    test('rejects a non-absolute or garbage endpoint', () {
      expect(
        () => ConnectClientConfiguration(
          endpoint: 'example.com',
          region: 'us-east-1',
        ),
        throwsA(isA<ConnectConfigurationException>()),
      );
      expect(
        () => ConnectClientConfiguration(
          endpoint: 'not a url',
          region: 'us-east-1',
        ),
        throwsA(isA<ConnectConfigurationException>()),
      );
    });

    test('rejects http through fromAmplifyOutputs', () {
      expect(
        () => ConnectClientConfiguration.fromAmplifyOutputs(
          _outputs(
            endpoint: 'http://abc.execute-api.us-east-1.amazonaws.com',
            region: 'us-east-1',
          ),
        ),
        throwsA(isA<ConnectConfigurationException>()),
      );
    });
  });
}
