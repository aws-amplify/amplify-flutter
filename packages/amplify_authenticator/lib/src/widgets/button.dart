import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/text_customization/navigation_resolver.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// {@template authenticator.authenticator_button}
/// An Authenticator button component with default layout and styling.
/// {@endtemplate}
class AuthenticatorButton extends StatelessAuthenticatorComponent {
  /// {@macro authenticator.authenticator_button}
  const AuthenticatorButton({
    Key? key,
    required this.labelKey,
    required this.callback,
  }) : super(key: key);

  /// The button's `onPressed` callback.
  final VoidCallback callback;

  /// The button's label key.
  final ButtonResolverKey labelKey;

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    final buttonResolver = stringResolver.buttons;
    return AnimatedBuilder(
      animation: viewModel,
      builder: (context, child) {
        return ElevatedButton(
          onPressed: viewModel.isBusy ? null : callback,
          child: viewModel.isBusy
              ? const CircularProgressIndicator(color: Colors.white)
              : Text(buttonResolver.resolve(context, labelKey)),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(10),
            primary: Theme.of(context).primaryColor,
          ),
        );
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty('labelKey', labelKey));
    properties
        .add(ObjectFlagProperty<void Function()>.has('callback', callback));
  }
}

class SignUpButton extends StatelessAuthenticatorComponent {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return AuthenticatorButton(
      key: keySignUpButton,
      callback: viewModel.signUp,
      labelKey: ButtonResolverKey.signup,
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
    return AuthenticatorButton(
      key: keySignInButton,
      callback: viewModel.signIn,
      labelKey: ButtonResolverKey.signin,
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
    return AuthenticatorButton(
      key: keyConfirmSignUpButton,
      callback: viewModel.confirm,
      labelKey: ButtonResolverKey.confirm,
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
    return AuthenticatorButton(
      key: keyConfirmSignInButton,
      callback: viewModel.confirmSignIn,
      labelKey: ButtonResolverKey.confirm,
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
    return AuthenticatorButton(
      key: keySignOutButton,
      callback: viewModel.signOut,
      labelKey: ButtonResolverKey.signout,
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
      key: keyBackToSignInButton,
      child: Text(
        stringResolver.navigation.backToSignin(context),
        style: TextStyle(
          fontSize: AuthenticatorButtonConstants.fontSize,
          color: Theme.of(context).primaryColor,
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
            key: keyGoToSignUpButton,
            onPressed: viewModel.goToSignUp,
            child: Text(
              navResolver.navigateSignup(context),
              style: TextStyle(
                fontSize: AuthenticatorButtonConstants.fontSize,
                color: Theme.of(context).primaryColor,
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
            key: keyGoToSignInButton,
            child: Text(
              navResolver.navigateSignin(context),
              style: TextStyle(
                fontSize: AuthenticatorButtonConstants.fontSize,
                color: Theme.of(context).primaryColor,
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
            key: keyGoToSignInButton,
            child: Text(
              buttonResolver.sendCode(context),
              style: TextStyle(
                fontSize: AuthenticatorButtonConstants.textFontSize,
                color: Theme.of(context).primaryColor,
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
            key: keyGoToSignInButton,
            child: Text(
              navResolver.navigateResetPassword(context),
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).primaryColor,
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
    return AuthenticatorButton(
      key: keySendCodeButton,
      callback: viewModel.sendCode,
      labelKey: ButtonResolverKey.submit,
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
    return AuthenticatorButton(
      key: keySendCodeButton,
      callback: viewModel.confirmPassword,
      labelKey: ButtonResolverKey.submit,
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
    return AuthenticatorButton(
      key: keySendCodeButton,
      callback: viewModel.confirmSignIn,
      labelKey: ButtonResolverKey.changePassword,
    );
  }
}

class VerifyUserButton extends StatelessAuthenticatorComponent {
  const VerifyUserButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return AuthenticatorButton(
      key: keySendCodeButton,
      callback: viewModel.verifyUser,
      labelKey: ButtonResolverKey.verifyUser,
    );
  }
}

class ConfirmVerifyUserButton extends StatelessAuthenticatorComponent {
  const ConfirmVerifyUserButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return AuthenticatorButton(
      key: keySendCodeButton,
      callback: viewModel.confirmVerifyUser,
      labelKey: ButtonResolverKey.confirmVerifyUser,
    );
  }
}

class SkipVerifyUserButton extends StatelessAuthenticatorComponent {
  const SkipVerifyUserButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return TextButton(
      key: keyBackToSignInButton,
      child: Text(
        stringResolver.navigation.skipVerifyUser(context),
        style: TextStyle(
          fontSize: AuthenticatorButtonConstants.fontSize,
          color: Theme.of(context).primaryColor,
        ),
      ),
      onPressed: viewModel.skipVerifyUser,
    );
  }
}
