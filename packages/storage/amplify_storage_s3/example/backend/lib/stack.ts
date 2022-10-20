/**
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import * as cdk from "aws-cdk-lib";
import { Construct } from "constructs";
import * as cognito from "aws-cdk-lib/aws-cognito";
import * as iam from "aws-cdk-lib/aws-iam";
import * as s3 from "aws-cdk-lib/aws-s3";
import { CfnOutput, Fn, RemovalPolicy } from "aws-cdk-lib";

enum StorageAccessLevel {
  public,
  protected,
  private,
}

enum StoragePermission {
  get = "s3:GetObject",
  put = "s3:PutObject",
  delete = "s3:DeleteObject",
}

interface StorageIntgrationTestEnvironmentProps {
  /**
   * The name for the environment.
   */
  environmentName: string;

  /**
   * The default access level for the environment.
   */
  defaultAccessLevel?: StorageAccessLevel;

  /**
   * The access levels and accompanying permissions.
   */
  accessLevels?: Record<StorageAccessLevel, StoragePermission[]>;

  /**
   * Resolves the bucket key prefix for a given `accessLevel` and `identityId`.
   */
  prefixResolver?: (
    accessLevel: StorageAccessLevel,
    identityId: string
  ) => string;
}

export class StorageIntgrationTestStack extends cdk.Stack {
  static baseName: string = "storageInteg";

  constructor(
    scope: Construct,
    environments: StorageIntgrationTestEnvironmentProps[]
  ) {
    super(scope, "StorageIntegTestStack");

    for (const environment of environments) {
      new StorageIntgrationTestEnvironment(this, environment);
    }

    // S3 bucket to store generated config so that it can be pulled by
    // CI pipelines.

    const bucket = new s3.Bucket(this, "Bucket", {
      // Naming to match Amplify CLI, suffixed with a segment of the stack ID
      // https://github.com/aws-amplify/amplify-ci-support/blob/1abe7f7a1d75fa19675ad8ca17ab625a299b765e/src/integ_test_resources/flutter/amplify/cloudformation_template.yaml#L32
      bucketName: Fn.join("-", [
        `amplify-test-${StorageIntgrationTestStack.baseName.toLowerCase()}`,
        // https://stackoverflow.com/questions/54897459/how-to-set-semi-random-name-for-s3-bucket-using-cloud-formation
        Fn.select(0, Fn.split("-", Fn.select(2, Fn.split("/", this.stackId)))),
      ]),
      removalPolicy: RemovalPolicy.DESTROY,
      autoDeleteObjects: true,
      enforceSSL: true,
    });

    new CfnOutput(this, "BucketName", {
      value: bucket.bucketName,
    });
  }
}

