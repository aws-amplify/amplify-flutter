// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cdk from "aws-cdk-lib";
import { Fn, RemovalPolicy } from "aws-cdk-lib";
import * as cognito from "aws-cdk-lib/aws-cognito";
import * as events from 'aws-cdk-lib/aws-events';
import * as targets from 'aws-cdk-lib/aws-events-targets';
import { Runtime } from "aws-cdk-lib/aws-lambda";
import * as lambda_nodejs from 'aws-cdk-lib/aws-lambda-nodejs';
import * as s3 from "aws-cdk-lib/aws-s3";
import { Construct } from "constructs";
import { StorageAccessLevel } from "./storage/stack";

/**
 * Shared properties for nested stack environments.
 */
export interface IntegrationTestStackEnvironmentProps
  extends cdk.NestedStackProps {
  /**
   * The environment name.
   */
  environmentName: string;
}

export type Mutable<T> = {
  -readonly [P in keyof T]: T[P]
};

export abstract class IntegrationTestStack<
  EnvironmentProps extends IntegrationTestStackEnvironmentProps,
  Environment extends IntegrationTestStackEnvironment<EnvironmentProps>
> extends cdk.NestedStack {
  constructor({
    scope,
    category,
    environments,
    props,
  }: {
    scope: Construct;
    category: AmplifyCategory;
    environments: EnvironmentProps[];
    props?: cdk.NestedStackProps;
  }) {
    super(scope, `${category}IntegrationTestStack`, {
      ...props,
      description: `Amplify Flutter integration test stack for ${category}`,
    });

    this.category = category;

    for (const environment of this.buildEnvironments(environments)) {
      this.saveAmplifyConfig(environment.environmentName, environment.config);
    }
  }

  protected abstract buildEnvironments(
    props: EnvironmentProps[]
  ): Environment[];

  /**
   * The category this stack tests.
   */
  readonly category: AmplifyCategory;

  /**
   * The base name of a stack, used to prefix resource names.
   */
  protected get baseName(): string {
    return `${this.category}Integ`;
  }

  /**
   * All Amplify configs generated for this stack.
   */
  public readonly configs: {
    [environmentName: string]: any;
  } = {};

  private _bucket: s3.Bucket;
  /**
   * S3 bucket to store generated config so that it can be pulled by CI pipelines.
   */
  public get bucket(): s3.Bucket {
    if (!this._bucket) {
      this._bucket = new s3.Bucket(this, "Bucket", {
        bucketName: randomBucketName({
          prefix: `amplify-test-${this.baseName.toLowerCase()}`,
          stack: this,
        }),
        removalPolicy: RemovalPolicy.DESTROY,
        autoDeleteObjects: true,
        enforceSSL: true,
      });
    }
    return this._bucket;
  }

  /**
   * Saves the Amplify configuration for an environment as a CDK output.
   * @param config The Amplify config values.
   */
  private saveAmplifyConfig(
    environmentName: string,
    config: AmplifyConfig
  ): void {
    const configJson = createAmplifyConfig(this.region, config);
    this.configs[environmentName] = configJson;
  }
}

export abstract class IntegrationTestStackEnvironment<
  Props extends IntegrationTestStackEnvironmentProps
> extends cdk.NestedStack {
  constructor(scope: Construct, baseName: string, props: Props) {
    super(scope, props.environmentName, props);

    this.name = `${baseName.toLowerCase()}-${props.environmentName}`;
    this.environmentName = props.environmentName;
  }

  /**
   * The name to use for resources.
   */
  protected readonly name: string;

  /**
   * The name of the environment.
   */
  public readonly environmentName: string;

  /**
   * The Amplify configuration description for this environment.
   */
  public config: AmplifyConfig;

  /**
   * Creates a cron-scheduled Lambda which cleans up user pool users
   * every day.
   * 
   * @param userPool The user pool to clean up.
   */
  protected createUserCleanupJob(userPool: cognito.IUserPool) {
    const lambda = new lambda_nodejs.NodejsFunction(this, 'cleanup-users', {
      entry: './lib/cleanup-users.ts',
      runtime: Runtime.NODEJS_18_X,
      environment: {
        USER_POOL_ID: userPool.userPoolId,
      },
      timeout: cdk.Duration.minutes(5),
      memorySize: 512,
    });
    userPool.grant(lambda, "cognito-idp:ListUsers", "cognito-idp:AdminDeleteUser");

    const cronRule = new events.Rule(this, 'cleanup-users-rule', {
      // Run daily at midnight
      schedule: events.Schedule.expression('cron(0 0 ? * * *)'),
    });
    cronRule.addTarget(new targets.LambdaFunction(lambda));
  }
}

