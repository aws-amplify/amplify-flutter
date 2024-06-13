const smsOrTotpConfig = '''{
  "auth": {
    "user_pool_id": "",
    "aws_region": "",
    "user_pool_client_id": "",
    "identity_pool_id": "",
    "mfa_methods": [
      "TOTP",
      "SMS"
    ],
    "standard_required_attributes": [
      "email"
    ],
    "username_attributes": [
      "email"
    ],
    "user_verification_types": [
      "email"
    ],
    "mfa_configuration": "ON",
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