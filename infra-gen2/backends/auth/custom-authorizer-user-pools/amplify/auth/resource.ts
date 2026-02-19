// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { defineAuth } from "@aws-amplify/backend";

export const auth = defineAuth({
  name: "custom-auth-up",
  loginWith: {
    phone: true,
  },
  senders: {
    email: {
      fromEmail: "ktruon@amazon.com",
    },
  },
});
