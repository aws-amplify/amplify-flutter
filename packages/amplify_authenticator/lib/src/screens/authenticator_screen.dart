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

import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/text_customization/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthenticatorScreen extends StatelessAuthenticatorComponent {
  const AuthenticatorScreen({
    Key? key,
    required this.screen,
  }) : super(key: key);

  const AuthenticatorScreen.signup({Key? key})
      : this(key: key, screen: AuthScreen.signup);

  const AuthenticatorScreen.signin({Key? key})
      : this(key: key, screen: AuthScreen.signin);

  const AuthenticatorScreen.confirmSignup({Key? key})
      : this(key: key, screen: AuthScreen.confirmSignup);

  const AuthenticatorScreen.confirmSignInMfa({Key? key})
      : this(key: key, screen: AuthScreen.confirmSigninMfa);

  const AuthenticatorScreen.confirmSignInNewPassword({Key? key})
      : this(key: key, screen: AuthScreen.confirmSigninNewPassword);

  const AuthenticatorScreen.sendCode({Key? key})
      : this(key: key, screen: AuthScreen.sendCode);

  const AuthenticatorScreen.resetPassword({Key? key})
      : this(key: key, screen: AuthScreen.resetPassword);

  const AuthenticatorScreen.verifyUser({Key? key})
      : this(key: key, screen: AuthScreen.verifyUser);

  const AuthenticatorScreen.confirmVerifyUser({Key? key})
      : this(key: key, screen: AuthScreen.confirmVerifyUser);

  final AuthScreen screen;

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    final TitleResolver titleResolver = stringResolver.titles;
    final Size screenSize = MediaQuery.of(context).size;
    final bool isDesktop =
        screenSize.width > AuthenticatorContainerConstants.landScapeView;
    final double containerWidth;

    if (isDesktop) {
      containerWidth = AuthenticatorContainerConstants.mediumWidth;
    } else {
      containerWidth = AuthenticatorContainerConstants.smallWidth;
    }

    final form = InheritedForms.of(context)[screen];
    return Container(
      constraints: BoxConstraints(maxWidth: containerWidth),
      padding: const EdgeInsets.all(AuthenticatorContainerConstants.padding),
      margin: const EdgeInsets.all(AuthenticatorContainerConstants.padding) +
          EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
      color: AmplifyColors.backgroundPrimary,
      child: Column(
        children: <Widget>[
          Text(
            titleResolver.resolve(context, screen),
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: AuthenticatorContainerConstants.gap,
          ),
          form,
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<AuthScreen>('screen', screen));
  }
}
