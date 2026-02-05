// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { defineAuth } from "@aws-amplify/backend";

export const auth = defineAuth({
  name: "mfa-username-login",
  loginWith: {
    phone: true,
  },
  multifactor: {
    mode: "REQUIRED",
    email: true,
    sms: true,
    totp: true,
  },
  senders: {
    email: {
      fromEmail: "ktruon@amazon.com",
    },
  },
  accountRecovery: "PHONE_WITHOUT_MFA_AND_EMAIL",
});
