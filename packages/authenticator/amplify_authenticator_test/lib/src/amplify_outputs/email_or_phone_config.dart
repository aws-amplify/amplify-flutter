const emailOrPhoneConfig = '''{
  "auth": {
    "user_pool_id": "",
    "aws_region": "",
    "user_pool_client_id": "",
    "identity_pool_id": "",
    "standard_required_attributes": [
      "email"
      "phone_number"
    ],
    "username_attributes": [
      "email"
      "phone_number"
    ],
    "user_verification_types": [
      "phone_number"
    ],
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
