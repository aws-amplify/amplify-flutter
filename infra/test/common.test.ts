// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import {
  AmplifyConfig,
  AnalyticsConfig,
  ApiConfig,
  AuthConfig,
  createAmplifyConfig
} from "../lib/common";

const region = "us-west-2";
const environmentName = "test";

describe("createAmplifyConfig", () => {
  test("creates valid config", () => {
    const appId = "appId";
    const analyticsConfig: AnalyticsConfig = {
      appId,
    };

    const apiName = "testApi";
    const apiConfig: ApiConfig = {
      endpointType: "GraphQL",
      endpoint: "https://example.com",
      authorizationType: "API_KEY",
      apiKey: "abcdefg",
    };

    const userPoolId = "userPoolId";
    const userPoolClientId = "userPoolClientId";
    const authConfig: AuthConfig = {
      userPoolConfig: {
        userPoolId,
        userPoolClientId,
      },
    };

    const amplifyConfig: AmplifyConfig = {
      analyticsConfig,
      apiConfig: {
        apis: {
          [apiName]: apiConfig,
        },
      },
      authConfig,
    };
    const configJson = createAmplifyConfig(region, amplifyConfig);
    expect(configJson).toStrictEqual({
      UserAgent: "aws-amplify-cli/2.0",
      Version: "1.0",
      analytics: {
        plugins: {
          awsPinpointAnalyticsPlugin: {
            pinpointAnalytics: {
              appId,
              region,
            },
            pinpointTargeting: {
              region: region,
            },
          },
        },
      },
      api: {
        plugins: {
          awsAPIPlugin: {
            [apiName]: {
              region,
              ...apiConfig,
            },
          },
        },
      },
      auth: {
        plugins: {
          awsCognitoAuthPlugin: {
            UserAgent: "aws-amplify-cli/0.1.0",
            Version: "0.1.0",
            CognitoUserPool: {
              Default: {
                PoolId: userPoolId,
                AppClientId: userPoolClientId,
                Region: region,
              },
            },
            PinpointAnalytics: {
              Default: {
                AppId: appId,
                Region: region,
              },
            },
            PinpointTargeting: {
              Default: {
                Region: region,
              },
            },
            Auth: {
              Default: {
                authenticationFlowType: "USER_SRP_AUTH",
                usernameAttributes: [],
                signupAttributes: [],
                passwordProtectionSettings: {
                  passwordPolicyMinLength: 8,
                  passwordPolicyCharacters: [
                    "REQUIRES_LOWERCASE",
                    "REQUIRES_UPPERCASE",
                    "REQUIRES_NUMBERS",
                    "REQUIRES_SYMBOLS",
                  ],
                },
                mfaConfiguration: "OPTIONAL",
                mfaTypes: ["SMS"],
                verificationMechanisms: ["EMAIL", "PHONE_NUMBER"],
              },
            },
          },
        },
      },
    });
  });
});
