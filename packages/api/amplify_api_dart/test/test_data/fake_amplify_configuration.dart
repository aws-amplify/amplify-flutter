// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

const amplifyconfig = '''{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "api": {
      "plugins": {
          "awsAPIPlugin": {
              "apiIntegrationTestGraphQL": {
                  "endpointType": "GraphQL",
                  "endpoint": "https://abc123.appsync-api.us-east-1.amazonaws.com/graphql",
                  "region": "us-east-1",
                  "authorizationType": "API_KEY",
                  "apiKey": "abc123"
              },
              "api123": {
                  "endpointType": "REST",
                  "endpoint": "https://abc123.execute-api.us-east-1.amazonaws.com/test",
                  "region": "us-east-1",
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
                      "ApiUrl": "https://abc123.appsync-api.us-east-1.amazonaws.com/graphql",
                      "Region": "us-east-1",
                      "AuthMode": "API_KEY",
                      "ApiKey": "abc123",
                      "ClientDatabasePrefix": "apiIntegrationTestGraphQL_API_KEY"
                  }
              },
              "CredentialsProvider": {
                  "CognitoIdentity": {
                      "Default": {
                          "PoolId": "us-east-1:abc123",
                          "Region": "us-east-1"
                      }
                  }
              },
              "CognitoUserPool": {
                  "Default": {
                      "PoolId": "us-east-1_abc123",
                      "AppClientId": "abc123",
                      "Region": "us-east-1"
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
              }
          }
      }
  }
}''';
