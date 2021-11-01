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

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/utils/list.dart';
import 'package:amplify_authenticator/src/widgets/button.dart';
import 'package:amplify_authenticator/src/widgets/checkbox.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:amplify_authenticator/src/widgets/oauth/social_button.dart';
import 'package:amplify_flutter/src/config/auth/aws_cognito_social_providers.dart';
import 'package:amplify_flutter/src/config/auth/aws_cognito_username_attributes.dart';
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

  /// Additional fields defined at runtime.
  List<AuthenticatorFormField> runtimeFields(BuildContext context) => const [];

  /// Additional actions defined at runtime.
  List<AuthenticatorComponent> additionalActions(BuildContext context) =>
      const [];
}

class AuthenticatorFormState<T extends AuthenticatorForm<T>>
    extends AuthenticatorComponentState<T> {
  AuthenticatorFormState._();

  final ValueNotifier<bool> obscureTextToggleValue = ValueNotifier(true);

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
    final additionalActions = widget.additionalActions(context);
    return Form(
      key: viewModel.formKey,
      child: Column(
        children: [
          ...widget.fields,
          ...widget.runtimeFields(context),
          Column(
            children: [
              ...widget.actions,
              if (additionalActions.isNotEmpty) ...[
                const Divider(),
                ...additionalActions,
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
  const SignUpForm({Key? key, bool attributesFromConfig = true})
      : this.custom(
            key: key,
            fields: const [],
            attributesFromConfig: attributesFromConfig);

  /// A custom Sign Up form.
  const SignUpForm.custom(
      {Key? key,
      required List<AuthenticatorFormField> fields,
      this.attributesFromConfig = true})
      : super._(
          key: key,
          fields: fields,
          actions: const [
            SignUpButton(),
            GoToSignInButton(),
          ],
        );

  /// Whether to include the attributes specified by your Amplify configuration.
  final bool attributesFromConfig;

  @override
  List<AuthenticatorFormField> runtimeFields(BuildContext context) {
    if (!attributesFromConfig) {
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

    List<AuthenticatorFormField> signUpFields = [];

    final usernameAttributes = InheritedConfig.of(context)
            .amplifyConfig
            ?.auth
            ?.awsCognitoAuthPlugin
            ?.auth?['Default']
            ?.awsCognitoUsernameAttributes ??
        const [];

    if (usernameAttributes.isNotEmpty) {
      if (usernameAttributes.length == 1) {
        if (usernameAttributes.contains(AwsCognitoUsernameAttributes.email)) {
          signUpFields.add(const SignUpFormField.email());
        } else if (usernameAttributes
            .contains(AwsCognitoUsernameAttributes.phoneNumber)) {
          signUpFields.add(const SignUpFormField.phoneNumber());
        }
      } else if (usernameAttributes.length == 2) {
        signUpFields.add(const SignUpFormField.email());
        signUpFields.add(const SignUpFormField.phoneNumber());
        signUpFields.add(const SignUpFormField.selectUserNameType());
      }
    } else {
      signUpFields.add(const SignUpFormField.username());
    }

    signUpFields.addAll([
      const SignUpFormField.password(),
      const SignUpFormField.passwordConfirmation()
    ]);

    signUpFields.addAll(signUpAttributes
        .map((attr) {
          switch (attr) {
            case 'ADDRESS':
              return const SignUpFormField.address();
            case 'BIRTHDATE':
              return const SignUpFormField.birthdate();
            case 'EMAIL':
              if (!usernameAttributes
                  .contains(AwsCognitoUsernameAttributes.email)) {
                return const SignUpFormField.email();
              } else {
                return null;
              }
            case 'FAMILY_NAME':
              return const SignUpFormField.familyName();
            case 'MIDDLE_NAME':
              return const SignUpFormField.middleName();
            case 'GENDER':
              return const SignUpFormField.gender();

            /// TODO: Potentially remove locale and add to api call based on phone locale
            // case 'LOCALE':
            //   return const SignUpFormField.locale();
            case 'GIVEN_NAME':
              return const SignUpFormField.givenName();
            case 'NAME':
              return const SignUpFormField.name();
            case 'NICKNAME':
              return const SignUpFormField.nickname();
            case 'PHONE_NUMBER':
              if (!usernameAttributes
                  .contains(AwsCognitoUsernameAttributes.phoneNumber)) {
                return const SignUpFormField.phoneNumber();
              } else {
                return null;
              }
            // case 'PICTURE':
            //   return const SignUpFormField.picture();
            // case 'PROFILE':
            //   return const SignUpFormField.profile();

            // /// TODO: Potentially remove updated_at and add to api call based on device datetime
            // case 'UPDATED_AT':
            //   return const SignUpFormField.updatedAt();
            // case 'WEBSITE':
            //   return const SignUpFormField.website();

            // /// TODO: Potentially remove zoneinfo and add to api call based on device timezone
            // case 'ZONEINFO':
            //   return const SignUpFormField.zoneinfo();
          }
        })
        .whereType<SignUpFormField>()
        .toList());

    return signUpFields;
  }

  @override
  AuthenticatorFormState<SignUpForm> createState() =>
      AuthenticatorFormState<SignUpForm>._();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>(
        'attributesFromConfig', attributesFromConfig));
  }
}

/// {@template authenticator.sign_in_form}
/// The Sign In screen form.
///
/// To customize, use [SignInForm.custom].
/// {@endtemplate}
class SignInForm extends AuthenticatorForm<SignInForm> {
  /// {@macro authenticator.sign_in_form}
  const SignInForm({
    Key? key,
    bool includeDefaultSocialProviders = true,
  }) : this.custom(
          key: key,
          fields: const [
            SignInFormField.username(),
            SignInFormField.password(),
          ],
          includeDefaultSocialProviders: includeDefaultSocialProviders,
        );

  /// A custom Sign In form.
  const SignInForm.custom({
    Key? key,
    required List<AuthenticatorFormField> fields,
    this.includeDefaultSocialProviders = true,
  }) : super._(
          key: key,
          fields: fields,
          actions: const [
            SignInButton(),
            GoToSignUpButton(),
          ],
        );

  /// Whether to include buttons for the configured social providers.
  final bool includeDefaultSocialProviders;

  @override
  List<AuthenticatorButton> additionalActions(BuildContext context) {
    if (!includeDefaultSocialProviders) {
      return const [];
    }

    final socialProviders = InheritedConfig.of(context)
        .amplifyConfig
        ?.auth
        ?.awsCognitoAuthPlugin
        ?.auth?['Default']
        ?.awsCognitoSocialProviders;
    if (socialProviders == null || socialProviders.isEmpty) {
      return const [];
    }

    return socialProviders
        .map((usernameAttributes) {
          switch (usernameAttributes) {
            case AwsCognitoSocialProviders.facebook:
              return const SocialSignInButton.facebook();
            case AwsCognitoSocialProviders.google:
              return const SocialSignInButton.google();
            case AwsCognitoSocialProviders.amazon:
              return const SocialSignInButton.amazon();
            case AwsCognitoSocialProviders.apple:
              return const SocialSignInButton.apple();
          }
        })
        .whereType<AuthenticatorButton>()
        .toList();
  }

  @override
  AuthenticatorFormState<SignInForm> createState() =>
      AuthenticatorFormState<SignInForm>._();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>(
        'includeDefaultSocialProviders', includeDefaultSocialProviders));
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
    required List<AuthenticatorFormField> fields,
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
  const ConfirmSignInMFAForm({Key? key})
      : this.custom(
          key: key,
          fields: const [
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
            RememberDeviceCheckbox(),
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
  const ConfirmSignInNewPasswordForm({
    Key? key,
  }) : this.custom(
          key: key,
          fields: const [
            ConfirmSignInFormField.password(),
          ],
        );

  /// A custom Confirm Sign In with New Password form.
  const ConfirmSignInNewPasswordForm.custom({
    Key? key,
    required List<AuthenticatorFormField> fields,
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
  const SendCodeForm({
    Key? key,
  }) : this.custom(
          key: key,
          fields: const [
            SignInFormField.verifyUsername(),
          ],
        );

  /// A custom Send Coded form.
  const SendCodeForm.custom({
    Key? key,
    required List<AuthenticatorFormField> fields,
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
  const ResetPasswordForm({
    Key? key,
  }) : this.custom(
          key: key,
          fields: const [
            SignInFormField.verificationCode(),
            SignInFormField.newPassword(),
          ],
        );

  /// A custom Reset Password form.
  const ResetPasswordForm.custom({
    Key? key,
    required List<AuthenticatorFormField> fields,
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
  const VerifyUserForm({
    Key? key,
  }) : super._(
          key: key,
          fields: const [],
          actions: const [
            VerifyUserButton(),
            SkipVerifyUserButton(),
          ],
        );

  String _splitAndCapitalize(String key) {
    return key
        .split('_')
        .map((word) => word[0].toUpperCase() + word.substring(1))
        .join(' ');
  }

  List<String> _unverifiedAttributeKeys(BuildContext context) {
    final authState = InheritedAuthBloc.of(context).currentState;
    if (authState is! VerifyUserFlow) {
      return const [];
    }
    return authState.unverifiedAttributeKeys;
  }

  @override
  List<AuthenticatorFormField> runtimeFields(BuildContext context) {
    return _unverifiedAttributeKeys(context).map((attributeKey) {
      return VerifyUserFormField(
        attributeKey: attributeKey,
        label: _splitAndCapitalize(attributeKey), // TODO: support localization
      );
    }).toList();
  }

  @override
  _VerifyUserFormState createState() => _VerifyUserFormState();
}

class _VerifyUserFormState extends AuthenticatorFormState<VerifyUserForm> {
  _VerifyUserFormState() : super._();

  @override
  Widget build(BuildContext context) {
    final unverifiedAttributeKeys = widget._unverifiedAttributeKeys(context);
    assert(
      unverifiedAttributeKeys.isNotEmpty,
      'Attribute keys cannot be empty',
    );
    return VerifyUserFormFieldGroup<String>(
      groupValue: ValueNotifier(unverifiedAttributeKeys.first),
      child: super.build(context),
    );
  }
}

/// {@template authenticator.confirm_verify_user_form}
/// The Confirm Verify User screen form.
///
/// Cannot be customized.
/// {@endtemplate}
class ConfirmVerifyUserForm extends AuthenticatorForm<ConfirmVerifyUserForm> {
  /// {@macro authenticator.confirm_verify_user_form}
  const ConfirmVerifyUserForm({
    Key? key,
  }) : super._(
          key: key,
          fields: const [
            ConfirmVerifyUserFormField(),
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
