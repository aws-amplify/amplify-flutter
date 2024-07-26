import { BackendBase } from "@aws-amplify/backend";
import { Stack } from "aws-cdk-lib";
import { IRole, Policy } from "aws-cdk-lib/aws-iam";
import { CfnApp } from "aws-cdk-lib/aws-pinpoint";
import { createAppSyncAPI } from "./data";
import { createKinesisStream } from "./kinesis";
import { createPinpointApp } from "./pinpoint";

type AmplifyOutputs = Parameters<BackendBase["addOutput"]>[0];

export const addAnalyticsExtensions = ({
  stack,
  authenticatedRole,
  unauthenticatedRole,
}: {
  stack: Stack;
  pinpoint: CfnApp;
  pinpointPolicy: Policy;
  authenticatedRole: IRole;
  unauthenticatedRole: IRole;
}): AmplifyOutputs => {
  const pinpointApp = createPinpointApp(
    "analytics-main",
    stack,
    authenticatedRole,
    unauthenticatedRole
  );

  const kinesisStream = createKinesisStream(stack, pinpointApp);

  const graphQLApi = createAppSyncAPI(stack, kinesisStream);

  return {
    analytics: {
      amazon_pinpoint: {
        app_id: pinpointApp.ref,
        aws_region: Stack.of(pinpointApp).region,
      },
    },
  };
};
