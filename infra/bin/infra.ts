#!/usr/bin/env node
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cdk from "aws-cdk-lib";
import "source-map-support/register";
import { AmplifyFlutterIntegStack } from "../lib/stack";

const app = new cdk.App();
const env: cdk.Environment = {
  account: process.env.CDK_DEFAULT_ACCOUNT,
  region: process.env.CDK_DEFAULT_REGION,
};

new AmplifyFlutterIntegStack(app, "AmplifyFlutterIntegStack", {
  env,
  description: "Amplify Flutter integration test stack",
});