/**
 * Creates a semi-random bucket name which is stable for a particular stack and guaranteed to
 * not conflict with other buckets of the same prefix.
 *
 * Naming matches Amplify CLI for discoverability, suffixed with a segment of the stack ID.
 * https://github.com/aws-amplify/amplify-ci-support/blob/1abe7f7a1d75fa19675ad8ca17ab625a299b765e/src/integ_test_resources/flutter/amplify/cloudformation_template.yaml#L32
 */
export const randomBucketName = ({ prefix, stack }: { prefix: string, stack: cdk.Stack }): string => {
  return Fn.join("-", [
    prefix,
    // https://stackoverflow.com/questions/54897459/how-to-set-semi-random-name-for-s3-bucket-using-cloud-formation
    Fn.select(0, Fn.split("-", Fn.select(2, Fn.split("/", stack.stackId)))),
  ]);
}

/**
 * Creates an amplifyconfiguration.dart compatible JSON representation of config.
 * @param region The stack's region.
 * @param config The configuration parameters.
 * @returns The JSON representation of the Amplify config.
 */
export const createAmplifyConfig = (
  region: string,
  config: AmplifyConfig
): any => {
  const { analyticsConfig, apiConfig, authConfig, storageConfig } = config;
  const analytics: any = {};
  if (analyticsConfig) {
    analytics.analytics = {
      plugins: {
        awsPinpointAnalyticsPlugin: {
          pinpointAnalytics: {
            appId: analyticsConfig.appId,
            region,
          },
          pinpointTargeting: {
            region,
          },
        },
      },
    };
  }
  const api: any = {};
  if (apiConfig) {
    api.api = {
      plugins: {
        awsAPIPlugin: {
          ...Object.entries(apiConfig.apis).reduce(
            (obj, [apiName, config]) => ({
              ...obj,
              [apiName]: {
                region,
                ...config,
              },
            }),
            {}
          ),
        },
      },
    };
  }
  const auth: any = {};
  if (authConfig) {
    const { identityPoolConfig, userPoolConfig, hostedUiConfig } = authConfig;
    const identityPool: any = {};
    if (identityPoolConfig) {
      identityPool.CredentialsProvider = {
        CognitoIdentity: {
          Default: {
            PoolId: identityPoolConfig.identityPoolId,
            Region: region,
          },
        },
      };
    }
    const userPool: any = {};
    let defaultAuth: any = {};
    if (userPoolConfig) {
      userPool.CognitoUserPool = {
        Default: {
          PoolId: userPoolConfig.userPoolId,
          AppClientId: userPoolConfig.userPoolClientId,
          AppClientSecret: userPoolConfig.userPoolClientSecret,
          Region: region,
        },
      };
      const {
        standardAttributes,
        signInAliases,
        mfa,
        verificationMechanisms = [],
      } = userPoolConfig;
      const userNameAttributes: string[] = [];
      if (signInAliases?.email) {
        userNameAttributes.push("email");
      }
      if (signInAliases?.phone) {
        userNameAttributes.push("phone_number");
      }
      const signupAttributes: string[] = [];
      if (standardAttributes?.email?.required) {
        signupAttributes.push("email");
      }
      if (standardAttributes?.phoneNumber?.required) {
        signupAttributes.push("phone_number");
      }
      defaultAuth = {
        authenticationFlowType: "USER_SRP_AUTH",
        usernameAttributes: userNameAttributes,
        signupAttributes: signupAttributes,
        passwordProtectionSettings: {
          passwordPolicyMinLength: 8,
          passwordPolicyCharacters: [
            "REQUIRES_LOWERCASE",
            "REQUIRES_UPPERCASE",
            "REQUIRES_NUMBERS",
            "REQUIRES_SYMBOLS",
          ],
        },
        mfaConfiguration: mfa,
        mfaTypes: ["SMS"],
        verificationMechanisms: verificationMechanisms,
      };
    }
    const pinpointConfig: any = {};
    if (analyticsConfig) {
      pinpointConfig.PinpointAnalytics = {
        Default: {
          AppId: analyticsConfig.appId,
          Region: region,
        },
      };
      pinpointConfig.PinpointTargeting = {
        Default: {
          Region: region,
        },
      };
    }
    const storage: any = {};
    if (storageConfig) {
      storage.S3TransferUtility = {
        Default: {
          Bucket: storageConfig.bucket,
          Region: region,
        },
      };
    }
    const oauth: any = {};
    if (hostedUiConfig) {
      oauth.OAuth = {
        WebDomain: hostedUiConfig.webDomain,
        AppClientId: userPoolConfig!.userPoolClientId,
        SignInRedirectURI: hostedUiConfig.signInRedirectUris.join(","),
        SignOutRedirectURI: hostedUiConfig.signOutRedirectUris.join(","),
        Scopes: hostedUiConfig.scopes,
      };
    }
    auth.auth = {
      plugins: {
        awsCognitoAuthPlugin: {
          UserAgent: "aws-amplify-cli/0.1.0",
          Version: "0.1.0",
          ...identityPool,
          ...userPool,
          ...pinpointConfig,
          ...storage,
          Auth: {
            Default: {
              ...oauth,
              ...defaultAuth,
            },
          },
        },
      },
    };
  }
  const storage: any = {};
  if (storageConfig) {
    storage.storage = {
      plugins: {
        awsS3StoragePlugin: {
          region,
          ...storageConfig,
        },
      },
    };
  }
  return {
    UserAgent: "aws-amplify-cli/2.0",
    Version: "1.0",
    ...analytics,
    ...api,
    ...auth,
    ...storage,
  };
};

