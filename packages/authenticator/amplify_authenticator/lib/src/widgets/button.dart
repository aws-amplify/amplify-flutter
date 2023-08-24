// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/state/auth_state.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator/src/utils/list.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/progress.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// {@template amplify_authenticator.authenticator_button}
/// Base class for Authenticator button components.
/// {@endtemplate}
abstract class AuthenticatorButton<T extends AuthenticatorButton<T>>
    extends AuthenticatorComponent<T> {
  /// {@macro amplify_authenticator.authenticator_button}
  const AuthenticatorButton({
    super.key,
  });

  /// The button's `onPressed` callback.
  void onPressed(BuildContext context, AuthenticatorState state);

  /// The button's label key.
  ButtonResolverKey get labelKey;

  /// The widget to show while the button is loading.
  Widget? get loadingIndicator => null;

  /// The leading widget for the button, typically an [Icon].
  Widget? get leading => null;

  /// The trailing widget for the button, typically an [Icon].
  Widget? get trailing => null;

  @override
  AuthenticatorButtonState<T> createState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<ButtonResolverKey>('labelKey', labelKey));
  }
}

abstract class AuthenticatorButtonState<T extends AuthenticatorButton<T>>
    extends AuthenticatorComponentState<T> with MaterialStateMixin<T> {
  final focusNode = FocusNode();

  late final ValueChanged<bool> focusChanged =
      updateMaterialState(MaterialState.focused);

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      focusChanged(focusNode.hasFocus);
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<FocusNode>('focusNode', focusNode))
      ..add(
        ObjectFlagProperty<ValueChanged<bool>>.has(
          'focusChanged',
          focusChanged,
        ),
      );
  }
}

/// {@template amplify_authenticator.amplify_elevated_button}
/// An Amplify [ElevatedButton] component with default layout and styling.
/// {@endtemplate}
abstract class AuthenticatorElevatedButton
    extends AuthenticatorButton<AuthenticatorElevatedButton> {
  /// {@macro amplify_authenticator.amplify_elevated_button}
  const AuthenticatorElevatedButton({super.key});

  @override
  Widget? get loadingIndicator => const AmplifyProgressIndicator();

  @override
  AuthenticatorButtonState<AuthenticatorElevatedButton> createState() =>
      _AmplifyElevatedButtonState();
}

class _AmplifyElevatedButtonState
    extends AuthenticatorButtonState<AuthenticatorElevatedButton> {
  @override
  Widget build(BuildContext context) {
    final buttonResolver = stringResolver.buttons;
    final loadingIndicator = widget.loadingIndicator;
    final onPressed =
        state.isBusy ? null : () => widget.onPressed(context, state);
    final child = state.isBusy && loadingIndicator != null
        ? loadingIndicator
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.leading != null) widget.leading!,
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    buttonResolver.resolve(
                      context,
                      widget.labelKey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              if (widget.trailing != null) widget.trailing!,
            ].spacedBy(const SizedBox(width: 10)),
          );
    final useMaterial3 = Theme.of(context).useMaterial3;
    return SizedBox(
      width: double.infinity,
      child: useMaterial3
          ? FilledButton(
              focusNode: focusNode,
              onPressed: onPressed,
              child: child,
            )
          : ElevatedButton(
              focusNode: focusNode,
              onPressed: onPressed,
              child: child,
            ),
    );
  }
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.sign_up_button}
/// A prebuilt button for registering a new user.
///
/// Uses [ButtonResolverKey.signUp] for localization
/// {@endtemplate}
class SignUpButton extends AuthenticatorElevatedButton {
  /// {@macro amplify_authenticator.sign_up_button}
  const SignUpButton({Key? key})
      : super(
          key: key ?? keySignUpButton,
        );

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.signUp;

  @override
  void onPressed(BuildContext context, AuthenticatorState state) =>
      state.signUp();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.sign_in_button}
/// A prebuilt button for signing in a user.
///
/// Uses [ButtonResolverKey.signIn] for localization
/// {@endtemplate}
class SignInButton extends AuthenticatorElevatedButton {
  /// {@macro amplify_authenticator.sign_in_button}
  const SignInButton({Key? key})
      : super(
          key: key ?? keySignInButton,
        );

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.signIn;

  @override
  void onPressed(BuildContext context, AuthenticatorState state) =>
      state.signIn();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_sign_up_button}
