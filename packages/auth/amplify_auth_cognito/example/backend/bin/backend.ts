#!/usr/bin/env node
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

import "source-map-support/register";
import * as cdk from "aws-cdk-lib";
import { AuthIntegrationTestStack } from "../lib/stack";
import { CustomAuthorizerUserPoolsStack } from "../lib/custom-authorizer-user-pools/stack";
import { CustomAuthorizerIamStack } from "../lib/custom-authorizer-iam/stack";

const app = new cdk.App();
const env: cdk.Environment = {
  account: process.env.CDK_DEFAULT_ACCOUNT,
  region: process.env.CDK_DEFAULT_REGION,
};

new AuthIntegrationTestStack(app);
new AuthIntegrationTestStack(app, {
  environmentName: "device-tracking-always",
  deviceTracking: {
    // Trust remembered devices (allow MFA bypass)
    challengeRequiredOnNewDevice: true,
    // Always track
    deviceOnlyRememberedOnUserPrompt: false,
  },
});
new AuthIntegrationTestStack(app, {
  environmentName: "device-tracking-opt-in",
  deviceTracking: {
    // Trust remembered devices (allow MFA bypass)
    challengeRequiredOnNewDevice: true,
    // Opt-in to tracking
    deviceOnlyRememberedOnUserPrompt: true,
  },
});
new AuthIntegrationTestStack(app, {
  environmentName: "sign-in-with-phone",
  signInAliases: {
    phone: true,
  },
});
new CustomAuthorizerUserPoolsStack(app, {
  environmentName: "custom-authorizer-user-pools",
});
new CustomAuthorizerIamStack(app, {
  environmentName: "custom-authorizer-iam",
});

const customDomain = app.node.tryGetContext('domainName');
if (customDomain) {
  new CustomAuthorizerIamStack(app, {
    env,
    environmentName: "custom-authorizer-custom-domain",
    customDomain,
  });
}
