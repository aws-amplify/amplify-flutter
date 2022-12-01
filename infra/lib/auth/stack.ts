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

import * as appsync from "@aws-cdk/aws-appsync-alpha";
import * as cdk from "aws-cdk-lib";
import { Duration, Expiration, RemovalPolicy } from "aws-cdk-lib";
import * as cognito from "aws-cdk-lib/aws-cognito";
import * as dynamodb from "aws-cdk-lib/aws-dynamodb";
import * as iam from "aws-cdk-lib/aws-iam";
import * as kms from "aws-cdk-lib/aws-kms";
import * as lambda from "aws-cdk-lib/aws-lambda";
import * as lambda_nodejs from "aws-cdk-lib/aws-lambda-nodejs";
import * as wafv2 from "aws-cdk-lib/aws-wafv2";
import { Construct } from "constructs";
import * as path from "path";
import {
  AmplifyCategory,
  IntegrationTestStack,
  IntegrationTestStackEnvironment,
  IntegrationTestStackEnvironmentProps
} from "../common";
import { CustomAuthorizerIamStackEnvironment } from "./custom-authorizer-iam/stack";
import { CustomAuthorizerUserPoolsStackEnvironment } from "./custom-authorizer-user-pools/stack";

export type AuthIntegrationEnvironmentType =
  | "FULL"
  | "CUSTOM_AUTHORIZER_USER_POOLS"
  | "CUSTOM_AUTHORIZER_IAM";

export type AuthIntegrationTestStackEnvironmentProps =
  AuthBaseEnvironmentProps &
    (AuthFullEnvironmentProps | AuthCustomAuthorizerEnvironmentProps);

export interface AuthBaseEnvironmentProps
  extends IntegrationTestStackEnvironmentProps {
  /**
   * The shared WAF.
   */
  waf: wafv2.CfnWebACL;

  /**
   * The type of environment to build.
   */
  type: AuthIntegrationEnvironmentType;
}

export interface AuthFullEnvironmentProps {
  type: "FULL";

  /**
   * The Cognito User Pool device tracking settings.
   */
  deviceTracking?: cognito.DeviceTracking;

  /**
   * Aliases allowed for sign in.
   */
  signInAliases?: cognito.SignInAliases;
}

export interface AuthCustomAuthorizerEnvironmentProps {
  type: "CUSTOM_AUTHORIZER_USER_POOLS" | "CUSTOM_AUTHORIZER_IAM";

  /**
   * The custom domain name to use for the API Gateway.
   *
   * Must exist in the account already.
   */
  customDomain?: string;
}

export class AuthIntegrationTestStack extends IntegrationTestStack<
  AuthIntegrationTestStackEnvironmentProps,
  AuthIntegrationTestStackEnvironment
> {
  constructor(
    scope: Construct,
    environments: AuthIntegrationTestStackEnvironmentProps[],
    props?: cdk.NestedStackProps
  ) {
    super(scope, AmplifyCategory.Auth, environments, props);
  }

  protected buildEnvironments(
    props: AuthIntegrationTestStackEnvironmentProps[]
  ): AuthIntegrationTestStackEnvironment[] {
    return props.map((environment) => {
      switch (environment.type) {
        case "FULL":
          return new AuthIntegrationTestStackEnvironment(this, this.baseName, environment);
        case "CUSTOM_AUTHORIZER_USER_POOLS":
          return new CustomAuthorizerUserPoolsStackEnvironment(
            this,
            this.baseName,
            environment
          );
        case "CUSTOM_AUTHORIZER_IAM":
          return new CustomAuthorizerIamStackEnvironment(this, this.baseName, environment);
      }
    });
  }
}

class AuthIntegrationTestStackEnvironment extends IntegrationTestStackEnvironment<AuthIntegrationTestStackEnvironmentProps> {
  constructor(
    scope: Construct,
    baseName: string,
    props: AuthBaseEnvironmentProps & AuthFullEnvironmentProps
  ) {
    super(scope, baseName, props);

    const { waf } = props;

    // Create the GraphQL API for admin actions

    const authorizationType = appsync.AuthorizationType.API_KEY;
    const graphQLApi = new appsync.GraphqlApi(this, "GraphQLApi", {
      name: this.name,
      schema: appsync.Schema.fromAsset(
        path.resolve(__dirname, "schema.graphql")
      ),
      authorizationConfig: {
        defaultAuthorization: {
          authorizationType,
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
      description: `Key for encrypting/decrypting SMS messages sent from ${this.name} user pool`,
      removalPolicy: RemovalPolicy.DESTROY,
      alias: this.name,
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
      userPoolName: this.name,
      removalPolicy: RemovalPolicy.DESTROY,
      selfSignUpEnabled: true,
      accountRecovery: cognito.AccountRecovery.NONE,
      autoVerify: {
        email: true,
        phone: true,
      },
      mfa: cognito.Mfa.OPTIONAL,
      signInAliases: props.signInAliases,
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
      identityPoolName: this.name,
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

    // Output the values needed to build our Amplify configuration.

    this.config = {
      apiConfig: {
        apis: {
          [graphQLApi.name]: {
            endpointType: "GraphQL",
            endpoint: graphQLApi.graphqlUrl,
            authorizationType,
            apiKey: graphQLApi.apiKey,
          },
        },
      },
      authConfig: {
        userPoolConfig: {
          userPoolId: userPool.userPoolId,
          userPoolClientId: userPoolClient.userPoolClientId,
        },
        identityPoolConfig: {
          identityPoolId: identityPool.ref,
        },
      },
    };
  }
}
