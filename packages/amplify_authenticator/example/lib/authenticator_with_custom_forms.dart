import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_example/main.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

// A custom authenticator widget, inspired by lyft's authentication flow
//
// This custom authenticator uses many prebuilt widgets such
// as SignUpFormField.username(), SignInButton(),
// and ConfirmSignUpFormField.verificationCode().
//
// Intended to be used with a phone/password auth flow, but will work with
// username/password or email/password as well.
class AuthenticatorWithCustomForms extends StatelessWidget {
  const AuthenticatorWithCustomForms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      initialScreen: AuthenticatorStep.initial,
      child: MaterialApp(
        title: 'Authenticator Demo',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        // If an argument is provided to Authenticator.builder,
        // the authenticator will use this to build the authenticator based
        // on the current state.
        //
        // This example shows a fairly customized example.
        // See /authenticator_with_custom_layout.dart for a simpler example
        builder: Authenticator.builder((context, state, child) {
          switch (state.currentStep) {
            case AuthenticatorStep.loading:
              return child;
            case AuthenticatorStep.initial:
              return UsernameView(state: state);
            case AuthenticatorStep.signin:
              return SignInView(state: state);
            case AuthenticatorStep.signup:
              return SignUpView(state: state);
            case AuthenticatorStep.confirmSignup:
              return const ConfirmSignUpView();
            default:
              throw StateError(
                'Step: ${state.currentStep} is not handled for this example.',
              );
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

// The initial widget the user will be presented with when
// launch the app in an unauthenticated state
class UsernameView extends StatelessWidget {
  const UsernameView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final AuthenticatorState state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        // AuthenticatorForm is from the amplify_authenticator package.
        //
        // All prebuilt form field widgets (such as SignUpFormField below) must
        // be a descendant of an AuthenticatorForm
        child: AuthenticatorForm(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Let\'s start with your phone number',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 16),

              // SignUpFormField.username() is a prebuilt username form field
              // from the amplify_authenticator package
              //
              // All prebuilt form field widgets manage the form state, held
              // in AuthenticatorState
              //
              // As the value in the form field is changed, the value of state.username
              // will be updated, and this widget will be rebuilt
              SignUpFormField.username(),

              // CheckUsernameButton is not a prebuilt widget. It is a custom
              // button that is designed for this custom flow
              CheckUsernameButton(state: state),
            ],
          ),
        ),
      ),
    );
  }
}

// The widget a user will see when the current step is AuthenticatorStep.signin
class SignInView extends StatelessWidget {
  const SignInView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final AuthenticatorState state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        // All prebuilt form field widgets must be a descendant of an AuthenticatorForm
        child: AuthenticatorForm(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back!',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 16),
              Text(
                'Enter your password below to log back in.',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 16),

              // prebuilt password form field that will update the value of
              // password held in AuthenticatorState
              SignInFormField.password(),

              // prebuilt sign in button
              //
              // When tapped, Amplify.Auth.signIn() will be invoked with the
              // username and password from AuthenticatorState
              const SignInButton(),

              // custom button to navigate back to the start of the flow
              BackToUsernameViewButton(state: state),
            ],
          ),
        ),
      ),
    );
  }
}

// The widget a user will see when the current step is AuthenticatorStep.signup
class SignUpView extends StatelessWidget {
  const SignUpView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final AuthenticatorState state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        // All prebuilt form field widgets must be a descendant of an AuthenticatorForm
        child: AuthenticatorForm(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Let\'s create your account',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 16),
              Text(
                'Enter and confirm your password to create your account.',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 16),

              // prebuilt email form field that will update the value of
              // state.email
              SignUpFormField.email(required: true),

              // prebuilt password form field that will update the value of
              // state.password
              SignUpFormField.password(),

              // prebuilt confirm password form field that will update the value of
              // state.passwordConfirmation
              SignUpFormField.passwordConfirmation(),

              const SizedBox(height: 16),

              // prebuilt sign up button
              //
              // When tapped, Amplify.Auth.signUp() will be invoked with the
              // username and password from AuthenticatorState
              //
              // form validation will also be run to make sure that the values for
              // password and passwordConfirmation match
              const SignUpButton(),

              // custom button to navigate back to the start of the flow
              BackToUsernameViewButton(state: state),
            ],
          ),
        ),
      ),
    );
  }
}

// The widget a user will see when the current step is AuthenticatorStep.confirmSignup
class ConfirmSignUpView extends StatelessWidget {
  const ConfirmSignUpView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        // All prebuilt form field widgets must be a descendant of an AuthenticatorForm
        child: AuthenticatorForm(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter your confirmation code',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 16),
              Text(
                'Enter the code that was sent to your phone number.',
                style: Theme.of(context).textTheme.subtitle1,
              ),

              // prebuilt verification code form field that will update the value of
              // state.confirmationCode
              ConfirmSignUpFormField.verificationCode(),

              // prebuilt confirm sign up button
              //
              // When tapped, Amplify.Auth.confirmSignUp() will be invoked with the
              // data from AuthenticatorState
              const ConfirmSignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}

// A custom button that uses the AuthenticatorState to change the current step
class BackToUsernameViewButton extends StatelessWidget {
  const BackToUsernameViewButton({
    Key? key,
    required this.state,
  }) : super(key: key);

  final AuthenticatorState state;

  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        child: const Text('Back'),
        onPressed: () => state.navigateTo(AuthenticatorStep.initial),
      ),
    );
  }
}

// A custom buttom that checks to see if a username is taken,
// and directs the user to either signup or signin based on the result
class CheckUsernameButton extends StatelessWidget {
  const CheckUsernameButton({
    Key? key,
    required this.state,
  }) : super(key: key);

  final AuthenticatorState state;

  // hacky way to figure out if user exists, **for demo purposes only**
  // redirects to sign in if user exists, otherwise redirects to sign up
  Future<void> checkUsername() async {
    try {
      await Amplify.Auth.signIn(
        username: state.username,
        password: 'password1234567890password1234567890',
      );
      await Amplify.Auth.signOut();
      state.navigateTo(
        AuthenticatorStep.signin,
        resetAttributes: false,
      );
    } on UserNotFoundException {
      state.navigateTo(
        AuthenticatorStep.signup,
        resetAttributes: false,
      );
    } on Exception {
      state.navigateTo(
        AuthenticatorStep.signin,
        resetAttributes: false,
      );
    }
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: const Text('Next'),
        onPressed: state.username == '' ? null : checkUsername,
      ),
    );
  }
}
