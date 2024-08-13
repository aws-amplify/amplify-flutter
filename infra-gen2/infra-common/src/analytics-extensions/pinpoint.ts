import { IRole, Policy, PolicyStatement } from "aws-cdk-lib/aws-iam";
import { CfnApp } from "aws-cdk-lib/aws-pinpoint";
import { Stack } from "aws-cdk-lib/core";

export function createPinpointApp(
  name: string,
  stack: Stack,
  pinpointRole: IRole,
  unauthPinpointRole?: IRole
) {
  const pinpointApp = new CfnApp(stack, "PinpointApp", {
    name: name,
  });

  const pinpointPolicy = new Policy(stack, "PinpointPolicy", {
    policyName: "PinpointPolicy",
    statements: [
      new PolicyStatement({
        actions: [
          "mobiletargeting:UpdateEndpoint",
          "mobiletargeting:PutEvents",
        ],
        resources: [pinpointApp.attrArn + "/*"],
      }),
    ],
  });

  pinpointRole.attachInlinePolicy(pinpointPolicy);

  if (unauthPinpointRole) {
    unauthPinpointRole.attachInlinePolicy(pinpointPolicy);
  }

  return pinpointApp;
}
