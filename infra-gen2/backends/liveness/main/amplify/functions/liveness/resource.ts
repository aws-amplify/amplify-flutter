import { defineFunction } from "@aws-amplify/backend";

export const liveness = defineFunction({
  name: "liveness",
  entry: "./handler.ts",
});
