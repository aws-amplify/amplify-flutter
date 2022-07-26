/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'dart:io';

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart' hide Amplify;
import 'package:amplify_flutter/src/amplify_impl.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/services.dart';
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
                        "loginMechanisms": [],
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

  late MethodChannelAmplify Amplify;
  final allPlugins = <AmplifyPluginInterface>[
    AmplifyAuthCognito(),
  ];

  /// Add plugins currently supported on mobile only
  if (Platform.isIOS || Platform.isAndroid) {
    allPlugins.addAll([
      AmplifyDataStore(modelProvider: modelProvider),
      AmplifyAnalyticsPinpoint(),
      AmplifyAPI(),
      AmplifyStorageS3(),
    ]);
  }

  /// Calls `Amplify.reset` on the native library
  Future<void> resetAmplify() {
    const methodChannel = MethodChannel('amplify_flutter/integ_tests');
    return methodChannel.invokeMethod<void>('reset');
  }

  /// Simulates a hot reload
  void hotReload() {}

  /// Simulates a hot restart
  void hotRestart() {
    Amplify = MethodChannelAmplify();
    Amplify.Auth.plugins.clear();
    if (Platform.isIOS || Platform.isAndroid) {
      Amplify.Analytics.plugins.clear();
      Amplify.API.plugins.clear();
      Amplify.DataStore.plugins.clear();
      Amplify.Storage.plugins.clear();
    }
  }

  group(
    'Configuration',
    () {
      // setUp(() async {
      //   await resetAmplify();
      //   hotRestart();
      // });

      testWidgets('multiple configure calls throws',
          (WidgetTester tester) async {
        // await expectLater(Amplify.configure(amplifyconfig), completes);
        // expect(Amplify.isConfigured, isTrue);

        // await expectLater(
        //   Amplify.configure(amplifyconfig),
        //   throwsAlreadyConfigured,
        // );
        fail('FAIL');
        // expect(1, 2);
      });

      // testWidgets('hot reload persists all state', (WidgetTester tester) async {
      //   await expectLater(Amplify.configure(amplifyconfig), completes);
      //   expect(Amplify.isConfigured, isTrue);

      //   hotReload();

      //   expect(Amplify.isConfigured, isTrue);
      //   await expectLater(
      //     Amplify.configure(amplifyconfig),
      //     throwsAlreadyConfigured,
      //   );
      // });

      // testWidgets('hot restart persists native state',
      //     (WidgetTester tester) async {
      //   await expectLater(Amplify.configure(amplifyconfig), completes);
      //   expect(Amplify.isConfigured, isTrue);

      //   hotRestart();

      //   expect(Amplify.isConfigured, isFalse);
      //   await expectLater(Amplify.configure(amplifyconfig), completes);
      //   expect(Amplify.isConfigured, isTrue);
      // });

      // testWidgets('adding plugins throws after configuration',
      //     (WidgetTester tester) async {
      //   await expectLater(Amplify.addPlugin(AmplifyAPI()), completes);
      //   await expectLater(Amplify.configure(amplifyconfig), completes);
      //   expect(Amplify.isConfigured, isTrue);

      //   await expectLater(
      //     Amplify.addPlugin(AmplifyAPI()),
      //     throwsAlreadyConfigured,
      //   );
      // });

      // testWidgets('adding plugins does not throw after hot restart',
      //     (WidgetTester tester) async {
      //   await expectLater(Amplify.addPlugin(AmplifyAPI()), completes);
      //   await expectLater(Amplify.configure(amplifyconfig), completes);
      //   expect(Amplify.isConfigured, isTrue);

      //   hotRestart();

      //   expect(Amplify.isConfigured, isFalse);
      //   await expectLater(Amplify.addPlugin(AmplifyAPI()), completes);
      //   await expectLater(Amplify.configure(amplifyconfig), completes);
      //   expect(Amplify.isConfigured, isTrue);
      // });

      // testWidgets('extra DataStore call does not cause Exception',
      //     (WidgetTester tester) async {
      //   for (final plugin in allPlugins) {
      //     await expectLater(Amplify.addPlugin(plugin), completes);
      //   }
      //   await expectLater(Amplify.configure(amplifyconfig), completes);
      //   expect(Amplify.isConfigured, isTrue);

      //   hotRestart();

      //   expect(Amplify.isConfigured, isFalse);
      //   for (final plugin in allPlugins) {
      //     await expectLater(Amplify.addPlugin(plugin), completes);
      //   }
      //   await expectLater(Amplify.configure(amplifyconfig), completes);
      //   expect(Amplify.isConfigured, isTrue);
      // });

      // group('plugin addition order does not matter', () {
      //   testWidgets('', (WidgetTester tester) async {
      //     await expectLater(Amplify.addPlugins(allPlugins), completes);
      //     await expectLater(Amplify.configure(amplifyconfig), completes);
      //   });

      //   testWidgets(' (reversed)', (WidgetTester tester) async {
      //     await expectLater(
      //       Amplify.addPlugins(allPlugins.reversed.toList()),
      //       completes,
      //     );
      //     await expectLater(Amplify.configure(amplifyconfig), completes);
      //   });
      // });
    },

    // Amplify.reset is not available on Android
    // skip: Platform.isAndroid,
  );
}

// ignore_for_file: non_constant_identifier_names
