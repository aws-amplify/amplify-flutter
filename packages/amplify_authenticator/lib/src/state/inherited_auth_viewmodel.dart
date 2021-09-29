/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/views/confirm_signup_viewmodel.dart';
import 'package:amplify_authenticator/src/views/confirm_signin_viewmodel.dart';
import 'package:amplify_authenticator/src/views/confirm_verify_user_view_model.dart';
import 'package:amplify_authenticator/src/views/signin_viewmodel.dart';
import 'package:amplify_authenticator/src/views/signup_viewmodel.dart';
import 'package:amplify_authenticator/src/views/verify_user_view_model.dart';

class InheritedAuthViewModel extends InheritedWidget {
  // ignore: public_member_api_docs
  const InheritedAuthViewModel(
      {Key? key,
      required this.signInViewModel,
      required this.signUpViewModel,
      required this.confirmSignUpViewModel,
      required this.confirmSignInViewModel,
      required this.verifyUserViewModel,
      required this.confirmVerifyUserViewModel,
      required Widget child})
      : super(key: key, child: child);

  final SignInViewModel signInViewModel;

  final SignUpViewModel signUpViewModel;

  final ConfirmSignUpViewModel confirmSignUpViewModel;

  final ConfirmSignInViewModel confirmSignInViewModel;

  final VerifyUserViewModel verifyUserViewModel;

  final ConfirmVerifyUserViewModel confirmVerifyUserViewModel;

  // ignore: public_member_api_docs
  static InheritedAuthViewModel? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedAuthViewModel>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
