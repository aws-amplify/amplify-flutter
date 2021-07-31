import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/strings/button_strings.dart';
import 'package:amplify_authenticator/src/strings/navigation_strings.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/views/confirm_signup_viewmodel.dart';
import 'package:amplify_authenticator/src/views/signin_viewmodel.dart';
import 'package:amplify_authenticator/src/views/signup_viewmodel.dart';
import 'package:amplify_authenticator/src/views/confirm_signin_viewmodel.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';

//Reusable buttons

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SignUpViewModel _authViewModel =
        InheritedAuthViewModel.of(context)!.signUpViewModel;
    final ButtonStrings _strings =
        InheritedForms.of(context)!.authStrings!.buttons;
    return ButtonContainer(
        callback: _authViewModel.signUp,
        authViewModel: _authViewModel,
        authKey: keySignUpButton,
        text: _strings.signup);
  }
}

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _authViewModel = InheritedAuthViewModel.of(context)!.signInViewModel;
    final ButtonStrings _strings =
        InheritedForms.of(context)!.authStrings!.buttons;
    return ButtonContainer(
        callback: _authViewModel.signIn,
        authViewModel: _authViewModel,
        authKey: keySignInButton,
        text: _strings.signin);
  }
}

class ConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ConfirmSignUpViewModel _authViewModel =
        InheritedAuthViewModel.of(context)!.confirmSignUpViewModel;
    final ButtonStrings _strings =
        InheritedForms.of(context)!.authStrings!.buttons;
    return ButtonContainer(
        callback: _authViewModel.confirm,
        authViewModel: _authViewModel,
        authKey: keyConfirmSignUpButton,
        text: _strings.confirm);
  }
}

class ConfirmSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ConfirmSignInViewModel _authViewModel =
        InheritedAuthViewModel.of(context)!.confirmSignInViewModel;
    final ButtonStrings _strings =
        InheritedForms.of(context)!.authStrings!.buttons;
    return ButtonContainer(
        callback: _authViewModel.confirm,
        authViewModel: _authViewModel,
        authKey: keyConfirmSignInButton,
        text: _strings.confirm);
  }
}

class SignOutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SignInViewModel _authViewModel =
        InheritedAuthViewModel.of(context)!.signInViewModel;
    return ButtonContainer(
        callback: _authViewModel.signOut,
        authViewModel: _authViewModel,
        authKey: keySignOutButton,
        text: "Sign Out");
  }
}

class BackToSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ConfirmSignUpViewModel _authModelView =
        InheritedAuthViewModel.of(context)!.confirmSignUpViewModel;
    final NavigationStrings _strings =
        InheritedForms.of(context)!.authStrings!.navigation;
    return TextButton(
      key: const Key(keyBackToSignInButton),
      child: Text(
        _strings.back_to_signin,
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
    final NavigationStrings _strings =
        InheritedForms.of(context)!.authStrings!.navigation;
    return Row(
      children: [
        Text(_strings.no_account_question,
            style: const TextStyle(
              fontSize: AuthenticatorButtonConstants.fontSize,
            )),
        TextButton(
          key: const Key(keyGoToSignUpButton),
          onPressed: _authModelView.goToSignUp,
          child: Text(_strings.navigate_signup,
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
    final NavigationStrings _strings =
        InheritedForms.of(context)!.authStrings!.navigation;
    return Row(
      children: [
        Text(_strings.have_account_question,
            style: const TextStyle(
              fontSize: AuthenticatorButtonConstants.fontSize,
            )),
        TextButton(
          key: const Key(keyGoToSignInButton),
          child: Text(
            _strings.navigate_signin,
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
