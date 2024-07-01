// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cdk from "aws-cdk-lib";
import { Fn } from "aws-cdk-lib";

/**
 * Creates a semi-random bucket name which is stable for a particular stack and guaranteed to
 * not conflict with other buckets of the same prefix.
 *
 * Naming matches Amplify CLI for discoverability, suffixed with a segment of the stack ID.
 * https://github.com/aws-amplify/amplify-ci-support/blob/1abe7f7a1d75fa19675ad8ca17ab625a299b765e/src/integ_test_resources/flutter/amplify/cloudformation_template.yaml#L32
 */
export const randomBucketName = ({
  prefix,
  stack,
}: {
  prefix: string;
  stack: cdk.Stack;
}): string => {
  return Fn.join("-", [
    prefix,
    // https://stackoverflow.com/questions/54897459/how-to-set-semi-random-name-for-s3-bucket-using-cloud-formation
    Fn.select(0, Fn.split("-", Fn.select(2, Fn.split("/", stack.stackId)))),
  ]);
};
