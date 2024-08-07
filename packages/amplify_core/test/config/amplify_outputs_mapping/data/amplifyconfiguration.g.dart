const amplifyConfig = '''{
  "UserAgent": "@aws-amplify/client-config/1.0.4",
  "Version": "1.0",
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "UserAgent": "@aws-amplify/client-config/1.0.4",
        "Version": "1.0",
        "CognitoUserPool": {
          "Default": {
            "PoolId": "fake-user-pool",
            "AppClientId": "fake-client-id",
            "Region": "us-east-1"
          }
        },
        "CredentialsProvider": {
          "CognitoIdentity": {
            "Default": {
              "PoolId": "fake-identity-pool-id",
              "Region": "us-east-1"
            }
          }
        },
        "Auth": {
          "Default": {
            "authenticationFlowType": "USER_SRP_AUTH",
            "mfaConfiguration": "OPTIONAL",
            "mfaTypes": [
              "SMS",
              "TOTP"
            ],
            "passwordProtectionSettings": {
              "passwordPolicyMinLength": 8,
              "passwordPolicyCharacters": [
                "REQUIRES_NUMBERS",
                "REQUIRES_LOWERCASE",
                "REQUIRES_UPPERCASE",
                "REQUIRES_SYMBOLS"
              ]
            },
            "signupAttributes": [
              "EMAIL",
              "NAME"
            ],
            "usernameAttributes": [
              "EMAIL"
            ],
            "verificationMechanisms": [
              "EMAIL"
            ],
            "OAuth": {
              "WebDomain": "fake-domain",
              "Scopes": [
                "scope-1",
                "scope-2"
              ],
              "SignInRedirectURI": "sign-in-redirect-1,sign-in-redirect-2",
              "SignOutRedirectURI": "sign-out-redirect-1,sign-out-redirect-2"
            }
          }
        },
        "AppSync": {
          "Default": {
            "ApiUrl": "fake-data-url",
            "Region": "us-east-1",
            "AuthMode": "AWS_IAM",
            "ApiKey": "fake-data-api-key",
            "ClientDatabasePrefix": "data_AWS_IAM"
          },
          "data_AMAZON_COGNITO_USER_POOLS": {
            "ApiUrl": "fake-data-url",
            "Region": "us-east-1",
            "AuthMode": "AMAZON_COGNITO_USER_POOLS",
            "ApiKey": "fake-data-api-key",
            "ClientDatabasePrefix": "data_AMAZON_COGNITO_USER_POOLS"
          }
        }
      }
    }
  },
  "api": {
    "plugins": {
      "awsAPIPlugin": {
        "data": {
          "endpointType": "GraphQL",
          "endpoint": "fake-data-url",
          "region": "us-east-1",
          "authorizationType": "AWS_IAM",
          "apiKey": "fake-data-api-key"
        }
      }
    }
  },
  "analytics": {
    "plugins": {
      "awsPinpointAnalyticsPlugin": {
        "pinpointAnalytics": {
          "region": "us-east-1",
          "appId": "fake-analytics-app-id"
        },
        "pinpointTargeting": {
          "region": "us-east-1"
        }
      }
    }
  },
  "notifications": {
    "plugins": {
      "awsPinpointPushNotificationsPlugin": {
        "appId": "fake-notifications-app-id",
        "region": "us-east-1"
      }
    }
  },
  "storage": {
    "plugins": {
      "awsS3StoragePlugin": {
        "bucket": "fake-bucket-name",
        "region": "us-east-1"
      }
    }
  }
}''';
