// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { defineBackend } from "@aws-amplify/backend";
import { addAuthUserExtensions } from "infra-common";
import { auth } from "./auth/resource";

const backend = defineBackend({
  auth,
});

addAuthUserExtensions(backend);
