import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';

import 'sign_in_sign_out_test.dart' as sign_in_sign_out_tests;

// run w flutter drive --driver=test_driver/integration_test.dart --target=integration_test/main_test.dart

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('amplify_auth_cognito', () {
    setUpAll(() async {
      final authPlugin = AmplifyAuthCognito();
      await Amplify.addPlugins([authPlugin]);
      await Amplify.configure(amplifyconfig);
    });

    sign_in_sign_out_tests.main();
  });
}
