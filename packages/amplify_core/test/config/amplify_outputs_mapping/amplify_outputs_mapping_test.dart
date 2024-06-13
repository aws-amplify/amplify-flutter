import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/auth/oauth_outputs.dart';
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
      final configJson = jsonDecode(multiApiConfig) as Map<String, Object?>;
      final amplifyConfig = AmplifyConfig.fromJson(configJson);
      final mappedOutputs = amplifyConfig.toAmplifyOutputs();
      expect(mappedOutputs.data?.length, 2);
      expect(mappedOutputs.restApi?.length, 2);
      final dataUrls = mappedOutputs.data?.values.map((d) => d.url);
      final restUrls = mappedOutputs.restApi?.values.map((d) => d.url);
      expect(dataUrls, ['fake-data-url-1', 'fake-data-url-2']);
      expect(restUrls, ['fake-rest-url-1', 'fake-rest-url-2']);
    });

    test('maps config with all oauth options', () async {
      final configJson = jsonDecode(oauthConfig) as Map<String, Object?>;
      final amplifyConfig = AmplifyConfig.fromJson(configJson);
      final mappedOutputs = amplifyConfig.toAmplifyOutputs();
      final oauth = mappedOutputs.auth?.oauth as OAuthOutputs;
      expect(oauth.redirectSignInUri, containsAll([signInUri1, signInUri2]));
      expect(
        oauth.redirectSignInUriQueryParameters,
        {signInQueryParamKey: signInQueryParamValue},
      );
      expect(oauth.redirectSignOutUri, containsAll([signOutUri1, signOutUri2]));
      expect(
        oauth.redirectSignOutUriQueryParameters,
        {signOutQueryParamKey: signOutQueryParamValue},
      );
      expect(oauth.tokenUri, tokenUri);
      expect(
        oauth.tokenUriQueryParameters,
        {tokenQueryParamKey: tokenQueryParamValue},
      );
      expect(oauth.scopes, containsAll([scope1, scope2]));
    });

    test('maps config with app client secret', () async {
      final configJson = jsonDecode(clientSecretConfig) as Map<String, Object?>;
      final amplifyConfig = AmplifyConfig.fromJson(configJson);
      final mappedOutputs = amplifyConfig.toAmplifyOutputs();
      expect(mappedOutputs.auth?.appClientSecret, appClientSecret);
    });
  });
}

/// hand written config with multiple Rest and GraphQL objects
const multiApiConfig = '''{
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

const oAuthDomain = 'fake-web-domain-dev.auth.us-east-1.amazoncognito.com';
const signInUri1 = 'fake-sign-in-uri-1';
const signInUri2 = 'fake-sign-in-uri-2';
const signInQueryParamKey = 'fake-sign-in-query-param-key';
const signInQueryParamValue = 'fake-sign-in-query-param-value';
const signOutUri1 = 'fake-sign-ou-uri-1';
const signOutUri2 = 'fake-sign-out-uri-2';
const signOutQueryParamKey = 'fake-sign-out-query-param-key';
const signOutQueryParamValue = 'fake-sign-out-query-param-value';
const tokenUri = 'fake-token-uri';
const tokenQueryParamKey = 'fake-token-query-param-key';
const tokenQueryParamValue = 'fake-token-query-param-value';
const scope1 = 'scope1';
const scope2 = 'scope2';

/// hand written config with all oauth options including those not par of the
/// AmplifyOutputs schema (SignInURIQueryParameters, SignOutURIQueryParameters,
/// TokenURI, and TokenURIQueryParameters)
const oauthConfig = '''{
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "CognitoUserPool": {
          "Default": {
            "PoolId": "us-east-fake-pool-id",
            "AppClientId": "fake-client-id",
            "Region": "us-east-1"
          }
        },
        "Auth": {
          "Default": {
            "OAuth": {
              "WebDomain": "$oAuthDomain",
              "AppClientId": "fake-client-id",
              "SignInRedirectURI": "$signInUri1,$signInUri2",
              "SignInURIQueryParameters": {
                "$signInQueryParamKey": "$signInQueryParamValue"
              },
              "SignOutRedirectURI": "$signOutUri1,$signOutUri2",
              "SignOutURIQueryParameters": {
                "$signOutQueryParamKey": "$signOutQueryParamValue"
              },
              "TokenURI": "$tokenUri",
              "TokenURIQueryParameters": {
                "$tokenQueryParamKey": "$tokenQueryParamValue"
              },
              "Scopes": [
                "$scope1",
                "$scope2"
              ]
            }
          }
        }
      }
    }
  }
}''';

const appClientSecret = 'fake-app-client-secret';

/// hand written config with app client secret
const clientSecretConfig = '''{
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "CognitoUserPool": {
          "Default": {
            "PoolId": "us-east-fake-pool-id",
            "AppClientId": "fake-client-id",
            "AppClientSecret": "$appClientSecret",
            "Region": "us-east-1"
          }
        }
      }
    }
  }
}''';

/// Updates the Gen 1 Config to work around known issues
///
/// Issues:
/// - https://github.com/aws-amplify/amplify-backend/issues/1551
Map<String, Object?> updateConfig(Map<String, Object?> config) {
  config as Map<String, dynamic>;
  // ignore: avoid_dynamic_calls
  final cognitoPlugin = (config)['auth']['plugins']['awsCognitoAuthPlugin'];
  // ignore: avoid_dynamic_calls
  final defaultAuth = cognitoPlugin['Auth']['Default'] as Map<String, Object?>;
  final oAuthConfig = defaultAuth['OAuth'] as Map<String, Object?>;
  oAuthConfig['AppClientId'] = 'fake-client-id';
  defaultAuth['socialProviders'] = [
    'GOOGLE',
    'FACEBOOK',
    'AMAZON',
    'APPLE',
  ];
  return config;
}
