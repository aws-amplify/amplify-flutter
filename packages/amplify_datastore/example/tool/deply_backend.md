## DataStore Integration Tests

The following steps demonstrate how to set up DataStore with Auth.
Auth category is also required for models with auth rules and requesting with IAM credentials to allow unauthenticated and authenticated access.

### Pre-req

Install `jq` - https://jqlang.github.io/jq/download/

`$ brew install jq`

### Set-up

1. `sh tool/provision_integration_test_resources.sh`

2. `amplify add api`

```perl
? Select from one of the below mentioned services: `GraphQL`
? Here is the GraphQL API that we will create. Select a setting to edit or continue Conflict detection (required for DataStore: `Disabled`
? Enable conflict detection? `Yes`
? Select the default resolution strategy Auto Merge `Auto Merge`
? Here is the GraphQL API that we will create. Select a setting to edit or continue `Continue`
? Choose a schema template: `Blank Schema`

⚠️  WARNING: your GraphQL API currently allows public create, read, update, and delete access to all models via an API Key. To configure PRODUCTION-READY authorization rules, review: https://docs.amplify.aws/cli/graphql/authorization-rules

✅ GraphQL schema compiled successfully.

Edit your schema at /Users/quaelija/Code/playground/dsbackend/amplify/backend/api/amplifydatastoreinte/schema.graphql or place .graphql files in a directory at /Users/quaelija/Code/playground/dsbackend/amplify/backend/api/amplifydatastoreinte/schema
✔ Do you want to edit the schema now? (Y/n) · yes

#  Now replace with the contents of `/tool/schema.graphql`
```

3. `amplify add auth`

```perl
amplify add auth

 Do you want to use the default authentication and security configuration? `M
anual configuration`
 Select the authentication/authorization services that you want to use: `User
 Sign-Up, Sign-In, connected with AWS IAM controls (Enables per-user Storage
 features for images or other content, Analytics, and more)`
 Provide a friendly name for your resource that will be used to label this c
ategory in the project: `BACKEND_NAME`
 Enter a name for your identity pool. `IDENTITY_POOL_NAME`
 Allow unauthenticated logins? (Provides scoped down permissions that you ca
n control via AWS IAM) `Yes`
 Do you want to enable 3rd party authentication providers in your identity p
ool? `No`
 Provide a name for your user pool: `USER_POOL_NAME`
 Warning: you will not be able to edit these selections.
 How do you want users to be able to sign in? `Email`
 Do you want to add User Pool Groups? `No`
 Do you want to add an admin queries API? `No`
 Multifactor authentication (MFA) user login options: `OFF`
 Email based user registration/forgot password: `Enabled (Requires per-user e
mail entry at registration)`
 Specify an email verification subject: `Your verification code`
 Specify an email verification message: `Your verification code is {####}`
 Do you want to override the default password policy for this User Pool? No
 Warning: you will not be able to edit these selections.
 What attributes are required for signing up? `Email`
 Specify the apps refresh token expiration period (in days): `365`
 Do you want to specify the user attributes this app can read and write? `No`
 Do you want to enable any of the following capabilities? `NONE`
 Do you want to use an OAuth flow? `No`
? Do you want to configure Lambda Triggers for Cognito? `Yes`
? Which triggers do you want to enable for Cognito `Pre Sign-up`
? What functionality do you want to use for Pre Sign-up `Create your own module`

#  Now copy the contents of `/tool/pre_sign_up.js` to the module
```

4. `amplify push`

5. You can now run all of the integration tests.
