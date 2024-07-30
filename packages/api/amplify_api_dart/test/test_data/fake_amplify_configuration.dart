// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

const amplifyConfig = '''{
  "version": "1",
    "auth": {
      "aws_region": "us-east-1",
      "user_pool_id": "us-east-1_abc123",
      "user_pool_client_id": "abc123",
      "identity_pool_id": "us-east-1:abc123",
      "password_policy": {
        "min_length": 8,
        "require_numbers": false,
        "require_lowercase": false,
        "require_uppercase": false,
        "require_symbols": false
      },
      "standard_required_attributes":[
        "email"
      ],
      "username_attributes":[],
      "user_verification_types":[
        "email"
      ],
      "unauthenticated_identities_enabled": true,
      "mfa_configuration": "NONE",
      "mfa_methods":[
        "SMS"
      ]
   },
  "data": {
    "aws_region": "us-east-1",
      "url": "https://abc123.appsync-api.us-east-1.amazonaws.com/graphql",
      "api_key": "abc123",
      "default_authorization_type": "API_KEY",
      "authorization_types":[]
   },
  "rest_api": {
    "api123": {
      "aws_region": "us-east-1",
      "url": "https://abc123.execute-api.us-east-1.amazonaws.com/test",
      "authorization_type": "AWS_IAM"
    }
  } 
}''';
