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

import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/screens/confirm_signin_screen.dart';
import 'package:amplify_authenticator/src/internationalization/AuthenticatorLocalizations.dart';
import 'package:flutter/foundation.dart';
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

//Views
import 'package:amplify_authenticator/src/views/signin_viewmodel.dart';
import 'package:amplify_authenticator/src/views/signup_viewmodel.dart';
import 'package:amplify_authenticator/src/views/confirm_signup_viewmodel.dart';
import 'package:amplify_authenticator/src/views/confirm_signin_viewmodel.dart';


//Services
import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';

//Widgets
import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:amplify_authenticator/src/widgets/default_forms.dart';

//Exports
export 'package:amplify_authenticator/src/widgets/forms.dart';
export 'package:amplify_authenticator/src/widgets/form_fields.dart';
export 'package:amplify_authenticator/src/widgets/buttons.dart' show SignOutButton;
export 'package:amplify_authenticator/src/internationalization/AuthenticatorLocalizationsDelegate.dart';

///
// ignore: must_be_immutable
class Authenticator extends StatefulWidget {
  ///# Amplify Authenticator
  ///
  /// A widget that allows customers to authenticate their apps.
  ///
  ///This wrapper requires a child widget to be passed as an argument.
  ///To work with custom forms there is the need to pass up to 3 additional
  ///arguments, signInForm, signUpForm and confirmSignInForm with their
  ///respective form fields.
  ///
  ///Note that working with custom forms is optional. Thus, if no additional arguments
  ///are passed, the authenticator will defined the following default forms with their
  ///respective form fields:
  ///
  /// 1. Sign in:
  ///     - Username
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

      {required this.child,
      SignInForm? signInForm,
      SignUpForm? signUpForm,
      ConfirmSignInForm? confirmSignInForm}) {
    this.signInForm = signInForm ?? DefaultForms.signInForm();
    this.signUpForm = signUpForm ?? DefaultForms.signUpForm();
    this.confirmSignInForm =
        confirmSignInForm ?? DefaultForms.confirmSignInForm();

      {required this.child, SignInForm? signInForm, SignUpForm? signUpForm}) {
    this.signInForm = signInForm ?? DefaultForms.signInForm();
    this.signUpForm = signUpForm ?? DefaultForms.signUpForm();

  }

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
  late final SignInForm signInForm;

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
  late final SignUpForm signUpForm;

  final ConfirmSignUpForm confirmSignUpForm = DefaultForms.confirmSignUpForm();


  /// This form will support the following form field types:
  /// * code
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
  ///     ConfirmSignInForm( formFields:
  ///                   FormFields(children: [
  ///                     ConfirmSignInFormField(
  ///                       type: "code" ,
  ///                       title: "Custom code form field",
  ///                       hintText: "Custom hint text",
  ///                       ),
  ///                     ConfirmSignInFormField(
  ///                       type: "password" ,
  ///                       title: "Custom password form field",
  ///                       hintText: "Custom hint text",
  ///                       ),
  ///
  ///                     ])
  ///
  /// ```
  late final ConfirmSignInForm confirmSignInForm;

 
  /// This widget will be displayed after a user has signed in with some verified credentials.
final Widget child;


  @override
  _AuthenticatorState createState() => _AuthenticatorState();
}

class _AuthenticatorState extends State<Authenticator> {
  final AuthService _authService = AmplifyAuthService();

  late final StateMachineBloc _stateMachineBloc;

  @override
  void initState() {
    super.initState();
    _stateMachineBloc = StateMachineBloc(_authService)
      ..authEvent.add(GetCurrentUser());
  }

  @override
  Widget build(BuildContext context) {

    // widget.authenticatorLocalizations.of(context).title;
    

    return InheritedAuthBloc(
        key: const Key(keyInheritedAuthBloc),
        authBloc: _stateMachineBloc,
        child: InheritedAuthViewModel(
            key: const Key(keyInheritedAuthViewModel),
            signInViewModel: SignInViewModel(_stateMachineBloc),
            signUpViewModel: SignUpViewModel(_stateMachineBloc),
            confirmSignUpViewModel: ConfirmSignUpViewModel(_stateMachineBloc),
            confirmSignInViewModel: ConfirmSignInViewModel(_stateMachineBloc),

            child: InheritedForms(
                signInForm: widget.signInForm,
                signUpForm: widget.signUpForm,
                confirmSignUpForm: widget.confirmSignUpForm,
                confirmSignInForm: widget.confirmSignInForm,

                child: Scaffold(
                  body: StreamBuilder(
                    stream: _stateMachineBloc.stream,
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
                      } else if (state is AuthFlow &&
                          state.screen == AuthScreen.confirmSignIn) {
                        screen = ConfirmSignInScreen();

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
    _stateMachineBloc.dispose();
     super.dispose();
  }
}
