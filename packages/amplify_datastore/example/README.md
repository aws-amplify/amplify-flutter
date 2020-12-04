# amplify_datastore_example

Demonstrates how to use the amplify_datastore plugin.

## Getting Started

### Local mode

This example uses three connected models `Blog`, `Post` and `Comment`. You can run this app in a local only mode with the codegen models already provided in the app. Use the `flutter run` command to run on your connected devices or simulators.

`Post` can only be created for a `Blog`. You fist create a `Blog` and use it in the drop down while creating a `Post`. Similarly `Comment` can be created only for a `Post`.

Use the `X` on the top to clear your local DataStore.


### Online mode

When you are ready to sync your local data online, follow these steps to [setup cloud sync](https://docs.amplify.aws/lib/datastore/sync/q/platform/flutter#setup-cloud-sync). Use the following schema while adding the graphql API.

```graphql
type Blog @model {
  id: ID!
  name: String!
  posts: [Post] @connection(keyName: "byBlog", fields: ["id"])
}
type Post @model @key(name: "byBlog", fields: ["blogID"]) {
  id: ID!
  title: String!
  rating: Int!
  created: AWSDateTime
  blogID: ID!
  blog: Blog @connection(fields: ["blogID"])
  comments: [Comment] @connection(keyName: "byPost", fields: ["id"])
}
type Comment @model @key(name: "byPost", fields: ["postID", "content"]) {
  id: ID!
  postID: ID!
  post: Post @connection(fields: ["postID"])
  content: String!
}
```

After following the steps in [setup cloud sync](https://docs.amplify.aws/lib/datastore/sync/q/platform/flutter#setup-cloud-sync) and running `amplify push`, the `amplifyconfiguration.dart` file in the '`lib` folder will be updated with `api` configuration. Now when you run the app, your data will also sync with your appsync api.
