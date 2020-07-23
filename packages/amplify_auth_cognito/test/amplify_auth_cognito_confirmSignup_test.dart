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
      if (methodCall.method == "confirmSignUp") {
        String testCode = methodCall.arguments["data"]["providerOptions"]["clientMetadata"]["test"];
        if (testCode == "0") {
          return {
            "signUpState": "DONE",
            "providerData" : {
              "nextStep": {
                "codeDeliveryDetails":  { "atttibuteName": "email" }
              }
            }
          };
        } else if (testCode == "1") {
          throw PlatformException(code: "AmplifyException", details: Map.from({"testError": "error"}), message: "stuff");
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

  test('confirmSignUp request returns a SignUpResult', () async {
    ConfirmSignUpRequest req = ConfirmSignUpRequest(
      userKey: 'testUser',
      confirmationCode: '0',
      provider: CognitoConfirmSignUpRequestProvider(clientMetadata: {"test": "0"})
    );
    expect(await Amplify.Auth.confirmSignUp(request: req), isInstanceOf<SignUpResult>());
  });

  test('successful confirmSignUp request results in success callback call', () async {
    var testInt = 0;
    ConfirmSignUpRequest req = ConfirmSignUpRequest(
      userKey: 'testUser',
      confirmationCode: '0',
      provider: CognitoConfirmSignUpRequestProvider(clientMetadata: {"test": "0"})
    );
    await Amplify.Auth.confirmSignUp(request: req, success: (res) => testInt++);
    expect(testInt, equals(1));
  });

  test('failed confirmSignUp request results in error callback call', () async {
    var testInt = 1;
    ConfirmSignUpRequest req = ConfirmSignUpRequest(
      userKey: 'testUser',
      confirmationCode: '1',
      provider: CognitoConfirmSignUpRequestProvider(clientMetadata: {"test": "0"})
    );
    await Amplify.Auth.confirmSignUp(request: req, success: (res) => testInt++);
    expect(testInt, equals(2));
  });
}
