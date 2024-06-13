const socialProviderConfig = '''{
  "auth": {
    "user_pool_id": "",
    "aws_region": "",
    "user_pool_client_id": "",
    "identity_pool_id": "",
    "mfa_methods": [
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
    "mfa_configuration": "OPTIONAL",
    "password_policy": {
      "min_length": 8,
      "require_numbers": true,
      "require_lowercase": true,
      "require_uppercase": true,
      "require_symbols": true
    },
    "oauth": {
      "app_client_id": ""
      "identity_providers": [
        "APPLE",
        "GOOGLE",
        "FACEBOOK",
        "LOGIN_WITH_AMAZON"
      ],
      "redirect_sign_in_uri": [
        "http://localhost:3000/profile",
        "https://mywebsite.com/profile"
      ],
      "redirect_sign_out_uri": [
        "http://localhost:3000/",
        "https://mywebsite.com"
      ],
      "response_type": "code",
      "scopes": [
        "phone",
        "email",
        "openid",
        "profile",
        "aws.cognito.signin.user.admin"
      ],
      "domain": ""
    },
    "unauthenticated_identities_enabled": true
  },
  "version": "1"
}''';