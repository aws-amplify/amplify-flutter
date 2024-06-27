import { a, defineData, type ClientSchema } from "@aws-amplify/backend";

const schema = a.schema({
  Todo: a
    .model({
      content: a.string(),
      isDone: a.boolean(),
    })
    .authorization((allow) => [allow.owner()]),

  lowerCase: a
    .model({
      id: a.id().required(),
      name: a.string().required(),
    })
    .authorization((allow) => [
      allow.publicApiKey().to(["read"]),
      allow.guest().to(["read"]),
      allow.authenticated("identityPool").to(["read"]),
      allow.authenticated("userPools").to(["read"]),
      allow.owner().to(["read", "create", "update", "delete"]),
    ]),

  OwnerOnly: a
    .model({
      id: a.id().required(),
      name: a.string().required(),
    })
    .authorization((allow) => [allow.owner()]),

  Sample: a
    .model({
      id: a.id().required(),
      name: a.string(),
      number: a.integer(),
      flag: a.boolean(),
      data: a.datetime(),
      rootbeer: a.float(),
    })
    .authorization((allow) => [
      allow.publicApiKey(),
      allow.guest().to(["read"]),
      allow.authenticated("identityPool").to(["read"]),
      allow.authenticated("userPools").to(["read"]),
      allow.owner().to(["read", "create", "update", "delete"]),
    ]),

  Blog: a
    .model({
      id: a.id().required(),
      name: a.string().required(),
      posts: a.hasMany("Post", "blogID"),
    })
    .authorization((allow) => [
      allow.publicApiKey().to(["read"]),
      allow.guest().to(["read"]),
      allow.authenticated("identityPool").to(["read"]),
      allow.authenticated("userPools").to(["read"]),
      allow.owner().to(["read", "create", "update", "delete"]),
    ]),

  Post: a
    .model({
      id: a.id().required(),
      title: a.string().required(),
      rating: a.integer().required(),
      blogID: a.id().required(),
      blog: a.belongsTo("Blog", "blogID"),
      comments: a.hasMany("Comment", "postID"),
    })
    .secondaryIndexes((index) => [index("blogID").name("blogID")])
    .authorization((allow) => [
      allow.guest().to(["read"]),
      allow.authenticated("identityPool").to(["read"]),
      allow.authenticated("userPools").to(["read"]),
      allow.owner().to(["read", "create", "update", "delete"]),
    ]),

  Comment: a
    .model({
      id: a.id(),
      content: a.string(),
      postID: a.id(),
      post: a.belongsTo("Post", "postID"),
    })
    .authorization((allow) => [
      allow.authenticated("identityPool").to(["read"]),
      allow.authenticated("userPools").to(["read"]),
      allow.owner().to(["read", "create", "update", "delete"]),
    ]),

  CpkOneToOneBidirectionalParentCD: a
    .model({
      customId: a.id().required(),
      name: a.string().required(),
      implicitChild: a.hasOne("CpkOneToOneBidirectionalChildImplicitCD", [
        "parentID",
        "parentName",
      ]),
      explicitChild: a.hasOne("CpkOneToOneBidirectionalChildExplicitCD", [
        "belongsToParentID",
        "belongsToParentName",
      ]),
    })
    .identifier(["customId", "name"])
    .authorization((allow) => [allow.authenticated("identityPool")]),

  CpkOneToOneBidirectionalChildImplicitCD: a
    .model({
      id: a.id(),
      name: a.string().required(),
      parentID: a.id(),
      parentName: a.string(),
      belongsToParent: a.belongsTo("CpkOneToOneBidirectionalParentCD", [
        "parentID",
        "parentName",
      ]),
    })
    .authorization((allow) => [allow.authenticated("identityPool")]),

  CpkOneToOneBidirectionalChildExplicitCD: a
    .model({
      id: a.id().required(),
      name: a.string().required(),
      belongsToParentID: a.id(),
      belongsToParentName: a.string(),
      belongsToParent: a.belongsTo("CpkOneToOneBidirectionalParentCD", [
        "belongsToParentID",
        "belongsToParentName",
      ]),
    })
    .identifier(["id", "name"])
    .authorization((allow) => [allow.authenticated("identityPool")]),

  CpkIntIndexes: a
    .model({
      name: a.string().required(),
      fieldA: a.integer().required(),
      fieldB: a.integer().required(),
    })
    .identifier(["name", "fieldA", "fieldB"])
    .authorization((allow) => [allow.owner()]),

  CpkIntPrimaryKey: a
    .model({
      intAsId: a.integer().required(),
      fieldA: a.integer().required(),
      fieldB: a.integer().required(),
    })
    .identifier(["intAsId", "fieldA", "fieldB"])
    .authorization((allow) => [allow.owner()]),
});

export type Schema = ClientSchema<typeof schema>;

export const data = defineData({
  name: "apiMultiAuth",
  schema,
  authorizationModes: {
    defaultAuthorizationMode: "userPool",
    apiKeyAuthorizationMode: { expiresInDays: 30 },
  },
});
