// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'mocks.dart';

const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "triage": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://5fkfl5l7fjagdjwyuzxvi3oc3q.appsync-api.us-west-2.amazonaws.com/graphql",
                    "region": "us-west-2",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-uuykgvohonbujpes7vcankhxta"
                },
                "apib6babaaf": {
                    "endpointType": "REST",
                    "endpoint": "https://jk2vvijki3.execute-api.us-west-2.amazonaws.com/dev",
                    "region": "us-west-2",
                    "authorizationType": "AWS_IAM"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://5fkfl5l7fjagdjwyuzxvi3oc3q.appsync-api.us-west-2.amazonaws.com/graphql",
                        "Region": "us-west-2",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-uuykgvohonbujpes7vcankhxta",
                        "ClientDatabasePrefix": "triage_API_KEY"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "us-west-2:a26356a4-385c-4f30-93ce-824a655f645a",
                            "Region": "us-west-2"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-west-2_r80hoDAmm",
                        "AppClientId": "4eqsoradolhjno2cla9br8gomq",
                        "Region": "us-west-2"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "signupAttributes": [
                            "EMAIL"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": []
                        },
                        "mfaConfiguration": "OFF",
                        "mfaTypes": [
                            "SMS"
                        ],
                        "verificationMechanisms": [
                            "EMAIL"
                        ]
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "triage61994395b6e640fc9e9fe097e4345de683956-dev",
                        "Region": "us-west-2"
                    }
                },
                "PinpointAnalytics": {
                    "Default": {
                        "AppId": "45ef227b215743d2ad1ced089394a8bd",
                        "Region": "us-west-2"
                    }
                },
                "PinpointTargeting": {
                    "Default": {
                        "Region": "us-west-2"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "triage61994395b6e640fc9e9fe097e4345de683956-dev",
                "region": "us-west-2",
                "defaultAccessLevel": "guest"
            }
        }
    },
    "analytics": {
        "plugins": {
            "awsPinpointAnalyticsPlugin": {
                "pinpointAnalytics": {
                    "appId": "45ef227b215743d2ad1ced089394a8bd",
                    "region": "us-west-2"
                },
                "pinpointTargeting": {
                    "region": "us-west-2"
                }
            }
        }
    }
}''';

final throwsAlreadyConfigured =
    throwsA(isA<AmplifyAlreadyConfiguredException>());
final throwsAmplifyException = throwsA(isA<AmplifyException>());

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  final modelProvider = MockModelProvider();
  final isMobile = !kIsWeb && (Platform.isIOS || Platform.isAndroid);

  final mobilePlugins = <AmplifyPluginInterface>[];

  /// Add plugins currently supported on mobile only
  if (isMobile) {
    mobilePlugins.addAll([
      AmplifyDataStore(modelProvider: modelProvider),
      AmplifyAnalyticsPinpoint(),
      AmplifyAPI(),
    ]);
  }

  group(
    'Configuration',
    () {
      testWidgets(
        'addPlugin registers a single plugin',
        (WidgetTester tester) async {
          expect(Amplify.Auth.plugins, isEmpty);
          await expectLater(Amplify.addPlugin(AmplifyAuthCognito()), completes);
          expect(Amplify.Auth.plugins, isNotEmpty);
        },
      );

      testWidgets(
        'addPlugins registers multiple plugins',
        (WidgetTester tester) async {
          expect(Amplify.Analytics.plugins, isEmpty);
          expect(Amplify.API.plugins, isEmpty);
          expect(Amplify.DataStore.plugins, isEmpty);
          expect(Amplify.Storage.plugins, isEmpty);
          await expectLater(Amplify.addPlugins(mobilePlugins), completes);
          expect(Amplify.Analytics.plugins, isNotEmpty);
          expect(Amplify.API.plugins, isNotEmpty);
          expect(Amplify.DataStore.plugins, isNotEmpty);
          expect(Amplify.Storage.plugins, isNotEmpty);
        },
        skip: !isMobile,
      );

      testWidgets(
        'amplify configures successfully',
        (WidgetTester tester) async {
          await expectLater(Amplify.configure(amplifyconfig), completes);
          expect(Amplify.isConfigured, true);
        },
      );

      testWidgets('multiple configure calls throw',
          (WidgetTester tester) async {
        await expectLater(
          Amplify.configure(amplifyconfig),
          throwsAlreadyConfigured,
        );
      });

      testWidgets('adding a plugin after configure call throws',
          (WidgetTester tester) async {
        await expectLater(
          Amplify.addPlugin(AmplifyAuthCognito()),
          throwsAmplifyException,
        );
      });
    },
  );
}

// ignore_for_file: non_constant_identifier_names
