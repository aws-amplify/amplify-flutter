# CLI Config Testdata

Test data from the CLI is gathered for different Auth use cases, both from before the "Zero Config" switch (6.4.0) and from projects created before that (old). These are created by running amplify pull in the different Amplify UI [environments](https://github.com/aws-amplify/amplify-ui/tree/main/environments).

## CLI `generateConfig`

The CLI internally uses a function `generateConfig` to output the Flutter `amplifyconfiguration.dart` file. This is used in [`src/`](src/) to generate various configs for the different categories. To regenerate:

```sh
$ cd src
$ yarn && yarn generate
```

This will output [`cli_generated.dart`](cli_generated.dart).
