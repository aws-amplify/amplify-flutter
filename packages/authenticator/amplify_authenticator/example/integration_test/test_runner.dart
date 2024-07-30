import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_authenticator_example/amplify_outputs.dart' as outputs;
import 'package:amplify_authenticator_example/amplifyconfiguration.dart'
    as config;

/// The global test runner.
const AuthTestRunner testRunner = AuthTestRunner(
  config.amplifyEnvironments,
  outputs.amplifyEnvironments,
);
