import { BackendBase } from "@aws-amplify/backend";
import { Stack } from "aws-cdk-lib";
import { IRole } from "aws-cdk-lib/aws-iam";
import { createAppSyncAPI } from "./data";
import { createKinesisStream } from "./kinesis";
import { createPinpointApp } from "./pinpoint";

type AmplifyOutputs = Parameters<BackendBase["addOutput"]>[0];

export const addAnalyticsExtensions = ({
  name,
  stack,
  authenticatedRole,
  unauthenticatedRole,
}: {
  name: string;
  stack: Stack;
  authenticatedRole: IRole;
  unauthenticatedRole?: IRole;
}): AmplifyOutputs => {
  const pinpointApp = createPinpointApp(
    name,
    stack,
    authenticatedRole,
    unauthenticatedRole
  );

  const kinesisStream = createKinesisStream(name, stack, pinpointApp);

  const graphQLApi = createAppSyncAPI(name, stack, kinesisStream);

  return {
    analytics: {
      amazon_pinpoint: {
        app_id: pinpointApp.ref,
        aws_region: Stack.of(pinpointApp).region,
      },
    },
    data: {
      aws_region: stack.region,
      url: graphQLApi.graphqlUrl,
      api_key: graphQLApi.apiKey,
      default_authorization_type: "API_KEY",
      authorization_types: [],
    },
  };
};
