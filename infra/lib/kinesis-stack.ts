// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cdk from "aws-cdk-lib";
import { Construct } from "constructs";
import { KinesisTestResources } from "./kinesis/kinesis-resources";

/**
 * Standalone CDK stack for Kinesis E2E test resources.
 *
 * Use this for initial deployment before the kinesis construct is merged
 * into AmplifyFlutterIntegStack on main.
 *
 * Deploy:
 *   cd infra && npx cdk deploy KinesisTestStack --profile=<profile>
 *
 * Destroy (after merging to main and redeploying AmplifyFlutterIntegStack):
 *   cd infra && npx cdk destroy KinesisTestStack --profile=<profile>
 */
export class KinesisTestStack extends cdk.Stack {
  constructor(scope: Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, props);

    const kinesis = new KinesisTestResources(this, "Kinesis");

    new cdk.CfnOutput(this, "SecretName", {
      value: kinesis.secret.secretName,
    });

    new cdk.CfnOutput(this, "SecretArn", {
      value: kinesis.secret.secretArn,
    });
  }
}
