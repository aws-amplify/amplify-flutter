// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import type * as lambda from "aws-lambda";

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
      "Content-Type": "application/json",
    },
  };
};
