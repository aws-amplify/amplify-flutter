import { a, defineData, type ClientSchema } from "@aws-amplify/backend";
import { liveness } from "../functions/liveness/resource";

const schema = a.schema({
  LivenessSession: a.customType({
    sessionId: a.string().required(),
    region: a.string().required(),
  }),
  LivenessResult: a.customType({
    status: a.string().required(),
    confidence: a.float(),
  }),
  createLivenessSession: a
    .query()
    .returns(a.ref("LivenessSession"))
    .authorization((allow) => [allow.authenticated()])
    .handler(a.handler.function(liveness)),
  getLivenessResult: a
    .query()
    .arguments({ sessionId: a.string().required() })
    .returns(a.ref("LivenessResult"))
    .authorization((allow) => [allow.authenticated()])
    .handler(a.handler.function(liveness)),
});

export type Schema = ClientSchema<typeof schema>;

export const data = defineData({
  schema,
  authorizationModes: {
    defaultAuthorizationMode: "userPool",
  },
});
