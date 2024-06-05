import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

import './data/amplify_outputs.g.dart' as outputs;
import './data/amplifyconfiguration.g.dart' as config;

void main() {
  group('toAmplifyOutputs', () {
    test('maps config with all plugins present', () async {
      final configJson = updateConfig(
        jsonDecode(config.amplifyConfig) as Map<String, Object?>,
      );
      final outputsJson =
          jsonDecode(outputs.amplifyConfig) as Map<String, Object?>;
      final amplifyConfig = AmplifyConfig.fromJson(configJson);
      final amplifyOutputs = AmplifyOutputs.fromJson(outputsJson);
      final mappedOutputs = amplifyConfig.toAmplifyOutputs();
      expect(mappedOutputs.auth, amplifyOutputs.auth);
      expect(mappedOutputs.analytics, amplifyOutputs.analytics);
      expect(mappedOutputs.storage, amplifyOutputs.storage);
      expect(mappedOutputs.data, amplifyOutputs.data);
      expect(
        mappedOutputs.notifications?.amazonPinpointAppId,
        amplifyOutputs.notifications?.amazonPinpointAppId,
      );
      expect(
        mappedOutputs.notifications?.awsRegion,
        amplifyOutputs.notifications?.awsRegion,
      );
    });

    test('maps config with no plugins present', () async {
      final configJson = jsonDecode('{}') as Map<String, Object?>;
      final amplifyConfig = AmplifyConfig.fromJson(configJson);
      final mappedOutputs = amplifyConfig.toAmplifyOutputs();
      expect(mappedOutputs.auth, null);
      expect(mappedOutputs.analytics, null);
      expect(mappedOutputs.storage, null);
      expect(mappedOutputs.data, null);
      expect(mappedOutputs.notifications, null);
    });

    test('maps config with multiple api plugins', () async {
      // hand written config for testing purposes.
      const config = '''
        {
          "api": {
            "plugins": {
              "awsAPIPlugin": {
                "data1": {
                  "endpointType": "GraphQL",
                  "endpoint": "fake-data-url-1",
                  "region": "us-east-1",
                  "authorizationType": "AWS_IAM",
                  "apiKey": "fake-data-api-key"
                },
                "data2": {
                  "endpointType": "GraphQL",
                  "endpoint": "fake-data-url-2",
                  "region": "us-east-1",
                  "authorizationType": "AWS_IAM",
                  "apiKey": "fake-data-api-key"
                },
                "rest1": {
                  "endpointType": "REST",
                  "endpoint": "fake-rest-url-1",
                  "region": "us-east-1",
                  "authorizationType": "AWS_IAM",
                  "apiKey": "fake-data-api-key"
                },
                "rest2": {
                  "endpointType": "REST",
                  "endpoint": "fake-rest-url-2",
                  "region": "us-east-1",
                  "authorizationType": "AWS_IAM",
                  "apiKey": "fake-data-api-key"
                }
              }
            }
          }
        }
      ''';
      final configJson = jsonDecode(config) as Map<String, Object?>;
      final amplifyConfig = AmplifyConfig.fromJson(configJson);
      final mappedOutputs = amplifyConfig.toAmplifyOutputs();
      expect(mappedOutputs.data?.length, 2);
      expect(mappedOutputs.restApi?.length, 2);
      final dataUrls = mappedOutputs.data?.values.map((d) => d.url);
      final restUrls = mappedOutputs.restApi?.values.map((d) => d.url);
      expect(dataUrls, ['fake-data-url-1', 'fake-data-url-2']);
      expect(restUrls, ['fake-rest-url-1', 'fake-rest-url-2']);
    });
  });
}

/// Updates the Gen 1 Config to work around known issues
///
/// Issues:
/// - https://github.com/aws-amplify/amplify-backend/issues/1547
/// - https://github.com/aws-amplify/amplify-backend/issues/1551
Map<String, Object?> updateConfig(Map<String, Object?> config) {
  config as Map<String, dynamic>;
  // ignore: avoid_dynamic_calls
  final cognitoPlugin = (config)['auth']['plugins']['awsCognitoAuthPlugin'];
  // ignore: avoid_dynamic_calls
  cognitoPlugin['AppSync']['data_AMAZON_COGNITO_USER_POOLS']['AuthMode'] =
      'AMAZON_COGNITO_USER_POOLS';
  // ignore: avoid_dynamic_calls
  final defaultAuth = cognitoPlugin['Auth']['Default'] as Map<String, Object?>;
  defaultAuth['OAuth'] = {
    'WebDomain': 'fake-domain',
    'AppClientId': '',
    'SignInRedirectURI': 'sign-in-redirect-1,sign-in-redirect-2',
    'SignOutRedirectURI': 'sign-out-redirect-1,sign-out-redirect-2',
    'Scopes': [
      'scope-1',
      'scope-2',
    ],
  };
  defaultAuth['socialProviders'] = [
    'GOOGLE',
    'FACEBOOK',
    'AMAZON',
    'APPLE',
  ];
  return config;
}
