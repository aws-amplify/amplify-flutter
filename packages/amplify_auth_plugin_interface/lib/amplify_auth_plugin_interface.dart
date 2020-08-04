/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

library amplify_auth_plugin_interface;

import 'dart:async';
import 'package:meta/meta.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'src/types.dart';
export 'src/types.dart';

abstract class AuthPluginInterface extends PlatformInterface {
  /// Constructs a AmplifyPlatform.
  AuthPluginInterface({@required Object token}) : super(token: token);

  /// Adds the configuration and return true if it was successful.
  bool addPlugin(AuthPluginInterface configuration) {
    throw UnimplementedError('configure() has not been implemented.');
  }

  Future<SignUpResult> signUp({@required SignUpRequest request}) {
    throw UnimplementedError('signUp() has not been implemented.');
  }

  Future<SignUpResult> confirmSignUp({@required ConfirmSignUpRequest request}) {
    throw UnimplementedError('confirmSignUp() has not been implemented.');
  }

  Future<SignInResult> signIn({@required SignInRequest request}) {
    throw UnimplementedError('signIn() has not been implemented.');
  }

  Future<SignOutResult> signOut({SignOutRequest request}) {
    throw UnimplementedError('signOut() has not been implemented.');
  }

  Future<SignInResult> confirmSignIn({ConfirmSignInRequest request}) {
    throw UnimplementedError('confirmSignIn() has not been implemented.');
  }

  Future<ChangePasswordResult> changePassword({ChangePasswordRequest request}) {
    throw UnimplementedError('changePassword() has not been implemented.');
  }
}
