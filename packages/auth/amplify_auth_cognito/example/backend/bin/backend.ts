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

const app = new cdk.App();

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
    // Do not trust remembered devices (always prompt MFA)
    challengeRequiredOnNewDevice: false,
    // Opt-in to tracking
    deviceOnlyRememberedOnUserPrompt: true,
  },
});
new AuthIntegrationTestStack(app, {
  environmentName: "sign-in-with-phone",
  signInAliases: {
    phone: true,
  }
});
