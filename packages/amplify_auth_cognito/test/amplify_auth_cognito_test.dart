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
          return PlatformException(code: "AmplifyException");
        }
      } else if (methodCall.method == "confirmSignUp") {
        int testCode = methodCall.arguments["data"]["confirmationCode"];
        if (testCode == 0) {
          return {
            "signUpState": "DONE",
            "providerData" : {
              "nextStep": {
                "codeDeliveryDetails":  { "atttibuteName": "email" }
              }
            }
          };
        } else if (testCode == 1) {
          return PlatformException(code: "AmplifyException");
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
          "testCode": 0
        })
    );
    expect(await Amplify.Auth.signUp(request: req), isInstanceOf<CognitoSignUpResult>());
  });

  test('successful signUp request results in success callback call', () async {
    var testInt = 0;
    CognitoSignUpRequest req = CognitoSignUpRequest(
      username: 'testUser',
      password: '123',
      options: CognitoSignUpOptions(
        userAttributes: {
          "email": "test@test.com",
          "testCode": 0
        })
    );
    await Amplify.Auth.signUp(request: req, success: (res) => testInt++);
    expect(testInt, equals(1));
  });

  test('failed signUp request results in error callback call', () async {
    var testInt = 1;
    CognitoSignUpRequest req = CognitoSignUpRequest(
      username: 'testUser',
      password: '123',
      options: CognitoSignUpOptions(
        userAttributes: {
          "email": "test@test.com",
          "testCode": 1
        })
    );
    await Amplify.Auth.signUp(request: req, error: (res) => testInt++);
    expect(testInt, equals(2));
  });

  test('confirmSignUp request returns a CognitoSignUpResult', () async {
    CognitoConfirmSignUpRequest req = CognitoConfirmSignUpRequest(
      username: 'testUser',
      confirmationCode: '0',
    );
    expect(await Amplify.Auth.confirmSignUp(request: req), isInstanceOf<CognitoSignUpResult>());
  });

  test('successful confirmSignUp request results in success callback call', () async {
    var testInt = 0;
    CognitoConfirmSignUpRequest req = CognitoConfirmSignUpRequest(
      username: 'testUser',
      confirmationCode: '0'
    );
    await Amplify.Auth.confirmSignUp(request: req, success: (res) => testInt++);
    expect(testInt, equals(1));
  });

    test('failed confirmSignUp request results in error callback call', () async {
    var testInt = 1;
    CognitoConfirmSignUpRequest req = CognitoConfirmSignUpRequest(
      username: 'testUser',
      confirmationCode: '1'
    );
    await Amplify.Auth.confirmSignUp(request: req, success: (res) => testInt++);
    expect(testInt, equals(2));
  });
}
