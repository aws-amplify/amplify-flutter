import { defineFunction } from "@aws-amplify/backend";

export const getResult = defineFunction({
  name: "get-liveness-result",
  entry: "./handler.ts",
});
