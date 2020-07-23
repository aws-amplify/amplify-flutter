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
        bool testCode = true;
        if (methodCall.arguments["data"] != null){
          testCode = methodCall.arguments["data"]["providerOptions"]["globalSignOut"];
        }
        if (testCode == true) {
          return {
            "signOutState": "DONE",
            "providerData" : {}
          };
        } else if (testCode == false) {
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

  test('signOut request returns a SignOutResult without a request parameter', () async {
    expect(await Amplify.Auth.signOut(), isInstanceOf<SignOutResult>());
  });

  test('signOut request returns a SignOutResult with a request parameter', () async {
    SignOutRequest req = SignOutRequest(
      provider: CognitoSignOutRequestProvider(globalSignOut: true)
    );
    expect(await Amplify.Auth.signOut(request: req), isInstanceOf<SignOutResult>());
  });

  test('successful signOut request results in success callback call', () async {
    var testInt = 0;
    SignOutRequest req = SignOutRequest(
      provider: CognitoSignOutRequestProvider(globalSignOut: true)
    );
    await Amplify.Auth.signOut(request: req, success: (res) => testInt++);
    expect(testInt, equals(1));
  });

  test('failed signOut request results in error callback call', () async {
    var testInt = 1;
    SignOutRequest req = SignOutRequest(
      provider: CognitoSignOutRequestProvider(globalSignOut: false)
    );
    await Amplify.Auth.signOut(request: req, success: (res) => testInt++);
    expect(testInt, equals(2));
  });
}
