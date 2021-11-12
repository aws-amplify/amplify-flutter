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
import 'package:amplify_authenticator/src/l10n/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
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
        child = const _TabView(tabs: signInUpTabs, initialIndex: 0);
        break;
      case AuthScreen.signup:
        child = const _TabView(tabs: signInUpTabs, initialIndex: 1);
        break;
      case AuthScreen.confirmSignup:
      case AuthScreen.confirmSigninMfa:
      case AuthScreen.confirmSigninNewPassword:
      case AuthScreen.sendCode:
      case AuthScreen.resetPassword:
      case AuthScreen.verifyUser:
      case AuthScreen.confirmVerifyUser:
        child = _FormWrapperView(screen: screen);
    }

    return Container(
      constraints: BoxConstraints(maxWidth: containerWidth),
      margin: const EdgeInsets.all(AuthenticatorContainerConstants.padding) +
          EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
      color: AmplifyTheme.of(context).backgroundPrimary,
      child: child,
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

class _TabView extends AuthenticatorComponent<_TabView> {
  const _TabView({
    Key? key,
    required this.tabs,
    this.initialIndex = 0,
  }) : super(key: key);

  final List<AuthScreen> tabs;
  final int initialIndex;

  @override
  _TabViewState createState() => _TabViewState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<AuthScreen>('tabs', tabs));
    properties.add(IntProperty('initialIndex', initialIndex));
  }
}

class _TabViewState extends AuthenticatorComponentState<_TabView>
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

  List<Tab> get _tabs {
    final tabs = <Tab>[];
    final useAmplifyTheme = InheritedConfig.of(context).useAmplifyTheme;
    for (var tab in widget.tabs) {
      if (useAmplifyTheme) {
        tabs.add(Tab(
          key: ValueKey(tab),
          child: _TabButtonView(
            screen: tab,
            selected: selectedTab == tab,
          ),
        ));
      } else {
        tabs.add(Tab(
          key: ValueKey(tab),
          text: stringResolver.buttons.resolve(context, tab.tabTitle),
        ));
      }
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AmplifyTheme.of(context).shadowPrimary,
      elevation: 4.0,
      shape: const Border(),
      child: Column(
        children: [
          TabBar(
            controller: _controller,
            tabs: _tabs,
            labelColor: AmplifyTheme.of(context).tabColor,
          ),
          _FormWrapperView(screen: selectedTab),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<AuthScreen>('selectedTab', selectedTab));
  }
}

/// Custom tab component for Amplify theme.
class _TabButtonView extends StatelessAuthenticatorComponent {
  const _TabButtonView({
    Key? key,
    required this.screen,
    required this.selected,
  }) : super(key: key);

  final AuthScreen screen;
  final bool selected;

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    final resolver = stringResolver.buttons;
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: selected
                  ? AmplifyTheme.of(context).primaryColor
                  : AmplifyTheme.of(context).borderSecondary!,
            ),
          ),
          color: selected
              ? AmplifyTheme.of(context).backgroundPrimary
              : AmplifyTheme.of(context).backgroundDisabled,
        ),
        child: Center(
          child: Text(
            resolver.resolve(context, screen.tabTitle),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: selected
                  ? AmplifyTheme.of(context).fontInteractive
                  : AmplifyTheme.of(context).fontDisabled,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<AuthScreen>('screen', screen));
    properties.add(DiagnosticsProperty<bool>('selected', selected));
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
      case AuthScreen.sendCode:
      case AuthScreen.resetPassword:
      case AuthScreen.verifyUser:
      case AuthScreen.confirmVerifyUser:
        throw StateError('Invalid screen: $this');
    }
  }
}
