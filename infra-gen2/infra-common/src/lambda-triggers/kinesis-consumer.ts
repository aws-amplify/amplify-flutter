// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import type { KinesisStreamEvent, KinesisStreamHandler } from "aws-lambda";
import fetch from "node-fetch";

const GRAPHQL_API_ENDPOINT = process.env.GRAPHQL_API_ENDPOINT!;
const GRAPHQL_API_KEY = process.env.GRAPHQL_API_KEY!;

export const handler: KinesisStreamHandler = async (
  event: KinesisStreamEvent
) => {
  console.log(`Got event: ${JSON.stringify(event, null, 2)}`);

  await Promise.all(
    event.Records.map(async (record) => {
      const payload = Buffer.from(record.kinesis.data, "base64").toString(
        "ascii"
      );
      console.log(`Got record: ${JSON.stringify(record, null, 2)}`);
      console.log(`Decoded payload: ${payload}`);

      try {
        const resp = await fetch(GRAPHQL_API_ENDPOINT, {
          method: "POST",
          headers: {
            "x-api-key": GRAPHQL_API_KEY,
          },
          body: JSON.stringify({
            query: `
                mutation CreateRecord($id: ID!, $payload: String!) {
                    createRecord(input: {
                        id: $id
                        payload: $payload
                    }) {
                        id
                        payload
                    }
                }
            `,
            variables: {
              id: record.eventID,
              payload: payload,
            },
          }),
        });
        const json = await resp.json();
        console.log(
          `Successfully forwarded event ${record.eventID}: ${JSON.stringify(
            json,
            null,
            2
          )}`
        );
      } catch (error) {
        console.error("Could not POST to GraphQL endpoint: ", error);
      }
    })
  );
};
