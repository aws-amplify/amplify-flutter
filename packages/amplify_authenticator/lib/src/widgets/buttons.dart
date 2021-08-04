import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/views/confirm_signin_viewmodel.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
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
    final String _text =
        InheritedStrings.of(context)!.resolver.buttons.signup(context);

    return ButtonContainer(
        callback: _authViewModel.signUp,
        authViewModel: _authViewModel,
        authKey: keySignUpButton,
        text: _text);
  }
}

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _authViewModel = InheritedAuthViewModel.of(context)!.signInViewModel;
    final String _text =
        InheritedStrings.of(context)!.resolver.buttons.signin(context);
    return ButtonContainer(
        callback: _authViewModel.signIn,
        authViewModel: _authViewModel,
        authKey: keySignInButton,
        text: _text);
  }
}

class ConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ConfirmSignUpViewModel _authViewModel =
        InheritedAuthViewModel.of(context)!.confirmSignUpViewModel;
    final String _text =
        InheritedStrings.of(context)!.resolver.buttons.confirm(context);
    return ButtonContainer(
        callback: _authViewModel.confirm,
        authViewModel: _authViewModel,
        authKey: keyConfirmSignUpButton,
        text: _text);
  }
}

class ConfirmSignInMFAButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ConfirmSignInViewModel _authViewModel =
        InheritedAuthViewModel.of(context)!.confirmSignInViewModel;
    final String _text =
        InheritedStrings.of(context)!.resolver.buttons.confirm(context);
    return ButtonContainer(
        callback: _authViewModel.confirmMfa,
        authViewModel: _authViewModel,
        authKey: keyConfirmSignInButton,
        text: _text);
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
    final String _text = InheritedStrings.of(context)!
        .resolver
        .navigation
        .back_to_signin(context);
    return TextButton(
      key: const Key(keyBackToSignInButton),
      child: Text(
        _text,
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
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: const Text("No account?",
                style: TextStyle(
                  color: AuthenticatorButtonConstants.textColor,
                  fontSize: AuthenticatorButtonConstants.fontSize,
                )),
          ),
          TextButton(
            key: const Key(keyGoToSignUpButton),
            onPressed: _authModelView.goToSignUp,
            child: Text("Create account",
                style: TextStyle(
                    fontSize: AuthenticatorButtonConstants.fontSize,
                    color: Theme.of(context).primaryColor != Colors.blue
                        ? Theme.of(context).primaryColor
                        : AuthenticatorColors.primary)),
          ),
        ],
      ),
    );
  }
}

class GoToSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SignUpViewModel _authModelView =
        InheritedAuthViewModel.of(context)!.signUpViewModel;
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Text("Have an account?",
                style: TextStyle(
                  color: AuthenticatorButtonConstants.textColor,
                  fontSize: AuthenticatorButtonConstants.fontSize,
                )),
          ),
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
      ),
    );
  }
}

class LostCodeButton extends StatelessWidget {
  const LostCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ConfirmSignUpViewModel _authViewModel =
        InheritedAuthViewModel.of(context)!.confirmSignUpViewModel;
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        children: [
          const Expanded(
            child: Text("Lost your code?",
                style: TextStyle(
                  color: AuthenticatorButtonConstants.textColor,
                  fontSize: 13,
                )),
          ),
          TextButton(
            key: const Key(keyGoToSignInButton),
            child: Text(
              "Resend Code",
              style: TextStyle(
                  fontSize: AuthenticatorButtonConstants.textFontSize,
                  color: Theme.of(context).primaryColor != Colors.blue
                      ? Theme.of(context).primaryColor
                      : AuthenticatorColors.primary),
            ),
            onPressed: _authViewModel.resendSignUpCode,
          ),
        ],
      ),
    );
  }
}

class ResetPasswordButton extends StatelessWidget {
  const ResetPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignInViewModel _authViewModel =
        InheritedAuthViewModel.of(context)!.signInViewModel;
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        children: [
          const Expanded(
            child: Text("Forgot your Password?",
                style: TextStyle(
                  color: Color.fromRGBO(130, 130, 130, 1),
                  fontSize: 12,
                )),
          ),
          TextButton(
            key: const Key(keyGoToSignInButton),
            child: Text(
              "Reset password",
              style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).primaryColor != Colors.blue
                      ? Theme.of(context).primaryColor
                      : AuthenticatorColors.primary),
            ),
            onPressed: _authViewModel.goToReset,
          ),
        ],
      ),
    );
  }
}

class SendCodeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SignInViewModel _authViewModel =
        InheritedAuthViewModel.of(context)!.signInViewModel;

    return ButtonContainer(
        callback: _authViewModel.sendCode,
        authViewModel: _authViewModel,
        authKey: keySendCodeButton,
        text: "SEND CODE");
  }
}

class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SignInViewModel _authViewModel =
        InheritedAuthViewModel.of(context)!.signInViewModel;

    return ButtonContainer(
        callback: _authViewModel.confirmPassword,
        authViewModel: _authViewModel,
        authKey: keySendCodeButton,
        text: "SUBMIT");
  }
}

class ConfirmSignInNewPasswordButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ConfirmSignInViewModel _authViewModel =
        InheritedAuthViewModel.of(context)!.confirmSignInViewModel;

    return ButtonContainer(
        callback: _authViewModel.confirmNewPassword,
        authViewModel: _authViewModel,
        authKey: keySendCodeButton,
        text: "CHANGE");
  }
}
