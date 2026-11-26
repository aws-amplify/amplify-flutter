import { defineBackend } from "@aws-amplify/backend";
import { PolicyStatement } from "aws-cdk-lib/aws-iam";
import { auth } from "./auth/resource";
import { data } from "./data/resource";
import { liveness } from "./functions/liveness/resource";

const backend = defineBackend({
  auth,
  data,
  liveness,
});

// Lets the function create sessions and read their results.
backend.liveness.resources.lambda.addToRolePolicy(
  new PolicyStatement({
    actions: [
      "rekognition:CreateFaceLivenessSession",
      "rekognition:GetFaceLivenessSessionResults",
    ],
    resources: ["*"],
  }),
);

// Lets signed-in users stream video for a session (aws_liveness start()).
backend.auth.resources.authenticatedUserIamRole.addToPrincipalPolicy(
  new PolicyStatement({
    actions: ["rekognition:StartFaceLivenessSession"],
    resources: ["*"],
  }),
);
