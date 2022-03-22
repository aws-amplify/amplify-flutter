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
class AuthenticatorWithCustomLayout extends StatelessWidget {
  const AuthenticatorWithCustomLayout({Key? key}) : super(key: key);

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
            return SignInView(state: state);
          case AuthenticatorStep.signUp:
            return SignUpView(state: state);
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

// The widget a user will see when the current step is AuthenticatorStep.signIn
class SignInView extends StatelessWidget {
  const SignInView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final AuthenticatorState state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // app logo (flutter logo used for example)
              const Center(child: FlutterLogo(size: 100)),

              // prebuilt sign in form from amplify_authenticator package
              SignInForm(),

              const SizedBox(height: 16),
              const Divider(),

              // custom button to take the user to sign up
              NavigateToSignUpButton(state: state),
            ],
          ),
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
    return SafeArea(
      child: SingleChildScrollView(
        child: AuthenticatorForm(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // app logo (flutter logo used for example)
                const Center(child: FlutterLogo(size: 100)),

                // prebuilt fields for username, email, and password from
                // amplify_authenticator package
                SignUpFormField.username(),
                SignUpFormField.email(required: true),
                SignUpFormField.password(),
                SignUpFormField.passwordConfirmation(),

                // custom field for a terms and conditions checkbox
                //
                // this will set a custom user attribute named `custom:terms-and-conditions`
                // to "true" if the checkbox has been checked
                //
                // custom form validation will prevent sign up if the checkbox is not
                // checked, and a custom error message will be displayed.
                TermsAndConditionsCheckBox(
                  onChanged: (value) => state.setCustomAttribute(
                    const CognitoUserAttributeKey.custom(
                      'terms-and-conditions',
                    ),
                    value.toString(),
                  ),
                ),

                // prebuilt sign up button from amplify_authenticator package
                const SignUpButton(),

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
        const Text('Already have an account?'),
        TextButton(
          onPressed: () => state.changeStep(
            AuthenticatorStep.signIn,
          ),
          child: const Text('Sign In'),
        ),
      ],
    );
  }
}

class TermsAndConditionsCheckBox extends FormField<bool> {
  final void Function(bool?) onChanged;
  TermsAndConditionsCheckBox({
    Key? key,
    required this.onChanged,
  }) : super(
          key: key,
          validator: (value) {
            if (value != true) {
              return 'You must agree to the terms and conditions';
            }
            return null;
          },
          initialValue: false,
          builder: (FormFieldState<bool> state) {
            return CheckboxListTile(
              dense: true,
              title: Row(
                children: [
                  const Text('I agree to the'),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                    ),
                    onPressed: () {
                      Navigator.of(state.context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const TermsAndConditionsView(),
                        ),
                      );
                    },
                    child: const Text('terms and conditions'),
                  )
                ],
              ),
              value: state.value,
              onChanged: (value) {
                onChanged(value);
                state.didChange(value);
              },
              subtitle: state.hasError
                  ? Builder(
                      builder: (BuildContext context) => Text(
                        state.errorText!,
                        style: TextStyle(color: Theme.of(context).errorColor),
                      ),
                    )
                  : null,
              controlAffinity: ListTileControlAffinity.leading,
            );
          },
        );
}

class TermsAndConditionsView extends StatelessWidget {
  const TermsAndConditionsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Nullam velit elit, porttitor luctus scelerisque non, venenatis ut nunc. '
            'Cras mollis tellus tellus, ac convallis leo consectetur vitae. '
            'Phasellus mollis magna massa, pretium dapibus nisi suscipit eget. '
            'Nulla a blandit felis. Nulla convallis elementum mollis. Aliquam viverra velit vel hendrerit lacinia. '
            'Nulla accumsan molestie nibh sit amet consectetur. Phasellus eros massa, facilisis sit amet nunc id, tempus finibus arcu.',
          ),
        ),
      ),
    );
  }
}
