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

// Adds infra for creating/deleting users via App Sync and fetching confirmation
// and MFA codes from App Sync.
const customOutputs = addAuthUserExtensions({
  name: "username-login-mfa",
  stack,
  userPool,
  cfnUserPool,
});
backend.addOutput(customOutputs);

cfnUserPool.schema = undefined;
cfnUserPool.usernameAttributes = [];
cfnUserPool.emailConfiguration = {
  emailSendingAccount: "DEVELOPER",
  from: "ktruon@amazon.com",
  sourceArn: `arn:aws:ses:${stack.region}:${stack.account}:identity/ktruon@amazon.com`,
};
cfnUserPool.adminCreateUserConfig = {
  allowAdminCreateUserOnly: true,
};
cfnUserPool.autoVerifiedAttributes = [];
cfnUserPool.userAttributeUpdateSettings = {
  attributesRequireVerificationBeforeUpdate: [],
};
