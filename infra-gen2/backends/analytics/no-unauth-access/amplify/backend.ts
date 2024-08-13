import { defineBackend } from "@aws-amplify/backend";
import { addAnalyticsExtensions } from "infra-common";
import { auth } from "./auth/resource";

/**
 * @see https://docs.amplify.aws/react/build-a-backend/ to add storage, functions, and more
 */

const backend = defineBackend({
  auth,
});

const pinpointRole = backend.auth.resources.authenticatedUserIamRole;

const resources = backend.auth.resources;
const { userPool, cfnResources } = resources;
const { stack } = userPool;

const customOutputs = addAnalyticsExtensions({
  name: "analytics-main",
  stack: stack,
  authenticatedRole: pinpointRole,
});

// patch the custom Pinpoint resource to the expected output configuration
backend.addOutput(customOutputs);
