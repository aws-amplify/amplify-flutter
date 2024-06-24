// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { defineBackend } from "@aws-amplify/backend";
import { addCreateUserLambda } from "../../common/create-user";
import { addCustomEmailSenderLambda } from "../../common/custom-email-sender";
import { addUserGraphql } from "../../common/user-graphql";
import { auth } from "./auth/resource";

const backend = defineBackend({
  auth,
});

const stack = backend.createStack("CustomResources");
const userPool = backend.auth.resources.userPool;
const graphQL = addUserGraphql(stack);
addCustomEmailSenderLambda(stack, { graphQL });
addCreateUserLambda(stack, { userPool, graphQL });
backend.addOutput({
  data: {
    aws_region: stack.region,
    url: graphQL.graphqlUrl,
    api_key: graphQL.apiKey,
    default_authorization_type: "API_KEY",
  },
});
