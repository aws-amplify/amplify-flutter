// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cdk from "aws-cdk-lib";

/**
 * Creates an expiration for 1 year rounded to the nearest day.
 *
 * Helpful for ensuring that multiple deployments of the CDK stack do not trigger
 * unnecessary re-deploys since the standard Expiration.after(...) is not rounded
 * and will always be different from previous deploys.
 *
 * @returns An expiration which can be used in GraphQL APIs.
 */
export const inOneYear = (): cdk.Expiration => {
  const now = new Date();
  const oneYearMillis = cdk.Duration.days(365).toMilliseconds();
  const oneYear = new Date(now.getTime() + oneYearMillis);
  oneYear.setHours(0, 0, 0, 0);
  return cdk.Expiration.atDate(oneYear);
};
