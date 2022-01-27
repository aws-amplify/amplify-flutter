// You have generated a new plugin project without
// specifying the `--platforms` flag. A plugin project supports no platforms is generated.
// To add platforms, run `flutter create -t plugin --platforms <platforms> .` under the same
// directory. You can also find a detailed instruction on how to add platforms in the `pubspec.yaml` at https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'dart:async';
import 'package:amplify_auth_cognito_platform_interface/amplify_auth_cognito_platform_interface.dart';
import 'package:amplify_core/amplify_core.dart';

class AmplifyAuthCognito extends AmplifyAuthCognitoInterface {
  @override
  Future<void> addPlugin() async {
    await AmplifyAuthCognitoInterface.instance.addPlugin();
  }

  @override
  Future<CognitoSignUpResult> signUp({required SignUpRequest request}) async {
    return await AmplifyAuthCognitoInterface.instance.signUp(request: request);
  }
}
