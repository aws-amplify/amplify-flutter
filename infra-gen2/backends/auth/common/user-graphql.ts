// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { Stack } from "aws-cdk-lib";
import {
  AuthorizationType,
  FieldLogLevel,
  GraphqlApi,
  SchemaFile,
} from "aws-cdk-lib/aws-appsync";
import path from "path";
import url from "url";
import { inOneYear } from "../../common/expiration";

const __filename = url.fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

export function addUserGraphql(stack: Stack): GraphqlApi {
  const authorizationType = AuthorizationType.API_KEY;
  return new GraphqlApi(stack, "UserGraphqlApi", {
    name: "UserGraphql",
    definition: {
      schema: SchemaFile.fromAsset(
        path.resolve(__dirname, "user-graphql-schema.graphql")
      ),
    },
    authorizationConfig: {
      defaultAuthorization: {
        authorizationType,
        apiKeyConfig: {
          expires: inOneYear(),
        },
      },
    },
    logConfig: {
      fieldLogLevel: FieldLogLevel.ALL,
      excludeVerboseContent: false,
    },
  });
}
