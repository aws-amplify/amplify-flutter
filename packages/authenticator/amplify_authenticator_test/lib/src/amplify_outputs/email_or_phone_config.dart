const emailOrPhoneConfig = '''{
  "version": "1",
  "auth": {
    "aws_region": "us-east-1",
    "user_pool_id": "us-east-1_xxxx",
    "user_pool_client_id": "xxxx",
    "identity_pool_id": "us-east-1:xxxx",
    "password_policy": {
      "min_length": 8,
      "require_numbers": false,
      "require_lowercase": false,
      "require_uppercase": false,
      "require_symbols": false
    },
    "standard_required_attributes": [
      "email",
      "phone_number"
    ],
    "username_attributes": [
      "email",
      "phone_number"
    ],
    "user_verification_types": [
      "email"
    ],
    "unauthenticated_identities_enabled": true,
    "mfa_configuration": "REQUIRED",
    "mfa_methods": [
      "SMS"
    ]
  }
}''';