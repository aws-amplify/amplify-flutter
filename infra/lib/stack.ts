/**
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import * as cdk from "aws-cdk-lib";
import { CfnOutput } from "aws-cdk-lib";
import * as wafv2 from "aws-cdk-lib/aws-wafv2";
import { Construct } from "constructs";
import { AnalyticsIntegrationTestStack } from "./analytics/stack";
import {
  AuthIntegrationTestStack,
  AuthIntegrationTestStackEnvironmentProps
} from "./auth/stack";
import { AmplifyCategory, IntegrationTestStack } from "./common";
import {
  StorageAccessLevel,
  StorageIntegrationTestStack
} from "./storage/stack";

export class AmplifyFlutterIntegStack extends cdk.Stack {
  constructor(scope: Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, props);

    // Allow overriding which categories to deploy
    const categoryParam = this.node.tryGetContext("category");
    const categories: AmplifyCategory[] = categoryParam
      ? categoryParam.split(",")
      : Object.values(AmplifyCategory);

    console.log(`Deploying stacks for categories: ${categories}`);

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
              limit: 1000,
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

    // The Analytics stack
    if (categories.includes(AmplifyCategory.Analytics)) {
      const analytics = new AnalyticsIntegrationTestStack(this, [
        { environmentName: "main" },
      ]);
      this.outputAmplifyConfig(analytics);
    }

    // The Auth stack
    if (categories.includes(AmplifyCategory.Auth)) {
      let customDomainEnv: AuthIntegrationTestStackEnvironmentProps[] = [];
      const customDomain = this.node.tryGetContext("domainName");
      if (customDomain) {
        customDomainEnv.push({
          waf,
          type: "CUSTOM_AUTHORIZER_IAM",
          environmentName: "custom-authorizer-custom-domain",
          customDomain,
        });
      }
      const auth = new AuthIntegrationTestStack(this, [
        { waf, type: "FULL", environmentName: "main" },
        {
          waf,
          type: "FULL",
          environmentName: "device-tracking-always",
          deviceTracking: {
            // Trust remembered devices (allow MFA bypass)
            challengeRequiredOnNewDevice: true,
            // Always track
            deviceOnlyRememberedOnUserPrompt: false,
          },
        },
        {
          waf,
          type: "FULL",
          environmentName: "device-tracking-opt-in",
          deviceTracking: {
            // Trust remembered devices (allow MFA bypass)
            challengeRequiredOnNewDevice: true,
            // Opt-in to tracking
            deviceOnlyRememberedOnUserPrompt: true,
          },
        },
        {
          waf,
          type: "FULL",
          environmentName: "sign-in-with-phone",
          signInAliases: {
            phone: true,
          },
        },
        {
          waf,
          type: "CUSTOM_AUTHORIZER_USER_POOLS",
          environmentName: "custom-authorizer-user-pools",
        },
        {
          waf,
          type: "CUSTOM_AUTHORIZER_IAM",
          environmentName: "custom-authorizer-iam",
        },
        ...customDomainEnv,
      ]);

      this.outputAmplifyConfig(auth);
    }

    // The Storage stack
    if (categories.includes(AmplifyCategory.Storage)) {
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

      this.outputAmplifyConfig(storage);
    }
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
