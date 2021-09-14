/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'test_values.dart';

const allResourcesConfig = ''' {
    "UserAgent": "$USER_AGENT",
    "Version": "$VERSION",
    "analytics": {
        "plugins": {
            "awsPinpointAnalyticsPlugin": {
                "pinpointAnalytics": {
                    "appId": "$ANALYTICS_APP_ID",
                    "region": "$REGION"
                },
                "pinpointTargeting": {
                    "region": "$REGION"
                }
            }
        }
    },
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "graphqlapi": {
                    "endpointType": "$GRAPHQL_TYPE",
                    "endpoint": "$GRAPHQL_ENDPOINT",
                    "region": "$REGION",
                    "authorizationType": "$AUTHFLOW_API_KEY",
                    "apiKey": "$API_KEY"                },
                "restapi": {
                    "endpointType": "$REST_TYPE",
                    "endpoint": "$REST_ENDPOINT",
                    "region": "$REGION",
                    "authorizationType": "$AUTHFLOW_IAM"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "$USER_AGENT",
                "Version": "$VERSION",
                "IdentityManager": {
                    "Default": {}
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "$IDPOOL_ID",
                            "Region": "$REGION"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "$USERPOOL_ID",
                        "AppClientId": "$APPCLIENT_ID",
                        "Region": "$REGION"
                    }
                },
                "Auth": {
                    "Default": {
                      "loginMechanisms": [
                            "EMAIL", 
                            "PHONE_NUMBER", 
                            "PREFERRED_USERNAME", 
                            "FACEBOOK", 
                            "GOOGLE", 
                            "AMAZON", 
                            "APPLE"
                        ],
                        "OAuth": {
                            "WebDomain": "$OAUTH_DOMAIN",
                            "AppClientId": "$APPCLIENT_ID",
                            "SignInRedirectURI": "$OAUTH_SIGNIN",
                            "SignOutRedirectURI": "$OAUTH_SIGNOUT",
                            "Scopes": [
                                "phone",
                                "email",
                                "openid",
                                "profile",
                                "aws.cognito.signin.user.admin"
                            ]
                        },
                        "authenticationFlowType": "$AUTHFLOW_SRP"
                    }
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "$GRAPHQL_ENDPOINT",
                        "Region": "$REGION",
                        "AuthMode": "$COGNITO_AUTH_TYPE",
                        "ClientDatabasePrefix": "$DATABASE_PREFIX"
                    }
                },
                "PinpointAnalytics": {
                    "Default": {
                        "AppId": "$ANALYTICS_APP_ID",
                        "Region": "$REGION"
                    }
                },
                "PinpointTargeting": {
                    "Default": {
                        "Region": "$REGION"
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "$BUCKET",
                        "Region": "$REGION"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "$BUCKET",
                "region": "$REGION",
                "defaultAccessLevel": "$ACCESS"
            }
        }
    }
}''';
