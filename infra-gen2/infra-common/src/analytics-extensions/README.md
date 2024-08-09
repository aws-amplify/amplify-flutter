# analytics-extensions

This directory contains extensions for the analytics backend, including:

- Setting up Pinpoint
- Setting up a Kinesis Data stream and configure Pinpoint to stream events to it
- Create a Records table to store events from the Kinesis stream
- Create the GraphQL API to which we will publish Kinesis records
- Create the Kinesis consumer Lambda which will capture events from the Kinesis Data Stream and forward them to AppSync.
