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

library amplify_authenticator;

import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/enums/alias.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';
import 'package:amplify_authenticator/src/screens/loading_screen.dart';
import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/text_customization/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/widgets/auth_exceptions.dart';
import 'package:amplify_authenticator/src/widgets/form.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_flutter/src/config/amplify_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

export 'package:amplify_authenticator/src/enums/alias.dart';
export 'package:amplify_authenticator/src/text_customization/auth_strings_resolver.dart';
export 'package:amplify_authenticator/src/widgets/button.dart'
    show SignOutButton;

class Authenticator extends StatefulWidget {
  /// # Amplify Authenticator
  ///
  /// A widget that allows customers to authenticate their apps.
  ///
  /// The Authenticator widget requires two arguments, a child widget and an username alias
  /// to define the initial authentication flow.
  ///
  /// This authenticator accepts the following custom forms, sign in, sign up and confirm sign in.
  ///
  /// Note that working with custom forms is optional. Thus, if no additional arguments
  /// are passed, the authenticator will defined the following default forms with their
  /// respective form fields:
  ///
  /// 1. Sign in:
  ///     - Alias (username, email or phone number)
  ///     - Password
  /// 2. Sign Up:
  ///     - Username
  ///     - Password
  ///     - Email
  ///     - Phone Number
  /// 3. Confirm Sign in
  ///     - define
  ///     - define
  ///     - define
  ///
  const Authenticator({
    Key? key,
    this.usernameAlias = Alias.username,
    this.signInForm = const SignInForm(),
    this.signUpForm = const SignUpForm(),
    this.confirmSignInMFAForm = const ConfirmSignInMFAForm(),
    this.stringResolver = const AuthStringResolver(),
    required this.child,
  }) : super(key: key);

  ///Optional username alias to setup the preferred sign in method,
  ///which can be signing in users with username, email or phone number.
  ///
  /// ```dart
  ///     Alias.username
  ///     Alias.email
  ///     Alias.phone_number
  ///     Alias.email_phone_number
  /// ```
  final Alias usernameAlias;

  /// The form to display when confirming a sign in with MFA.
  final ConfirmSignInMFAForm confirmSignInMFAForm;

  /// The form to display during sign up.
  final SignInForm signInForm;

  /// The form to display during sign in.
  final SignUpForm signUpForm;

  final AuthStringResolver stringResolver;

  /// This widget will be displayed after a user has signed in.
  final Widget child;

  @override
  _AuthenticatorState createState() => _AuthenticatorState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<Alias>('usernameAlias', usernameAlias));
    properties.add(DiagnosticsProperty<AuthStringResolver>(
        'stringResolver', stringResolver));
  }
}

class _AuthenticatorState extends State<Authenticator> {
  final AuthService _authService = AmplifyAuthService();
  late final StateMachineBloc _stateMachineBloc;
  AmplifyConfig? _config;
  late List<String> _missingConfigValues;
  bool _configInitialized = false;

  @override
  void initState() {
    super.initState();
    _stateMachineBloc = StateMachineBloc(_authService)..add(GetCurrentUser());
    waitForConfiguration();
  }

  Future<void> waitForConfiguration() async {
    await Amplify.asyncConfig.then((config) {
      setState(() {
        _config = config;
        _configInitialized = true;
        _missingConfigValues = missingConfigValues(config);
      });
    });
  }

  List<String> missingConfigValues(AmplifyConfig? config) {
    List<String> missingValues = [];
    var cognitoPlugin = config?.auth?.awsCognitoAuthPlugin?.auth?['Default'];
    cognitoPlugin ?? missingValues.add('auth.plugins.Auth.Default');
    cognitoPlugin?.signupAttributes?.length ??
        missingValues.add('auth.plugins.Auth.Default.signUpAttributes');
    cognitoPlugin?.passwordProtectionSettings ??
        missingValues
            .add('auth.plugins.Auth.Default.passwordProtectionSettings');
    return missingValues;
  }

  @override
  Widget build(BuildContext context) {
    if (_configInitialized && _missingConfigValues.isNotEmpty) {
      throw StateError('''Encountered problem(s) building the Authenticator.
          Your amplifyconfiguration.dart file is missing required values: ${_missingConfigValues.join('\n')}). 
          You should correct your amplifyconfiguration.dart file and restart your app.''');
    }

    return InheritedAuthBloc(
      key: const Key(keyInheritedAuthBloc),
      authBloc: _stateMachineBloc,
      child: InheritedConfig(
        config: _config,
        child: InheritedAuthViewModel(
          key: const Key(keyInheritedAuthViewModel),
          viewModel: AuthViewModel(_stateMachineBloc),
          child: InheritedStrings(
            resolver: widget.stringResolver,
            child: InheritedForms(
              confirmSignInNewPasswordForm:
                  const ConfirmSignInNewPasswordForm(),
              resetPasswordForm: const ResetPasswordForm(),
              sendCodeForm: const SendCodeForm(),
              signInForm: widget.signInForm,
              signUpForm: widget.signUpForm,
              confirmSignUpForm: const ConfirmSignUpForm(),
              confirmSignInMFAForm: widget.confirmSignInMFAForm,
              verifyUserForm: const VerifyUserForm(),
              confirmVerifyUserForm: const ConfirmVerifyUserForm(),
              child: Scaffold(
                  body: StreamBuilder(
                stream: _stateMachineBloc.stream,
                builder: (context, snapshot) {
                  final state = (snapshot.data != null &&
                          _configInitialized &&
                          _config?.auth != null)
                      ? snapshot.data
                      : const AuthLoading();
                  final Widget screen;
                  if (state is AuthLoading) {
                    screen = const LoadingScreen();
                  } else if (state is Authenticated) {
                    return widget.child;
                  } else if (state is AuthFlow) {
                    screen = AuthenticatorScreen(screen: state.screen);
                  } else {
                    screen = const AuthenticatorScreen.signin();
                  }

                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const AuthExceptionsWidget(),
                            screen,
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _stateMachineBloc.dispose();
    super.dispose();
  }
}
