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
import * as lambda from "aws-cdk-lib/aws-lambda";
import * as lambda_nodejs from "aws-cdk-lib/aws-lambda-nodejs";
import * as s3 from "aws-cdk-lib/aws-s3";
import * as appsync from "@aws-cdk/aws-appsync-alpha";
import * as dynamodb from "aws-cdk-lib/aws-dynamodb";
import * as kms from "aws-cdk-lib/aws-kms";
import * as wafv2 from "aws-cdk-lib/aws-wafv2";
import * as waf_regional from "aws-cdk-lib/aws-waf";
import {
  CfnOutput,
  Duration,
  Expiration,
  Fn,
  RemovalPolicy,
} from "aws-cdk-lib";
import * as path from "path";

interface AuthIntegrationTestStackProps extends cdk.StackProps {
  /**
   * The name for the environment.
   *
   * @default "main"
   */
  environmentName: string;

  /**
   * The Cognito User Pool device tracking settings.
   */
  deviceTracking?: cognito.DeviceTracking;
}

export class AuthIntegrationTestStack extends cdk.Stack {
  constructor(
    scope: Construct,
    props: AuthIntegrationTestStackProps = { environmentName: "main" }
  ) {
    super(scope, `AuthIntegrationTestStack-${props.environmentName}`, props);

    const baseName = "authInteg";
    const name = `${baseName}-${props.environmentName}`;

    // Create the GraphQL API for admin actions

    const graphQLApi = new appsync.GraphqlApi(this, "GraphQLApi", {
      name,
      schema: appsync.Schema.fromAsset(
        path.resolve(__dirname, "schema.graphql")
      ),
      authorizationConfig: {
        defaultAuthorization: {
          authorizationType: appsync.AuthorizationType.API_KEY,
          apiKeyConfig: {
            expires: Expiration.after(Duration.days(365)),
          },
        },
      },
      logConfig: {
        fieldLogLevel: appsync.FieldLogLevel.ALL,
        excludeVerboseContent: false,
      },
    });

    // Create the Custom Auth handlers

    const createAuthChallenge = new lambda_nodejs.NodejsFunction(
      this,
      "create-auth-challenge",
      {
        runtime: lambda.Runtime.NODEJS_16_X,
      }
    );

    const defineAuthChallenge = new lambda_nodejs.NodejsFunction(
      this,
      "define-auth-challenge",
      {
        runtime: lambda.Runtime.NODEJS_16_X,
      }
    );

    const verifyAuthChallengeResponse = new lambda_nodejs.NodejsFunction(
      this,
      "verify-auth-challenge",
      {
        runtime: lambda.Runtime.NODEJS_16_X,
      }
    );

    // Create Custom SMS handler + KMS key

    const customSenderKmsKey = new kms.Key(this, "CustomSenderKey", {
      description: `Key for encrypting/decrypting SMS messages sent from ${name} user pool`,
      removalPolicy: RemovalPolicy.DESTROY,
      alias: name,
    });

    const customSmsSender = new lambda_nodejs.NodejsFunction(
      this,
      "custom-sms-sender",
      {
        runtime: lambda.Runtime.NODEJS_16_X,
        environment: {
          GRAPHQL_API_ENDPOINT: graphQLApi.graphqlUrl,
          GRAPHQL_API_KEY: graphQLApi.apiKey!,
          KMS_KEY_ARN: customSenderKmsKey.keyArn,
        },
      }
    );
    graphQLApi.grantMutation(customSmsSender);
    customSenderKmsKey.grantDecrypt(customSmsSender);

    // Create the Cognito User Pool

    const userPool = new cognito.UserPool(this, "UserPool", {
      userPoolName: name,
      removalPolicy: RemovalPolicy.DESTROY,
      selfSignUpEnabled: true,
      accountRecovery: cognito.AccountRecovery.NONE,
      autoVerify: {
        email: true,
        phone: true,
      },
      mfa: cognito.Mfa.OPTIONAL,
      standardAttributes: {
        email: {
          mutable: true,
          required: true,
        },
        phoneNumber: {
          mutable: true,
          required: true,
        },
      },
      lambdaTriggers: {
        createAuthChallenge,
        defineAuthChallenge,
        verifyAuthChallengeResponse,
        customSmsSender,
      },
      customSenderKmsKey,
      deviceTracking: props.deviceTracking,
    });

    const userPoolClient = userPool.addClient("UserPoolClient", {
      authFlows: {
        userSrp: true,
        custom: true,
      },
      disableOAuth: true,
    });

    // Create the Cognito Identity Pool
    //
    // Add stub unauthenticated/authenticated roles since these are needed by
    // the user pool.

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

    // Create a Web Application Firewall (WAF) and attach it to the AppSync API and User Pool

    const waf = new wafv2.CfnWebACL(this, "WAF", {
      name,
      scope: "REGIONAL",
      defaultAction: {
        allow: {},
      },
      rules: [
        // AWS IP Reputation list includes known malicious actors/bots and is regularly updated
        // https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-ip-rep.html#aws-managed-rule-groups-ip-rep-amazon
        {
          name: "AWS-AWSManagedRulesAmazonIpReputationList",
          priority: 0,
          statement: {
            managedRuleGroupStatement: {
              vendorName: "AWS",
              name: "AWSManagedRulesAmazonIpReputationList",
            },
          },
          overrideAction: {
            none: {},
          },
          visibilityConfig: {
            sampledRequestsEnabled: true,
            cloudWatchMetricsEnabled: true,
            metricName: "AWS-AWSManagedRulesAmazonIpReputationList",
          },
        },

        // Anonymous IP list blocks IP addresses from obscuring services like VPNs/proxies
        // https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-ip-rep.html#aws-managed-rule-groups-ip-rep-anonymous
        {
          name: "AWS-AWSManagedRulesAnonymousIpList",
          priority: 10,
          statement: {
            managedRuleGroupStatement: {
              vendorName: "AWS",
              name: "AWSManagedRulesAnonymousIpList",
            },
          },
          overrideAction: {
            none: {},
          },
          visibilityConfig: {
            sampledRequestsEnabled: true,
            cloudWatchMetricsEnabled: true,
            metricName: "AWS-AWSManagedRulesAnonymousIpList",
          },
        },

        // Basic rate limiting to prevent overuse of endpoints
        {
          name: "RateLimit",
          priority: 30,
          action: {
            block: {}
          },
          statement: {
            rateBasedStatement: {
              aggregateKeyType: "IP",
              // The number of requests which can be performed by
              // a single IP in a 5-minute window.
              limit: 1000,
            }
          },
          visibilityConfig: {
            sampledRequestsEnabled: true,
            cloudWatchMetricsEnabled: true,
            metricName: "RateLimit",
          },
        }
      ],
      visibilityConfig: {
        sampledRequestsEnabled: false,
        cloudWatchMetricsEnabled: true,
        metricName: "WAFViolations",
      },
    });

    new wafv2.CfnWebACLAssociation(this, "WAFAppSyncAssociation", {
      resourceArn: graphQLApi.arn,
      webAclArn: waf.attrArn,
    });

    new wafv2.CfnWebACLAssociation(this, "WAFCognitoAssociation", {
      resourceArn: userPool.userPoolArn,
      webAclArn: waf.attrArn,
    });

    // Create the DynamoDB table to store MFA codes for AppSync subscriptions

    const mfaCodesTable = new dynamodb.Table(this, "MFACodesTable", {
      removalPolicy: RemovalPolicy.DESTROY,
      billingMode: dynamodb.BillingMode.PAY_PER_REQUEST,
      partitionKey: {
        type: dynamodb.AttributeType.STRING,
        name: "username",
      },
      sortKey: {
        type: dynamodb.AttributeType.STRING,
        name: "code",
      },
    });

    // Create the Lambdas for the admin actions

    const createUserLambda = new lambda_nodejs.NodejsFunction(
      this,
      "create-user",
      {
        runtime: lambda.Runtime.NODEJS_16_X,
        environment: {
          USER_POOL_ID: userPool.userPoolId,
        },
      }
    );
    userPool.grant(
      createUserLambda,
      "cognito-idp:AdminCreateUser",
      "cognito-idp:AdminSetUserPassword",
      "cognito-idp:AdminSetUserMFAPreference",
      "cognito-idp:AdminUpdateUserAttributes"
    );

    const deleteUserLambda = new lambda_nodejs.NodejsFunction(
      this,
      "delete-user",
      {
        runtime: lambda.Runtime.NODEJS_16_X,
        environment: {
          USER_POOL_ID: userPool.userPoolId,
        },
      }
    );
    userPool.grant(deleteUserLambda, "cognito-idp:AdminDeleteUser");

    // Add the GraphQL resolvers

    const mfaCodesSource = graphQLApi.addDynamoDbDataSource(
      "GraphQLApiMFACodes",
      mfaCodesTable
    );

    // Mutation.createMFACode
    mfaCodesSource.createResolver({
      typeName: "Mutation",
      fieldName: "createMFACode",
      requestMappingTemplate: appsync.MappingTemplate.dynamoDbPutItem(
        new appsync.PrimaryKey(
          new appsync.Assign("username", "$input.username"),
          new appsync.Assign("code", "$input.code")
        ),
        appsync.Values.projecting("input")
      ),
      responseMappingTemplate: appsync.MappingTemplate.dynamoDbResultItem(),
    });

    // Query.listMFACodes
    mfaCodesSource.createResolver({
      typeName: "Query",
      fieldName: "listMFACodes",
      requestMappingTemplate: appsync.MappingTemplate.dynamoDbScanTable(),
      responseMappingTemplate: appsync.MappingTemplate.dynamoDbResultItem(),
    });

    // Mutation.createUser
    const createUserSource = graphQLApi.addLambdaDataSource(
      "GraphQLApiCreateUserLambda",
      createUserLambda
    );
    createUserSource.createResolver({
      typeName: "Mutation",
      fieldName: "createUser",
      requestMappingTemplate: appsync.MappingTemplate.lambdaRequest(),
      responseMappingTemplate: appsync.MappingTemplate.lambdaResult(),
    });

    // Mutation.deleteUser
    const deleteUserSource = graphQLApi.addLambdaDataSource(
      "GraphQLApiDeleteUserLambda",
      deleteUserLambda
    );
    deleteUserSource.createResolver({
      typeName: "Mutation",
      fieldName: "deleteUser",
      requestMappingTemplate: appsync.MappingTemplate.lambdaRequest(),
      responseMappingTemplate: appsync.MappingTemplate.lambdaResult(),
    });

    // S3 bucket to store generated config so that it can be pulled by
    // CI pipelines.

    if (props.environmentName === "main") {
      const bucket = new s3.Bucket(this, "Bucket", {
        // Naming to match Amplify CLI, suffixed with a segment of the stack ID
        // https://github.com/aws-amplify/amplify-ci-support/blob/1abe7f7a1d75fa19675ad8ca17ab625a299b765e/src/integ_test_resources/flutter/amplify/cloudformation_template.yaml#L32
        bucketName: Fn.join("-", [
          `amplify-test-${baseName.toLowerCase()}`,
          // https://stackoverflow.com/questions/54897459/how-to-set-semi-random-name-for-s3-bucket-using-cloud-formation
          Fn.select(
            0,
            Fn.split("-", Fn.select(2, Fn.split("/", this.stackId)))
          ),
        ]),
        removalPolicy: RemovalPolicy.DESTROY,
        autoDeleteObjects: true,
        enforceSSL: true,
      });

      new CfnOutput(this, "BucketName", {
        value: bucket.bucketName,
      });
    }

    // Output the values needed to build our Amplify configuration.

    new CfnOutput(this, "EnvironmentName", {
      value: props.environmentName,
    });

    new CfnOutput(this, "Region", {
      value: this.region,
    });

    new CfnOutput(this, "UserPoolId", {
      value: userPool.userPoolId,
    });

    new CfnOutput(this, "UserPoolClientId", {
      value: userPoolClient.userPoolClientId,
    });

    new CfnOutput(this, "IdentityPoolId", {
      value: identityPool.ref,
    });

    new CfnOutput(this, "GraphQLApiEndpoint", {
      value: graphQLApi.graphqlUrl,
    });

    new CfnOutput(this, "GraphQLApiKey", {
      value: graphQLApi.apiKey!,
    });
  }
}
