import { defineAuth, defineFunction } from "@aws-amplify/backend";

export const preSignUp = defineFunction({
  name: "pre-sign-up",
  entry: "./pre-sign-up-handler.ts",
});

/**
 * Define and configure your auth resource
 * @see https://docs.amplify.aws/gen2/build-a-backend/auth
 */
export const auth = defineAuth({
  loginWith: {
    email: true,
  },
  triggers: {
    preSignUp,
  },
});