/// A prebuilt button for completing the sign up flow with a confirmation code.
///
/// Uses [ButtonResolverKey.confirm] for localization
/// {@endtemplate}
class ConfirmSignUpButton extends AuthenticatorElevatedButton {
  /// {@macro amplify_authenticator.confirm_sign_up_button}
  const ConfirmSignUpButton({Key? key})
      : super(
          key: key ?? keyConfirmSignUpButton,
        );

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.confirm;

  @override
  void onPressed(BuildContext context, AuthenticatorState state) =>
      state.confirmSignUp();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm__sign_in_custom_button}
/// A prebuilt button for completing Sign In with a custom challenge.
///
/// Uses [ButtonResolverKey.confirm] for localization
/// {@endtemplate}
class ConfirmSignInCustomButton extends ConfirmSignInMFAButton {
  /// {@macro amplify_authenticator.confirm_sign_in_custom_button}
  const ConfirmSignInCustomButton({Key? key})
      : super(
          key: key ?? keyConfirmSignInCustomButton,
        );

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.confirm;

  @override
  void onPressed(BuildContext context, AuthenticatorState state) =>
      state.confirmSignInCustomAuth();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.continue_sign_in_mfa_selection_button}
/// A prebuilt button for Sign In with MFA selection.
///
/// Uses [ButtonResolverKey.confirm] for localization
/// {@endtemplate}
class ContinueSignInMFASelectionButton extends AuthenticatorElevatedButton {
  /// {@macro amplify_authenticator.continue_sign_in_mfa_selection_button}
  const ContinueSignInMFASelectionButton({Key? key})
      : super(
          key: key ?? keyConfirmSignInMfaSelectionButton,
        );

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.continueLabel;

  @override
  void onPressed(BuildContext context, AuthenticatorState state) =>
      state.continueSignInWithMfaSelection();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_sign_in_mfa_button}
/// A prebuilt button for completing Sign In with and MFA code.
///
/// Uses [ButtonResolverKey.confirm] for localization
/// {@endtemplate}
class ConfirmSignInMFAButton extends AuthenticatorElevatedButton {
  /// {@macro amplify_authenticator.confirm_sign_in_mfa_button}
  const ConfirmSignInMFAButton({Key? key})
      : super(
          key: key ?? keyConfirmSignInButton,
        );

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.confirm;

  @override
  void onPressed(BuildContext context, AuthenticatorState state) =>
      state.confirmSignInMFA();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.sign_out_button}
/// A prebuilt button for Signing Out.
///
/// Uses [ButtonResolverKey.signout] for localization
/// {@endtemplate}
class SignOutButton extends StatelessAuthenticatorComponent {
  /// {@macro amplify_authenticator.sign_out_button}
  const SignOutButton({super.key = keySignOutButton});

  @override
  Widget builder(
    BuildContext context,
    AuthenticatorState state,
    AuthStringResolver stringResolver,
  ) {
    final buttonResolver = stringResolver.buttons;

    return ElevatedButton(
      onPressed: state.signOut,
      child: Text(
        buttonResolver.signout(context),
      ),
    );
  }
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.back_to_sign_in_button}
/// A prebuilt button for navigating back to the Sign In step.
/// {@endtemplate}
class BackToSignInButton extends StatelessAuthenticatorComponent {
  /// {@macro amplify_authenticator.back_to_sign_in_button}
  const BackToSignInButton({super.key, this.abortSignIn = false});

  /// Resets the authentication flow
  final bool abortSignIn;

  @override
  Widget builder(
    BuildContext context,
    AuthenticatorState state,
    AuthStringResolver stringResolver,
  ) {
    return TextButton(
      key: keyBackToSignInButton,
      child: Text(
        stringResolver.buttons.backTo(context, AuthenticatorStep.signIn),
      ),
      onPressed: () {
        if (!abortSignIn) {
          state.changeStep(
            AuthenticatorStep.signIn,
          );
        } else {
          state.abortSignIn();
        }
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('abortSignIn', abortSignIn));
  }
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.lost_code_button}
/// A prebuilt button for resending a confirmation code during the sign up process.
/// {@endtemplate}
class LostCodeButton extends StatelessAuthenticatorComponent {
  /// {@macro amplify_authenticator.lost_code_button}
  const LostCodeButton({super.key});

  static const fontSize = 13.0;

