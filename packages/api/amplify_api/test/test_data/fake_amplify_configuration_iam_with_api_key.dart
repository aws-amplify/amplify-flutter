// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

const amplifyconfigwithapikey = '''{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "api": {
      "plugins": {
          "awsAPIPlugin": {
              "apiIntegrationTestGraphQL": {
                  "endpointType": "GraphQL",
                  "endpoint": "https://abc123.appsync-api.us-east-1.amazonaws.com/graphql",
                  "region": "us-east-1",
                  "authorizationType": "AWS_IAM",
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
                      "AuthMode": "AWS_IAM",
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
