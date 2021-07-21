import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/keys.dart';

import 'package:amplify_authenticator/src/views/confirm_signup_viewmodel.dart';
import 'package:amplify_authenticator/src/views/signin_viewmodel.dart';
import 'package:amplify_authenticator/src/views/signup_viewmodel.dart';

import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';

//Reusable buttons

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SignUpViewModel _authViewModel =
        InheritedAuthViewModel.of(context)!.signUpViewModel;
    return AnimatedBuilder(
        animation: _authViewModel,
        builder: (context, child) {
          Widget? _child;
          dynamic _callback;
          if (_authViewModel.isBusy) {
            _child = const CircularProgressIndicator(color: Colors.white);
            _callback = () {};
          } else {
            _child = const Text("Sign Up");
            _callback = _authViewModel.signUp;
          }

          return ElevatedButton(
              key: const Key(keySignUpButton),
              onPressed: _callback,
              child: _child,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                primary: Theme.of(context).primaryColor != Colors.blue
                    ? Theme.of(context).primaryColor
                    : AuthenticatorColors.primary,
              ));
        });
  }
}

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SignInViewModel _authViewModel =
        InheritedAuthViewModel.of(context)!.signInViewModel;

    return AnimatedBuilder(
        animation: _authViewModel,
        builder: (context, child) {
          Widget? _child;
          dynamic _callback;
          if (_authViewModel.isBusy) {
            _child = const CircularProgressIndicator(color: Colors.white);
            _callback = () {};
          } else {
            _child = const Text("Sign In");
            _callback = _authViewModel.signIn;
          }

          return ElevatedButton(
              key: const Key(keySignInButton),
              onPressed: _callback,
              child: _child,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                primary: Theme.of(context).primaryColor != Colors.blue
                    ? Theme.of(context).primaryColor
                    : AuthenticatorColors.primary,
              ));
        });
  }
}

class ConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ConfirmSignUpViewModel _authViewModel =
        InheritedAuthViewModel.of(context)!.confirmSignUpViewModel;
    return AnimatedBuilder(
        animation: _authViewModel,
        builder: (context, child) {
          Widget? _child;
          dynamic _callback;
          if (_authViewModel.isBusy) {
            _child = const CircularProgressIndicator(color: Colors.white);
            _callback = () {};
          } else {
            _child = const Text("CONFIRM");
            _callback = _authViewModel.confirm;
          }

          return ElevatedButton(
              key: const Key(keyConfirmSignUpButton),
              onPressed: _callback,
              child: _child,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                primary: Theme.of(context).primaryColor != Colors.blue
                    ? Theme.of(context).primaryColor
                    : AuthenticatorColors.primary,
              ));
        });
  }
}

class SignOutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SignInViewModel _authViewModel =
        InheritedAuthViewModel.of(context)!.signInViewModel;
    return AnimatedBuilder(
        animation: _authViewModel,
        builder: (context, child) {
          Widget? _child;
          dynamic _callback;
          if (_authViewModel.isBusy) {
            _child = const CircularProgressIndicator(color: Colors.white);
            _callback = () {};
          } else {
            _child = const Text("Sign Out");
            _callback = _authViewModel.signOut;
          }

          return ElevatedButton(
              key: const Key(keySignOutButton),
              onPressed: _callback,
              child: _child,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                primary: Theme.of(context).primaryColor != Colors.blue
                    ? Theme.of(context).primaryColor
                    : AuthenticatorColors.primary,
              ));
        });
  }
}

class BackToSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ConfirmSignUpViewModel _authModelView =
        InheritedAuthViewModel.of(context)!.confirmSignUpViewModel;
    return TextButton(
      key: const Key(keyBackToSignInButton),
      child: Text(
        "Back to Sign In",
        style: TextStyle(
            fontSize: AuthenticatorButtonConstants.fontSize,
            color: Theme.of(context).primaryColor != Colors.blue
                ? Theme.of(context).primaryColor
                : AuthenticatorColors.primary),
      ),
      onPressed: _authModelView.goToSignIn,
    );
  }
}

class GoToSignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SignInViewModel _authModelView =
        InheritedAuthViewModel.of(context)!.signInViewModel;
    return Row(
      children: [
        const Text("No account? ",
            style: TextStyle(
              fontSize: AuthenticatorButtonConstants.fontSize,
            )),
        TextButton(
          key: const Key(keyGoToSignUpButton),
          onPressed: _authModelView.goToSignUp,
          child: Text("Create account",
              style: TextStyle(
                  fontSize: AuthenticatorButtonConstants.fontSize,
                  color: Theme.of(context).primaryColor != Colors.blue
                      ? Theme.of(context).primaryColor
                      : AuthenticatorColors.primary)),
        )
      ],
    );
  }
}

class GoToSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SignUpViewModel _authModelView =
        InheritedAuthViewModel.of(context)!.signUpViewModel;
    return Row(
      children: [
        const Text("Have an account? ",
            style: TextStyle(
              fontSize: AuthenticatorButtonConstants.fontSize,
            )),
        TextButton(
          key: const Key(keyGoToSignInButton),
          child: Text(
            "Sign In",
            style: TextStyle(
                fontSize: AuthenticatorButtonConstants.fontSize,
                color: Theme.of(context).primaryColor != Colors.blue
                    ? Theme.of(context).primaryColor
                    : AuthenticatorColors.primary),
          ),
          onPressed: _authModelView.goToSignIn,
        ),
      ],
    );
  }
}
