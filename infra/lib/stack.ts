// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cdk from "aws-cdk-lib";
import * as cognito from "aws-cdk-lib/aws-cognito";
import { Construct } from "constructs";
import { AnalyticsIntegrationTestStack } from "./analytics/stack";
import {
  AuthIntegrationTestStack,
  AuthIntegrationTestStackEnvironmentProps
} from "./auth/stack";
import { env } from "./common";
import { GitHubStack } from "./github/github";
import { StorageAccessLevel, StorageIntegrationTestStack } from "./storage/stack";

export class AmplifyFlutterIntegStack extends cdk.Stack {
  constructor(scope: Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, props);

    // The Analytics stack
    const analytics = new AnalyticsIntegrationTestStack(this, [
      { environmentName: "main" },
      { environmentName: "no-unauth-access", allowUnauthAccess: false },
      { environmentName: "no-unauth-identities", allowUnauthIdentites: false }
    ], { env });

    // The Auth stack
    let customDomainEnv: AuthIntegrationTestStackEnvironmentProps[] = [];
    const customDomain = this.node.tryGetContext("domainName");
    if (customDomain) {
      customDomainEnv.push({
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
      { type: "FULL", environmentName: "main" },
      {
        type: "FULL",
        environmentName: "device-tracking-always",
        deviceTracking: deviceTrackingAlways,
      },
      {
        type: "FULL",
        environmentName: "device-tracking-opt-in",
        deviceTracking: deviceTrackingOptIn,
      },
      {
        type: "FULL",
        environmentName: "device-tracking-email-alias",
        deviceTracking: deviceTrackingAlways,
        signInAliases: {
          email: true,
        },
      },
      {
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
        type: "FULL",
        environmentName: "sign-in-with-email-or-phone",
        signInAliases: {
          phone: true,
          email: true,
        },
      },
      {
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
        type: "FULL",
        environmentName: "keep-original-attributes",
        autoConfirm: true,
        standardAttributes: {
          email: {
            mutable: true,
            required: true,
          },
          phoneNumber: {
            mutable: true,
            required: true,
          }
        },
        keepOriginal: {
          email: true,
          phone: true,
        }
      },
      {
        type: "FULL",
        environmentName: "hosted-ui",
        enableHostedUI: true,
      },
      {
        type: "FULL",
        environmentName: "user-pool-only",
        includeIdentityPool: false,
        deviceTracking: deviceTrackingOptIn,
      },
      {
        type: "FULL",
        environmentName: "identity-pool-only",
        includeUserPool: false,
      },
      {
        type: "FULL",
        environmentName: "authenticated-users-only",
        allowUnauthenticatedIdentities: false,
      },
      {
        type: "FULL",
        environmentName: "custom-auth-with-srp",
        customAuth: "WITH_SRP",
      },
      {
        type: "FULL",
        environmentName: "custom-auth-without-srp",
        customAuth: "WITHOUT_SRP",
      },
      {
        type: "FULL",
        environmentName: "custom-auth-device-with-srp",
        customAuth: "WITH_SRP",
        deviceTracking: deviceTrackingAlways,
      },
      {
        type: "FULL",
        environmentName: "custom-auth-device-without-srp",
        customAuth: "WITHOUT_SRP",
        deviceTracking: deviceTrackingAlways,
      },
      {
        type: "FULL",
        environmentName: "with-client-secret",
        withClientSecret: true,
        deviceTracking: deviceTrackingOptIn,
      },
      {
        type: "FULL",
        environmentName: "asf-audit",
        advancedSecurityMode: cognito.AdvancedSecurityMode.AUDIT,
      },
      {
        type: "FULL",
        environmentName: "mfa-optional-sms",
        mfaConfiguration: {
          SMSMfaSettings: {
            Enabled: true
          }
        },
        standardAttributes: {},
      },
      {
        type: "FULL",
        environmentName: "mfa-required-sms",
        mfaConfiguration: {
          signIn: cognito.Mfa.REQUIRED,
          SMSMfaSettings: {
            Enabled: true
          }
        },
        standardAttributes: {},
      },
      {
        type: "FULL",
        environmentName: "mfa-optional-totp",
        mfaConfiguration: {
          SoftwareTokenMfaSettings: {
            Enabled: true,
          }
        },
        standardAttributes: {},
      },
      {
        type: "FULL",
        environmentName: "mfa-required-totp",
        mfaConfiguration: {
          signIn: cognito.Mfa.REQUIRED,
          SoftwareTokenMfaSettings: {
            Enabled: true,
          }
        },
        standardAttributes: {},
      },
      {
        type: "FULL",
        environmentName: "mfa-optional-sms-totp",
        mfaConfiguration: {
          SMSMfaSettings: {
            Enabled: true,
          },
          SoftwareTokenMfaSettings: {
            Enabled: true,
          }
        },
        standardAttributes: {},
      },
      {
        type: "FULL",
        environmentName: "mfa-required-sms-totp",
        mfaConfiguration: {
          signIn: cognito.Mfa.REQUIRED,
          SMSMfaSettings: {
            Enabled: true,
          },
          SoftwareTokenMfaSettings: {
            Enabled: true,
          }
        },
        standardAttributes: {},
      },
      {
        type: "CUSTOM_AUTHORIZER_USER_POOLS",
        environmentName: "custom-authorizer-user-pools",
      },
      {
        type: "CUSTOM_AUTHORIZER_IAM",
        environmentName: "custom-authorizer-iam",
      },
      ...customDomainEnv,
    ], {
      env,
      // TODO(dnys1): Remove after eventual consistency experiment is complete
      // env: {
      //   account: process.env.CDK_DEFAULT_ACCOUNT,
      //   region: 'eu-south-1',
      // },
      // crossRegionReferences: true,
    });

    // The Storage stack
    const storage = new StorageIntegrationTestStack(this, [
      {
        environmentName: "main",
        enableTransferAcceleration: true,
      },
      {
        environmentName: "custom-prefix",
        enableTransferAcceleration: true,
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
      {
        environmentName: "dots-in-name",
        enableTransferAcceleration: false,
        bucketNamePrefix: "amplify.integ-test.stack",
      },
    ], { env });

    new cdk.CfnOutput(this, 'Categories', {
      value: JSON.stringify({
        analytics: {
          region: analytics.region,
          bucketName: analytics.bucket.bucketName,
        },
        auth: {
          region: auth.region,
          bucketName: auth.bucket.bucketName,
        },
        storage: {
          region: storage.region,
          bucketName: storage.bucket.bucketName,
        },
      })
    });

    new GitHubStack(this, 'GitHub', {
      analytics: analytics.bucket,
      auth: auth.bucket,
      storage: storage.bucket,
      env,
    });
  }
}
