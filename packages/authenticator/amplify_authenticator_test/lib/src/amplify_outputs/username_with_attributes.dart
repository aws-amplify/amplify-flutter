const usernameWithAttributesConfig = '''{
  "auth": {
    "user_pool_id": "",
    "aws_region": "",
    "user_pool_client_id": "",
    "identity_pool_id": "",
    "mfa_methods": [
      "SMS"
    ],
    "standard_required_attributes": [
      "email",
      "birthdate",
      "preferred_username"
    ],
    "username_attributes": [
      "email"
    ],
    "user_verification_types": [
      "email"
    ],
    "mfa_configuration": "OPTIONAL",
    "password_policy": {
      "min_length": 8,
      "require_numbers": true,
      "require_lowercase": true,
      "require_uppercase": true,
      "require_symbols": true
    },
    "unauthenticated_identities_enabled": true
  },
  "version": "1"
}''';