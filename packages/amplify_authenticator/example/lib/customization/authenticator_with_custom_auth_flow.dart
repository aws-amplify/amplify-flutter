import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';

import '../main.dart';

// A custom authenticator widget with a custom layout
//
// This authenticator provides custom views for Sign In and Sign Up,
// but falls back on the standard views for all other states
//
// The custom views for sign up & sign in add an app logo and change the
// navigation from a TabBar to buttons at the bottom of the screen
class AuthenticatorWithCustomAuthFlow extends StatelessWidget {
  const AuthenticatorWithCustomAuthFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      // If a builder method is provided the authenticator will
      // use this to build the authenticator based on the current state.
      //
      // state is the current state of the authenticator. It contains the
      // current auth step (sign in, sign out, etc.), the form data, and
      // methods for updating this state.
      //
      // child is widget that would be displayed without the use of a custom
      // builder. If currentStep is AuthenticatorStep.authenticated, this will
      // be the material app. Otherwise this will be a prebuilt widget from
      // amplify_authenticator to handle the current AuthenticatorStep
      authenticatorBuilder: (context, state) {
        switch (state.currentStep) {
          case AuthenticatorStep.signIn:
            return CustomSignInView(state: state);
          case AuthenticatorStep.confirmSignInCustomAuth:
            return CustomConfirmSignInView(state: state);
          default:
            // returning null will default to the prebuilt authenticator for
            // all steps other than signIn and signUp
            return null;
        }
      },
      child: MaterialApp(
        theme: ThemeData.from(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepPurple,
            backgroundColor: Colors.white,
            brightness: Brightness.light,
          ),
        ),
        darkTheme: ThemeData.from(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepPurple,
            backgroundColor: Colors.black,
            brightness: Brightness.dark,
          ),
        ),
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        builder: Authenticator.builder(),
        initialRoute: '/routeA',
        routes: {
          '/routeA': (BuildContext context) => const RouteA(),
          '/routeB': (BuildContext context) => const RouteB(),
        },
      ),
    );
  }
}

class CustomConfirmSignInView extends StatelessWidget {
  const CustomConfirmSignInView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final AuthenticatorState state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: AuthenticatorForm(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // app logo (flutter logo used for example)
                const Center(child: FlutterLogo(size: 100)),

                // custom challenge field
                if (state.publicChallengeParams.isNotEmpty)
                  ConfirmSignInFormField.authChallengeCustom(
                      title: state.publicChallengeParams['fieldTitle'],
                      hintText: state.publicChallengeParams['fieldHint']),

                // prebuilt sign up button from amplify_authenticator package
                const ConfirmSignInCustomButton(),

                const SizedBox(height: 16),
                const Divider(),

                // custom button to take the user to sign in
                NavigateToSignInButton(state: state),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomSignInView extends StatelessWidget {
  const CustomSignInView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final AuthenticatorState state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: AuthenticatorForm(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // app logo (flutter logo used for example)
                const Center(child: FlutterLogo(size: 100)),

                // custom challenge field
                SignInFormField.username(),

                // prebuilt sign up button from amplify_authenticator package
                const SignInButton(),

                const SizedBox(height: 16),
                const Divider(),

                // custom button to take the user to sign in
                NavigateToSignUpButton(state: state),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavigateToSignInButton extends StatelessWidget {
  const NavigateToSignInButton({
    Key? key,
    required this.state,
  }) : super(key: key);

  final AuthenticatorState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: state.abortSignIn,
          child: const Text('Cancel Sign In'),
        ),
      ],
    );
  }
}

class NavigateToSignUpButton extends StatelessWidget {
  const NavigateToSignUpButton({
    Key? key,
    required this.state,
  }) : super(key: key);

  final AuthenticatorState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don\'t have an account?'),
        TextButton(
          onPressed: () => state.changeStep(
            AuthenticatorStep.signUp,
          ),
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}
