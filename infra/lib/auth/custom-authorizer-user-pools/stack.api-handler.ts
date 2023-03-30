// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import type * as lambda from "aws-lambda";
import { CUSTOM_HEADERS } from "../common";

export const handler: lambda.APIGatewayProxyHandler = async (
  event: lambda.APIGatewayProxyEvent
): Promise<lambda.APIGatewayProxyResult> => {
  console.log(`Got event: ${JSON.stringify(event, null, 2)}`);

  const { request } = event.body && JSON.parse(event.body);

  return {
    statusCode: 200,
    body: JSON.stringify({
      response: request,
    }),
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Credentials": "true",
      "Content-Type": "application/json",
      ...Object.fromEntries(Object.entries(event.headers).filter(([key]) => {
        return key.toLowerCase().startsWith('x');
      })),
      ...Object.fromEntries(Object.entries(event.queryStringParameters ?? {}).map(([key, value]) => {
        return [`x-query-${key}`, value ?? ''];
      })),
    },
    multiValueHeaders: {
      "Access-Control-Expose-Headers": CUSTOM_HEADERS,
    }
  };
};
