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

import 'package:flutter/material.dart';

//State
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';

//Screens
import 'package:amplify_authenticator/src/screens/loading_screen.dart';
import 'package:amplify_authenticator/src/screens/signin_screen.dart';
import 'package:amplify_authenticator/src/screens/signup_screen.dart';
import 'package:amplify_authenticator/src/screens/confirm_signup_screen.dart';

//Bloc
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';

//Model
import 'package:amplify_authenticator/src/models/auth_viewmodel.dart';

//Services
import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';

//Widgets
import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:amplify_authenticator/src/widgets/default_forms.dart';

//Exports
export 'package:amplify_authenticator/src/widgets/forms.dart';
export 'package:amplify_authenticator/src/widgets/form_fields.dart';
export 'package:amplify_authenticator/src/widgets/buttons.dart'
    show SignOutButton;

class Authenticator extends StatefulWidget {
  // ignore: public_member_api_docs
  Authenticator(
      {required this.child, signInForm, signUpForm, confirmSignUpForm}) {
    this.signInForm = signInForm ?? DefaultForms.signInForm();
    this.signUpForm = signUpForm ?? DefaultForms.signUpForm();
    this.confirmSignUpForm =
        confirmSignUpForm ?? DefaultForms.confirmSignUpForm();
  }

  SignInForm? signInForm;
  SignUpForm? signUpForm;
  ConfirmSignUpForm? confirmSignUpForm;

  Widget child;

  @override
  _AuthenticatorState createState() => _AuthenticatorState();
}

class _AuthenticatorState extends State<Authenticator> {
  AuthService _authService = AmplifyAuthService();

  StateMachineBloc? _stateMachineBloc;

  @override
  void initState() {
    super.initState();

    _stateMachineBloc = StateMachineBloc(_authService)
      ..authEvent.add(GetCurrentUser());
  }

  @override
  Widget build(BuildContext context) {
    return InheritedAuthBloc(
        authBloc: _stateMachineBloc,
        child: InheritedAuthViewModel(
            authViewModel: AuthViewModel(_stateMachineBloc!),
            child: InheritedForms(
                signInForm: widget.signInForm!,
                signUpForm: widget.signUpForm!,
                confirmSignUpForm: widget.confirmSignUpForm!,
                child: Scaffold(
                  body: StreamBuilder(
                    stream: _stateMachineBloc!.stream,
                    builder: (context, snapshot) {
                      final state = snapshot.data ?? const AuthLoading();
                      Widget? screen;
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
                      }

                      return Center(
                        child: SingleChildScrollView(
                          child: screen,
                        ),
                      );
                    },
                  ),
                ))));
  }

  @override
  void dispose() {
    super.dispose();
    _stateMachineBloc!.dispose();
  }
}
