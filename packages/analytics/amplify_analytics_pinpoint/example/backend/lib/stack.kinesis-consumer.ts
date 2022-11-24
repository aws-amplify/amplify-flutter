// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.

import { KinesisStreamEvent, KinesisStreamHandler } from "aws-lambda";
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
