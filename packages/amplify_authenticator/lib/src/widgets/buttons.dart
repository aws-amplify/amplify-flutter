import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class SignUpButton extends AuthenticatorComponent {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel) {
    return ButtonContainer(
      callback: viewModel.signUp,
      authViewModel: viewModel,
      authKey: keySignUpButton,
      text: 'Sign Up',
    );
  }
}

class SignInButton extends AuthenticatorComponent {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel) {
    return ButtonContainer(
      callback: viewModel.signIn,
      authViewModel: viewModel,
      authKey: keySignInButton,
      text: 'Sign In',
    );
  }
}

class ConfirmButton extends AuthenticatorComponent {
  const ConfirmButton({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel) {
    return ButtonContainer(
      callback: viewModel.confirm,
      authViewModel: viewModel,
      authKey: keyConfirmSignUpButton,
      text: 'CONFIRM',
    );
  }
}

class ConfirmSignInMFAButton extends AuthenticatorComponent {
  const ConfirmSignInMFAButton({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel) {
    return ButtonContainer(
      callback: viewModel.confirmMfa,
      authViewModel: viewModel,
      authKey: keyConfirmSignInButton,
      text: 'CONFIRM',
    );
  }
}

class SignOutButton extends AuthenticatorComponent {
  const SignOutButton({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel) {
    return ButtonContainer(
      callback: viewModel.signOut,
      authViewModel: viewModel,
      authKey: keySignOutButton,
      text: 'Sign Out',
    );
  }
}

class BackToSignInButton extends AuthenticatorComponent {
  const BackToSignInButton({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel) {
    return TextButton(
      key: const Key(keyBackToSignInButton),
      child: Text(
        'Back to Sign In',
        style: TextStyle(
          fontSize: AuthenticatorButtonConstants.fontSize,
          color: Theme.of(context).primaryColor != Colors.blue
              ? Theme.of(context).primaryColor
              : AuthenticatorColors.primary,
        ),
      ),
      onPressed: viewModel.goToSignIn,
    );
  }
}

class GoToSignUpButton extends AuthenticatorComponent {
  const GoToSignUpButton({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Text(
              'No account?',
              style: TextStyle(
                color: AuthenticatorButtonConstants.textColor,
                fontSize: AuthenticatorButtonConstants.fontSize,
              ),
            ),
          ),
          TextButton(
            key: const Key(keyGoToSignUpButton),
            onPressed: viewModel.goToSignUp,
            child: Text(
              'Create account',
              style: TextStyle(
                fontSize: AuthenticatorButtonConstants.fontSize,
                color: Theme.of(context).primaryColor != Colors.blue
                    ? Theme.of(context).primaryColor
                    : AuthenticatorColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GoToSignInButton extends AuthenticatorComponent {
  const GoToSignInButton({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Text('Have an account?',
                style: TextStyle(
                  color: AuthenticatorButtonConstants.textColor,
                  fontSize: AuthenticatorButtonConstants.fontSize,
                )),
          ),
          TextButton(
            key: const Key(keyGoToSignInButton),
            child: Text(
              'Sign In',
              style: TextStyle(
                fontSize: AuthenticatorButtonConstants.fontSize,
                color: Theme.of(context).primaryColor != Colors.blue
                    ? Theme.of(context).primaryColor
                    : AuthenticatorColors.primary,
              ),
            ),
            onPressed: viewModel.goToSignIn,
          ),
        ],
      ),
    );
  }
}

class LostCodeButton extends AuthenticatorComponent {
  const LostCodeButton({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'Lost your code?',
              style: TextStyle(
                color: AuthenticatorButtonConstants.textColor,
                fontSize: 13,
              ),
            ),
          ),
          TextButton(
            key: const Key(keyGoToSignInButton),
            child: Text(
              'Resend Code',
              style: TextStyle(
                fontSize: AuthenticatorButtonConstants.textFontSize,
                color: Theme.of(context).primaryColor != Colors.blue
                    ? Theme.of(context).primaryColor
                    : AuthenticatorColors.primary,
              ),
            ),
            onPressed: viewModel.resendSignUpCode,
          ),
        ],
      ),
    );
  }
}

class ResetPasswordButton extends AuthenticatorComponent {
  const ResetPasswordButton({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'Forgot your Password?',
              style: TextStyle(
                color: Color.fromRGBO(130, 130, 130, 1),
                fontSize: 12,
              ),
            ),
          ),
          TextButton(
            key: const Key(keyGoToSignInButton),
            child: Text(
              'Reset password',
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).primaryColor != Colors.blue
                    ? Theme.of(context).primaryColor
                    : AuthenticatorColors.primary,
              ),
            ),
            onPressed: viewModel.goToReset,
          ),
        ],
      ),
    );
  }
}

class SendCodeButton extends AuthenticatorComponent {
  const SendCodeButton({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel) {
    return ButtonContainer(
      callback: viewModel.sendCode,
      authViewModel: viewModel,
      authKey: keySendCodeButton,
      text: 'SEND CODE',
    );
  }
}

class SubmitButton extends AuthenticatorComponent {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel) {
    return ButtonContainer(
      callback: viewModel.confirmPassword,
      authViewModel: viewModel,
      authKey: keySendCodeButton,
      text: 'SUBMIT',
    );
  }
}

class ConfirmSignInNewPasswordButton extends AuthenticatorComponent {
  const ConfirmSignInNewPasswordButton({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel) {
    return ButtonContainer(
      callback: viewModel.confirmNewPassword,
      authViewModel: viewModel,
      authKey: keySendCodeButton,
      text: 'CHANGE',
    );
  }
}
