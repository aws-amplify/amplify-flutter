//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

// GENERATED FILE. DO NOT MODIFY BY HAND. SEE `src/generate.js`.

import 'test_values.dart';

class TestData {
  const TestData(this.name, this.config);

  final String name;
  final String config;
}

class TestSuite {
  const TestSuite(this.version, this.tests);

  final String version;
  final List<TestData> tests;
}

const _v4empty = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0"
}
''';

const _v4analytics = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
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
  }
}
''';

const _v4auth = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "UserAgent": "aws-amplify/cli",
        "Version": "0.1.0",
        "IdentityManager": {
          "Default": {}
        },
        "Auth": {
          "Default": {
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
          },
          "DefaultCustomAuth": {
            "authenticationFlowType": "CUSTOM_AUTH"
          }
        },
        "CognitoUserPool": {
          "CustomEndpoint": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Endpoint": "$OAUTH_DOMAIN",
            "PoolId": "$USERPOOL_ID",
            "Region": "$REGION"
          },
          "Default": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Region": "$REGION",
            "HostedUI": {
              "AppClientId": "$APPCLIENT_ID",
              "AppClientSecret": "$APPCLIENT_SECERT",
              "Scopes": [
                "openid",
                "email"
              ],
              "SignInRedirectURI": "$OAUTH_SIGNIN",
              "SignOutRedirectURI": "$OAUTH_SIGNOUT",
              "WebDomain": "$OAUTH_DOMAIN"
            },
            "PoolId": "$USERPOOL_ID"
          },
          "DefaultCustomAuth": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Region": "$REGION",
            "PoolId": "$USERPOOL_ID"
          }
        },
        "CredentialsProvider": {
          "CognitoIdentity": {
            "Default": {
              "PoolId": "$IDPOOL_ID",
              "Region": "$REGION"
            }
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
  }
}
''';

const _v4api = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "api": {
    "plugins": {
      "awsAPIPlugin": {
        "API_KEY": {
          "endpointType": "GraphQL",
          "endpoint": "$GRAPHQL_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "API_KEY",
          "apiKey": "$API_KEY"
        },
        "AWS_IAM": {
          "endpointType": "GraphQL",
          "endpoint": "$GRAPHQL_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "AWS_IAM"
        },
        "REST": {
          "endpointType": "REST",
          "endpoint": "$REST_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "AMAZON_COGNITO_USER_POOLS"
        }
      }
    }
  }
}
''';

const _v4storage = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "storage": {
    "plugins": {
      "awsS3StoragePlugin": {
        "bucket": "$BUCKET",
        "region": "$REGION",
        "defaultAccessLevel": "guest"
      }
    }
  }
}
''';

const v4Tests = [
  TestData('Empty', _v4empty),
  TestData('Analytics', _v4analytics),
  TestData('Auth', _v4auth),
  TestData('API', _v4api),
  TestData('Storage', _v4storage),
];

const _v5empty = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0"
}
''';

const _v5analytics = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
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
  }
}
''';

const _v5auth = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "UserAgent": "aws-amplify/cli",
        "Version": "0.1.0",
        "IdentityManager": {
          "Default": {}
        },
        "Auth": {
          "Default": {
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
          },
          "DefaultCustomAuth": {
            "authenticationFlowType": "CUSTOM_AUTH"
          }
        },
        "CognitoUserPool": {
          "CustomEndpoint": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Endpoint": "$OAUTH_DOMAIN",
            "PoolId": "$USERPOOL_ID",
            "Region": "$REGION"
          },
          "Default": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Region": "$REGION",
            "HostedUI": {
              "AppClientId": "$APPCLIENT_ID",
              "AppClientSecret": "$APPCLIENT_SECERT",
              "Scopes": [
                "openid",
                "email"
              ],
              "SignInRedirectURI": "$OAUTH_SIGNIN",
              "SignOutRedirectURI": "$OAUTH_SIGNOUT",
              "WebDomain": "$OAUTH_DOMAIN"
            },
            "PoolId": "$USERPOOL_ID"
          },
          "DefaultCustomAuth": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Region": "$REGION",
            "PoolId": "$USERPOOL_ID"
          }
        },
        "CredentialsProvider": {
          "CognitoIdentity": {
            "Default": {
              "PoolId": "$IDPOOL_ID",
              "Region": "$REGION"
            }
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
  }
}
''';

