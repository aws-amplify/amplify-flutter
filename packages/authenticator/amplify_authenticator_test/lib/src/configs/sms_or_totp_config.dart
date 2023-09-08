const smsOrTotpConfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "",
                            "Region": ""
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "",
                        "AppClientId": "",
                        "Region": ""
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "usernameAttributes": [],
                        "signupAttributes": [
                            "EMAIL"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": []
                        },
                        "mfaConfiguration": "ON",
                        "mfaTypes": [
                            "TOTP",
                            "SMS"
                        ],
                        "verificationMechanisms": [
                            "EMAIL"
                        ]
                    }
                }
            }
        }
    }
}''';
