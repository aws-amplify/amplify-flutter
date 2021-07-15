import 'package:amplify_flutter_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_flutter_authenticator/src/constants/theme_constants.dart';
import 'package:flutter/material.dart';

import 'package:amplify_flutter_authenticator/src/state/inherited_auth_viewmodel.dart';

//Sign Up
class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _authModelView = InheritedAuthViewModel.of(context)!.authViewModel;
    return ElevatedButton(
      onPressed: _authModelView.signUp,
      child: Text("Sign Up"),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
        Theme.of(context).primaryColor != Colors.blue
            ? Theme.of(context).primaryColor
            : AuthenticatorColors.primary,
      )),
    );
  }
}

//Sign In
class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _authViewModel = InheritedAuthViewModel.of(context)!.authViewModel;

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

//Confirm Sign Up
class ConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _authModelView = InheritedAuthViewModel.of(context)!.authViewModel;
    return ElevatedButton(
      onPressed: _authModelView.confirm,
      child: Text("CONFIRM"),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
        Theme.of(context).primaryColor != Colors.blue
            ? Theme.of(context).primaryColor
            : AuthenticatorColors.primary,
      )),
    );
  }
}

//Sign Out
class SignOutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _authModelView = InheritedAuthViewModel.of(context)!.authViewModel;
    return TextButton(
      onPressed: _authModelView.signOut,
      child: Text("Sign Out"),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
        Theme.of(context).primaryColor != Colors.blue
            ? Theme.of(context).primaryColor
            : AuthenticatorColors.primary,
      )),
    );
  }
}

//Back to Sign In
class BackToSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _authModelView = InheritedAuthViewModel.of(context)!.authViewModel;
    return TextButton(
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

//Go to Sign Up
class GoToSignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _authModelView = InheritedAuthViewModel.of(context)!.authViewModel;
    return Row(
      children: [
        Text("No account? ",
            style: TextStyle(
              fontSize: AuthenticatorButtonConstants.fontSize,
            )),
        TextButton(
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

//Go to Sign In
class GoToSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _authModelView = InheritedAuthViewModel.of(context)!.authViewModel;
    return Row(
      children: [
        Text("Have an account? ",
            style: TextStyle(
              fontSize: AuthenticatorButtonConstants.fontSize,
            )),
        TextButton(
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