const _v5api = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "api": {
    "plugins": {
      "awsAPIPlugin": {
        "API_KEY": {
          "endpointType": "GraphQL",
          "endpoint": "$GRAPHQL_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "API_KEY",
          "apiKey": "$API_KEY"
        },
        "AWS_IAM": {
          "endpointType": "GraphQL",
          "endpoint": "$GRAPHQL_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "AWS_IAM"
        },
        "REST": {
          "endpointType": "REST",
          "endpoint": "$REST_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "AMAZON_COGNITO_USER_POOLS"
        }
      }
    }
  }
}
''';

const _v5storage = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "storage": {
    "plugins": {
      "awsS3StoragePlugin": {
        "bucket": "$BUCKET",
        "region": "$REGION",
        "defaultAccessLevel": "guest"
      }
    }
  }
}
''';

const v5Tests = [
  TestData('Empty', _v5empty),
  TestData('Analytics', _v5analytics),
  TestData('Auth', _v5auth),
  TestData('API', _v5api),
  TestData('Storage', _v5storage),
];

const _v6empty = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0"
}
''';

const _v6analytics = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
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
  }
}
''';

const _v6auth = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "UserAgent": "aws-amplify/cli",
        "Version": "0.1.0",
        "IdentityManager": {
          "Default": {}
        },
        "Auth": {
          "Default": {
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
          },
          "DefaultCustomAuth": {
            "authenticationFlowType": "CUSTOM_AUTH"
          }
        },
        "CognitoUserPool": {
          "CustomEndpoint": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Endpoint": "$OAUTH_DOMAIN",
            "PoolId": "$USERPOOL_ID",
            "Region": "$REGION"
          },
          "Default": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Region": "$REGION",
            "HostedUI": {
              "AppClientId": "$APPCLIENT_ID",
              "AppClientSecret": "$APPCLIENT_SECERT",
              "Scopes": [
                "openid",
                "email"
              ],
              "SignInRedirectURI": "$OAUTH_SIGNIN",
              "SignOutRedirectURI": "$OAUTH_SIGNOUT",
              "WebDomain": "$OAUTH_DOMAIN"
            },
            "PoolId": "$USERPOOL_ID"
          },
          "DefaultCustomAuth": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Region": "$REGION",
            "PoolId": "$USERPOOL_ID"
          }
        },
        "CredentialsProvider": {
          "CognitoIdentity": {
            "Default": {
              "PoolId": "$IDPOOL_ID",
              "Region": "$REGION"
            }
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
  }
}
''';

const _v6api = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "api": {
    "plugins": {
      "awsAPIPlugin": {
        "API_KEY": {
          "endpointType": "GraphQL",
          "endpoint": "$GRAPHQL_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "API_KEY",
          "apiKey": "$API_KEY"
        },
        "AWS_IAM": {
          "endpointType": "GraphQL",
          "endpoint": "$GRAPHQL_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "AWS_IAM"
        },
        "REST": {
          "endpointType": "REST",
          "endpoint": "$REST_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "AMAZON_COGNITO_USER_POOLS"
        }
      }
    }
  }
}
''';

const _v6storage = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "storage": {
    "plugins": {
      "awsS3StoragePlugin": {
        "bucket": "$BUCKET",
        "region": "$REGION",
        "defaultAccessLevel": "guest"
      }
    }
  }
}
''';

const v6Tests = [
  TestData('Empty', _v6empty),
  TestData('Analytics', _v6analytics),
  TestData('Auth', _v6auth),
  TestData('API', _v6api),
  TestData('Storage', _v6storage),
];

const _v7empty = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0"
}
''';

const _v7analytics = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
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
  }
}
''';

const _v7auth = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "UserAgent": "aws-amplify/cli",
        "Version": "0.1.0",
        "IdentityManager": {
          "Default": {}
        },
        "Auth": {
          "Default": {
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
          },
          "DefaultCustomAuth": {
            "authenticationFlowType": "CUSTOM_AUTH"
          }
        },
        "CognitoUserPool": {
          "CustomEndpoint": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Endpoint": "$OAUTH_DOMAIN",
            "PoolId": "$USERPOOL_ID",
            "Region": "$REGION"
          },
          "Default": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Region": "$REGION",
            "HostedUI": {
              "AppClientId": "$APPCLIENT_ID",
              "AppClientSecret": "$APPCLIENT_SECERT",
              "Scopes": [
                "openid",
                "email"
              ],
              "SignInRedirectURI": "$OAUTH_SIGNIN",
              "SignOutRedirectURI": "$OAUTH_SIGNOUT",
              "WebDomain": "$OAUTH_DOMAIN"
            },
            "PoolId": "$USERPOOL_ID"
          },
          "DefaultCustomAuth": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Region": "$REGION",
            "PoolId": "$USERPOOL_ID"
          }
        },
        "CredentialsProvider": {
          "CognitoIdentity": {
            "Default": {
              "PoolId": "$IDPOOL_ID",
              "Region": "$REGION"
            }
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
  }
}
''';

