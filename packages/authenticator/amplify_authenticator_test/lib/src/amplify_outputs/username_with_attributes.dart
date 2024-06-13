const usernameWithAttributesConfig = '''{
  "version": "1",
  "auth": {
    "aws_region": "",
    "user_pool_id": "",
    "user_pool_client_id": "",
    "identity_pool_id": "",
    "password_policy": {
      "min_length": 8,
      "require_numbers": false,
      "require_lowercase": false,
      "require_uppercase": false,
      "require_symbols": false
    },
    "standard_required_attributes": [
      "email",
      "preferred_username",
      "birthdate"
    ],
    "username_attributes": [],
    "user_verification_types": [
      "email"
    ],
    "unauthenticated_identities_enabled": true,
    "mfa_configuration": "NONE",
    "mfa_methods": [
      "SMS"
    ]
  }
}''';
