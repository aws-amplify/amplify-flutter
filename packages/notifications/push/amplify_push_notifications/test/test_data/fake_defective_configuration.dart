// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

const noPushAppIdAmplifyConfig = '''{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
    "analytics": {
        "plugins": {
            "awsPinpointAnalyticsPlugin": {
                "pinpointAnalytics": {
                    "appId": "APP_ID",
                    "region": "us-west-2"
                },
                "pinpointTargeting": {
                    "region": "us-west-2"
                }
            }
        }
    },
    "notifications": {
        "plugins": {
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
                          "PoolId": "us-east-1:abc123",
                          "Region": "us-east-1"
                      }
                  }
              },
              "Auth": {
                  "Default": {
                      "authenticationFlowType": "USER_SRP_AUTH",
                      "socialProviders": [],
                      "usernameAttributes": [],
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
              "PinpointAnalytics": {
                  "Default": {
                      "AppId": "APP_ID",
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
  }
}''';