export enum AmplifyCategory {
  Analytics = "analytics",
  API = "api",
  Auth = "auth",
  DataStore = "dataStore",
  Storage = "storage",
}

export type APIAuthorizationType =
  | "NONE"
  | "API_KEY"
  | "AWS_IAM"
  | "AMAZON_COGNITO_USER_POOLS"
  | "OPENID_CONNECT"
  | "AWS_LAMBDA";

export type ApiEndpointConfig = {
  endpointType: "GraphQL" | "REST";
  endpoint: string;
  authorizationType: APIAuthorizationType;
  apiKey?: string;
};

export type UserPoolConfig = {
  userPoolId: string;
  userPoolClientId: string;
  userPoolClientSecret?: string;
  signInAliases?: cognito.SignInAliases;
  standardAttributes?: cognito.StandardAttributes;
  mfa: cognito.Mfa;
  verificationMechanisms?: string[];
};
export type IdentityPoolConfig = {
  identityPoolId: string;
};
export type HostedUIConfig = {
  webDomain: string;
  signInRedirectUris: string[];
  signOutRedirectUris: string[];
  scopes: string[];
};

export type AuthConfig = {
  userPoolConfig?: UserPoolConfig;
  hostedUiConfig?: HostedUIConfig;
  identityPoolConfig?: IdentityPoolConfig;
};

export type AnalyticsConfig = {
  appId: string;
};
export type ApiConfig = {
  apis: {
    [apiName: string]: ApiEndpointConfig;
  };
};

export type AmplifyConfig = {
  analyticsConfig?: AnalyticsConfig;
  authConfig?: AuthConfig;
  apiConfig?: ApiConfig;
  storageConfig?: {
    bucket: string;
    defaultAccessLevel: StorageAccessLevel;
  };
};
