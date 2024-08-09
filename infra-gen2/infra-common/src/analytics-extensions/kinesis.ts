import * as iam from "aws-cdk-lib/aws-iam";
import * as kinesis from "aws-cdk-lib/aws-kinesis";
import { CfnApp, CfnEventStream } from "aws-cdk-lib/aws-pinpoint";
import { Stack } from "aws-cdk-lib/core";

export function createKinesisStream(
  name: string,
  stack: Stack,
  pinpointApp: CfnApp
) {
  const kinesisStream = new kinesis.Stream(stack, "KinesisStream" + name, {
    shardCount: 1,
  });

  // Necessary IAM permissions are described here:
  // https://docs.aws.amazon.com/pinpoint/latest/developerguide/permissions-streams.html
  const eventStreamRole = new iam.Role(stack, "EventStreamRole", {
    assumedBy: new iam.ServicePrincipal("pinpoint.amazonaws.com", {
      conditions: {
        StringEquals: {
          "aws:SourceAccount": Stack.of(stack).account,
        },
        ArnLike: {
          "aws:SourceArn": pinpointApp.attrArn,
        },
      },
    }),
    inlinePolicies: {
      "pinpoint-export-to-kinesis": new iam.PolicyDocument({
        statements: [
          new iam.PolicyStatement({
            effect: iam.Effect.ALLOW,
            actions: ["kinesis:PutRecords", "kinesis:DescribeStream"],
            resources: [kinesisStream.streamArn],
          }),
        ],
      }),
    },
  });

  new CfnEventStream(stack, "PinPointEventStream", {
    applicationId: pinpointApp.ref,
    destinationStreamArn: kinesisStream.streamArn,
    roleArn: eventStreamRole.roleArn,
  });

  return kinesisStream;
}
