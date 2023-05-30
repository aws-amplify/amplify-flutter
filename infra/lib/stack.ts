// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cdk from "aws-cdk-lib";
import { CfnOutput } from "aws-cdk-lib";
import * as cognito from "aws-cdk-lib/aws-cognito";
import * as wafv2 from "aws-cdk-lib/aws-wafv2";
import { Construct } from "constructs";
import { AnalyticsIntegrationTestStack } from "./analytics/stack";
import {
  AuthIntegrationTestStack,
  AuthIntegrationTestStackEnvironmentProps
} from "./auth/stack";
import { IntegrationTestStack } from "./common";
import {
  StorageAccessLevel,
  StorageIntegrationTestStack
} from "./storage/stack";

export class AmplifyFlutterIntegStack extends cdk.Stack {
  constructor(scope: Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, props);

    // Create shared infrastructure

    // Create a Web Application Firewall (WAF) for blocking malicious requests.
    const waf = new wafv2.CfnWebACL(this, "WAF", {
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

    const wafAssociations: wafv2.CfnWebACLAssociation[] = [];

    // Creates a WAF association on `this` so that they can be chained later
    // and do not block the concurrent creation of environments.
    const associateWithWaf = (name: string, resourceArn: string) => {
      wafAssociations.push(
        new wafv2.CfnWebACLAssociation(this, `WAFAssociation-${name}`, {
          resourceArn,
          webAclArn: waf.attrArn,
        })
      );
    };

    // The Analytics stack
    const analytics = new AnalyticsIntegrationTestStack(this, [
      { environmentName: "main" },
    ]);

    // The Auth stack
    let customDomainEnv: AuthIntegrationTestStackEnvironmentProps[] = [];
    const customDomain = this.node.tryGetContext("domainName");
    if (customDomain) {
      customDomainEnv.push({
        associateWithWaf,
        type: "CUSTOM_AUTHORIZER_IAM",
        environmentName: "custom-authorizer-custom-domain",
        customDomain,
      });
    }

    const deviceTrackingOptIn: cognito.DeviceTracking = {
      // Trust remembered devices (allow MFA bypass)
      challengeRequiredOnNewDevice: true,
      // Opt-in to tracking
      deviceOnlyRememberedOnUserPrompt: true,
    };
    const deviceTrackingAlways: cognito.DeviceTracking = {
      // Trust remembered devices (allow MFA bypass)
      challengeRequiredOnNewDevice: true,
      // Always track
      deviceOnlyRememberedOnUserPrompt: false,
    };
    const auth = new AuthIntegrationTestStack(this, [
      { associateWithWaf, type: "FULL", environmentName: "main" },
      {
        associateWithWaf,
        type: "FULL",
        environmentName: "device-tracking-always",
        deviceTracking: deviceTrackingAlways,
      },
      {
        associateWithWaf,
        type: "FULL",
        environmentName: "device-tracking-opt-in",
        deviceTracking: deviceTrackingOptIn,
      },
      {
        associateWithWaf,
        type: "FULL",
        environmentName: "device-tracking-email-alias",
        deviceTracking: deviceTrackingAlways,
        signInAliases: {
          email: true,
        },
      },
      {
        associateWithWaf,
        type: "FULL",
        environmentName: "sign-in-with-username",
        signInAliases: {
          username: true,
        },
        standardAttributes: {
          email: {
            mutable: true,
            required: true,
          },
        },
      },
      {
        associateWithWaf,
        type: "FULL",
        environmentName: "sign-in-with-phone",
        signInAliases: {
          phone: true,
        },
        standardAttributes: {
          phoneNumber: {
            mutable: true,
            required: true,
          },
        },
      },
      {
        associateWithWaf,
        type: "FULL",
        environmentName: "sign-in-with-email",
        signInAliases: {
          email: true,
        },
        standardAttributes: {
          email: {
            mutable: true,
            required: true,
          },
        },
      },
      {
        associateWithWaf,
        type: "FULL",
        environmentName: "sign-in-with-email-or-phone",
        signInAliases: {
          phone: true,
          email: true,
        },
      },
      {
        associateWithWaf,
        type: "FULL",
        environmentName: "sign-in-with-email-lambda-trigger",
        signInAliases: {
          email: true,
        },
        autoConfirm: true,
        standardAttributes: {
          email: {
            mutable: true,
            required: true,
          },
        },
      },
      {
        associateWithWaf,
        type: "FULL",
        environmentName: "hosted-ui",
        enableHostedUI: true,
      },
      {
        associateWithWaf,
        type: "FULL",
        environmentName: "user-pool-only",
        includeIdentityPool: false,
        deviceTracking: deviceTrackingOptIn,
      },
      {
        associateWithWaf,
        type: "FULL",
        environmentName: "identity-pool-only",
        includeUserPool: false,
      },
      {
        associateWithWaf,
        type: "FULL",
        environmentName: "authenticated-users-only",
        allowUnauthenticatedIdentities: false,
      },
      {
        associateWithWaf,
        type: "FULL",
        environmentName: "custom-auth-with-srp",
        customAuth: "WITH_SRP",
      },
      {
        associateWithWaf,
        type: "FULL",
        environmentName: "custom-auth-without-srp",
        customAuth: "WITHOUT_SRP",
      },
      {
        associateWithWaf,
        type: "FULL",
        environmentName: "with-client-secret",
        withClientSecret: true,
        deviceTracking: deviceTrackingOptIn,
      },
      {
        associateWithWaf,
        type: "CUSTOM_AUTHORIZER_USER_POOLS",
        environmentName: "custom-authorizer-user-pools",
      },
      {
        associateWithWaf,
        type: "CUSTOM_AUTHORIZER_IAM",
        environmentName: "custom-authorizer-iam",
      },
      ...customDomainEnv,
    ]);

    // The Storage stack
    const storage = new StorageIntegrationTestStack(this, [
      { environmentName: "main" },
      {
        environmentName: "custom-prefix",
        prefixResolver(accessLevel, identityId) {
          switch (accessLevel) {
            case StorageAccessLevel.public:
              return `everyone`;
            case StorageAccessLevel.protected:
              return `shared/${identityId}`;
            case StorageAccessLevel.private:
              return `private/${identityId}`;
          }
        },
        prefixOverrides: {
          [StorageAccessLevel.public]: "everyone",
          [StorageAccessLevel.protected]: "shared",
          [StorageAccessLevel.private]: "private",
        },
      },
    ]);

    this.outputAmplifyConfig(analytics);
    this.outputAmplifyConfig(auth);
    this.outputAmplifyConfig(storage);

    // Chain the creation of WAF associations since the API call `AssociateWebACL`
    // has a fixed rate limit which can easily be exceeded when deploying concurrent
    // stacks and their WAF associations.
    wafAssociations.forEach((assoc, index) => {
      if (index > 0) assoc.addDependency(wafAssociations[index - 1]);
    });
  }

  /**
   * Outputs the Amplify configurations for `stack`.
   * @param stack The stack containing the environments.
   */
  private outputAmplifyConfig(stack: IntegrationTestStack<any, any>): void {
    new CfnOutput(this, stack.category, {
      value: JSON.stringify({
        bucket: stack.bucket.bucketName,
        region: stack.region,
        environments: stack.configs,
      }),
    });
  }
}
