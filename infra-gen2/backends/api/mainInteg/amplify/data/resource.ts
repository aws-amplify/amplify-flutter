import { a, defineData, type ClientSchema } from "@aws-amplify/backend";

/*== STEP 1 ===============================================================
The section below creates a Todo database table with a "content" field. Try
adding a new "isDone" field as a boolean. The authorization rule below
specifies that any unauthenticated user can "create", "read", "update", 
and "delete" any "Todo" records.
=========================================================================*/
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
  schema,
  authorizationModes: {
    defaultAuthorizationMode: "userPool",
    apiKeyAuthorizationMode: { expiresInDays: 30 },
  },
});

/*== STEP 2 ===============================================================
Go to your frontend source code. From your client-side code, generate a
Data client to make CRUDL requests to your table. (THIS SNIPPET WILL ONLY
WORK IN THE FRONTEND CODE FILE.)

Using JavaScript or Next.js React Server Components, Middleware, Server 
Actions or Pages Router? Review how to generate Data clients for those use
cases: https://docs.amplify.aws/gen2/build-a-backend/data/connect-to-API/
=========================================================================*/

/*
"use client"
import { generateClient } from "aws-amplify/data";
import type { Schema } from "@/amplify/data/resource";

const client = generateClient<Schema>() // use this Data client for CRUDL requests
*/

/*== STEP 3 ===============================================================
Fetch records from the database and use them in your frontend component.
(THIS SNIPPET WILL ONLY WORK IN THE FRONTEND CODE FILE.)
=========================================================================*/

/* For example, in a React component, you can use this snippet in your
  function's RETURN statement */
// const { data: todos } = await client.models.Todo.list()

// return <ul>{todos.map(todo => <li key={todo.id}>{todo.content}</li>)}</ul>
