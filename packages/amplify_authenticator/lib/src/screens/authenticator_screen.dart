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
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthenticatorScreen extends StatelessAuthenticatorComponent {
  const AuthenticatorScreen({
    Key? key,
    required this.step,
  }) : super(key: key);

  const AuthenticatorScreen.signup({Key? key})
      : this(key: key, step: AuthenticatorStep.signup);

  const AuthenticatorScreen.signin({Key? key})
      : this(key: key, step: AuthenticatorStep.signin);

  const AuthenticatorScreen.confirmSignup({Key? key})
      : this(key: key, step: AuthenticatorStep.confirmSignup);

  const AuthenticatorScreen.confirmSignInMfa({Key? key})
      : this(key: key, step: AuthenticatorStep.confirmSigninMfa);

  const AuthenticatorScreen.confirmSignInNewPassword({Key? key})
      : this(key: key, step: AuthenticatorStep.confirmSigninNewPassword);

  const AuthenticatorScreen.resetPassword({Key? key})
      : this(key: key, step: AuthenticatorStep.resetPassword);

  const AuthenticatorScreen.confirmResetPassword({Key? key})
      : this(key: key, step: AuthenticatorStep.confirmResetPassword);

  const AuthenticatorScreen.verifyUser({Key? key})
      : this(key: key, step: AuthenticatorStep.verifyUser);

  const AuthenticatorScreen.confirmVerifyUser({Key? key})
      : this(key: key, step: AuthenticatorStep.confirmVerifyUser);

  final AuthenticatorStep step;

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

    const signInUpTabs = [AuthenticatorStep.signin, AuthenticatorStep.signup];
    final Widget child;
    switch (step) {
      case AuthenticatorStep.initial:
      case AuthenticatorStep.signin:
        child = const AuthenticatorTabView(tabs: signInUpTabs, initialIndex: 0);
        break;
      case AuthenticatorStep.signup:
        child = const AuthenticatorTabView(tabs: signInUpTabs, initialIndex: 1);
        break;
      case AuthenticatorStep.confirmSignup:
      case AuthenticatorStep.confirmSigninMfa:
      case AuthenticatorStep.confirmSigninNewPassword:
      case AuthenticatorStep.resetPassword:
      case AuthenticatorStep.confirmResetPassword:
      case AuthenticatorStep.verifyUser:
      case AuthenticatorStep.confirmVerifyUser:
        child = _FormWrapperView(step: step);
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
    properties.add(EnumProperty<AuthenticatorStep>('step', step));
  }
}

class _FormWrapperView extends StatelessAuthenticatorComponent {
  const _FormWrapperView({
    Key? key,
    required this.step,
  }) : super(key: key);

  final AuthenticatorStep step;

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    final titleResolver = stringResolver.titles;
    final form = InheritedForms.of(context)[step];

    return Padding(
      padding: const EdgeInsets.all(AuthenticatorContainerConstants.padding),
      child: Column(
        children: <Widget>[
          Text(
            titleResolver.resolve(context, step),
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
    properties.add(EnumProperty<AuthenticatorStep>('step', step));
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

  final List<AuthenticatorStep> tabs;
  final int initialIndex;

  @override
  _AuthenticatorTabViewState createState() => _AuthenticatorTabViewState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<AuthenticatorStep>('tabs', tabs));
    properties.add(IntProperty('initialIndex', initialIndex));
  }
}

class _AuthenticatorTabViewState
    extends AuthenticatorComponentState<AuthenticatorTabView>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;

  AuthenticatorStep get selectedTab => widget.tabs[_controller.index];

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
        _FormWrapperView(step: selectedTab),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<AuthenticatorStep>('selectedTab', selectedTab));
  }
}

extension on AuthenticatorStep {
  ButtonResolverKey get tabTitle {
    switch (this) {
      case AuthenticatorStep.initial:
      case AuthenticatorStep.signup:
        return ButtonResolverKey.signup;
      case AuthenticatorStep.signin:
        return ButtonResolverKey.signin;
      case AuthenticatorStep.confirmSignup:
      case AuthenticatorStep.confirmSigninMfa:
      case AuthenticatorStep.confirmSigninNewPassword:
      case AuthenticatorStep.resetPassword:
      case AuthenticatorStep.confirmResetPassword:
      case AuthenticatorStep.verifyUser:
      case AuthenticatorStep.confirmVerifyUser:
        throw StateError('Invalid step: $this');
    }
  }
}
