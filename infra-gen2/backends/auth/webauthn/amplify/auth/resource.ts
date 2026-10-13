// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { defineAuth, defineFunction } from "@aws-amplify/backend";

export const preSignUp = defineFunction({
  name: "pre-sign-up",
  entry: "./pre-sign-up-handler.ts",
});

export const auth = defineAuth({
  loginWith: {
    email: { otpLogin: true },
		phone: { otpLogin: true },
    webAuthn: true, // relyingPartyId auto-resolves to localhost in sandbox
  },
	passwordlessOptions: {
		preferredChallenge: "WEB_AUTHN"
	},
	userAttributes: {
		phoneNumber: {
			required: false
		}
	},
  triggers: {
    preSignUp,
  },
});
