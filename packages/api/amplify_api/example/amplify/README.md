# API Example App with Multi-Auth GraphQL and REST

This is a pre-configured backend for Amplify intended to test the API category for amplify-flutter. It has:
* Auth category configured to automatically confirm a user on signup.
* GraphQL API with a multi-auth schema
* REST API that allows unauthenticated reads (GET requests) but requires sign-in for other methods

To set up in your own AWS account configured for Amplify, run:

```bash
$ amplify init
```

or
```bash
$ ./tool/provision_integration_test_resources.sh
```

Helpful resources:
- Amplify documentation: https://docs.amplify.aws
- Amplify CLI documentation: https://docs.amplify.aws/cli
- More details on this folder & generated files: https://docs.amplify.aws/cli/reference/files
- Join Amplify's community: https://amplify.aws/community/
