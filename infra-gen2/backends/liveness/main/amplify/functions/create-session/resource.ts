import { defineFunction } from "@aws-amplify/backend";

export const createSession = defineFunction({
  name: "create-liveness-session",
  entry: "./handler.ts",
});
