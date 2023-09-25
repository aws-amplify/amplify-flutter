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
import * as s3_deploy from "aws-cdk-lib/aws-s3-deployment";
import * as secretsmanager from 'aws-cdk-lib/aws-secretsmanager';
import * as wafv2 from "aws-cdk-lib/aws-wafv2";
import * as triggers from 'aws-cdk-lib/triggers';
import { Construct } from "constructs";
import { StorageAccessLevel } from "./storage/stack";

// TODO(dnys1): Remove when resources are consolidated in the same region again.
export const env: cdk.Environment = {
  account: process.env.CDK_DEFAULT_ACCOUNT,
  region: 'us-west-2',
};

/**
 * Creates an expiration for 1 year rounded to the nearest day.
 * 
 * Helpful for ensuring that multiple deployments of the CDK stack do not trigger
 * unnecessary re-deploys since the standard Expiration.after(...) is not rounded
 * and will always be different from previous deploys.
 * 
 * @returns An expiration which can be used in GraphQL APIs.
 */
export const inOneYear = (): cdk.Expiration => {
  const now = new Date();
  const oneYearMillis = cdk.Duration.days(365).toMilliseconds();
  const oneYear = new Date(now.getTime() + oneYearMillis);
  oneYear.setHours(0, 0, 0, 0);
  return cdk.Expiration.atDate(oneYear);
};

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
> extends cdk.Stack {
  constructor({
    scope,
    category,
    environments,
    props,
  }: {
    scope: Construct;
    category: AmplifyCategory;
    environments: EnvironmentProps[];
    props?: cdk.StackProps;
  }) {
    super(scope, `${category}IntegrationTestStack`, {
      ...props,
      description: `Amplify Flutter integration test stack for ${category}`,
    });

    this.category = category;
    this.environments = this.buildEnvironments(environments);

    // Chain the creation of WAF associations since the API call `AssociateWebACL`
    // has a fixed rate limit which can easily be exceeded when deploying concurrent
    // stacks and their WAF associations.
    this.wafAssociations.forEach((assoc, index) => {
      if (index > 0) assoc.addDependency(this.wafAssociations[index - 1]);
    });

    this.createConfig();
  }

  protected abstract buildEnvironments(
    props: EnvironmentProps[]
  ): Environment[];

  /**
   * The result of calling `buildEnvironments`.
   */
  private environments: Environment[];

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

  private _bucket: s3.Bucket;
  /**
   * S3 bucket to store generated config so that it can be pulled by CI pipelines.
   */
  public get bucket(): s3.Bucket {
    if (!this._bucket) {
      this._bucket = new s3.Bucket(this, "Bucket", {
        // Create a random name and allow it to be referenced cross-region.
        bucketName: cdk.PhysicalName.GENERATE_IF_NEEDED,
        removalPolicy: RemovalPolicy.DESTROY,
        autoDeleteObjects: true,
        enforceSSL: true,
      });
    }
    return this._bucket;
  }

  /**
   * Adds a trigger for creating the final `amplifyconfiguration.dart` in `bucket` with 
   * all the environments' configurations.
   */
  private createConfig() {
    const configCreatorLambda = new lambda_nodejs.NodejsFunction(this, 'ConfigCreatorFn', {
      entry: './lib/config-creator.ts',
      runtime: Runtime.NODEJS_18_X,
      memorySize: 256,
      timeout: cdk.Duration.seconds(15),
      environment: {
        BUCKET: this.bucket.bucketName,
      }
    });
    this.bucket.grantReadWrite(configCreatorLambda);
    new triggers.Trigger(this, 'ConfigCreatorTrigger', {
      handler: configCreatorLambda,
      executeAfter: this.environments,
    });
  }

  private _waf: wafv2.CfnWebACL;
  readonly wafAssociations: wafv2.CfnWebACLAssociation[] = [];

  /**
   * The shared WAF for all environments of this stack.
   */
  public get waf(): wafv2.CfnWebACL {
    if (!this._waf) {
      // The dedicated IPs of large GitHub runners, used to exempt these IPs
      // from WAF rules.
      const gitHubIps = secretsmanager.Secret.fromSecretNameV2(this, 'GitHubIps', 'github/ips');
      const largeRunnerIpSet = new wafv2.CfnIPSet(this, 'LargeRunnerIpSet', {
        addresses: [
          // Windows
          gitHubIps.secretValueFromJson('Windows').unsafeUnwrap(),

          // Ubuntu
          gitHubIps.secretValueFromJson('Ubuntu').unsafeUnwrap(),
        ],
        scope: 'REGIONAL',
        ipAddressVersion: 'IPV4',
      });

      // Create a Web Application Firewall (WAF) for blocking malicious requests.
      this._waf = new wafv2.CfnWebACL(this, "WAF", {
        scope: "REGIONAL",
        defaultAction: {
          allow: {},
        },
        rules: [
          // Basic rate limiting to prevent overuse of endpoints
          {
            name: "RateLimit",
            priority: 30,
            action: {
              block: {},
            },
            statement: {
              rateBasedStatement: {
                aggregateKeyType: "IP",
                // The number of requests which can be performed by
                // a single IP in a 5-minute window.
                limit: 3000,
                scopeDownStatement: {
                  // Exempt the large runners from the IP-based limiting.
                  notStatement: {
                    statement: {
                      ipSetReferenceStatement: {
                        arn: largeRunnerIpSet.attrArn,
                      }
                    }
                  }
                }
              },
            },
            visibilityConfig: {
              sampledRequestsEnabled: true,
              cloudWatchMetricsEnabled: true,
              metricName: "RateLimit",
            },
          },
        ],
        visibilityConfig: {
          sampledRequestsEnabled: false,
          cloudWatchMetricsEnabled: true,
          metricName: "WAFViolations",
        },
      });
    }
    return this._waf;
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
   * The parent stack of this nested stack.
   */
  protected get parent(): IntegrationTestStack<any, any> {
    return this.nestedStackParent as IntegrationTestStack<any, any>;
  }

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

  /**
   * Creates an association in the shared WAF for a resource.
   * 
   * @param name A unique name for the resource.
   * @param resourceArn The ARN of the resource.
   */
  protected associateWithWaf(resourceName: string, resourceArn: string) {
    const association = new wafv2.CfnWebACLAssociation(this.parent, `WAFAssociation-${resourceName}`, {
      resourceArn: resourceArn,
      webAclArn: this.parent.waf.attrArn,
    });
    this.parent.wafAssociations.push(association);
  }

  /**
   * Saves the Amplify configuration for this environment to the shared `bucket`.
   * 
   * @param config The Amplify configuration
   */
  protected saveConfig(config: AmplifyConfig) {
    new s3_deploy.BucketDeployment(this, 'AmplifyConfig', {
      destinationBucket: this.parent.bucket,
      destinationKeyPrefix: 'environments/',
      prune: false, // Prevent other JSON files from being deleted on upload
      retainOnDelete: false, // Remove this JSON file when the environment is deleted
      sources: [
        s3_deploy.Source.jsonData(`${this.environmentName}.json`, {
          environmentName: this.environmentName,
          config: createAmplifyConfig(this.region, config),
        }),
      ],
    });
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
