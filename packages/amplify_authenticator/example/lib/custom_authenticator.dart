import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';

// custom auth flow, inspired by lyft's sign up & sign in flow
// intended to be used with a config that has `usernameAttributes`, `signupAttributes`,
// and `verificationMechanisms` all set to `["PHONE_NUMBER"]`
class CustomAuthenticator extends StatelessWidget {
  const CustomAuthenticator({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      initialScreen: AuthScreen.initial,
      builder: (context, state, viewModel) {
        switch (state.runtimeType) {
          case AuthLoad:
          case AuthLoading:
          case AuthLoaded:
            return const Material(
              child: Center(child: CircularProgressIndicator()),
            );
          case AuthFlow:
            AuthScreen screen = (state as AuthFlow).screen;
            switch (screen) {
              case AuthScreen.initial:
                return UsernameView(viewModel: viewModel);
              case AuthScreen.signin:
                return SignInView(viewModel: viewModel);
              case AuthScreen.signup:
                return SignUpView(viewModel: viewModel);
              case AuthScreen.confirmSignup:
                return const ConfirmSignUpView();
              default:
                throw StateError(
                  'Screen: $screen is not handled for this demo.',
                );
            }
          default:
            throw StateError('State: $state is not handled for this demo.');
        }
      },
      child: child,
    );
  }
}

class UsernameView extends StatelessWidget {
  const UsernameView({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  final AuthViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AuthenticatorForm(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Let\'s start with your phone number',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 16),
              SignUpFormField.username(),
              CheckUsernameButton(viewModel: viewModel),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInView extends StatelessWidget {
  const SignInView({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  final AuthViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AuthenticatorForm(
        child: Padding(
          padding: const EdgeInsets.all(16),
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
              SignInFormField.password(),
              const SignInButton(),
              BackToUsernameViewButton(viewModel: viewModel),
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
    required this.viewModel,
  }) : super(key: key);

  final AuthViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AuthenticatorForm(
        child: Padding(
          padding: const EdgeInsets.all(16),
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
              SignUpFormField.password(),
              SignUpFormField.passwordConfirmation(),
              const SizedBox(height: 16),
              const SignUpButton(),
              BackToUsernameViewButton(viewModel: viewModel),
            ],
          ),
        ),
      ),
    );
  }
}

class ConfirmSignUpView extends StatelessWidget {
  const ConfirmSignUpView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AuthenticatorForm(
        child: Padding(
          padding: const EdgeInsets.all(16),
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
              ConfirmSignUpFormField.verificationCode(),
              const ConfirmSignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class BackToUsernameViewButton extends StatelessWidget {
  const BackToUsernameViewButton({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  final AuthViewModel viewModel;

  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        child: const Text('Back'),
        onPressed: () => viewModel.navigateTo(AuthScreen.initial),
      ),
    );
  }
}

class CheckUsernameButton extends StatelessWidget {
  const CheckUsernameButton({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  final AuthViewModel viewModel;

  // hacky way to figure out if user exists, just for demo purposes
  // redirects to sign in if user exists, otherwise redirects to sign up
  Future<void> checkUsername() async {
    try {
      await Amplify.Auth.signIn(
        username: viewModel.username,
        password: 'password123',
      );
      await Amplify.Auth.signOut();
      viewModel.navigateTo(
        AuthScreen.signin,
        resetAttributes: false,
      );
    } on UserNotFoundException {
      viewModel.navigateTo(
        AuthScreen.signup,
        resetAttributes: false,
      );
    } on Exception {
      viewModel.navigateTo(
        AuthScreen.signin,
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
        onPressed: viewModel.username == '' ? null : checkUsername,
      ),
    );
  }
}
