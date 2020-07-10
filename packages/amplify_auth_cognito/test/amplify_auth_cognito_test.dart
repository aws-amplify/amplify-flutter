import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
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
      int testCode = methodCall.arguments["data"]["userAttributes"]["testCode"];
      if (methodCall.method == "signUp") {
        if (testCode == 1) {
          return {
            "signUpState": "CONFIRM_SIGN_UP_STEP",
            "providerData" : {
              "nextStep": {
                "codeDeliveryDetails": {}
              }
            }
          };
        }
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

  test('amplify_auth_cognito plugin can be added to Amplify instance', () async {
    expect(amplify.addPlugin([auth]), true);
  });

  test('configure success after plugin is added', () async {
    expect(await amplify.configure("{}"), true);
  });

  test('signUp request returns a CognitoSignUpResult', () async {
    CognitoSignUpRequest req = CognitoSignUpRequest(
      username: 'testUser',
      password: '123',
      options: CognitoSignUpOptions(
        userAttributes: {
          "email": "test@test.com",
          "testCode": 1
        })
    );
    expect(await Amplify.Auth.signUp(req), isInstanceOf<CognitoSignUpResult>());
  });

  test('signUp request returns a CognitoSignUpResponse', () async {
    CognitoSignUpRequest req = CognitoSignUpRequest(
      username: 'testUser',
      password: '123',
      options: CognitoSignUpOptions(
        userAttributes: {
          "email": "test@test.com",
          "testCode": 1
        })
    );
    expect(await Amplify.Auth.signUp(req), isInstanceOf<CognitoSignUpResult>());
  });
}
