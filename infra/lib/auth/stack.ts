// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cdk from "aws-cdk-lib";
import { Duration, Expiration, Fn, RemovalPolicy } from "aws-cdk-lib";
import * as appsync from "aws-cdk-lib/aws-appsync";
import * as cognito from "aws-cdk-lib/aws-cognito";
import * as dynamodb from "aws-cdk-lib/aws-dynamodb";
import * as iam from "aws-cdk-lib/aws-iam";
import * as kms from "aws-cdk-lib/aws-kms";
import * as lambda from "aws-cdk-lib/aws-lambda";
import * as lambda_nodejs from "aws-cdk-lib/aws-lambda-nodejs";
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
   * Associates `resourceArn` with the shared WAF.
   */
  associateWithWaf: (name: string, resourceArn: string) => void;

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

  /**
   * Whether Hosted UI is enabled.
   *
   * @default false
   */
  enableHostedUI?: boolean;
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
    super({
      scope,
      category: AmplifyCategory.Auth,
      environments,
      props,
    });
  }

  protected buildEnvironments(
    props: AuthIntegrationTestStackEnvironmentProps[]
  ): AuthIntegrationTestStackEnvironment[] {
    return props.map((environment) => {
      switch (environment.type) {
        case "FULL":
          return new AuthIntegrationTestStackEnvironment(
            this,
            this.baseName,
            environment
          );
        case "CUSTOM_AUTHORIZER_USER_POOLS":
          return new CustomAuthorizerUserPoolsStackEnvironment(
            this,
            this.baseName,
            environment
          );
        case "CUSTOM_AUTHORIZER_IAM":
          return new CustomAuthorizerIamStackEnvironment(
            this,
            this.baseName,
            environment
          );
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

    const { associateWithWaf, enableHostedUI = false } = props;

    // Create the GraphQL API for admin actions

    const authorizationType = appsync.AuthorizationType.API_KEY;
    const graphQLApi = new appsync.GraphqlApi(this, "GraphQLApi", {
      name: this.name,
      schema: appsync.SchemaFile.fromAsset(
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
        runtime: lambda.Runtime.NODEJS_18_X,
      }
    );

    const defineAuthChallenge = new lambda_nodejs.NodejsFunction(
      this,
      "define-auth-challenge",
      {
        runtime: lambda.Runtime.NODEJS_18_X,
      }
    );

    const verifyAuthChallengeResponse = new lambda_nodejs.NodejsFunction(
      this,
      "verify-auth-challenge",
      {
        runtime: lambda.Runtime.NODEJS_18_X,
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
        runtime: lambda.Runtime.NODEJS_18_X,
        bundling: {
          nodeModules: ["@aws-crypto/client-node"],
        },
        environment: {
          GRAPHQL_API_ENDPOINT: graphQLApi.graphqlUrl,
          GRAPHQL_API_KEY: graphQLApi.apiKey!,
          KMS_KEY_ARN: customSenderKmsKey.keyArn,
        },
      }
    );
    graphQLApi.grantMutation(customSmsSender);
    customSenderKmsKey.grantDecrypt(customSmsSender);

    const customEmailSender = new lambda_nodejs.NodejsFunction(
      this,
      "custom-email-sender",
      {
        runtime: lambda.Runtime.NODEJS_18_X,
        bundling: {
          nodeModules: ["@aws-crypto/client-node"],
        },
        environment: {
          GRAPHQL_API_ENDPOINT: graphQLApi.graphqlUrl,
          GRAPHQL_API_KEY: graphQLApi.apiKey!,
          KMS_KEY_ARN: customSenderKmsKey.keyArn,
        },
      }
    );
    graphQLApi.grantMutation(customEmailSender);
    customSenderKmsKey.grantDecrypt(customEmailSender);

    // Create the Cognito User Pool

    const userPool = new cognito.UserPool(this, "UserPool", {
      userPoolName: this.name,
      removalPolicy: RemovalPolicy.DESTROY,
      selfSignUpEnabled: true,
      accountRecovery: cognito.AccountRecovery.EMAIL_AND_PHONE_WITHOUT_MFA,
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
        customEmailSender,
      },
      customSenderKmsKey,
      deviceTracking: props.deviceTracking,
    });

    let oAuth: cognito.OAuthSettings | undefined;
    let webDomain: cognito.UserPoolDomain | undefined;
    const signInRedirectUris = [
      "authtest:/",
      "http://localhost:3000/",
    ];
    const signOutRedirectUris = [
      "authtest:/",
      "http://localhost:3000/",
    ];
    const scopes = [
      cognito.OAuthScope.PHONE,
      cognito.OAuthScope.EMAIL,
      cognito.OAuthScope.OPENID,
      cognito.OAuthScope.PROFILE,
      cognito.OAuthScope.COGNITO_ADMIN,
    ];
    if (enableHostedUI) {
      oAuth = {
        flows: {
          authorizationCodeGrant: true,
          implicitCodeGrant: false,
          clientCredentials: false,
        },
        callbackUrls: signInRedirectUris,
        logoutUrls: signOutRedirectUris,
        scopes,
      };
      webDomain = userPool.addDomain("Domain", {
        cognitoDomain: {
          // Construct a unique domain prefix so that it does not conflict with other projects.
          domainPrefix: Fn.join("-", [
            this.environmentName,
            // https://stackoverflow.com/questions/54897459/how-to-set-semi-random-name-for-s3-bucket-using-cloud-formation
            Fn.select(0, Fn.split("-", Fn.select(2, Fn.split("/", this.stackId)))),
          ]),
        },
      });
    }
    const disableOAuth = !enableHostedUI;
    const userPoolClient = userPool.addClient("UserPoolClient", {
      authFlows: {
        userSrp: true,
        custom: true,
      },
      disableOAuth,
      oAuth,
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

    associateWithWaf(`${this.environmentName}GraphQL`, graphQLApi.arn);
    associateWithWaf(`${this.environmentName}UserPool`, userPool.userPoolArn);

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
        runtime: lambda.Runtime.NODEJS_18_X,
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
        runtime: lambda.Runtime.NODEJS_18_X,
        environment: {
          USER_POOL_ID: userPool.userPoolId,
        },
      }
    );
    userPool.grant(deleteUserLambda, "cognito-idp:AdminDeleteUser");

    const deleteDeviceLambda = new lambda_nodejs.NodejsFunction(
      this,
      "delete-device",
      {
        runtime: lambda.Runtime.NODEJS_18_X,
        environment: {
          USER_POOL_ID: userPool.userPoolId,
        },
      }
    );
    userPool.grant(deleteDeviceLambda, "cognito-idp:AdminForgetDevice");

    // Add the GraphQL resolvers

    const mfaCodesSource = graphQLApi.addDynamoDbDataSource(
      "GraphQLApiMFACodes",
      mfaCodesTable
    );

    // Mutation.createMFACode
    mfaCodesSource.createResolver("MutationCreateMFACodeResolver", {
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
    mfaCodesSource.createResolver("QueryListMFACodesResolver", {
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
    createUserSource.createResolver("MutationCreateUserResolver", {
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
    deleteUserSource.createResolver("MutationDeleteUserResolver", {
      typeName: "Mutation",
      fieldName: "deleteUser",
      requestMappingTemplate: appsync.MappingTemplate.lambdaRequest(),
      responseMappingTemplate: appsync.MappingTemplate.lambdaResult(),
    });

    // Mutation.deleteDevice
    const deleteDeviceSource = graphQLApi.addLambdaDataSource(
      "GraphQLApiDeleteDeviceLambda",
      deleteDeviceLambda
    );
    deleteDeviceSource.createResolver("MutationDeleteDeviceResolver", {
      typeName: "Mutation",
      fieldName: "deleteDevice",
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

    if (webDomain) {
      this.config.authConfig!.hostedUiConfig = {
        webDomain: webDomain.baseUrl(),
        signInRedirectUris,
        signOutRedirectUris,
        scopes: scopes.map((scope) => scope.scopeName),
      };
    }
  }
}
