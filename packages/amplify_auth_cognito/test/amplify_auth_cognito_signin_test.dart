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
      if (methodCall.method == "signIn") {
        String testCode = methodCall.arguments["data"]["providerOptions"]["clientMetadata"]["test"];
        if (testCode == "0") {
          return {
            "signInState": "DONE",
            "providerData" : {
              "nextStep": {}
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

  test('signIn request returns a SignInResult', () async {
    SignInRequest req = SignInRequest(
      username: 'testUser',
      password: '0',
      provider: CognitoSignInRequestProvider(clientMetadata: {"test": "0"})
    );
    expect(await Amplify.Auth.signIn(request: req), isInstanceOf<SignInResult>());
  });

  test('successful signIn request results in success callback call', () async {
    var testInt = 0;
    SignInRequest req = SignInRequest(
      username: 'testUser',
      password: '0',
      provider: CognitoSignInRequestProvider(clientMetadata: {"test": "0"})
    );
    await Amplify.Auth.signIn(request: req, success: (res) => testInt++);
    expect(testInt, equals(1));
  });

  test('failed confirmSignUp request results in error callback call', () async {
    var testInt = 1;
    SignInRequest req = SignInRequest(
      username: 'testUser',
      password: '0',
      provider: CognitoSignInRequestProvider(clientMetadata: {"test": "0"})
    );
    await Amplify.Auth.signIn(request: req, success: (res) => testInt++);
    expect(testInt, equals(2));
  });
}
