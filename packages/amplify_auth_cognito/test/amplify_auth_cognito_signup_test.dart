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
<<<<<<< HEAD:packages/amplify_auth_cognito/test/amplify_auth_cognito_signup_test.dart
        int testCode = methodCall.arguments["data"]["userAttributes"]["testCode"];
        if (testCode == 0) {
          return {
            "signUpState": "CONFIRM_SIGN_UP_STEP",
            "providerData" : {
              "nextStep": {
                "codeDeliveryDetails":  { "atttibuteName": "email" }
              }
            }
          };
        } else if (testCode == 1) {
          throw PlatformException(code: "AmplifyException", details: Map.from({"testError": "error"}), message: "stuff");
        }
=======
        return {
          "signUpState": "CONFIRM_SIGN_UP_STEP",
          "providerData" : {
            "nextStep": {
              "codeDeliveryDetails":  { "atttibuteName": "email" }
            }
          }
        };
      } else {
        return true;
>>>>>>> amplify_auth:packages/amplify_auth_cognito/test/amplify_auth_cognito_test.dart
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

<<<<<<< HEAD:packages/amplify_auth_cognito/test/amplify_auth_cognito_signup_test.dart
  test('amplify_auth_cognito plugin can be added to Amplify instance', () async {
    expect(amplify.addPlugin([auth]), true);
  });

  test('configure success after plugin is added', () async {
    expect(await amplify.configure("{}"), true);
  });

  test('signUp request returns a SignUpResult', () async {
=======
  test('signUp request returns a CognitoSignUpResult', () async {
    await amplify.addPlugin([auth]);
    await amplify.configure("{}");
>>>>>>> amplify_auth:packages/amplify_auth_cognito/test/amplify_auth_cognito_test.dart
    SignUpRequest req = SignUpRequest(
      username: 'testUser',
      password: '123',
      options: SignUpRequestOptions(
        userAttributes: {
          "email": "test@test.com",
          "testCode": 0
        })
    );
    expect(await Amplify.Auth.signUp(request: req), isInstanceOf<SignUpResult>());
  });
<<<<<<< HEAD:packages/amplify_auth_cognito/test/amplify_auth_cognito_signup_test.dart

  test('successful signUp request results in success callback call', () async {
    var testInt = 0;
    SignUpRequest req = SignUpRequest(
      username: 'testUser',
      password: '123',
      options: SignUpOptions(
        userAttributes: {
          "email": "test@test.com",
          "testCode": 0
        })
    );
    await Amplify.Auth.signUp(request: req, success: (res) => testInt++);
    expect(testInt, equals(1));
  });

  test('failed signUp request results in error callback call', () async {
    var testInt = 0;
    SignUpRequest req = SignUpRequest(
      username: 'testUser',
      password: '123',
      options: SignUpOptions(
        userAttributes: {
          "email": "test@test.com",
          "testCode": 1
        })
    );
    await Amplify.Auth.signUp(request: req, error: (res) => testInt++);
    expect(testInt, equals(1));
  });
=======
>>>>>>> amplify_auth:packages/amplify_auth_cognito/test/amplify_auth_cognito_test.dart
}
