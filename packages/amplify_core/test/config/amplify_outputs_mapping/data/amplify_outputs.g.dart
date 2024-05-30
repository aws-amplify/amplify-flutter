const amplifyConfig = '''{
  "version": "1",
  "auth": {
    "aws_region": "us-east-1",
    "user_pool_id": "fake-user-pool",
    "user_pool_client_id": "fake-client-id",
    "identity_pool_id": "fake-identity-pool-id",
    "password_policy": {
      "min_length": 8,
      "require_numbers": true,
      "require_lowercase": true,
      "require_uppercase": true,
      "require_symbols": true
    },
    "oauth": {
      "identity_providers": [
        "GOOGLE",
        "FACEBOOK",
        "LOGIN_WITH_AMAZON",
        "SIGN_IN_WITH_APPLE"
      ],
      "domain": "fake-domain",
      "scopes": [
        "scope-1",
        "scope-2"
      ],
      "redirect_sign_in_uri": [
        "sign-in-redirect-1",
        "sign-in-redirect-2"
      ],
      "redirect_sign_out_uri": [
        "sign-out-redirect-1",
        "sign-out-redirect-2"
      ],
      "response_type": "code"
    },
    "standard_required_attributes": [
      "email",
      "name"
    ],
    "username_attributes": [
      "email"
    ],
    "user_verification_types": [
      "email"
    ],
    "unauthenticated_identities_enabled": true,
    "mfa_configuration": "OPTIONAL",
    "mfa_methods": [
      "SMS",
      "TOTP"
    ]
  },
  "data": {
    "aws_region": "us-east-1",
    "url": "fake-data-url",
    "api_key": "fake-data-api-key",
    "default_authorization_type": "AWS_IAM",
    "authorization_types": [
      "AMAZON_COGNITO_USER_POOLS"
    ]
  },
  "storage": {
    "aws_region": "us-east-1",
    "bucket_name": "fake-bucket-name"
  },
  "analytics": {
    "amazon_pinpoint": {
      "app_id": "fake-analytics-app-id",
      "aws_region": "us-east-1"
    }
  },
  "notifications": {
    "amazon_pinpoint_app_id": "fake-notifications-app-id",
    "aws_region": "us-east-1",
    "channels": [
      "APNS",
      "FCM"
    ]
  }
}''';
