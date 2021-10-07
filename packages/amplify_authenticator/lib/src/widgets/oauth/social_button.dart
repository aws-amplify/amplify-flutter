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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/text_customization/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/widgets/button.dart';
import 'package:amplify_authenticator/src/widgets/oauth/social_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// {@template authenticator.social_sign_in_button}
/// A button for launching a social sign in UI.
/// {@endtemplate}
class SocialSignInButton extends AuthenticatorElevatedButton {
  /// {@macro authenticator.social_sign_in_button}
  const SocialSignInButton({
    Key? key,
    required this.provider,
  }) : super(
          key: key,
          primary: false,
        );

  /// The Cognito social sign-in provider.
  final AuthProvider provider;

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.signInWith(provider);

  @override
  Widget? get leading => Icon(provider.icon);

  @override
  Widget? get loadingIndicator => null;

  @override
  void onPressed(BuildContext context, AuthViewModel viewModel) {
    viewModel.signInWithProvider(provider);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<AuthProvider>('provider', provider));
  }
}

extension on AuthProvider {
  IconData get icon {
    switch (this) {
      case AuthProvider.google:
        return SocialIcons.google;
      case AuthProvider.facebook:
        return SocialIcons.facebook;
      case AuthProvider.amazon:
        return SocialIcons.amazon;
      case AuthProvider.apple:
        return SocialIcons.apple;
    }
  }
}
