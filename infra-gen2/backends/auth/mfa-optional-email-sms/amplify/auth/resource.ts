// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { defineAuth } from "@aws-amplify/backend";

export const auth = defineAuth({
  name: "mfa-optional-email-sms",
  loginWith: {
    email: true,
  },

  // TODO(khatruong2009): Uncomment the following line when the feature is ready.
  // multifactor: {
  //   mode: "OPTIONAL",
  //   email: true,
  //   sms: true,
  // },
});
