# CLI Config Testdata

CLI versions 4-7 (latest) are supported. We employ three suites of tests to verify compatibility with those versions.

| Major | Version Tested |
| ----- | -------------- |
| v4 | v4.52.0 |
| v5 | v5.6.0 |
| v6 | v6.4.0 |
| v7 | v7.6.5 (latest) |

## Auth Tests

Test data from the CLI is gathered for different Auth use cases, both from after the "Zero Config" switch (v6.4.0) and from projects created before that (`old`). These are created by running amplify pull in the different Amplify UI [environments](https://github.com/aws-amplify/amplify-ui/tree/main/environments).

## CLI `generateConfig`

The CLI internally uses a function `generateConfig` to output the Flutter `amplifyconfiguration.dart` file. This is used in [`src/`](src/) to generate various configs for the different categories and for the different CLI versions. To regenerate:

```sh
$ cd generate
$ yarn && yarn generate
```

This will output [`cli_generated.dart`](cli_generated.dart).

## E2E CLI Tests

The same simple project with a GraphQL API and Cognito Userpool is generated for each CLI version and stored in respective directories (`v4/`, `v5/`, etc). Each of these configurations is tested to ensure that `fromJson`/`toJson` produce symmetric results.
