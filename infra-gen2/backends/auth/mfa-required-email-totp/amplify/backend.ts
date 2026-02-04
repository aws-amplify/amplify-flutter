// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { defineBackend } from "@aws-amplify/backend";
import { addAuthUserExtensions } from "infra-common";
import { auth } from "./auth/resource";

const backend = defineBackend({
  auth,
});

const resources = backend.auth.resources;
const { userPool, cfnResources } = resources;
const { stack } = userPool;
const { cfnUserPool } = cfnResources;

// Set User Pool tier to PLUS to support MFA
cfnUserPool.userPoolTier = "PLUS";

// When Email MFA is enabled, verified_email cannot be the only account recovery option.
// We need to either:
// 1. Add phone as an alternative recovery method, OR
// 2. Use admin_only for account recovery when Email MFA is active
// For this test backend, we'll disable self-service account recovery since
// email cannot be used for both MFA and recovery simultaneously.
cfnUserPool.accountRecoverySetting = {
  recoveryMechanisms: [
    {
      name: "admin_only",
      priority: 1,
    },
  ],
};

// Adds infra for creating/deleting users via App Sync and fetching confirmation
// and MFA codes from App Sync.
const customOutputs = addAuthUserExtensions({
  name: "mfa-required-email-totp",
  stack,
  userPool,
  cfnUserPool,
});
backend.addOutput(customOutputs);
