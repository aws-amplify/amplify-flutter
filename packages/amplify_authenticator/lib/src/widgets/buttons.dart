import 'package:flutter/material.dart';

import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';

//Reusable buttons

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _authViewModel = InheritedAuthViewModel.of(context)!.signUpViewModel;
    return AnimatedBuilder(
        animation: _authViewModel,
        builder: (context, child) {
          Widget? _child;
          var _callback;
          if (_authViewModel.isBusy) {
            _child = CircularProgressIndicator(color: Colors.white);
            _callback = () {};
          } else {
            _child = Text("Sign Up");
            _callback = _authViewModel.signUp;
          }

          return ElevatedButton(
            key: Key("signUpButton"),
            onPressed: _callback,
            child: _child,
            style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColor != Colors.blue
                      ? Theme.of(context).primaryColor
                      : AuthenticatorColors.primary,
                )),
          );
        });
  }
}

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _authViewModel = InheritedAuthViewModel.of(context)!.signInViewModel;

    return AnimatedBuilder(
        animation: _authViewModel,
        builder: (context, child) {
          Widget? _child;
          var _callback;
          if (_authViewModel.isBusy) {
            _child = CircularProgressIndicator(color: Colors.white);
            _callback = () {};
          } else {
            _child = Text("Sign In");
            _callback = _authViewModel.signIn;
          }

          return ElevatedButton(
            key: Key("signInButton"),
            onPressed: _callback,
            child: _child,
            style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColor != Colors.blue
                      ? Theme.of(context).primaryColor
                      : AuthenticatorColors.primary,
                )),
          );
        });
  }
}

class ConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _authViewModel =
        InheritedAuthViewModel.of(context)!.confirmSignUpViewModel;
    return AnimatedBuilder(
        animation: _authViewModel,
        builder: (context, child) {
          Widget? _child;
          var _callback;
          if (_authViewModel.isBusy) {
            _child = CircularProgressIndicator(color: Colors.white);
            _callback = () {};
          } else {
            _child = Text("CONFIRM");
            _callback = _authViewModel.confirm;
          }

          return ElevatedButton(
            key: Key("confirmSignUpButton"),
            onPressed: _callback,
            child: _child,
            style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColor != Colors.blue
                      ? Theme.of(context).primaryColor
                      : AuthenticatorColors.primary,
                )),
          );
        });
  }
}

class SignOutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _authViewModel = InheritedAuthViewModel.of(context)!.signInViewModel;
    return AnimatedBuilder(
        animation: _authViewModel,
        builder: (context, child) {
          Widget? _child;
          var _callback;
          if (_authViewModel.isBusy) {
            _child = CircularProgressIndicator(color: Colors.white);
            _callback = () {};
          } else {
            _child = Text("Sign Out");
            _callback = _authViewModel.signOut;
          }

          return ElevatedButton(
            key: Key("signOutButton"),
            onPressed: _callback,
            child: _child,
            style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColor != Colors.blue
                      ? Theme.of(context).primaryColor
                      : AuthenticatorColors.primary,
                )),
          );
        });
  }
}

class BackToSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _authModelView =
        InheritedAuthViewModel.of(context)!.confirmSignUpViewModel;
    return TextButton(
      key: Key("backToSignInButton"),
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
    final _authModelView = InheritedAuthViewModel.of(context)!.signInViewModel;
    return Row(
      children: [
        Text("No account? ",
            style: TextStyle(
              fontSize: AuthenticatorButtonConstants.fontSize,
            )),
        TextButton(
          key: Key("goToSignUpButton"),
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
    final _authModelView = InheritedAuthViewModel.of(context)!.signUpViewModel;
    return Row(
      children: [
        Text("Have an account? ",
            style: TextStyle(
              fontSize: AuthenticatorButtonConstants.fontSize,
            )),
        TextButton(
          key: Key("goToSignInButton"),
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
