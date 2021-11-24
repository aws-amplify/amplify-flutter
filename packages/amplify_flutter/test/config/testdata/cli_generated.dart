//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
//

// GENERATED FILE. DO NOT MODIFY BY HAND.

import 'test_values.dart';

class TestData {
  const TestData(this.name, this.config);

  final String name;
  final String config;
}

const _empty = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0"
}
''';

const _analytics = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "analytics": {
    "plugins": {
      "awsPinpointAnalyticsPlugin": {
        "pinpointAnalytics": {
          "appId": "$ANALYTICS_APP_ID",
          "region": "$REGION"
        },
        "pinpointTargeting": {
          "region": "$REGION"
        }
      }
    }
  }
}
''';

const _auth = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "UserAgent": "aws-amplify/cli",
        "Version": "0.1.0",
        "IdentityManager": {
          "Default": {}
        },
        "Auth": {
          "Default": {
            "OAuth": {
              "WebDomain": "$OAUTH_DOMAIN",
              "AppClientId": "$APPCLIENT_ID",
              "SignInRedirectURI": "$OAUTH_SIGNIN",
              "SignOutRedirectURI": "$OAUTH_SIGNOUT",
              "Scopes": [
                "phone",
                "email",
                "openid",
                "profile",
                "aws.cognito.signin.user.admin"
              ]
            },
            "authenticationFlowType": "$AUTHFLOW_SRP"
          },
          "DefaultCustomAuth": {
            "authenticationFlowType": "CUSTOM_AUTH"
          }
        },
        "CognitoUserPool": {
          "CustomEndpoint": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Endpoint": "$OAUTH_DOMAIN",
            "PoolId": "$USERPOOL_ID",
            "Region": "$REGION"
          },
          "Default": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Region": "$REGION",
            "HostedUI": {
              "AppClientId": "$APPCLIENT_ID",
              "AppClientSecret": "$APPCLIENT_SECERT",
              "Scopes": [
                "openid",
                "email"
              ],
              "SignInRedirectURI": "$OAUTH_SIGNIN",
              "SignOutRedirectURI": "$OAUTH_SIGNOUT",
              "WebDomain": "$OAUTH_DOMAIN"
            },
            "PoolId": "$USERPOOL_ID"
          },
          "DefaultCustomAuth": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Region": "$REGION",
            "PoolId": "$USERPOOL_ID"
          }
        },
        "CredentialsProvider": {
          "CognitoIdentity": {
            "Default": {
              "PoolId": "$IDPOOL_ID",
              "Region": "$REGION"
            }
          }
        },
        "AppSync": {
          "Default": {
            "ApiUrl": "$GRAPHQL_ENDPOINT",
            "Region": "$REGION",
            "AuthMode": "$COGNITO_AUTH_TYPE",
            "ClientDatabasePrefix": "$DATABASE_PREFIX"
          }
        },
        "PinpointAnalytics": {
          "Default": {
            "AppId": "$ANALYTICS_APP_ID",
            "Region": "$REGION"
          }
        },
        "PinpointTargeting": {
          "Default": {
            "Region": "$REGION"
          }
        },
        "S3TransferUtility": {
          "Default": {
            "Bucket": "$BUCKET",
            "Region": "$REGION"
          }
        }
      }
    }
  }
}
''';

const _api = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "api": {
    "plugins": {
      "awsAPIPlugin": {
        "API_KEY": {
          "endpointType": "GraphQL",
          "endpoint": "$GRAPHQL_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "API_KEY",
          "apiKey": "$API_KEY"
        },
        "AWS_IAM": {
          "endpointType": "GraphQL",
          "endpoint": "$GRAPHQL_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "AWS_IAM"
        },
        "REST": {
          "endpointType": "REST",
          "endpoint": "$REST_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "AMAZON_COGNITO_USER_POOLS"
        }
      }
    }
  }
}
''';

const _storage = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "storage": {
    "plugins": {
      "awsS3StoragePlugin": {
        "bucket": "$BUCKET",
        "region": "$REGION",
        "defaultAccessLevel": "guest"
      }
    }
  }
}
''';

const allTests = [
  TestData('Empty', _empty),
  TestData('Analytics', _analytics),
  TestData('Auth', _auth),
  TestData('API', _api),
  TestData('Storage', _storage),
];
