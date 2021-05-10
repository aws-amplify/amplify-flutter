import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  var username;
  var password;
  final email = 'amplify-flutter-test@amazon.com';
  final phoneNumber = '+15555551234';

  group('signIn and signOut', () {
    setUpAll(() async {
      await DotEnv.load(fileName: '.env');
      username = env['TEST_COGNITO_USERNAME'];
      password = env['TEST_COGNITO_PASSWORD'];
      if (!Amplify.isConfigured) {
        final authPlugin = AmplifyAuthCognito();
        await Amplify.addPlugins([authPlugin]);
        await Amplify.configure(amplifyconfig);
      }
    });

    testWidgets('should signIn a user', (WidgetTester tester) async {
      final res =
          await Amplify.Auth.signIn(username: username, password: password);
      expect(res.isSignedIn, true);
    });

    testWidgets('should fetchAuthSession', (WidgetTester tester) async {
      final res = await Amplify.Auth.fetchAuthSession();
      expect(res.isSignedIn, true);
    });

    testWidgets('should signOut', (WidgetTester tester) async {
      await Amplify.Auth.signOut();
      final res = await Amplify.Auth.fetchAuthSession();
      expect(res.isSignedIn, false);
    });
  });
}
