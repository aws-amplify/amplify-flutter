const amplifyconfig = ''' {
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
                            "PoolId": "us-west-2:175df8d1-acf8-44ba-bd1d-6de8cc1885ee",
                            "Region": "us-west-2"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-west-2_av095Xj6U",
                        "AppClientId": "1msttepuh90m5uptbrsvfr2ua4",
                        "Region": "us-west-2"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "socialProviders": [],
                        "usernameAttributes": [
                            "PHONE_NUMBER"
                        ],
                        "signupAttributes": [
                            "EMAIL"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": []
                        },
                        "mfaConfiguration": "OPTIONAL",
                        "mfaTypes": [
                            "SMS"
                        ],
                        "verificationMechanisms": [
                            "PHONE_NUMBER"
                        ]
                    }
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://jvommawzorbx3bn6e4vsiqnaie.appsync-api.us-west-2.amazonaws.com/graphql",
                        "Region": "us-west-2",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-7mtvefohcnhhpo5qwmtar2gtje",
                        "ClientDatabasePrefix": "authwithphone_API_KEY"
                    }
                }
            }
        }
    },
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "api2cf9b2cf": {
                    "endpointType": "REST",
                    "endpoint": "https://3h8l5w6lsf.execute-api.us-west-2.amazonaws.com/dev",
                    "region": "us-west-2",
                    "authorizationType": "AWS_IAM"
                },
                "authwithphone": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://jvommawzorbx3bn6e4vsiqnaie.appsync-api.us-west-2.amazonaws.com/graphql",
                    "region": "us-west-2",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-7mtvefohcnhhpo5qwmtar2gtje"
                }
            }
        }
    }
}''';
