import { BackendBase } from "@aws-amplify/backend";
import { Stack } from "aws-cdk-lib";
import { CfnUserPool, IUserPool } from "aws-cdk-lib/aws-cognito";
import { addCreateUserLambda } from "./create-user-lambda";
import { addCustomSenderLambda } from "./custom-sender-lambda";
import { addDeleteUserLambda } from "./delete-user-lambda";
import { addEnableSmsMfaLambda } from "./enable-sms-mfa-lambda";
import { addUserGraphql } from "./user-graphql";

type AmplifyOutputs = Parameters<BackendBase["addOutput"]>[0];

export const addAuthUserExtensions = ({
  name,
  stack,
  userPool,
  cfnUserPool,
}: {
  name: string;
  stack: Stack;
  userPool: IUserPool;
  cfnUserPool: CfnUserPool;
}): AmplifyOutputs => {
  const graphQL = addUserGraphql(stack);
  addCustomSenderLambda({ name, stack, cfnUserPool, graphQL });
  addCreateUserLambda({ name, stack, userPool, graphQL });
  addDeleteUserLambda({ name, stack, userPool, graphQL });
  addEnableSmsMfaLambda({ name, stack, userPool, graphQL });
  return {
    data: {
      aws_region: stack.region,
      url: graphQL.graphqlUrl,
      api_key: graphQL.apiKey,
      default_authorization_type: "API_KEY",
      authorization_types: [],
    },
  };
};
