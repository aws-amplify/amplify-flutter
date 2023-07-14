// ignore_for_file: always_use_package_imports

import 'package:amplify_core/amplify_config.dart';
// #docregion imports
import 'package:amplify_flutter/amplify_flutter.dart' hide AWSApiConfig;

// #enddocregion imports

// #docregion cli-imports
import 'amplifyconfiguration.dart';
// #enddocregion cli-imports

// #docregion parse
void parseCliConfig() {
  final cliConfig = AWSAmplifyConfig.parse(amplifyconfig);
  safePrint(cliConfig);
}
// #enddocregion parse

// #docregion update-user-pool
// Updates the user pool configuration to use `CUSTOM_AUTH_WITH_SRP` as the
// default authentication flow.
AWSAmplifyConfig updateUserPool() {
  return AWSAmplifyConfig.parse(amplifyconfig).updateUserPool(
    (userPool) =>
        userPool.authFlowType = AuthenticationFlowType.customAuthWithSrp,
  );
}
// #enddocregion update-user-pool

// #docregion add-user-pool
// Adds a user pool to the configuration.
//
// User pool values may be obtained from the output of an infrastructure-as-code
// solution (e.g. CloudFormation, CDK, or Terraform) or by viewing the AWS console.
AWSAmplifyConfig addUserPool() {
  return AWSAmplifyConfig.parse(amplifyconfig).withUserPool(
    poolId: '<USER_POOL_ID>',
    region: '<USER_POOL_REGION>',
    clientId: '<USER_POOL_CLIENT_ID>',
  );
}
// #enddocregion add-user-pool

// #docregion config-from-scratch
// Creates an AWSAmplifyConfig with a user pool and a GraphQL API.
AWSAmplifyConfig buildConfig() {
  return AWSAmplifyConfig(
    api: AWSApiConfig(
      apis: {
        '<API_NAME>': AWSApiEndpointConfig.appSync(
          endpoint: Uri.parse(
            'https://xxxxxx.appsync-api.us-east-1.amazonaws.com/graphql',
          ),
          region: 'us-east-1',
          authMode: const AWSApiAuthorizationMode.apiKey(
            'da2-xxxxxxxxxxxxxxxxxxxxxxxxxx',
          ),
          additionalAuthModes: [
            const AWSApiAuthorizationMode.userPools(),
          ],
        ),
      },
    ),
    auth: AWSAuthConfig.cognito(
      userPool: AWSAuthUserPoolConfig(
        poolId: '<USER_POOL_ID>',
        region: '<USER_POOL_REGION>',
        clientId: '<USER_POOL_CLIENT_ID>',
      ),
    ),
  );
}
// #enddocregion config-from-scratch
