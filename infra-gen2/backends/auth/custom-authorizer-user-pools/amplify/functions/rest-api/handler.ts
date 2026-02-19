// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import type { APIGatewayProxyHandler } from "aws-lambda";

export const handler: APIGatewayProxyHandler = async (event) => {
  console.log(`EVENT: ${JSON.stringify(event)}`);

  // Parse request body
  let responseBody: Record<string, unknown> = {};
  if (event.body) {
    try {
      const body = JSON.parse(event.body);
      if (body.request) {
        responseBody = { response: body.request };
      }
    } catch {
      responseBody = { error: "Invalid JSON" };
    }
  }

  // Build response headers
  const responseHeaders: Record<string, string> = {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "*",
  };

  // Echo back custom headers
  const headers = event.headers || {};
  for (const [key, value] of Object.entries(headers)) {
    const lowerKey = key.toLowerCase();
    if (lowerKey.startsWith("x-")) {
      responseHeaders[lowerKey] = value || "";
    }
  }

  // Echo back query parameters as x-query-{key} headers
  const queryParams = event.queryStringParameters || {};
  for (const [key, value] of Object.entries(queryParams)) {
    responseHeaders[`x-query-${key}`] = value || "";
  }

  return {
    statusCode: 200,
    headers: responseHeaders,
    body: JSON.stringify(responseBody),
  };
};
