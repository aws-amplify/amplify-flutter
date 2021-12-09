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

import 'dart:collection';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/mixins/authenticator_username_field.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/utils/list.dart';
import 'package:amplify_authenticator/src/widgets/button.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:amplify_authenticator/src/widgets/social/social_button.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
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
/// - [ResetPasswordForm]
/// - [ConfirmResetPasswordForm]
/// - [VerifyUserForm]
/// - [ConfirmVerifyUserForm]
abstract class AuthenticatorForm<T extends AuthenticatorForm<T>>
    extends AuthenticatorComponent<T> {
  const AuthenticatorForm._({
    Key? key,
    required this.requiredFields,
    required this.customFields,
    required this.actions,
  }) : super(key: key);

  /// The form fields required by the form.
  final List<AuthenticatorFormField> requiredFields;

  /// The user's custom fields, merged with [requiredFields] and
  /// [AuthenticatorFormState]'s `runtimeFields`.
  final List<AuthenticatorFormField> customFields;

  /// Buttons and checkboxes to show below the fields.
  final List<Widget> actions;
}

class AuthenticatorFormState<T extends AuthenticatorForm<T>>
    extends AuthenticatorComponentState<T> with UsernameAttributes<T> {
  AuthenticatorFormState._();

  /// Additional fields defined at runtime.
  List<AuthenticatorFormField> runtimeFields(BuildContext context) => const [];

  /// Additional actions defined at runtime.
  List<Widget> runtimeActions(BuildContext context) => const [];

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

  List<AuthenticatorFormField> get allFields {
    final fields = LinkedHashSet<AuthenticatorFormField>(
      equals: (a, b) {
        return a.runtimeType == b.runtimeType && a.field == b.field;
      },
      hashCode: (field) => hashValues(field.runtimeType, field.field),
    );

    // Add custom fields first, since they will contain the user's fields and
    // should take precedence over the default fields.
    fields.addAll(widget.customFields.where(
      (el) => el.usernameType != selectedUsernameType,
    ));

    // Add remaining fields based in order of their display priority. Duplicate
    // fields will not be added again, and this ensures that custom fields
    // remain the highest display priority.
    fields.addAll([
      ...widget.requiredFields,
      ...runtimeFields(context),
    ]..sort((a, b) {
        // Sort larger priorities first.
        return -a.displayPriority.compareTo(b.displayPriority);
      }));

    return fields.toList(growable: false);
  }

  @override
  Widget build(BuildContext context) {
    final _runtimeActions = runtimeActions(context);
    return Form(
      key: viewModel.formKey,
      child: Column(
        children: [
          ...allFields,
          Column(
            children: [
              if (widget.actions.isNotEmpty) const SizedBox(height: 4),
              ...widget.actions,
              if (_runtimeActions.isNotEmpty) ...[
                const Divider(),
                ..._runtimeActions,
              ]
            ].spacedBy(const SizedBox(height: 12)),
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
          fields: const [],
          key: key,
        );

  /// A custom Sign Up form.
  SignUpForm.custom({
    Key? key,
    required List<SignUpFormField> fields,
  }) : super._(
          key: key,
          requiredFields: [
            SignUpFormField.username(),
            SignUpFormField.password(),
            SignUpFormField.passwordConfirmation(),
          ],
          customFields: fields,
          actions: const [
            SignUpButton(),
          ],
        );

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends AuthenticatorFormState<SignUpForm> {
  _SignUpFormState() : super._();

  @override
  List<SignUpFormField> runtimeFields(BuildContext context) {
    final authConfig = InheritedConfig.of(context)
        .amplifyConfig
        ?.auth
        ?.awsPlugin
        ?.auth
        ?.default$;
    final runtimeAttributes = [
      ...?authConfig?.signupAttributes,
      ...?authConfig?.verificationMechanisms,
    ];
    if (runtimeAttributes.isEmpty) {
      return const [];
    }

    return runtimeAttributes
        .map((attr) {
          if (attr == CognitoUserAttributeKey.address) {
            return SignUpFormField.address(required: true);
          }
          if (attr == CognitoUserAttributeKey.birthdate) {
            return SignUpFormField.birthdate(required: true);
          }
          if (attr == CognitoUserAttributeKey.email) {
            if (selectedUsernameType == UsernameType.email) {
              return null;
            }
            return SignUpFormField.email(required: true);
          }
          if (attr == CognitoUserAttributeKey.familyName) {
            return SignUpFormField.familyName(required: true);
          }
          if (attr == CognitoUserAttributeKey.middleName) {
            return SignUpFormField.middleName(required: true);
          }
          if (attr == CognitoUserAttributeKey.gender) {
            return SignUpFormField.gender(required: true);
          }
          if (attr == CognitoUserAttributeKey.givenName) {
            return SignUpFormField.givenName(required: true);
          }
          if (attr == CognitoUserAttributeKey.name) {
            return SignUpFormField.name(required: true);
          }
          if (attr == CognitoUserAttributeKey.nickname) {
            return SignUpFormField.nickname(required: true);
          }
          if (attr == CognitoUserAttributeKey.phoneNumber) {
            if (selectedUsernameType == UsernameType.phoneNumber) {
              return null;
            }
            return SignUpFormField.phoneNumber(required: true);
          }
          if (attr == CognitoUserAttributeKey.preferredUsername) {
            return SignUpFormField.preferredUsername(required: true);
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
          fields: const [],
          includeDefaultSocialProviders: includeDefaultSocialProviders,
        );

  /// A custom Sign In form.
  SignInForm.custom({
    Key? key,
    required List<SignInFormField> fields,
    this.includeDefaultSocialProviders = true,
  }) : super._(
          key: key,
          customFields: fields,
          requiredFields: [
            SignInFormField.username(),
            SignInFormField.password(),
          ],
          actions: const [
            SignInButton(),
            ForgotPasswordButton(),
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
  List<Widget> runtimeActions(BuildContext context) {
    if (!widget.includeDefaultSocialProviders) {
      return const [];
    }

    final socialProviders = InheritedConfig.of(context)
        .amplifyConfig
        ?.auth
        ?.awsPlugin
        ?.auth
        ?.default$
        ?.socialProviders;
    if (socialProviders == null || socialProviders.isEmpty) {
      return const [];
    }

    // Sort Apple first based off their app guidelines.
    socialProviders.sort((a, b) {
      if (a == SocialProvider.apple) {
        return -1;
      } else if (b == SocialProvider.apple) {
        return 1;
      }
      return describeEnum(a).compareTo(describeEnum(b));
    });

    return [
      SocialSignInButtons(
        providers: socialProviders.map((e) {
          switch (e) {
            case SocialProvider.facebook:
              return AuthProvider.facebook;
            case SocialProvider.google:
              return AuthProvider.google;
            case SocialProvider.amazon:
              return AuthProvider.amazon;
            case SocialProvider.apple:
              return AuthProvider.apple;
          }
        }).toList(),
      ),
    ];
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
          fields: const [],
        );

  /// A custom Confirm Sign Up form.
  ConfirmSignUpForm.custom({
    Key? key,
    required List<ConfirmSignUpFormField> fields,
    this.resendCodeButton,
  }) : super._(
          key: key,
          customFields: fields,
          requiredFields: [
            ConfirmSignUpFormField.username(),
            ConfirmSignUpFormField.verificationCode(),
          ],
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
/// {@endtemplate}
class ConfirmSignInMFAForm extends AuthenticatorForm<ConfirmSignInMFAForm> {
  /// {@macro authenticator.confirm_sign_in_mfa_form}
  ConfirmSignInMFAForm({Key? key})
      : super._(
          key: key,
          customFields: const [],
          requiredFields: [
            ConfirmSignInFormField.verificationCode(),
          ],
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
          fields: const [],
        );

  /// A custom Confirm Sign In with New Password form.
  ConfirmSignInNewPasswordForm.custom({
    Key? key,
    required List<ConfirmSignInFormField> fields,
  }) : super._(
          key: key,
          customFields: fields,
          requiredFields: [
            ConfirmSignInFormField.newPassword(),
            ConfirmSignInFormField.confirmNewPassword(),
          ],
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
/// The Reset Password screen form.
///
/// To customize, use [ResetPasswordForm.custom].
/// {@endtemplate}
class ResetPasswordForm extends AuthenticatorForm<ResetPasswordForm> {
  /// {@macro authenticator.send_code_form}
  ResetPasswordForm({
    Key? key,
  }) : this.custom(
          key: key,
          fields: const [],
        );

  /// A custom Reset Password form.
  ResetPasswordForm.custom({
    Key? key,
    required List<SignInFormField> fields,
  }) : super._(
          key: key,
          customFields: fields,
          requiredFields: [
            SignInFormField.username(),
          ],
          actions: const [
            ResetPasswordButton(),
            BackToSignInButton(),
          ],
        );

  @override
  AuthenticatorFormState<ResetPasswordForm> createState() =>
      AuthenticatorFormState<ResetPasswordForm>._();
}

/// {@template authenticator.reset_password_form}
/// The Confirm Reset Password screen form.
///
/// To customize, use [ConfirmResetPasswordForm.custom].
/// {@endtemplate}
class ConfirmResetPasswordForm
    extends AuthenticatorForm<ConfirmResetPasswordForm> {
  /// {@macro authenticator.reset_password_form}
  const ConfirmResetPasswordForm({
    Key? key,
  }) : this.custom(
          key: key,
          fields: const [],
        );

  /// A custom Confirm Reset Password form.
  const ConfirmResetPasswordForm.custom({
    Key? key,
    required List<ResetPasswordFormField> fields,
  }) : super._(
          key: key,
          customFields: fields,
          requiredFields: const [
            ResetPasswordFormField.verificationCode(),
            ResetPasswordFormField.newPassword(),
            ResetPasswordFormField.passwordConfirmation()
          ],
          actions: const [
            ConfirmResetPasswordButton(),
            BackToSignInButton(),
          ],
        );

  @override
  AuthenticatorFormState<ConfirmResetPasswordForm> createState() =>
      AuthenticatorFormState<ConfirmResetPasswordForm>._();
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
          requiredFields: [
            VerifyUserFormField.verifyAttribute(),
          ],
          customFields: const [],
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
          requiredFields: [
            VerifyUserFormField.confirmVerifyAttribute(),
          ],
          customFields: const [],
          actions: const [
            ConfirmVerifyUserButton(),
            SkipVerifyUserButton(),
          ],
        );

  @override
  AuthenticatorFormState<ConfirmVerifyUserForm> createState() =>
      AuthenticatorFormState<ConfirmVerifyUserForm>._();
}
