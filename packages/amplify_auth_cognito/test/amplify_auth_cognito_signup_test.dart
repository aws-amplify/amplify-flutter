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
      if (methodCall.method == "signUp") {
        return {
          "isSignUpComplete": false,
          "nextStep": {
            "signUpStep": "DONE",
            "codeDeliveryDetails":  { "atttibuteName": "email" }
          }
      };
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

  test('signUp request returns a CognitoSignUpResult', () async {
    await amplify.addPlugin(authPlugin: [auth]);
    await amplify.configure("{}");
    SignUpRequest req = SignUpRequest(
      username: 'testUser',
      password: '123',
      options: CognitoSignUpOptions(
        userAttributes: {
          "email": "test@test.com",
          "testCode": 0
        })
    );
    expect(await Amplify.Auth.signUp(request: req), isInstanceOf<SignUpResult>());
  });
}
