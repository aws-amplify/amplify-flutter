import { defineBackend } from "@aws-amplify/backend";
import { addAnalyticsExtensions } from "infra-common";
import { auth } from "./auth/resource";

/**
 * @see https://docs.amplify.aws/react/build-a-backend/ to add storage, functions, and more
 */

const backend = defineBackend({
  auth,
});

// const analyticsStack = backend.createStack("analytics-main-stack");

// // create a Pinpoint app
// const pinpoint = new CfnApp(analyticsStack, "Pinpoint", {
//   name: "analytics-main",
// });

// // create an IAM policy to allow interacting with Pinpoint
// const pinpointPolicy = new Policy(analyticsStack, "PinpointPolicy", {
//   policyName: "PinpointPolicy",
//   statements: [
//     new PolicyStatement({
//       actions: ["mobiletargeting:UpdateEndpoint", "mobiletargeting:PutEvents"],
//       resources: [pinpoint.attrArn + "/*"],
//     }),
//   ],
// });

// // apply the policy to the authenticated and unauthenticated roles
// backend.auth.resources.authenticatedUserIamRole.attachInlinePolicy(
//   pinpointPolicy
// );
// backend.auth.resources.unauthenticatedUserIamRole.attachInlinePolicy(
//   pinpointPolicy
// );

const pinpointRole = backend.auth.resources.authenticatedUserIamRole;
const unauthPinpointRole = backend.auth.resources.unauthenticatedUserIamRole;

const resources = backend.auth.resources;
const { userPool, cfnResources } = resources;
const { stack } = userPool;

const customOutputs = addAnalyticsExtensions({
  name: "analytics-main",
  stack: stack,
  authenticatedRole: pinpointRole,
  unauthenticatedRole: unauthPinpointRole,
});

// patch the custom Pinpoint resource to the expected output configuration
backend.addOutput(customOutputs);