class StorageIntgrationTestEnvironment extends cdk.NestedStack {
  constructor(scope: Construct, props: StorageIntgrationTestEnvironmentProps) {
    super(scope, `StorageIntegTestStack${props.environmentName}`);

    const name = `${StorageIntgrationTestStack.baseName}-${props.environmentName}`;

    // Create the bucket

    const bucket = new s3.Bucket(this, "Bucket", {
      removalPolicy: RemovalPolicy.DESTROY,
      autoDeleteObjects: true,
      enforceSSL: true,
    });

    // Create the Cognito User Pool

    const userPool = new cognito.UserPool(this, "UserPool", {
      userPoolName: name,
      removalPolicy: RemovalPolicy.DESTROY,
      selfSignUpEnabled: true,
      accountRecovery: cognito.AccountRecovery.NONE,
      mfa: cognito.Mfa.OFF,
    });

    const userPoolClient = userPool.addClient("UserPoolClient", {
      authFlows: {
        userSrp: true,
      },
      disableOAuth: true,
    });

    // Create the Cognito Identity Pool

    const identityPool = new cognito.CfnIdentityPool(this, "IdentityPool", {
      identityPoolName: name,
      allowUnauthenticatedIdentities: true,
      cognitoIdentityProviders: [
        {
          clientId: userPoolClient.userPoolClientId,
          providerName: `cognito-idp.${this.region}.amazonaws.com/${userPool.userPoolId}`,
        },
      ],
    });

    const identityId = "${cognito-identity.amazonaws.com:sub}";
    const prefixes: Record<StorageAccessLevel, string> = {
      [StorageAccessLevel.public]: props.prefixResolver
        ? props.prefixResolver(StorageAccessLevel.public, identityId)
        : "public/",
      [StorageAccessLevel.protected]: props.prefixResolver
        ? props.prefixResolver(StorageAccessLevel.protected, identityId)
        : `protected/${identityId}/`,
      [StorageAccessLevel.private]: props.prefixResolver
        ? props.prefixResolver(StorageAccessLevel.private, identityId)
        : `private/${identityId}/`,
    };
    const buildPolicyDocument = (accessLevel: StorageAccessLevel) => {
      let permissions = [
        StoragePermission.get,
        StoragePermission.put,
        StoragePermission.delete,
      ];
      if (props.accessLevels) {
        permissions = props.accessLevels[accessLevel];
      }
      const prefix = prefixes[accessLevel];
      return new iam.PolicyDocument({
        statements: [
          new iam.PolicyStatement({
            actions: permissions,
            resources: [`${bucket.bucketArn}/${prefix}*`],
          }),
        ],
      });
    };

    const unauthenticatedPolicies: Record<string, iam.PolicyDocument> = {
      "read-unauth": new iam.PolicyDocument({
        statements: [
          new iam.PolicyStatement({
            actions: ["s3:ListBucket"],
            conditions: {
              StringLike: {
                "s3:prefix": [
                  `${prefixes[StorageAccessLevel.public]}`,
                  `${prefixes[StorageAccessLevel.public]}*`,
                  `${prefixes[StorageAccessLevel.protected]}`,
                  `${prefixes[StorageAccessLevel.protected]}*`,
                ],
              },
            },
            resources: [bucket.bucketArn],
          }),
        ],
      }),
      public: buildPolicyDocument(StorageAccessLevel.public),
      protected: buildPolicyDocument(StorageAccessLevel.protected),
    };
    const unauthenticatedRole = new iam.Role(this, "UnauthenticatedRole", {
      description: "Default role for anonymous users",
      assumedBy: new iam.FederatedPrincipal(
        "cognito-identity.amazonaws.com",
        {
          StringEquals: {
            "cognito-identity.amazonaws.com:aud": identityPool.ref,
          },
          "ForAnyValue:StringLike": {
            "cognito-identity.amazonaws.com:amr": "unauthenticated",
          },
        },
        "sts:AssumeRoleWithWebIdentity"
      ),
    });

    const authenticatedPolicies: Record<string, iam.PolicyDocument> = {
      ...unauthenticatedPolicies,
      "read-auth": new iam.PolicyDocument({
        statements: [
          new iam.PolicyStatement({
            actions: ["s3:ListBucket"],
            conditions: {
              StringLike: {
                "s3:prefix": [
                  `${prefixes[StorageAccessLevel.private]}`,
                  `${prefixes[StorageAccessLevel.private]}*`,
                ],
              },
            },
            resources: [bucket.bucketArn],
          }),
        ],
      }),
      private: buildPolicyDocument(StorageAccessLevel.private),
    };
    const authenticatedRole = new iam.Role(this, "AuthenticatedRole", {
      description: "Default role for authenticated users",
      assumedBy: new iam.FederatedPrincipal(
        "cognito-identity.amazonaws.com",
        {
          StringEquals: {
            "cognito-identity.amazonaws.com:aud": identityPool.ref,
          },
          "ForAnyValue:StringLike": {
            "cognito-identity.amazonaws.com:amr": "authenticated",
          },
        },
        "sts:AssumeRoleWithWebIdentity"
      ),
      inlinePolicies: authenticatedPolicies,
    });

    new cognito.CfnIdentityPoolRoleAttachment(
      this,
      "IdentityPoolRoleAttachment",
      {
        identityPoolId: identityPool.ref,
        roles: {
          unauthenticated: unauthenticatedRole.roleArn,
          authenticated: authenticatedRole.roleArn,
        },
      }
    );

    // Output the values needed to build our Amplify configuration.

    new CfnOutput(scope, props.environmentName, {
      value: JSON.stringify({
        EnvironmentName: props.environmentName,
        Region: this.region,
        UserPoolId: userPool.userPoolId,
        UserPoolClientId: userPoolClient.userPoolClientId,
        IdentityPoolId: identityPool.ref,
        BucketName: bucket.bucketName,
        DefaultAccessLevel:
          props.defaultAccessLevel || StorageAccessLevel.public,
      }),
    });
  }
}
