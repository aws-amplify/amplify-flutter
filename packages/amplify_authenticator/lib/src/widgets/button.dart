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
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator/src/text_customization/navigation_resolver.dart';
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/progress.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// {@template authenticator.authenticator_button}
/// Base class for Authenticator button components.
/// {@endtemplate}
abstract class AuthenticatorButton<T extends AuthenticatorButton<T>>
    extends AuthenticatorComponent<T> {
  /// {@macro authenticator.authenticator_button}
  const AuthenticatorButton({Key? key}) : super(key: key);

  /// The button's `onPressed` callback.
  void onPressed(BuildContext context, AuthViewModel viewModel);

  /// The button's label key.
  ButtonResolverKey get labelKey;

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
  const AuthenticatorElevatedButton({
    Key? key,
    required this.labelKey,
  }) : super(key: key);

  @override
  final ButtonResolverKey labelKey;

  @override
  _AmplifyElevatedButtonState createState() => _AmplifyElevatedButtonState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty('labelKey', labelKey));
  }
}

class _AmplifyElevatedButtonState
    extends AuthenticatorButtonState<AuthenticatorElevatedButton> {
  @override
  Widget build(BuildContext context) {
    final buttonResolver = stringResolver.buttons;
    final ElevatedButton button;
    if (viewModel.isBusy) {
      button = ElevatedButton(
        focusNode: focusNode,
        onPressed: null,
        child: const AmplifyProgressIndicator(),
      );
    } else {
      button = ElevatedButton(
        focusNode: focusNode,
        onPressed: () => widget.onPressed(context, viewModel),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.leading != null) widget.leading!,
            Flexible(
              child: Text(
                buttonResolver.resolve(
                  context,
                  widget.labelKey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            if (widget.trailing != null) widget.trailing!,
          ],
        ),
      );
    }
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: isFocused
            ? const [
                BoxShadow(
                  color: AmplifyColors.blue,
                  blurRadius: 4.0,
                )
              ]
            : null,
      ),
      child: ElevatedButtonTheme(
        data: AmplifyTheme.elevatedButtonThemeData(
          primary: true,
          isLoading: viewModel.isBusy,
        ),
        child: button,
      ),
    );
  }
}

class SignUpButton extends AuthenticatorElevatedButton {
  const SignUpButton({Key? key})
      : super(
          key: key ?? keySignUpButton,
          labelKey: ButtonResolverKey.signup,
        );

  @override
  void onPressed(BuildContext context, AuthViewModel viewModel) =>
      viewModel.signUp();
}

class SignInButton extends AuthenticatorElevatedButton {
  const SignInButton({Key? key})
      : super(
          key: key ?? keySignInButton,
          labelKey: ButtonResolverKey.signin,
        );

  @override
  void onPressed(BuildContext context, AuthViewModel viewModel) =>
      viewModel.signIn();
}

class ConfirmSignUpButton extends AuthenticatorElevatedButton {
  const ConfirmSignUpButton({Key? key})
      : super(
          key: key ?? keyConfirmSignUpButton,
          labelKey: ButtonResolverKey.confirm,
        );

  @override
  void onPressed(BuildContext context, AuthViewModel viewModel) =>
      viewModel.confirm();
}

class ConfirmSignInMFAButton extends AuthenticatorElevatedButton {
  const ConfirmSignInMFAButton({Key? key})
      : super(
          key: key ?? keyConfirmSignInButton,
          labelKey: ButtonResolverKey.confirm,
        );

  @override
  void onPressed(BuildContext context, AuthViewModel viewModel) =>
      viewModel.confirmSignIn();
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
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    final buttonResolver = stringResolver.buttons;
    return ElevatedButton(
      key: keySignOutButton,
      onPressed: viewModel.signOut,
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

class SendCodeButton extends AuthenticatorElevatedButton {
  const SendCodeButton({Key? key})
      : super(
          key: key ?? keySendCodeButton,
          labelKey: ButtonResolverKey.submit,
        );

  @override
  void onPressed(BuildContext context, AuthViewModel viewModel) =>
      viewModel.sendCode();
}

class SubmitButton extends AuthenticatorElevatedButton {
  const SubmitButton({Key? key})
      : super(
          key: key ?? keySendCodeButton,
          labelKey: ButtonResolverKey.submit,
        );

  @override
  void onPressed(BuildContext context, AuthViewModel viewModel) =>
      viewModel.confirmPassword();
}

class ConfirmSignInNewPasswordButton extends AuthenticatorElevatedButton {
  const ConfirmSignInNewPasswordButton({Key? key})
      : super(
          key: key ?? keyConfirmSignInButton,
          labelKey: ButtonResolverKey.changePassword,
        );

  @override
  void onPressed(BuildContext context, AuthViewModel viewModel) =>
      viewModel.confirmSignIn();
}

class VerifyUserButton extends AuthenticatorElevatedButton {
  const VerifyUserButton({Key? key})
      : super(
          key: key ?? keySendCodeButton,
          labelKey: ButtonResolverKey.verifyUser,
        );

  @override
  void onPressed(BuildContext context, AuthViewModel viewModel) {
    final verifyUserGroupState = VerifyUserFormFieldGroup.of<String>(context);
    viewModel.verifyUser(verifyUserGroupState.value);
  }
}

class ConfirmVerifyUserButton extends AuthenticatorElevatedButton {
  const ConfirmVerifyUserButton({Key? key})
      : super(
          key: key ?? keySendCodeButton,
          labelKey: ButtonResolverKey.confirmVerifyUser,
        );

  @override
  void onPressed(BuildContext context, AuthViewModel viewModel) {
    final authState =
        InheritedAuthBloc.of(context).currentState as AttributeVerificationSent;
    viewModel.confirmVerifyUser(authState.userAttributeKey);
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
