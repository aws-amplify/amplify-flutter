// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import type { AdminSetUserMFAPreferenceCommandInput } from "@aws-sdk/client-cognito-identity-provider";

/**
 * Custom headers used in API Gateways.
 * 
 * Needed for enabling CORS.
 */
export const CUSTOM_HEADERS = [
  "x-amz-content-sha256",
  "x-lower-case",
  "x-upper-case",
  "x-query-test-key",
  "x-query-special-key",
];

export type UserMfaPreference = Pick<
  AdminSetUserMFAPreferenceCommandInput,
  "SMSMfaSettings" | "SoftwareTokenMfaSettings"
>;