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
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/widgets/button.dart';
import 'package:amplify_authenticator/src/widgets/oauth/social_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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

class SocialSignInButton extends AuthenticatorButton<SocialSignInButton> {
  const SocialSignInButton({
    Key? key,
    required this.provider,
  }) : super(key: key);

  final AuthProvider provider;

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.signInWith(provider);

  @override
  void onPressed(BuildContext context, AuthViewModel viewModel) {
    viewModel.signInWithProvider(provider);
  }

  @override
  _SocialSignInButtonState createState() => _SocialSignInButtonState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<AuthProvider>('provider', provider));
  }
}

class _SocialSignInButtonState
    extends AuthenticatorButtonState<SocialSignInButton> {
  @override
  Widget build(BuildContext context) {
    final buttonResolver = stringResolver.buttons;
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: isFocused
            ? const [
                BoxShadow(
                  color: AmplifyColors.blue,
                  blurRadius: 4.0,
                )
              ]
            : null,
      ),
      child: ElevatedButtonTheme(
        data: AmplifyTheme.elevatedButtonThemeData(
          primary: false,
          isLoading: viewModel.isBusy,
        ),
        child: ElevatedButton(
          focusNode: focusNode,
          child: Row(
            children: [
              Icon(widget.provider.icon),
              Expanded(
                child: Text(
                  buttonResolver.resolve(
                    context,
                    widget.labelKey,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          onPressed: viewModel.isBusy
              ? null
              : () => widget.onPressed(context, viewModel),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<ValueChanged<bool>>.has(
        'focusChanged', focusChanged));
  }
}
