// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

const amplifyConfig = '''{
  "version": "1",
  "analytics": {
    "amazon_pinpoint":{
        "aws_region": "us-west-2",
        "app_id": "APP_ID"
    }
  },
  "auth": {
    "aws_region": "us-east-1",
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
  "notifications": {
    "aws_region": "us-west-2",
    "amazon_pinpoint_app_id": "APP_ID",
    "channels":[]
  }
}
''';
