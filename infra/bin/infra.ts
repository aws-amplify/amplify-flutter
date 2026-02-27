#!/usr/bin/env node
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cdk from "aws-cdk-lib";
import "source-map-support/register";
import { env } from "../lib/common";
import { KinesisTestStack } from "../lib/kinesis-stack";
import { AmplifyFlutterIntegStack } from "../lib/stack";

const app = new cdk.App();

new AmplifyFlutterIntegStack(app, "AmplifyFlutterIntegStack", {
  env,
  description: "Amplify Flutter integration test stack",
});

new KinesisTestStack(app, "KinesisTestStack", {
  env,
  description: "Kinesis Data Streams and Firehose E2E test resources",
});
