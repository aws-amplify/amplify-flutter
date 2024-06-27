// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: diagnostic_describe_all_properties, invalid_use_of_visible_for_testing_member, implementation_imports

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_authenticator_test/src/amplify_outputs/email_config.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Authenticator Test App, using Amplify and Auth stubs.
class MockAuthenticatorApp extends StatefulWidget {
  const MockAuthenticatorApp({
    super.key,
    this.config = emailConfig,
    this.lightTheme,
    this.darkTheme,
    this.initialStep = AuthenticatorStep.signIn,
    this.authPlugin,
    this.signInForm,
    this.signUpForm,
    this.child,
  });

  final String config;
  final ThemeData? lightTheme;
  final ThemeData? darkTheme;
  final AuthenticatorStep initialStep;
  final AuthPluginInterface? authPlugin;
  final SignInForm? signInForm;
  final SignUpForm? signUpForm;
  final Widget? child;

  @override
  State<MockAuthenticatorApp> createState() => _MockAuthenticatorAppState();
}

class _MockAuthenticatorAppState extends State<MockAuthenticatorApp> {
  Future<void> _configureAmplify() async {
    try {
      Amplify = AmplifyStub();
      await Amplify.addPlugin(widget.authPlugin ?? AmplifyAuthCognitoStub());
      await Amplify.configure(widget.config);
    } on Exception catch (e) {
      safePrint(e);
    }
  }

  StateMachineBloc get _authBloc {
    final baseBloc = StateMachineBloc(
      authService: AmplifyAuthService(),
      preferPrivateSession: false,
      initialStep: widget.initialStep,
    );
    switch (baseBloc.initialStep) {
      case AuthenticatorStep.loading:
        baseBloc.setState(const LoadingState());
      case AuthenticatorStep.verifyUser:
        baseBloc.setState(
          const VerifyUserFlow(
            unverifiedAttributeKeys: CognitoUserAttributeKey.values,
          ),
        );
      case AuthenticatorStep.continueSignInWithMfaSelection:
        baseBloc.setState(
          const ContinueSignInWithMfaSelection(
            allowedMfaTypes: {
              MfaType.totp,
              MfaType.sms,
            },
          ),
        );
      case AuthenticatorStep.continueSignInWithTotpSetup:
        baseBloc.setState(
          ContinueSignInTotpSetup(
            const TotpSetupDetails(
              sharedSecret: 'sharedSecret',
              username: 'username',
            ),
            Uri.parse(
              'otpauth://totp/My%20Application:username?secret=sharedSecret&issuer=My%20Application',
            ),
          ),
        );
      default:
        baseBloc.add(const AuthLoad());
        break;
    }

    return baseBloc;
  }

  @override
  void initState() {
    _configureAmplify();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      key: authenticatorKey,
      authBlocOverride: _authBloc,
      signInForm: widget.signInForm,
      signUpForm: widget.signUpForm,
      child: widget.child ??
          MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: widget.lightTheme,
            darkTheme: widget.darkTheme,
            themeMode: ThemeMode.system,
            builder: Authenticator.builder(),
            home: const Scaffold(
              key: authenticatedAppKey,
              body: Center(
                child: SignOutButton(),
              ),
            ),
          ),
    );
  }
}
