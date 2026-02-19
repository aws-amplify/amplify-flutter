// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { defineAuth } from "@aws-amplify/backend";

export const auth = defineAuth({
  name: "auth-main",
  loginWith: {
    phone: true,
  },
  multifactor: {
    mode: "OPTIONAL",
    sms: true,
  },
  senders: {
    email: {
      fromEmail: "ktruon@amazon.com",
    },
  },
  accountRecovery: "PHONE_WITHOUT_MFA_AND_EMAIL",
});
