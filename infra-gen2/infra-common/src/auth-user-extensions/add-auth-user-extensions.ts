import { Backend } from "@aws-amplify/backend";
import { addCreateUserLambda } from "./add-create-user-lambda";
import { addCustomEmailSenderLambda } from "./add-custom-email-sender-lambda";
import { addUserGraphql } from "./add-user-graphql";

export const addAuthUserExtensions = (backend: Backend<{ auth: any }>): void => {
  const stack = backend.createStack("CustomResources");
  const userPool = backend.auth.resources.userPool;
  const graphQL = addUserGraphql(stack);
  addCustomEmailSenderLambda(stack, { graphQL });
  addCreateUserLambda(stack, { userPool, graphQL });
  backend.addOutput({
    data: {
      aws_region: stack.region,
      url: graphQL.graphqlUrl,
      api_key: graphQL.apiKey,
      default_authorization_type: "API_KEY",
      authorization_types: [],
    },
  });
}
