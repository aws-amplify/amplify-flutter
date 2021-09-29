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

import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:flutter/material.dart';

class InheritedForms extends InheritedWidget {
  // ignore: public_member_api_docs
  const InheritedForms(
      {required this.signInForm,
      required this.signUpForm,
      required this.confirmSignUpForm,
      required this.confirmSignInMFAForm,
      required this.sendCodeForm,
      required this.resetPasswordForm,
      required this.confirmSignInNewPasswordForm,
      required this.verifyUserFormBuilder,
      required this.confirmVerifyUserForm,
      required Widget child})
      : super(child: child);

  final SignInForm signInForm;

  final SignUpForm signUpForm;

  final ConfirmSignUpForm confirmSignUpForm;

  final ConfirmSignInMFAForm confirmSignInMFAForm;

  final SendCodeForm sendCodeForm;

  final ResetPasswordForm resetPasswordForm;

  final ConfirmSignInNewPasswordForm confirmSignInNewPasswordForm;

  final VerifyUserForm Function({required List<String> unverifiedAttributeKeys})
      verifyUserFormBuilder;

  final ConfirmVerifyUserForm confirmVerifyUserForm;

  //final ResetPasswordForm resetPasswordForm;

  // ignore: public_member_api_docs
  static InheritedForms of(BuildContext context) {
    final forms = context.dependOnInheritedWidgetOfExactType<InheritedForms>();

    assert(() {
      if (forms == null) {
        throw FlutterError.fromParts([
          ErrorSummary('No InheritedForms widget found.'),
          ErrorDescription(
              'Make sure your app is wrapped with an Authenticator widget.')
        ]);
      }
      return true;
    }());
    return forms!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
