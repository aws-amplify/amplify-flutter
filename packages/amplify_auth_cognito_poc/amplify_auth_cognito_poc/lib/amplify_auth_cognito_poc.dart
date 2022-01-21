// You have generated a new plugin project without
// specifying the `--platforms` flag. A plugin project supports no platforms is generated.
// To add platforms, run `flutter create -t plugin --platforms <platforms> .` under the same
// directory. You can also find a detailed instruction on how to add platforms in the `pubspec.yaml` at https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'dart:async';

import 'package:amplify_auth_cognito_platform_interface/amplify_auth_cognito.dart';
import 'package:flutter/services.dart';

class AmplifyAuthCognito {
  Future<SignUpResult> signUp(SignUpRequest request) async {
    return await AmplifyAuthCognitoPlatform.instance.signUp(request: request);
  }
}
