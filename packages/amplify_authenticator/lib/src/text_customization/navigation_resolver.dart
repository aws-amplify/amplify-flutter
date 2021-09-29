/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the 'License').
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the 'license' file accompanying this file. This file is distributed
 * on an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_authenticator/src/text_customization/resolver.dart';
import 'package:flutter/material.dart';

enum NavigationResolverKey {
  navigateSignup,
  navigateSignin,
  noAccountQuestion,
  haveAccountQuestion,
  forgotPasswordQuestion,
  navigateResetPassword,
  backToSignin,
}

/// The resolver class for shared button Widgets
abstract class NavigationResolver extends Resolver<NavigationResolverKey> {
  const NavigationResolver();

  /// Text for navigating to the signup Widget
  String navigateSignup(BuildContext context);

  /// Text for navigating to the signin Widget
  String navigateSignin(BuildContext context);

  /// Text asking if user does not have an account
  String noAccountQuestion(BuildContext context);

  /// Text asking if user has have an account
  String haveAccountQuestion(BuildContext context);

  /// Text asking if user has forgotten password
  String forgotPasswordQuestion(BuildContext context);

  /// Text for navigating to reset password Widget
  String navigateResetPassword(BuildContext context);

  /// Text asking if user has have an account
  String backToSignin(BuildContext context);

  @override
  String resolve(BuildContext context, NavigationResolverKey key) {
    switch (key) {
      case NavigationResolverKey.navigateSignup:
        return navigateSignup(context);
      case NavigationResolverKey.navigateSignin:
        return navigateSignin(context);
      case NavigationResolverKey.noAccountQuestion:
        return noAccountQuestion(context);
      case NavigationResolverKey.haveAccountQuestion:
        return haveAccountQuestion(context);
      case NavigationResolverKey.forgotPasswordQuestion:
        return forgotPasswordQuestion(context);
      case NavigationResolverKey.navigateResetPassword:
        return navigateResetPassword(context);
      case NavigationResolverKey.backToSignin:
        return backToSignin(context);
      default:
        throw StateError('Unknown resolver key: $key');
    }
  }
}

class DefaultNavigationResolver extends NavigationResolver {
  const DefaultNavigationResolver();

  @override
  String navigateSignup(BuildContext context) => 'Sign Up';

  @override
  String navigateSignin(BuildContext context) => 'Sign In';

  @override
  String noAccountQuestion(BuildContext context) => 'No account?';

  @override
  String haveAccountQuestion(BuildContext context) => 'Have an account?';

  @override
  String forgotPasswordQuestion(BuildContext context) => 'Forgot password?';

  @override
  String navigateResetPassword(BuildContext context) => 'Reset Password';

  @override
  String backToSignin(BuildContext context) => 'Back to Sign In';
}
