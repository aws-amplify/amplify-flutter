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

import 'package:amplify_authenticator/src/widgets/default_forms/default_confirm_signin_mfa.dart';
import 'package:amplify_authenticator/src/widgets/default_forms/default_confirm_signin_new_password.dart';
import 'package:amplify_authenticator/src/widgets/default_forms/default_confirm_signup.dart';
import 'package:amplify_authenticator/src/widgets/default_forms/default_reset_password.dart';
import 'package:amplify_authenticator/src/widgets/default_forms/default_send_code.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_flutter/src/config/amplify_config.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/keys.dart';

//State
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';

//Screens
import 'package:amplify_authenticator/src/screens/loading_screen.dart';
import 'package:amplify_authenticator/src/screens/signin_screen.dart';
import 'package:amplify_authenticator/src/screens/signup_screen.dart';
import 'package:amplify_authenticator/src/screens/confirm_signup_screen.dart';
import 'package:amplify_authenticator/src/screens/send_code_screen.dart';
import 'package:amplify_authenticator/src/screens/confirm_signin_new_password.dart';
import 'package:amplify_authenticator/src/screens/reset_password_screen.dart';
import 'package:amplify_authenticator/src/screens/confirm_signin_mfa_screen.dart';

//Bloc
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';

//Views
import 'package:amplify_authenticator/src/views/signin_viewmodel.dart';
import 'package:amplify_authenticator/src/views/signup_viewmodel.dart';
import 'package:amplify_authenticator/src/views/confirm_signup_viewmodel.dart';
import 'package:amplify_authenticator/src/views/confirm_signin_viewmodel.dart';

//Enums
import 'package:amplify_authenticator/src/enums/alias.dart';

//Services
import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';

//Text Customization
import 'package:amplify_authenticator/src/text_customization/auth_strings_resolver.dart';

//Widgets
import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:amplify_authenticator/src/widgets/auth_exceptions.dart';
import 'package:amplify_authenticator/src/widgets/default_forms/default_signup.dart';
import 'package:amplify_authenticator/src/widgets/default_forms/default_signin.dart';

//Exports
export 'package:amplify_authenticator/src/enums/alias.dart';
export 'package:amplify_authenticator/src/widgets/forms.dart';
export 'package:amplify_authenticator/src/widgets/form_fields.dart';
export 'package:amplify_authenticator/src/widgets/buttons.dart'
    show SignOutButton;
export 'package:amplify_authenticator/src/text_customization/auth_strings_resolver.dart';

// ignore: must_be_immutable
class Authenticator extends StatefulWidget {
  ///# Amplify Authenticator
  ///
  /// A widget that allows customers to authenticate their apps.
  ///
  ///The Authenticator widget requires two arguments, a child widget and an username alias
  ///to define the initial authentication flow.
  ///
  ///This authenticator accepts the following custom forms, sign in, sign up and confirm sign in.
  ///
  ///Note that working with custom forms is optional. Thus, if no additional arguments
  ///are passed, the authenticator will defined the following default forms with their
  ///respective form fields:
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
  Authenticator(
      {Alias? usernameAlias,
      required this.child,
      SignInForm? signInForm,
      SignUpForm? signUpForm,
      ConfirmSignInMFAForm? confirmSignInMFAForm,
      AuthStringResolver? resolver}) {
    this.resolver = resolver;
    this.signInForm = signInForm;
    this.signUpForm = signUpForm;
    this.confirmSignInMFAForm = confirmSignInMFAForm;
    this.usernameAlias = usernameAlias ?? Alias.username;
  }

  ///Optional username alias to setup the preferred sign in method,
  ///which can be signing in users with username, email or phone number.
  ///
  /// ```dart
  ///     Alias.username
  ///     Alias.email
  ///     Alias.phone_number
  ///     Alias.email_phone_number
  /// ```
  late Alias usernameAlias;

  ConfirmSignInMFAForm? confirmSignInMFAForm;

  /// This form will support the following form field types:
  ///    * username
  ///    * password
  ///    * email
  ///    * phone_number
  ///
  /// ### Example
  /// ```dart
  ///     SignInForm( formFields:
  ///                   FormFields(children: [
  ///                     SignInFormField(
  ///                       type: "username" ,
  ///                       title: "Custom Username Form Field",
  ///                       hintText: "Custom Hint Text",
  ///              ),
  ///           ])
  ///
  /// ```
  SignInForm? signInForm;

