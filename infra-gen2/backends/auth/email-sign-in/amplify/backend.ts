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

const customOutputs = addAuthUserExtensions({
  name: "email-sign-in",
  stack,
  userPool,
  cfnUserPool,
});
backend.addOutput(customOutputs);
