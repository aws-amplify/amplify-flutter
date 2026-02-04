// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { defineAuth } from "@aws-amplify/backend";

export const auth = defineAuth({
  name: "mfa-optional-email-sms",
  loginWith: {
    email: true,
  },
  multifactor: {
    mode: "OPTIONAL",
    email: true,
    sms: true,
  },
});