  /// This form will support the following form field types:
  /// * username
  /// * password
  /// * birthdate
  /// * email
  /// * family_name
  /// * gender
  /// * given_name
  /// * locate
  /// * middle_name
  /// * name
  /// * nickname
  /// * phone_number
  /// * picture
  /// * preferred_username
  /// * profile
  /// * zoneinfo
  /// * updated_at
  /// * website
  /// * custom
  ///
  /// ### Example
  /// ```dart
  ///     SignInForm( formFields:
  ///                   FormFields(children: [
  ///                     SignUpFormField(
  ///                       type: "username" ,
  ///                       title: "Custom username form field",
  ///                       hintText: "Custom hint text",
  ///                       ),
  ///                     SignUpFormField(
  ///                       type: "password" ,
  ///                       title: "Custom password form field",
  ///                       hintText: "Custom hint text",
  ///                       ),
  ///                     SignUpFormField(
  ///                       type: "email" ,
  ///                       title: "Custom email form field",
  ///                       hintText: "Custom hint text",
  ///                       ),
  ///                     SignUpFormField(
  ///                       type: "website" ,
  ///                       title: "Custom website form field",
  ///                       hintText: "Custom hint text",
  ///                       ),
  ///                     ])
  ///
  /// ```
  SignUpForm? signUpForm;

  /// This widget will be displayed after a user has signed in with some verified credentials.
  final Widget child;

  AuthStringResolver? resolver;

  @override
  _AuthenticatorState createState() => _AuthenticatorState();
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
    _stateMachineBloc = StateMachineBloc(_authService)
      ..authEvent.add(GetCurrentUser());
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
    return missingValues;
  }

  @override
  Widget build(BuildContext context) {
    AuthStringResolver resolver = widget.resolver ?? AuthStringResolver();

    if (_configInitialized && _missingConfigValues.isNotEmpty) {
      throw StateError('''Encountered problem(s) building the Authenticator.
          Your amplifyconfiguration.dart file is missing required values: ${_missingConfigValues.join('\n')}). 
          You should correct your amplifyconfiguration.dart file and restart your app.''');
    }

    /// Check for customizable forms passed into the Authenticator
    var signInForm = widget.signInForm ?? DefaultSignInForm();
    var signUpForm = widget.signUpForm ?? DefaultSignUpForm();
    var confirmSignInMFAForm =
        widget.confirmSignInMFAForm ?? DefaultConfirmSignInMFAForm();
    var confirmSignInNewPasswordForm = DefaultConfirmSignInNewPasswordForm();

    /// Instantiate static forms
    var confirmSignUpForm = DefaultConfirmSignUpForm();

    var resetPasswordForm = DefaultResetPasswordForm();
    var sendCodeForm = DefaultSendCodeForm();

    return InheritedAuthBloc(
        key: const Key(keyInheritedAuthBloc),
        authBloc: _stateMachineBloc,
        child: InheritedAuthViewModel(
            key: const Key(keyInheritedAuthViewModel),
            signInViewModel: SignInViewModel(_stateMachineBloc),
            signUpViewModel: SignUpViewModel(_stateMachineBloc),
            confirmSignUpViewModel: ConfirmSignUpViewModel(_stateMachineBloc),
            confirmSignInViewModel: ConfirmSignInViewModel(_stateMachineBloc),
            child: InheritedStrings(
                resolver: resolver,
                child: InheritedForms(
                  confirmSignInNewPasswordForm: confirmSignInNewPasswordForm,
                  resetPasswordForm: resetPasswordForm,
                  sendCodeForm: sendCodeForm,
                  signInForm: signInForm,
                  signUpForm: signUpForm,
                  confirmSignUpForm: confirmSignUpForm,
                  confirmSignInMFAForm: confirmSignInMFAForm,
                  child: Scaffold(
                      body: StreamBuilder(
                    stream: _stateMachineBloc.stream,
                    builder: (context, snapshot) {
                      final state = (snapshot.data != null &&
                              _configInitialized &&
                              _config?.auth != null)
                          ? snapshot.data
                          : const AuthLoading();
                      late Widget screen;
                      if (state is AuthLoading) {
                        screen = LoadingScreen();
                      } else if (state is Authenticated) {
                        return widget.child;
                      } else if (state is AuthFlow &&
                          state.screen == AuthScreen.signin) {
                        screen = SignInScreen();
                      } else if (state is AuthFlow &&
                          state.screen == AuthScreen.signup) {
                        screen = SignUpScreen();
                      } else if (state is AuthFlow &&
                          state.screen == AuthScreen.confirmSignUp) {
                        screen = ConfirmSignUpScreen();
                      } else if (state is AuthFlow &&
                          state.screen == AuthScreen.confirmSignInMfa) {
                        screen = const ConfirmSignInMFAScreen();
                      } else if (state is AuthFlow &&
                          state.screen == AuthScreen.confirmSignInNewPassword) {
                        screen = ConfirmSignInNewPasswordScreen();
                      } else if (state is AuthFlow &&
                          state.screen == AuthScreen.sendCode) {
                        screen = const SendCodeScreen();
                      } else if (state is AuthFlow &&
                          state.screen == AuthScreen.resetPassword) {
                        screen = const ResetPasswordScreen();
                      } else {
                        screen = SignInScreen();
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
                ))));
  }

  @override
  void dispose() {
    _stateMachineBloc.dispose();
    super.dispose();
  }
}
