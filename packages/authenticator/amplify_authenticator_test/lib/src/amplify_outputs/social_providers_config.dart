const socialProviderConfig = '''{
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
    "oauth": {
      "identity_providers": [
        "SIGN_IN_WITH_APPLE",
        "LOGIN_WITH_AMAZON",
        "FACEBOOK",
        "GOOGLE"
      ],
      "domain": "",
      "scopes": [
        "phone",
        "email",
        "openid",
        "profile",
        "aws.cognito.signin.user.admin"
      ],
      "redirect_sign_in_uri": [
        ""
      ],
      "redirect_sign_out_uri": [
        ""
      ],
      "response_type": "code"
    },
    "standard_required_attributes": [
      "email"
    ],
    "username_attributes": [
      "email"
    ],
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
