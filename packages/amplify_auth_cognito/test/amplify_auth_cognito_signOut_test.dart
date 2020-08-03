import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';

void main() {
  const MethodChannel authChannel = MethodChannel('com.amazonaws.amplify/auth_cognito');
  const MethodChannel coreChannel = MethodChannel('com.amazonaws.amplify/core');

  Amplify amplify = new Amplify();
  AmplifyAuthCognito auth = AmplifyAuthCognito();

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    authChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "signOut") {
        return {};
      } else {
        return true;
      }     
    });
    coreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    authChannel.setMockMethodCallHandler(null);
    coreChannel.setMockMethodCallHandler(null);
  });

  test('signUp request returns a SignOutResult', () async {
    await amplify.addPlugin(authPlugin: [auth]);
    await amplify.configure("{}");
    SignOutRequest req = SignOutRequest();
    expect(await Amplify.Auth.signOut(request: req), isInstanceOf<SignOutResult>());
  });
}
