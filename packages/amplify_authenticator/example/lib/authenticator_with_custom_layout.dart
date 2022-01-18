import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';

import 'main.dart';

// A custom authenticator widget with a custom layout
//
// This authenticator provides custom views for Sign In and Sign Up,
// but falls back on the standard views for all other states
//
// The custom views for sign up & sign in add an app logo and change the
// navigation from a TabBar to buttons at the bottom of the screen
class AuthenticatorWithCustomLayout extends StatelessWidget {
  const AuthenticatorWithCustomLayout({
    Key? key,
    // required this.state,
    // required this.child,
  }) : super(key: key);

  // final AuthenticatorState state;
  // final Widget child;

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        // if an argument is provided to Authenticator.builder,
        // the authenticator will use this to build the authenticator based
        // on the current state.
        //
        // state is the current state of the authenticator. It contains the
        // current auth step (sign in, sign out, etc.), the form data, and
        // methods for updating this state.
        //
        // child is the authenticator screen that would be rendered by default
        // for the given state. This can be used to customize some states, and
        // render the prebuilt authenticator screen for other states.
        builder: Authenticator.builder((context, state, child) {
          switch (state.currentStep) {
            case AuthenticatorStep.signIn:
              return SignInView(state: state);
            case AuthenticatorStep.signUp:
              return SignUpView(state: state);
            default:
              // return the prebuilt authenticator child for all other steps
              return child;
          }
        }),
        initialRoute: '/routeA',
        routes: {
          '/routeA': (BuildContext context) => const RouteA(),
          '/routeB': (BuildContext context) => const RouteB(),
        },
      ),
    );
  }
}

// The widget a user will see when the current step is AuthenticatorStep.signIn
class SignInView extends StatelessWidget {
  const SignInView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final AuthenticatorState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // app logo (flutter logo used for example)
            const Center(child: FlutterLogo(size: 100)),

            // prebuilt sign in form from amplify_authenticator package
            SignInForm(),

            Expanded(child: Container()),

            // custom button to take the user to sign up
            NavigateToSignUpButton(state: state),
          ],
        ),
      ),
    );
  }
}

class SignUpView extends StatelessWidget {
  const SignUpView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final AuthenticatorState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // app logo (flutter logo used for example)
            const Center(child: FlutterLogo(size: 100)),

            // prebuilt sign up form from amplify_authenticator package
            SignUpForm(),

            Expanded(child: Container()),

            // custom button to take the user to sign in
            NavigateToSignInButton(state: state),
          ],
        ),
      ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Don\'t have an account?'),
          TextButton(
            onPressed: state.goToSignUp,
            child: const Text('Sign Up'),
          ),
        ],
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Already have an account?'),
          TextButton(
            onPressed: state.goToSignIn,
            child: const Text('Sign In'),
          ),
        ],
      ),
    );
  }
}
