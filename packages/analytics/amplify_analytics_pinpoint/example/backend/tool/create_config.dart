#!/usr/bin/env dart
// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.

import 'dart:convert';
import 'dart:io';

String createConfig({
  required String region,
  required String pinpointAppId,
  required String identityPoolId,
  required String graphQLApiEndpoint,
  required String graphQLApiKey,
}) =>
    '''
const amplifyconfig = \'\'\'{
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "analytics": {
        "plugins": {
            "awsPinpointAnalyticsPlugin": {
                "pinpointAnalytics": {
                    "appId": "$pinpointAppId",
                    "region": "$region"
                },
                "pinpointTargeting": {
                    "region": "$region"
                }
            }
        }
    },
    "api": {
      "plugins": {
        "awsAPIPlugin": {
            "analyticsIntegrationTest": {
                "endpointType": "GraphQL",
                "endpoint": "$graphQLApiEndpoint",
                "region": "$region",
                "authorizationType": "API_KEY",
                "apiKey": "$graphQLApiKey"
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
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "$identityPoolId",
                            "Region": "$region"
                        }
                    }
                },
                "PinpointAnalytics": {
                    "Default": {
                        "AppId": "$pinpointAppId",
                        "Region": "$region"
                    }
                },
                "PinpointTargeting": {
                    "Default": {
                        "Region": "$region"
                    }
                }
            }
        }
    }
}\'\'\';
''';

void main() {
  final outputs = (jsonDecode(File('outputs.json').readAsStringSync())
      as Map<String, dynamic>)['BackendStack'] as Map;
  final config = createConfig(
    region: outputs['Region'] as String,
    pinpointAppId: outputs['PinpointAppId'] as String,
    identityPoolId: outputs['IdentityPoolId'] as String,
    graphQLApiEndpoint: outputs['GraphQLApiEndpoint'] as String,
    graphQLApiKey: outputs['GraphQLApiKey'] as String,
  );
  File('../lib/amplifyconfiguration.dart').writeAsStringSync(config);
}
