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
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthenticatorScreen extends StatelessAuthenticatorComponent {
  const AuthenticatorScreen({
    Key? key,
    required this.step,
  }) : super(key: key);

  const AuthenticatorScreen.signUp({Key? key})
      : this(key: key, step: AuthenticatorStep.signUp);

  const AuthenticatorScreen.signIn({Key? key})
      : this(key: key, step: AuthenticatorStep.signIn);

  const AuthenticatorScreen.confirmSignUp({Key? key})
      : this(key: key, step: AuthenticatorStep.confirmSignUp);

  const AuthenticatorScreen.confirmSignInMfa({Key? key})
      : this(key: key, step: AuthenticatorStep.confirmSignInMfa);

  const AuthenticatorScreen.confirmSignInNewPassword({Key? key})
      : this(key: key, step: AuthenticatorStep.confirmSignInNewPassword);

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
    AuthenticatorState state,
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

    const signInUpTabs = [AuthenticatorStep.signIn, AuthenticatorStep.signUp];
    final Widget child;
    switch (step) {
      case AuthenticatorStep.onboarding:
      case AuthenticatorStep.signIn:
        child = const AuthenticatorTabView(tabs: signInUpTabs, initialIndex: 0);
        break;
      case AuthenticatorStep.signUp:
        child = const AuthenticatorTabView(tabs: signInUpTabs, initialIndex: 1);
        break;
      case AuthenticatorStep.confirmSignUp:
      case AuthenticatorStep.confirmSignInCustomAuth:
      case AuthenticatorStep.confirmSignInMfa:
      case AuthenticatorStep.confirmSignInNewPassword:
      case AuthenticatorStep.resetPassword:
      case AuthenticatorStep.confirmResetPassword:
      case AuthenticatorStep.verifyUser:
      case AuthenticatorStep.confirmVerifyUser:
        child = _FormWrapperView(step: step);
        break;
      case AuthenticatorStep.loading:
        throw StateError('Invalid step: $this');
    }

    return Container(
      constraints: BoxConstraints(maxWidth: containerWidth),
      child: SafeArea(child: child),
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
    AuthenticatorState state,
    AuthStringResolver stringResolver,
  ) {
    final titleResolver = stringResolver.titles;
    final form = InheritedForms.of(context)[step];
    final padding = InheritedConfig.of(context).padding;

    return Padding(
      padding: padding,
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
  AuthenticatorComponentState<AuthenticatorTabView> createState() =>
      _AuthenticatorTabViewState();

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

  Color getTabLabelColor(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    final labelColor = Theme.of(context).tabBarTheme.labelColor;
    final textColor = Theme.of(context).textTheme.bodyText1?.color;
    final fallbackColor = isDark ? Colors.white : Colors.black;
    return labelColor ?? textColor ?? fallbackColor;
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
          labelColor: getTabLabelColor(context),
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
      case AuthenticatorStep.onboarding:
      case AuthenticatorStep.signUp:
        return ButtonResolverKey.signUp;
      case AuthenticatorStep.signIn:
        return ButtonResolverKey.signIn;
      case AuthenticatorStep.confirmSignUp:
      case AuthenticatorStep.confirmSignInCustomAuth:
      case AuthenticatorStep.confirmSignInMfa:
      case AuthenticatorStep.confirmSignInNewPassword:
      case AuthenticatorStep.resetPassword:
      case AuthenticatorStep.confirmResetPassword:
      case AuthenticatorStep.verifyUser:
      case AuthenticatorStep.confirmVerifyUser:
      case AuthenticatorStep.loading:
        throw StateError('Invalid step: $this');
    }
  }
}
