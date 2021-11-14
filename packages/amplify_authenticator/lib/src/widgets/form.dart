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

library authenticator.form;

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/mixins/authenticator_username_field.dart';
import 'package:amplify_authenticator/src/models/username_input.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/utils/list.dart';
import 'package:amplify_authenticator/src/widgets/button.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:amplify_authenticator/src/widgets/social/social_button.dart';
import 'package:amplify_flutter/src/config/auth/aws_cognito_social_providers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// Base class for Authenticator forms.
///
/// See also:
/// - [SignUpForm]
/// - [SignInForm]
/// - [ConfirmSignUpForm]
/// - [ConfirmSignInMFAForm]
/// - [ConfirmSignInNewPasswordForm]
/// - [SendCodeForm]
/// - [ResetPasswordForm]
/// - [VerifyUserForm]
/// - [ConfirmVerifyUserForm]
abstract class AuthenticatorForm<T extends AuthenticatorForm<T>>
    extends AuthenticatorComponent<T> {
  const AuthenticatorForm._({
    Key? key,
    required this.fields,
    required this.actions,
  }) : super(key: key);

  /// The form's field components.
  final List<AuthenticatorFormField> fields;

  /// Buttons and checkboxes to show below [fields].
  final List<Widget> actions;
}

class AuthenticatorFormState<T extends AuthenticatorForm<T>>
    extends AuthenticatorComponentState<T> with UsernameAttributes<T> {
  AuthenticatorFormState._();

  /// Additional fields defined at runtime.
  List<AuthenticatorFormField> runtimeFields(BuildContext context) => const [];

  /// Additional actions defined at runtime.
  List<AuthenticatorComponent> runtimeActions(BuildContext context) => const [];

  final ValueNotifier<bool> obscureTextToggleValue = ValueNotifier(true);

  @override
  void initState() {
    super.initState();
    useEmail.addListener(_updateUseEmail);
  }

  @override
  void dispose() {
    useEmail.removeListener(_updateUseEmail);
    super.dispose();
  }

  void _updateUseEmail() {
    setState(() {});
  }

  /// Controls optional visibilty of the field.
  Widget get obscureTextToggle {
    return ValueListenableBuilder<bool>(
      valueListenable: obscureTextToggleValue,
      builder: (BuildContext context, bool toggleObscureText, Widget? _) {
        return IconButton(
          onPressed: () {
            obscureTextToggleValue.value = !toggleObscureText;
          },
          icon: Icon(
            toggleObscureText ? Icons.visibility : Icons.visibility_off,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final _runtimeActions = runtimeActions(context);
    return Form(
      key: viewModel.formKey,
      child: Column(
        children: [
          ...widget.fields,
          ...runtimeFields(context),
          Column(
            children: [
              ...widget.actions,
              if (_runtimeActions.isNotEmpty) ...[
                const Divider(),
                ..._runtimeActions,
              ]
            ].spacedBy(const SizedBox(height: 10)),
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<ValueNotifier<bool?>>(
        'obscureTextToggleValue', obscureTextToggleValue));
  }
}

/// {@template authenticator.sign_up_form}
/// The Sign Up screen form.
///
/// To customize, use [SignUpForm.custom].
/// {@endtemplate}
class SignUpForm extends AuthenticatorForm<SignUpForm> {
  /// {@macro authenticator.sign_up_form}
  SignUpForm({Key? key})
      : this.custom(
          key: key,
          fields: [
            SignUpFormField.username(),
            SignUpFormField.password(),
            SignUpFormField.passwordConfirmation(),
          ],
        );

  /// A custom Sign Up form.
  const SignUpForm.custom({
    Key? key,
    required List<SignUpFormField> fields,
    this.includeRequiredAttributes = true,
  }) : super._(
          key: key,
          fields: fields,
          actions: const [
            SignUpButton(),
          ],
        );

  /// Whether to include form fields for your user pool's required attributes.
  /// This can be turned off in combination with [SignUpForm.custom] to create
  /// a fully customized form. However, Cognito will reject your sign up
  /// request if these required attributes are not included in the request.
  ///
  /// Defaults to `true`.
  final bool includeRequiredAttributes;

  @override
  _SignUpFormState createState() => _SignUpFormState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>(
        'includeRequiredAttributes', includeRequiredAttributes));
  }
}

class _SignUpFormState extends AuthenticatorFormState<SignUpForm> {
  _SignUpFormState() : super._();

  @override
  List<SignUpFormField> runtimeFields(BuildContext context) {
    if (widget.fields.isNotEmpty && !widget.includeRequiredAttributes) {
      return const [];
    }

    final signUpAttributes = InheritedConfig.of(context)
        .amplifyConfig
        ?.auth
        ?.awsCognitoAuthPlugin
        ?.auth?['Default']
        ?.signupAttributes;
    if (signUpAttributes == null) {
      return const [];
    }

    return signUpAttributes
        .map((attr) {
          if (attr == CognitoUserAttributeKey.address) {
            return SignUpFormField.address();
          }
          if (attr == CognitoUserAttributeKey.birthdate) {
            return SignUpFormField.birthdate();
          }
          if (attr == CognitoUserAttributeKey.email) {
            if (selectedUsernameType == UsernameType.email) {
              return null;
            }
            return SignUpFormField.email();
          }
          if (attr == CognitoUserAttributeKey.familyName) {
            return SignUpFormField.familyName();
          }
          if (attr == CognitoUserAttributeKey.middleName) {
            return SignUpFormField.middleName();
          }
          if (attr == CognitoUserAttributeKey.gender) {
            return SignUpFormField.gender();
          }
          if (attr == CognitoUserAttributeKey.givenName) {
            return SignUpFormField.givenName();
          }
          if (attr == CognitoUserAttributeKey.name) {
            return SignUpFormField.name();
          }
          if (attr == CognitoUserAttributeKey.nickname) {
            return SignUpFormField.nickname();
          }
          if (attr == CognitoUserAttributeKey.phoneNumber) {
            if (selectedUsernameType == UsernameType.phoneNumber) {
              return null;
            }
            return SignUpFormField.phoneNumber();
          }
        })
        .whereType<SignUpFormField>()
        .toList();
  }
}

/// {@template authenticator.sign_in_form}
/// The Sign In screen form.
///
/// To customize, use [SignInForm.custom].
/// {@endtemplate}
class SignInForm extends AuthenticatorForm<SignInForm> {
  /// {@macro authenticator.sign_in_form}
  SignInForm({
    Key? key,
    bool includeDefaultSocialProviders = true,
  }) : this.custom(
          key: key,
          fields: [
            SignInFormField.username(),
            SignInFormField.password(),
          ],
          includeDefaultSocialProviders: includeDefaultSocialProviders,
        );

  /// A custom Sign In form.
  const SignInForm.custom({
    Key? key,
    required List<SignInFormField> fields,
    this.includeDefaultSocialProviders = true,
  }) : super._(
          key: key,
          fields: fields,
          actions: const [
            SignInButton(),
          ],
        );

  /// Whether to include buttons for the configured social providers.
  final bool includeDefaultSocialProviders;

  @override
  _SignInFormState createState() => _SignInFormState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>(
        'includeDefaultSocialProviders', includeDefaultSocialProviders));
  }
}

class _SignInFormState extends AuthenticatorFormState<SignInForm> {
  _SignInFormState() : super._();

  @override
  List<AuthenticatorButton> runtimeActions(BuildContext context) {
    if (!widget.includeDefaultSocialProviders) {
      return const [];
    }

    final socialProviders = InheritedConfig.of(context)
        .amplifyConfig
        ?.auth
        ?.awsCognitoAuthPlugin
        ?.auth?['Default']
        ?.socialProviders;
    if (socialProviders == null || socialProviders.isEmpty) {
      return const [];
    }

    return socialProviders
        .map((provider) {
          switch (provider) {
            case SocialProviders.facebook:
              return const SocialSignInButton.facebook();
            case SocialProviders.google:
              return const SocialSignInButton.google();
            case SocialProviders.amazon:
              return const SocialSignInButton.amazon();
            case SocialProviders.apple:
              return const SocialSignInButton.apple();
          }
        })
        .whereType<AuthenticatorButton>()
        .toList();
  }
}

/// {@template authenticator.confirm_sign_up_form}
/// The Confirm Sign Up screen form.
///
/// To customize, use [ConfirmSignUpForm.custom].
/// {@endtemplate}
class ConfirmSignUpForm extends AuthenticatorForm<ConfirmSignUpForm> {
  /// {@macro authenticator.confirm_sign_up_form}
  ConfirmSignUpForm({
    Key? key,
  }) : this.custom(
          key: key,
          fields: [
            ConfirmSignUpFormField.username(),
            ConfirmSignUpFormField.verificationCode(),
          ],
        );

  /// A custom Confirm Sign Up form.
  const ConfirmSignUpForm.custom({
    Key? key,
    required List<ConfirmSignUpFormField> fields,
    this.resendCodeButton,
  }) : super._(
          key: key,
          fields: fields,
          actions: const [
            ConfirmSignUpButton(),
            BackToSignInButton(),
          ],
        );

  /// Widget to show for resending a verification code.
  ///
  /// Typically a [TextButton].
  final Widget? resendCodeButton;

  @override
  AuthenticatorFormState<ConfirmSignUpForm> createState() =>
      AuthenticatorFormState<ConfirmSignUpForm>._();
}

/// {@template authenticator.confirm_sign_in_mfa_form}
/// The Confirm Sign In with MFA screen form.
///
/// To customize, use [ConfirmSignInMFAForm.custom].
/// {@endtemplate}
class ConfirmSignInMFAForm extends AuthenticatorForm<ConfirmSignInMFAForm> {
  /// {@macro authenticator.confirm_sign_in_mfa_form}
  ConfirmSignInMFAForm({Key? key})
      : this.custom(
          key: key,
          fields: [
            ConfirmSignInFormField.verificationCode(),
          ],
        );

  /// A custom Confirm Sign In with MFA form.
  const ConfirmSignInMFAForm.custom({
    Key? key,
    required List<AuthenticatorFormField> fields,
  }) : super._(
          key: key,
          fields: fields,
          actions: const [
            ConfirmSignInMFAButton(),
            BackToSignInButton(),
          ],
        );

  @override
  AuthenticatorFormState<ConfirmSignInMFAForm> createState() =>
      AuthenticatorFormState<ConfirmSignInMFAForm>._();
}

/// {@template authenticator.confirm_sign_in_new_password_form}
/// The Confirm Sign In with New Password screen form.
///
/// To customize, use [ConfirmSignInNewPasswordForm.custom].
/// {@endtemplate}
class ConfirmSignInNewPasswordForm
    extends AuthenticatorForm<ConfirmSignInNewPasswordForm> {
  /// {@macro authenticator.confirm_sign_in_new_password_form}
  ConfirmSignInNewPasswordForm({
    Key? key,
  }) : this.custom(
          key: key,
          fields: [
            ConfirmSignInFormField.newPassword(),
          ],
        );

  /// A custom Confirm Sign In with New Password form.
  const ConfirmSignInNewPasswordForm.custom({
    Key? key,
    required List<ConfirmSignInFormField> fields,
  }) : super._(
          key: key,
          fields: fields,
          actions: const [
            ConfirmSignInNewPasswordButton(),
            BackToSignInButton(),
          ],
        );

  @override
  AuthenticatorFormState<ConfirmSignInNewPasswordForm> createState() =>
      AuthenticatorFormState<ConfirmSignInNewPasswordForm>._();
}

/// {@template authenticator.send_code_form}
/// The Send Code screen form.
///
/// To customize, use [SendCodeForm.custom].
/// {@endtemplate}
class SendCodeForm extends AuthenticatorForm<SendCodeForm> {
  /// {@macro authenticator.send_code_form}
  SendCodeForm({
    Key? key,
  }) : this.custom(
          key: key,
          fields: [
            SignInFormField.username(),
          ],
        );

  /// A custom Send Coded form.
  const SendCodeForm.custom({
    Key? key,
    required List<SignInFormField> fields,
  }) : super._(
          key: key,
          fields: fields,
          actions: const [
            BackToSignInButton(),
            SendCodeButton(),
          ],
        );

  @override
  AuthenticatorFormState<SendCodeForm> createState() =>
      AuthenticatorFormState<SendCodeForm>._();
}

/// {@template authenticator.reset_password_form}
/// The Reset Password screen form.
///
/// To customize, use [ResetPasswordForm.custom].
/// {@endtemplate}
class ResetPasswordForm extends AuthenticatorForm<ResetPasswordForm> {
  /// {@macro authenticator.reset_password_form}
  ResetPasswordForm({
    Key? key,
  }) : this.custom(
          key: key,
          fields: [
            SignInFormField.verificationCode(),
            SignInFormField.newPassword(),
            SignInFormField.passwordConfirmation()
          ],
        );

  /// A custom Reset Password form.
  const ResetPasswordForm.custom({
    Key? key,
    required List<SignInFormField> fields,
  }) : super._(
          key: key,
          fields: fields,
          actions: const [
            SubmitButton(),
            BackToSignInButton(),
          ],
        );

  @override
  AuthenticatorFormState<ResetPasswordForm> createState() =>
      AuthenticatorFormState<ResetPasswordForm>._();
}

/// {@template authenticator.verify_user_form}
/// The Verify User screen form.
///
/// Cannot be customized.
/// {@endtemplate}
class VerifyUserForm extends AuthenticatorForm<VerifyUserForm> {
  /// {@macro authenticator.verify_user_form}
  VerifyUserForm({
    Key? key,
  }) : super._(
          key: key,
          fields: [
            VerifyUserFormField.verifyAttribute(),
          ],
          actions: const [
            VerifyUserButton(),
            SkipVerifyUserButton(),
          ],
        );

  @override
  AuthenticatorFormState<VerifyUserForm> createState() =>
      AuthenticatorFormState<VerifyUserForm>._();
}

/// {@template authenticator.confirm_verify_user_form}
/// The Confirm Verify User screen form.
///
/// Cannot be customized.
/// {@endtemplate}
class ConfirmVerifyUserForm extends AuthenticatorForm<ConfirmVerifyUserForm> {
  /// {@macro authenticator.confirm_verify_user_form}
  ConfirmVerifyUserForm({
    Key? key,
  }) : super._(
          key: key,
          fields: [
            VerifyUserFormField.confirmVerifyAttribute(),
          ],
          actions: const [
            ConfirmVerifyUserButton(),
            SkipVerifyUserButton(),
          ],
        );

  @override
  AuthenticatorFormState<ConfirmVerifyUserForm> createState() =>
      AuthenticatorFormState<ConfirmVerifyUserForm>._();
}
