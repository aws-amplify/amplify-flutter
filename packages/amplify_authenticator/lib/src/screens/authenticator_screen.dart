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

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/enums/enums.dart';
import 'package:amplify_authenticator/src/l10n/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
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

  const AuthenticatorScreen.resetPassword({Key? key})
      : this(key: key, screen: AuthScreen.resetPassword);

  const AuthenticatorScreen.confirmResetPassword({Key? key})
      : this(key: key, screen: AuthScreen.confirmResetPassword);

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
    final Size screenSize = MediaQuery.of(context).size;
    final bool isDesktop =
        screenSize.width > AuthenticatorContainerConstants.landScapeView;
    final double containerWidth;

    if (isDesktop) {
      containerWidth = AuthenticatorContainerConstants.mediumWidth;
    } else {
      containerWidth = AuthenticatorContainerConstants.smallWidth;
    }

    const signInUpTabs = [AuthScreen.signin, AuthScreen.signup];
    final Widget child;
    switch (screen) {
      case AuthScreen.signin:
        child = const AuthenticatorTabView(tabs: signInUpTabs, initialIndex: 0);
        break;
      case AuthScreen.signup:
        child = const AuthenticatorTabView(tabs: signInUpTabs, initialIndex: 1);
        break;
      case AuthScreen.confirmSignup:
      case AuthScreen.confirmSigninMfa:
      case AuthScreen.confirmSigninNewPassword:
      case AuthScreen.resetPassword:
      case AuthScreen.confirmResetPassword:
      case AuthScreen.verifyUser:
      case AuthScreen.confirmVerifyUser:
        child = _FormWrapperView(screen: screen);
    }

    return Container(
      constraints: BoxConstraints(maxWidth: containerWidth),
      color: AmplifyTheme.of(context).backgroundPrimary,
      child: SafeArea(
        child: child,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<AuthScreen>('screen', screen));
  }
}

class _FormWrapperView extends StatelessAuthenticatorComponent {
  const _FormWrapperView({
    Key? key,
    required this.screen,
  }) : super(key: key);

  final AuthScreen screen;

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    final titleResolver = stringResolver.titles;
    final form = InheritedForms.of(context)[screen];

    return Padding(
      padding: const EdgeInsets.all(AuthenticatorContainerConstants.padding),
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

@visibleForTesting
class AuthenticatorTabView
    extends AuthenticatorComponent<AuthenticatorTabView> {
  const AuthenticatorTabView({
    Key? key,
    required this.tabs,
    this.initialIndex = 0,
  }) : super(key: key);

  final List<AuthScreen> tabs;
  final int initialIndex;

  @override
  _AuthenticatorTabViewState createState() => _AuthenticatorTabViewState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<AuthScreen>('tabs', tabs));
    properties.add(IntProperty('initialIndex', initialIndex));
  }
}

class _AuthenticatorTabViewState
    extends AuthenticatorComponentState<AuthenticatorTabView>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;

  AuthScreen get selectedTab => widget.tabs[_controller.index];

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      initialIndex: widget.initialIndex,
      length: widget.tabs.length,
      vsync: this,
    );
    _controller.addListener(_updateForm);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updateForm() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _controller,
          tabs: [
            for (var tab in widget.tabs)
              Tab(
                key: ValueKey(tab),
                text: stringResolver.buttons.resolve(context, tab.tabTitle),
              ),
          ],
          labelColor: AmplifyTheme.of(context).tabLabelColor,
          indicatorColor: AmplifyTheme.of(context).tabIndicatorColor,
        ),
        _FormWrapperView(screen: selectedTab),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<AuthScreen>('selectedTab', selectedTab));
  }
}

extension on AuthScreen {
  ButtonResolverKey get tabTitle {
    switch (this) {
      case AuthScreen.signup:
        return ButtonResolverKey.signup;
      case AuthScreen.signin:
        return ButtonResolverKey.signin;
      case AuthScreen.confirmSignup:
      case AuthScreen.confirmSigninMfa:
      case AuthScreen.confirmSigninNewPassword:
      case AuthScreen.resetPassword:
      case AuthScreen.confirmResetPassword:
      case AuthScreen.verifyUser:
      case AuthScreen.confirmVerifyUser:
        throw StateError('Invalid screen: $this');
    }
  }
}