  @override
  Widget builder(
    BuildContext context,
    AuthenticatorState state,
    AuthStringResolver stringResolver,
  ) {
    final buttonResolver = stringResolver.buttons;

    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        children: [
          Expanded(
            child: Text(
              buttonResolver.lostCode(context),
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontSize: fontSize,
                  ),
            ),
          ),
          TextButton(
            onPressed: state.resendSignUpCode,
            child: Text(
              buttonResolver.sendCode(context),
              style: const TextStyle(fontSize: fontSize),
            ),
          ),
        ],
      ),
    );
  }
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.forgot_password_button}
/// A prebuilt button for changing the current step to [AuthenticatorStep.resetPassword].
/// {@endtemplate}
class ForgotPasswordButton extends StatelessAuthenticatorComponent {
  /// {@macro amplify_authenticator.forgot_password_button}
  const ForgotPasswordButton({super.key});

  @override
  Widget builder(
    BuildContext context,
    AuthenticatorState state,
    AuthStringResolver stringResolver,
  ) {
    return TextButton(
      key: keyForgotPasswordButton,
      child: Text(
        stringResolver.buttons.forgotPassword(context),
      ),
      onPressed: () => state.changeStep(
        AuthenticatorStep.resetPassword,
      ),
    );
  }
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.reset_password_button}
/// A prebuilt button for initiating the reset password flow.
///
/// Uses [ButtonResolverKey.submit] for localization
/// {@endtemplate}
class ResetPasswordButton extends AuthenticatorElevatedButton {
  /// {@macro amplify_authenticator.reset_password_button}
  const ResetPasswordButton({Key? key})
      : super(
          key: key ?? keySendCodeButton,
        );

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.submit;

  @override
  void onPressed(BuildContext context, AuthenticatorState state) =>
      state.resetPassword();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_reset_password_button}
/// A prebuilt button for completing the reset password flow.
///
/// Uses [ButtonResolverKey.submit] for localization
/// {@endtemplate}
class ConfirmResetPasswordButton extends AuthenticatorElevatedButton {
  /// {@macro amplify_authenticator.confirm_reset_password_button}
  const ConfirmResetPasswordButton({Key? key})
      : super(
          key: key ?? keySendCodeButton,
        );

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.submit;

  @override
  void onPressed(BuildContext context, AuthenticatorState state) =>
      state.confirmResetPassword();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_sign_in_new_password}
/// A prebuilt button for completing the force reset password flow.
///
/// Uses [ButtonResolverKey.changePassword] for localization
/// {@endtemplate}
class ConfirmSignInNewPasswordButton extends AuthenticatorElevatedButton {
  /// {@macro amplify_authenticator.confirm_sign_in_new_password}
  const ConfirmSignInNewPasswordButton({Key? key})
      : super(
          key: key ?? keyConfirmSignInButton,
        );

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.changePassword;

  @override
  void onPressed(BuildContext context, AuthenticatorState state) =>
      state.confirmSignInNewPassword();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.verify_user_button}
/// A prebuilt button for initiating the account recovery attribute verification process.
///
/// Uses [ButtonResolverKey.verify] for localization
/// {@endtemplate}
class VerifyUserButton extends AuthenticatorElevatedButton {
  /// {@macro amplify_authenticator.verify_user_button}
  const VerifyUserButton({Key? key})
      : super(
          key: key ?? keySubmitVerifyUserButton,
        );

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.verify;

  @override
  void onPressed(BuildContext context, AuthenticatorState state) {
    state.verifyUser();
  }
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_verify_user_button}
/// A prebuilt button for completing the account recovery attribute verification process.
///
/// Uses [ButtonResolverKey.submit] for localization
/// {@endtemplate}
class ConfirmVerifyUserButton extends AuthenticatorElevatedButton {
  /// {@macro amplify_authenticator.confirm_verify_user_button}
  const ConfirmVerifyUserButton({Key? key})
      : super(
          key: key ?? keySubmitConfirmVerifyUserButton,
        );

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.submit;

  @override
  void onPressed(BuildContext context, AuthenticatorState state) {
    final authState =
        InheritedAuthBloc.of(context).currentState as AttributeVerificationSent;
    state.confirmVerifyUser(authState.userAttributeKey);
  }
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_verify_user_button}
/// A prebuilt button for skipping the verify user flow.
/// {@endtemplate}
class SkipVerifyUserButton extends StatelessAuthenticatorComponent {
  /// {@macro amplify_authenticator.confirm_verify_user_button}
  const SkipVerifyUserButton({super.key});

  @override
  Widget builder(
    BuildContext context,
    AuthenticatorState state,
    AuthStringResolver stringResolver,
  ) {
    return TextButton(
      key: keySkipVerifyUserButton,
      onPressed: state.skipVerifyUser,
      child: Text(
        stringResolver.buttons.skip(context),
        style: TextStyle(
          fontSize: AuthenticatorButtonConstants.fontSize,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
