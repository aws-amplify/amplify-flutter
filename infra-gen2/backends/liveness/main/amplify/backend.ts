import { defineBackend } from "@aws-amplify/backend";
import { RemovalPolicy } from "aws-cdk-lib";
import { AttributeType, TableV2 } from "aws-cdk-lib/aws-dynamodb";
import { PolicyStatement } from "aws-cdk-lib/aws-iam";
import { auth } from "./auth/resource";
import { data } from "./data/resource";
import { liveness } from "./functions/liveness/resource";

const backend = defineBackend({
  auth,
  data,
  liveness,
});

// Records who created each session, so only they can read its result.
const sessions = new TableV2(backend.createStack("LivenessSessions"), "Sessions", {
  partitionKey: { name: "sessionId", type: AttributeType.STRING },
  timeToLiveAttribute: "expiresAt",
  removalPolicy: RemovalPolicy.DESTROY,
});
sessions.grantReadWriteData(backend.liveness.resources.lambda);
backend.liveness.addEnvironment("SESSIONS_TABLE_NAME", sessions.tableName);

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
