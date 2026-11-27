import { a, defineData, type ClientSchema } from "@aws-amplify/backend";
import { createSession } from "../functions/create-session/resource";
import { getResult } from "../functions/get-result/resource";

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
    .handler(a.handler.function(createSession)),
  getLivenessResult: a
    .query()
    .arguments({ sessionId: a.string().required() })
    .returns(a.ref("LivenessResult"))
    .authorization((allow) => [allow.authenticated()])
    .handler(a.handler.function(getResult)),
});

export type Schema = ClientSchema<typeof schema>;

export const data = defineData({
  schema,
  authorizationModes: {
    defaultAuthorizationMode: "userPool",
  },
});
