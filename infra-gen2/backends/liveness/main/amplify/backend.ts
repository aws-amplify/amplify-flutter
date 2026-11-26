import { defineBackend } from "@aws-amplify/backend";
import { RemovalPolicy } from "aws-cdk-lib";
import { AttributeType, TableV2 } from "aws-cdk-lib/aws-dynamodb";
import { PolicyStatement } from "aws-cdk-lib/aws-iam";
import { auth } from "./auth/resource";
import { data } from "./data/resource";
import { createSession } from "./functions/create-session/resource";
import { getResult } from "./functions/get-result/resource";

const backend = defineBackend({
  auth,
  data,
  createSession,
  getResult,
});

// Records who created each session, so only they can read its result.
const sessions = new TableV2(backend.createStack("LivenessSessions"), "Sessions", {
  partitionKey: { name: "sessionId", type: AttributeType.STRING },
  timeToLiveAttribute: "expiresAt",
  removalPolicy: RemovalPolicy.DESTROY,
});
sessions.grantWriteData(backend.createSession.resources.lambda);
sessions.grantReadData(backend.getResult.resources.lambda);
for (const fn of [backend.createSession, backend.getResult]) {
  fn.addEnvironment("SESSIONS_TABLE_NAME", sessions.tableName);
}

backend.createSession.resources.lambda.addToRolePolicy(
  new PolicyStatement({
    actions: ["rekognition:CreateFaceLivenessSession"],
    resources: ["*"],
  }),
);
backend.getResult.resources.lambda.addToRolePolicy(
  new PolicyStatement({
    actions: ["rekognition:GetFaceLivenessSessionResults"],
    resources: ["*"],
  }),
);

// Lets signed-in users stream video for a session (aws_face_liveness start()).
backend.auth.resources.authenticatedUserIamRole.addToPrincipalPolicy(
  new PolicyStatement({
    actions: ["rekognition:StartFaceLivenessSession"],
    resources: ["*"],
  }),
);
