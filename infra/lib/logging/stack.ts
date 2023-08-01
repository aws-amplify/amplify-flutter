import { Construct } from "constructs";
import { IntegrationTestStackEnvironment, IntegrationTestStackEnvironmentProps } from "../common";
import * as cdk from "aws-cdk-lib"
import * as logs from "aws-cdk-lib/aws-logs"
import * as path from "path"
import * as iam from "aws-cdk-lib/aws-iam"
import * as cognito_identity from "@aws-cdk/aws-cognito-identitypool-alpha";

export class LoggingIntegrationTestStackEnvironment extends IntegrationTestStackEnvironment<IntegrationTestStackEnvironmentProps> {
    constructor(
        scope: Construct,
        baseName: string,
        props: IntegrationTestStackEnvironmentProps,
    ) {
        super(scope, baseName, props);

        const region = cdk.Stack.of(this).region
        const account = cdk.Stack.of(this).account

        const logGroup = new logs.LogGroup(this, 'Log Group', {
                retention: logs.RetentionDays.INFINITE
            })

        const identityPool = new cognito_identity.IdentityPool(this, "IdentityPool", {
                allowUnauthenticatedIdentities: true,
            });
        
        const authRole = identityPool.authenticatedRole;
        const unAuthRole = identityPool.unauthenticatedRole;

        const logResource = `arn:aws:logs:${region}:${account}:log-group:${logGroup.logGroupName}:log-stream:*`
        const logIAMPolicy = new iam.PolicyStatement({
            effect: iam.Effect.ALLOW,
            resources: [logResource],
            actions: ["logs:PutLogEvents", "logs:DescribeLogStreams", "logs:CreateLogStream"]
        })

        authRole.addToPrincipalPolicy(logIAMPolicy)
        unAuthRole.addToPrincipalPolicy(logIAMPolicy)

        new cdk.CfnOutput(this, 'CloudWatchLogGroupName', { value: logGroup.logGroupName });
        new cdk.CfnOutput(this, 'CloudWatchRegion', { value: region });
    }

}
