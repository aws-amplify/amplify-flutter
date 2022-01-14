/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
*/

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/enums/enums.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator/src/utils/list.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/progress.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension AuthenticatorButtonSizes on AuthenticatorButtonSize {
  double? get height {
    switch (this) {
      case AuthenticatorButtonSize.small:
        return null; // use default
      case AuthenticatorButtonSize.medium:
        return 40;
      case AuthenticatorButtonSize.large:
        return null; // use default
    }
  }
}

/// {@template authenticator.authenticator_button}
/// Base class for Authenticator button components.
/// {@endtemplate}
abstract class AuthenticatorButton<T extends AuthenticatorButton<T>>
    extends AuthenticatorComponent<T> {
  /// {@macro authenticator.authenticator_button}
  const AuthenticatorButton({
    Key? key,
    this.size = AuthenticatorButtonSize.large,
  }) : super(key: key);

  /// The size of the button.
  final AuthenticatorButtonSize size;

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
    properties.add(EnumProperty<AuthenticatorButtonSize>('size', size));
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
    properties.add(DiagnosticsProperty<FocusNode>('focusNode', focusNode));
    properties.add(ObjectFlagProperty<ValueChanged<bool>>.has(
        'focusChanged', focusChanged));
  }
}

/// {@template authenticator.amplify_elevated_button}
/// An Amplify [ElevatedButton] component with default layout and styling.
/// {@endtemplate}
abstract class AuthenticatorElevatedButton
    extends AuthenticatorButton<AuthenticatorElevatedButton> {
  /// {@macro authenticator.amplify_elevated_button}
  const AuthenticatorElevatedButton({Key? key}) : super(key: key);

  @override
  Widget? get loadingIndicator => const AmplifyProgressIndicator();

  @override
  _AmplifyElevatedButtonState createState() => _AmplifyElevatedButtonState();
}

class _AmplifyElevatedButtonState
    extends AuthenticatorButtonState<AuthenticatorElevatedButton> {
  @override
  Widget build(BuildContext context) {
    final buttonResolver = stringResolver.buttons;
    final loadingIndicator = widget.loadingIndicator;
    return SizedBox(
      height: widget.size.height,
      width: double.infinity,
      child: ElevatedButton(
        focusNode: focusNode,
        onPressed: state.isBusy ? null : () => widget.onPressed(context, state),
        child: state.isBusy && loadingIndicator != null
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
              ),
      ),
    );
  }
}

class SignUpButton extends AuthenticatorElevatedButton {
  const SignUpButton({Key? key})
      : super(
          key: key ?? keySignUpButton,
        );

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.signup;

  @override
  void onPressed(BuildContext context, AuthenticatorState state) =>
      state.signUp();
}

class SignInButton extends AuthenticatorElevatedButton {
  const SignInButton({Key? key})
      : super(
          key: key ?? keySignInButton,
        );

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.signin;

  @override
  void onPressed(BuildContext context, AuthenticatorState state) =>
      state.signIn();
}

class ConfirmSignUpButton extends AuthenticatorElevatedButton {
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

class ConfirmSignInMFAButton extends AuthenticatorElevatedButton {
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

// SignOutButton should not inherit from AuthenticatorButton, since we override
// the theme in AuthenticatorButton.
//
// Since SignOutButton is used within the user's app, it should use Theme.of(context)
// to get the user's applied theme.
class SignOutButton extends StatelessAuthenticatorComponent {
  const SignOutButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthenticatorState state,
    AuthStringResolver stringResolver,
  ) {
    final buttonResolver = stringResolver.buttons;
    return ElevatedButton(
      key: keySignOutButton,
      onPressed: state.signOut,
      child: Text(buttonResolver.resolve(
        context,
        ButtonResolverKey.signout,
      )),
    );
  }
}

class BackToSignInButton extends StatelessAuthenticatorComponent {
  const BackToSignInButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthenticatorState state,
    AuthStringResolver stringResolver,
  ) {
    return TextButton(
      key: keyBackToSignInButton,
      child: Text(
        stringResolver.buttons.backTo(context, AuthenticatorStep.signin),
      ),
      onPressed: state.goToSignIn,
    );
  }
}

class GoToSignUpButton extends StatelessAuthenticatorComponent {
  const GoToSignUpButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthenticatorState state,
    AuthStringResolver stringResolver,
  ) {
    final resolver = stringResolver.buttons;
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
              resolver.noAccount(context),
              style: const TextStyle(
                color: AuthenticatorButtonConstants.textColor,
                fontSize: AuthenticatorButtonConstants.fontSize,
              ),
            ),
          ),
          TextButton(
            key: keyGoToSignUpButton,
            onPressed: state.goToSignUp,
            child: Text(
              resolver.signup(context),
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
    AuthenticatorState state,
    AuthStringResolver stringResolver,
  ) {
    final resolver = stringResolver.buttons;
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
              resolver.haveAccount(context),
              style: const TextStyle(
                color: AuthenticatorButtonConstants.textColor,
                fontSize: AuthenticatorButtonConstants.fontSize,
              ),
            ),
          ),
          TextButton(
            key: keyGoToSignInButton,
            child: Text(
              resolver.signin(context),
              style: TextStyle(
                fontSize: AuthenticatorButtonConstants.fontSize,
                color: Theme.of(context).primaryColor,
              ),
            ),
            onPressed: state.goToSignIn,
          ),
        ],
      ),
    );
  }
}

class LostCodeButton extends StatelessAuthenticatorComponent {
  const LostCodeButton({Key? key}) : super(key: key);

  static const fontSize = 13.0;

  @override
  Widget builder(
    BuildContext context,
    AuthenticatorState state,
    AuthStringResolver stringResolver,
  ) {
    final ButtonResolver buttonResolver = stringResolver.buttons;

    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              buttonResolver.lostCode(context),
              style: Theme.of(context).textTheme.caption?.copyWith(
                    fontSize: fontSize,
                  ),
            ),
          ),
          TextButton(
            child: Text(
              buttonResolver.sendCode(context),
              style: const TextStyle(fontSize: fontSize),
            ),
            onPressed: state.resendSignUpCode,
          ),
        ],
      ),
    );
  }
}

class ForgotPasswordButton extends StatelessAuthenticatorComponent {
  const ForgotPasswordButton({Key? key}) : super(key: key);

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
      onPressed: state.goToResetPassword,
    );
  }
}

class ResetPasswordButton extends AuthenticatorElevatedButton {
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

class ConfirmResetPasswordButton extends AuthenticatorElevatedButton {
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

class ConfirmSignInNewPasswordButton extends AuthenticatorElevatedButton {
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

class VerifyUserButton extends AuthenticatorElevatedButton {
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

class ConfirmVerifyUserButton extends AuthenticatorElevatedButton {
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

class SkipVerifyUserButton extends StatelessAuthenticatorComponent {
  const SkipVerifyUserButton({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthenticatorState state,
    AuthStringResolver stringResolver,
  ) {
    return TextButton(
      key: keySkipVerifyUserButton,
      child: Text(
        stringResolver.buttons.skip(context),
        style: TextStyle(
          fontSize: AuthenticatorButtonConstants.fontSize,
          color: Theme.of(context).primaryColor,
        ),
      ),
      onPressed: state.skipVerifyUser,
    );
  }
}
