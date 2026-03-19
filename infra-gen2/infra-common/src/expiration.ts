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
  // Use 364 days to provide a buffer for timezone differences between
  // the local machine and AWS servers (max allowed is 365 days, one day less to avoid overflows)
  const oneYearMillis = cdk.Duration.days(364).toMilliseconds();
  const oneYear = new Date(now.getTime() + oneYearMillis);
  oneYear.setHours(0, 0, 0, 0);
  return cdk.Expiration.atDate(oneYear);
};
