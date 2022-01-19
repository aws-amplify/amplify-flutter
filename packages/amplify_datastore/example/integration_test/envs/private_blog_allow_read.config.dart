/// Note that this test env requires a preSignUp Cognito Lambda trigger
/// to automatically confirm the user:
///
/// exports.handler = async event => {
///   event.response.autoConfirmUser=true;
///   return event;
/// };
///
/// The AppSync instance should use the following schema:
///
/// type Blog
///   @model
///   @auth(
///     rules: [
///       { allow: owner, operations: [create, read, update, delete] }
///       { allow: private, operations: [read] }
///     ]
///   ) {
///   id: ID!
///   name: String!
///   posts: [Post] @hasMany
/// }
/// type Post
///   @model
///   @auth(
///     rules: [
///       { allow: owner, operations: [create, read, update, delete] }
///       { allow: private, operations: [read] }
///     ]
///   ) {
///   id: ID!
///   title: String!
///   rating: Int!
///   created: AWSDateTime
///   blog: Blog @belongsTo
///   comments: [Comment] @hasMany
/// }
/// type Comment @model {
///   id: ID!
///   post: Post @belongsTo
///   content: String!
/// }

const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0"
  }''';
