import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/text_customization/navigation_resolver.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessAuthenticatorComponent {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return ButtonContainer(
      callback: viewModel.signUp,
      authKey: keySignUpButton,
      text: stringResolver.buttons.signup(context),
    );
  }
}

class SignInButton extends StatelessAuthenticatorComponent {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return ButtonContainer(
      callback: viewModel.signIn,
      authKey: keySignInButton,
      text: stringResolver.buttons.signin(context),
    );
  }
}

class ConfirmSignUpButton extends StatelessAuthenticatorComponent {
  const ConfirmSignUpButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return ButtonContainer(
      callback: viewModel.confirm,
      authKey: keyConfirmSignUpButton,
      text: stringResolver.buttons.confirm(context),
    );
  }
}

class ConfirmSignInMFAButton extends StatelessAuthenticatorComponent {
  const ConfirmSignInMFAButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return ButtonContainer(
      callback: viewModel.confirmSignIn,
      authKey: keyConfirmSignInButton,
      text: stringResolver.buttons.confirm(context),
    );
  }
}

class SignOutButton extends StatelessAuthenticatorComponent {
  const SignOutButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return ButtonContainer(
      callback: viewModel.signOut,
      authKey: keySignOutButton,
      text: 'Sign Out', // TODO
    );
  }
}

class BackToSignInButton extends StatelessAuthenticatorComponent {
  const BackToSignInButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return TextButton(
      key: const Key(keyBackToSignInButton),
      child: Text(
        stringResolver.navigation.backToSignin(context),
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

class GoToSignUpButton extends StatelessAuthenticatorComponent {
  const GoToSignUpButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    final NavigationResolver navResolver = stringResolver.navigation;
    final Size screenSize = MediaQuery.of(context).size;
    final bool isDesktop =
        screenSize.width > AuthenticatorContainerConstants.landScapeView;

    //This code prevents this button from hiding when the viewport changes
    //to a Desktop view.
    final flex = isDesktop ? 0 : 1;

    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: flex,
            child: Text(
              navResolver.noAccountQuestion(context),
              style: const TextStyle(
                color: AuthenticatorButtonConstants.textColor,
                fontSize: AuthenticatorButtonConstants.fontSize,
              ),
            ),
          ),
          TextButton(
            key: const Key(keyGoToSignUpButton),
            onPressed: viewModel.goToSignUp,
            child: Text(
              navResolver.navigateSignup(context),
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

class GoToSignInButton extends StatelessAuthenticatorComponent {
  const GoToSignInButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    final NavigationResolver navResolver = stringResolver.navigation;
    final Size screenSize = MediaQuery.of(context).size;
    final bool isDesktop =
        screenSize.width > AuthenticatorContainerConstants.landScapeView;

    //This code prevents this button from hiding when the viewport changes
    //to a Desktop view.
    final flex = isDesktop ? 0 : 1;

    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: flex,
            child: Text(
              navResolver.haveAccountQuestion(context),
              style: const TextStyle(
                color: AuthenticatorButtonConstants.textColor,
                fontSize: AuthenticatorButtonConstants.fontSize,
              ),
            ),
          ),
          TextButton(
            key: const Key(keyGoToSignInButton),
            child: Text(
              navResolver.navigateSignin(context),
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

class LostCodeButton extends StatelessAuthenticatorComponent {
  const LostCodeButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    final ButtonResolver buttonResolver = stringResolver.buttons;

    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              buttonResolver.lostCodeQuestion(context),
              style: const TextStyle(
                color: AuthenticatorButtonConstants.textColor,
                fontSize: 13,
              ),
            ),
          ),
          TextButton(
            key: const Key(keyGoToSignInButton),
            child: Text(
              buttonResolver.sendCode(context),
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

class ResetPasswordButton extends StatelessAuthenticatorComponent {
  const ResetPasswordButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    final NavigationResolver navResolver = stringResolver.navigation;
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              navResolver.forgotPasswordQuestion(context),
              style: const TextStyle(
                color: Color.fromRGBO(130, 130, 130, 1),
                fontSize: 12,
              ),
            ),
          ),
          TextButton(
            key: const Key(keyGoToSignInButton),
            child: Text(
              navResolver.navigateResetPassword(context),
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

class SendCodeButton extends StatelessAuthenticatorComponent {
  const SendCodeButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return ButtonContainer(
      callback: viewModel.sendCode,
      authKey: keySendCodeButton,
      text: stringResolver.buttons.submit(context),
    );
  }
}

class SubmitButton extends StatelessAuthenticatorComponent {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return ButtonContainer(
      callback: viewModel.confirmPassword,
      authKey: keySendCodeButton,
      text: stringResolver.buttons.submit(context),
    );
  }
}

class ConfirmSignInNewPasswordButton extends StatelessAuthenticatorComponent {
  const ConfirmSignInNewPasswordButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return ButtonContainer(
      callback: viewModel.confirmSignIn,
      authKey: keySendCodeButton,
      text: stringResolver.buttons.changePassword(context),
    );
  }
}
