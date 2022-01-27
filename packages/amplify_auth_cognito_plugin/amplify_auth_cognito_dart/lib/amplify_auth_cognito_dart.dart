library amplify_auth_cognito_dart;

import 'dart:async';

import 'package:amplify_auth_cognito_dart/src/types.dart';
import 'package:amplify_core/amplify_core.dart';

export 'src/types.dart';

abstract class AmplifyAuthCognitoDart extends AuthCategoryInterface {
  @override
  Future<CognitoSignUpResult> signUp({required SignUpRequest request}) async {
    return CognitoSignUpResult(nextStep: '', isSignUpComplete: '');
  }
}
