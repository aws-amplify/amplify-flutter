/**
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

import { CfnOutput, CustomResource, SecretValue, Stack, StackProps } from "aws-cdk-lib";
import { Construct } from "constructs";
import * as iam from 'aws-cdk-lib/aws-iam';
import * as secrets from 'aws-cdk-lib/aws-secretsmanager';
import * as s3 from 'aws-cdk-lib/aws-s3';
import * as lambda_nodejs from 'aws-cdk-lib/aws-lambda-nodejs';
import * as cr from 'aws-cdk-lib/custom-resources';
import { Runtime } from "aws-cdk-lib/aws-lambda";

export interface GitHubStackProps extends StackProps {
    /**
     * The Analytics configuration bucket.
     */
    analytics: s3.IBucket;

    /**
     * The Auth configuration bucket.
     */
    auth: s3.IBucket;

    /**
     * The Storage configuration bucket.
     */
    storage: s3.IBucket;
}

/**
 * Manages resources and permissions for GitHub Actions to integrate with the E2E resources.
 */
export class GitHubStack extends Stack {
    constructor(scope: Construct, id: string, props: GitHubStackProps) {
        super(scope, id, props);

        const { analytics, auth, storage } = props;

        const appNames = {
            NEXT_API: 'apiIntegMultiAuth',
            API: 'amplifyApiInteg',
            DATASTORE: 'amplifyDataStoreInte',
            CANARY: 'canaries',
        };
        const amplifyApps = new AmplifyApps(this, 'AmplifyApps', { appNames });

        const afsSecrets = new secrets.Secret(this, 'AfsSecrets', {
            secretName: 'afs',
            secretObjectValue: {
                ANALYTICS_BUCKET_NAME: new SecretValue(analytics.bucketName),
                AUTH_BUCKET_NAME: new SecretValue(auth.bucketName),
                STORAGE_BUCKET_NAME: new SecretValue(storage.bucketName),
                ...amplifyApps.appIds,
            }
        });

        // Configures an OIDC provider for GitHub runners to leverage as described in:
        // https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services
        const gitHubProvider = new iam.OpenIdConnectProvider(this, 'GitHubProvider', {
            url: 'https://token.actions.githubusercontent.com',
            clientIds: ['sts.amazonaws.com'],
        });

        const gitHubRole = new iam.Role(this, 'GitHubRole', {
            assumedBy: new iam.OpenIdConnectPrincipal(gitHubProvider, {
                StringLike: {
                    'token.actions.githubusercontent.com:sub': 'repo:aws-amplify/amplify-flutter:*',
                },
                StringEquals: {
                    'token.actions.githubusercontent.com:aud': 'sts.amazonaws.com',
                },
            }),
            inlinePolicies: {
                // Permissions for reading Amplify projects and resources using `amplify pull`.
                AmplifyApps: new iam.PolicyDocument({
                    statements: [
                        new iam.PolicyStatement({
                            sid: 'PullAmplifyConfig',
                            actions: ['amplify:GetApp', 'amplify:GetBackendEnvironment'],
                            resources: [this.formatArn({ service: 'amplify', resource: '*' })],
                        }),
                        new iam.PolicyStatement({
                            sid: 'PullS3Config',
                            actions: ['s3:GetObject', 's3:ListObject'],
                            resources: [
                                this.formatArn({
                                    service: 's3',
                                    account: '',
                                    region: '',
                                    resource: 'amplify-*test*',
                                }),
                            ],
                        }),
                        new iam.PolicyStatement({
                            sid: 'ListCloudFormationStacks',
                            actions: ['cloudformation:ListStackResources'],
                            resources: [this.formatArn({ service: 'cloudformation', resource: '*amplify*test*' })]
                        }),
                    ],
                }),

                // Secrets manager permissions as documented at https://github.com/marketplace/actions/aws-secrets-manager-github-action
                Secrets: new iam.PolicyDocument({
                    statements: [
                        new iam.PolicyStatement({
                            sid: 'ListSecrets',
                            actions: ['secretsmanager:ListSecrets'],
                            resources: [this.formatArn({ service: 'secretsmanager', resource: '*' })],
                        }),
                    ]
                }),

                // TODO(dnys1): Remove when metrics are migrated to CDK
                Metrics: new iam.PolicyDocument({
                    statements: [
                        new iam.PolicyStatement({
                            sid: 'PutMetricData',
                            actions: ['cloudwatch:PutMetricData'],
                            resources: [this.formatArn({ service: 'cloudwatch', resource: '*' })],
                            conditions: {
                                "ForAllValues:StringEqualsIgnoreCase": {
                                    "cloudwatch:namespace": ["GitHubCanaryApps"]
                                },
                            },
                        }),
                    ]
                })
            }
        });

        for (const resource of [analytics, auth, storage, afsSecrets]) {
            resource.grantRead(gitHubRole);
        }

        new CfnOutput(this, 'GitHubRoleArn', {
            value: gitHubRole.roleArn,
        });
    }
}

type AmplifyAppsProps = {
    /**
     * The names of the apps to load app IDs for.
     */
    appNames: Record<string, string>;
}

/**
 * A custom resource for retrieving the Amplify app IDs for the provided app names.
 */
class AmplifyApps extends Construct {
    constructor(scope: Stack, id: string, props: AmplifyAppsProps) {
        super(scope, id);

        const { appNames } = props;

        const listAmplifyAppsFn = new lambda_nodejs.NodejsFunction(this, 'list-amplify-apps', {
            runtime: Runtime.NODEJS_18_X,
        });
        listAmplifyAppsFn.addToRolePolicy(new iam.PolicyStatement({
            actions: ['amplify:ListApps'],
            resources: [scope.formatArn({ service: 'amplify', resource: '*' })],
        }));
        const listAmplifyAppsProvider = new cr.Provider(this, 'AmplifyAppsProvider', {
            onEventHandler: listAmplifyAppsFn,
        });
        const amplifyApps = new CustomResource(this, 'AmplifyApps', {
            serviceToken: listAmplifyAppsProvider.serviceToken,
            properties: {
                appNames,
            },
        });
        this.appIds = Object.fromEntries(
            Object.keys(appNames).map((category) => {
                return [
                    `${category}_APP_ID`,
                    SecretValue.resourceAttribute(amplifyApps.getAttString(category)),
                ];
            }),
        );
    }

    /**
     * The app IDs, as secrets, indexed by their secret key e.g. `API_APP_ID`.
     */
    readonly appIds: Record<string, SecretValue>;
}