const _v7api = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "api": {
    "plugins": {
      "awsAPIPlugin": {
        "API_KEY": {
          "endpointType": "GraphQL",
          "endpoint": "$GRAPHQL_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "API_KEY",
          "apiKey": "$API_KEY"
        },
        "AWS_IAM": {
          "endpointType": "GraphQL",
          "endpoint": "$GRAPHQL_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "AWS_IAM"
        },
        "REST": {
          "endpointType": "REST",
          "endpoint": "$REST_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "AMAZON_COGNITO_USER_POOLS"
        }
      }
    }
  }
}
''';

const _v7storage = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "storage": {
    "plugins": {
      "awsS3StoragePlugin": {
        "bucket": "$BUCKET",
        "region": "$REGION",
        "defaultAccessLevel": "guest"
      }
    }
  }
}
''';

const v7Tests = [
  TestData('Empty', _v7empty),
  TestData('Analytics', _v7analytics),
  TestData('Auth', _v7auth),
  TestData('API', _v7api),
  TestData('Storage', _v7storage),
];

const _vlatestempty = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0"
}
''';

const _vlatestanalytics = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
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
  }
}
''';

const _vlatestauth = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "UserAgent": "aws-amplify/cli",
        "Version": "0.1.0",
        "IdentityManager": {
          "Default": {}
        },
        "Auth": {
          "Default": {
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
          },
          "DefaultCustomAuth": {
            "authenticationFlowType": "CUSTOM_AUTH"
          }
        },
        "CognitoUserPool": {
          "CustomEndpoint": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Endpoint": "$OAUTH_DOMAIN",
            "PoolId": "$USERPOOL_ID",
            "Region": "$REGION"
          },
          "Default": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Region": "$REGION",
            "HostedUI": {
              "AppClientId": "$APPCLIENT_ID",
              "AppClientSecret": "$APPCLIENT_SECERT",
              "Scopes": [
                "openid",
                "email"
              ],
              "SignInRedirectURI": "$OAUTH_SIGNIN",
              "SignOutRedirectURI": "$OAUTH_SIGNOUT",
              "WebDomain": "$OAUTH_DOMAIN"
            },
            "PoolId": "$USERPOOL_ID"
          },
          "DefaultCustomAuth": {
            "AppClientId": "$APPCLIENT_ID",
            "AppClientSecret": "$APPCLIENT_SECERT",
            "Region": "$REGION",
            "PoolId": "$USERPOOL_ID"
          }
        },
        "CredentialsProvider": {
          "CognitoIdentity": {
            "Default": {
              "PoolId": "$IDPOOL_ID",
              "Region": "$REGION"
            }
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
  }
}
''';

const _vlatestapi = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "api": {
    "plugins": {
      "awsAPIPlugin": {
        "API_KEY": {
          "endpointType": "GraphQL",
          "endpoint": "$GRAPHQL_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "API_KEY",
          "apiKey": "$API_KEY"
        },
        "AWS_IAM": {
          "endpointType": "GraphQL",
          "endpoint": "$GRAPHQL_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "AWS_IAM"
        },
        "REST": {
          "endpointType": "REST",
          "endpoint": "$REST_ENDPOINT",
          "region": "$REGION",
          "authorizationType": "AMAZON_COGNITO_USER_POOLS"
        }
      }
    }
  }
}
''';

const _vlateststorage = '''
{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "storage": {
    "plugins": {
      "awsS3StoragePlugin": {
        "bucket": "$BUCKET",
        "region": "$REGION",
        "defaultAccessLevel": "guest"
      }
    }
  }
}
''';

const vlatestTests = [
  TestData('Empty', _vlatestempty),
  TestData('Analytics', _vlatestanalytics),
  TestData('Auth', _vlatestauth),
  TestData('API', _vlatestapi),
  TestData('Storage', _vlateststorage),
];

const allTests = [
  TestSuite('4', v4Tests),
  TestSuite('5', v5Tests),
  TestSuite('6', v6Tests),
  TestSuite('7', v7Tests),
  TestSuite('latest', vlatestTests),
];
