import { defineAuth } from "@aws-amplify/backend";

/**
 * Minimal auth resource to bootstrap the Amplify backend.
 * The kinesis E2E tests use IAM credentials directly, but
 * defineBackend requires at least one resource.
 */
export const auth = defineAuth({
  loginWith: {
    email: true,
  },
});
