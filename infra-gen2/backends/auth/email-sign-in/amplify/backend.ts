// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { defineBackend } from "@aws-amplify/backend";
import { addUserGraphql } from "../../common/user-graphql";
import { auth } from "./auth/resource";

const backend = defineBackend({
  auth,
});

const stack = backend.createStack("CustomResources");
addUserGraphql(stack);
