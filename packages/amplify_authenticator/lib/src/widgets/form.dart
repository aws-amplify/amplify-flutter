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
import 'package:amplify_authenticator/src/mixins/authenticator_username_field.dart';
import 'package:amplify_authenticator/src/state/inherited_authenticator_state.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/utils/list.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:amplify_authenticator/src/widgets/social/social_button.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Base class for Authenticator forms and ancestor of all Authenticator
/// form fields.
///
/// {@template amplify_authenticator.authenticator_form_builder}
/// When building custom authenticator forms composed of prebuilt
/// form field widgets, AuthenticatorForm should be an ancestor of
/// all field widgets.
///
/// ```dart
/// AuthenticatorForm(
///   child: Column(
///     children: [
///       // prebuilt form field widget
///       SignUpFormField.username(),
///       SignUpFormField.email(required: true),
///       SignUpFormField.password(),
///       SignUpFormField.passwordConfirmation(),
///
///       // custom field for a terms and conditions checkbox
///       TermsAndConditionsCheckBox(),
///
///       // prebuilt sign up button from amplify_authenticator package
///       const SignUpButton(),
///     ],
///   ),
/// ),
/// ```
/// {@endtemplate}
///
/// See also:
/// - [SignUpForm]
/// - [SignInForm]
/// - [ConfirmSignUpForm]
/// - [ConfirmSignInMFAForm]
/// - [ConfirmSignInCustomAuthForm]
/// - [ConfirmSignInNewPasswordForm]
/// - [ResetPasswordForm]
/// - [ConfirmResetPasswordForm]
/// - [VerifyUserForm]
/// - [ConfirmVerifyUserForm]
class AuthenticatorForm extends AuthenticatorComponent<AuthenticatorForm> {
  /// {@macro amplify_authenticator.authenticator_form_builder}
  const AuthenticatorForm({
    Key? key,
    required this.child,
  })  : fields = const [],
        actions = const [],
        includeDefaultSocialProviders = false,
        super(key: key);

  const AuthenticatorForm._({
    Key? key,
    required this.fields,
    required this.actions,
    this.includeDefaultSocialProviders = true,
  })  : child = null,
        super(key: key);

  /// The form fields which are independent of the Auth plugin configuration.
  final List<AuthenticatorFormField> fields;

  /// Buttons and checkboxes to show below the fields.
  final List<Widget> actions;

  /// Whether to include buttons for the configured social providers.
  final bool includeDefaultSocialProviders;

  /// A completely custom child widget
  final Widget? child;

  @override
  AuthenticatorFormState<AuthenticatorForm> createState() =>
      AuthenticatorFormState<AuthenticatorForm>();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>(
        'includeDefaultSocialProviders', includeDefaultSocialProviders));
  }
}

class AuthenticatorFormState<T extends AuthenticatorForm>
    extends AuthenticatorComponentState<T> with UsernameAttributes<T> {
  AuthenticatorFormState();

  static AuthenticatorFormState of(BuildContext context) {
    AuthenticatorFormState? state =
        context.findAncestorStateOfType<AuthenticatorFormState>();
    // ignore: prefer_asserts_with_message
    assert(() {
      if (state == null) {
        throw FlutterError.fromParts([
          ErrorSummary('No AuthenticatorForm widget found.'),
          ErrorDescription(
            'All Form Field widgets from amplify_authenticator must be a descendant of a AuthenticatorForm widget.',
          ),
          ErrorDescription(
            'If you are using prebuilt Form Field widgets to create a custom Authenticator UI, '
            'ensure that they are a descendant of a AuthenticatorForm widget.',
          )
        ]);
      }
      return true;
    }());
    return state!;
  }

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
    // Clear attributes on switch
    state.authAttributes.clear();

    // Refresh state
    setState(() {});
  }

  /// Controls optional visibility of the field.
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

  /// All the fields to display on the form. Implementations of [AuthenticatorFormState]
  /// can override this.
  ///
  /// Defaults to [AuthenticatorForm.fields].
  List<AuthenticatorFormField> get allFields {
    return widget.fields;
  }

  @override
  Widget build(BuildContext context) {
    final formKey = InheritedAuthenticatorState.of(context).formKey;
    if (widget.child != null) {
      return Form(
        key: formKey,
        child: widget.child!,
      );
    }

    final runtimeActions = this.runtimeActions(context);
    return Form(
      key: formKey,
      child: Column(
        children: [
          ...allFields,
          Column(
            children: [
              if (widget.actions.isNotEmpty) const SizedBox(height: 4),
              ...widget.actions,
              if (runtimeActions.isNotEmpty) ...[
                const Divider(),
                ...runtimeActions,
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

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.sign_up_form}
/// A prebuilt form for registering a new user.
///
/// To customize the form fields, use [SignUpForm.custom].
/// {@endtemplate}
class SignUpForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.sign_up_form}
  SignUpForm({
    Key? key,
  })  : _includeDefaultFields = true,
        super._(
          key: key,
          fields: [
            SignUpFormField.username(),
            SignUpFormField.password(),
            SignUpFormField.passwordConfirmation(),
          ],
          actions: const [
            SignUpButton(),
          ],
        );

  /// A custom Sign Up form.
  const SignUpForm.custom({
    Key? key,
    required List<SignUpFormField> fields,
  })  : _includeDefaultFields = false,
        super._(
          key: key,
          fields: fields,
          actions: const [
            SignUpButton(),
          ],
        );

  /// Controls whether the default form fields are included, based on settings in
  /// the Auth plugin configuration.
  final bool _includeDefaultFields;

  @override
  AuthenticatorFormState<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends AuthenticatorFormState<SignUpForm> {
  _SignUpFormState() : super();

  @override
  List<AuthenticatorFormField> get allFields {
    if (!widget._includeDefaultFields) {
      return widget.fields;
    }

    // combine fields
    final fields = [
      ...widget.fields,
      ...runtimeFields(context),
    ];

    // sort on priority. mergeSort is used for a stable sort
    mergeSort(
      fields,
      compare: (AuthenticatorFormField a, AuthenticatorFormField b) {
        // Sort larger priorities first.
        return -a.displayPriority.compareTo(b.displayPriority);
      },
    );

    return fields.toList(growable: false);
  }

  @override
  List<SignUpFormField> runtimeFields(BuildContext context) {
    final authConfig = InheritedConfig.of(context)
        .amplifyConfig
        ?.auth
        ?.awsPlugin
        ?.auth
        ?.default$;
    final Set<CognitoUserAttributeKey> runtimeAttributes = {
      ...?authConfig?.signupAttributes,
      ...?authConfig?.verificationMechanisms,
    };
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

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.sign_in_form}
/// A prebuilt form for signing in a user.
///
/// To customize the form fields, use [SignInForm.custom].
/// {@endtemplate}
class SignInForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.sign_in_form}
  SignInForm({
    Key? key,
    bool includeDefaultSocialProviders = true,
  }) : super._(
          key: key,
          fields: [
            SignInFormField.username(),
            SignInFormField.password(),
          ],
          actions: const [
            SignInButton(),
            ForgotPasswordButton(),
          ],
          includeDefaultSocialProviders: includeDefaultSocialProviders,
        );

  /// A custom Sign In form.
  const SignInForm.custom({
    Key? key,
    required List<SignInFormField> fields,
    bool includeDefaultSocialProviders = true,
  }) : super._(
          key: key,
          fields: fields,
          actions: const [
            SignInButton(),
            ForgotPasswordButton(),
          ],
          includeDefaultSocialProviders: includeDefaultSocialProviders,
        );

  @override
  AuthenticatorFormState<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends AuthenticatorFormState<SignInForm> {
  _SignInFormState() : super();

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

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_sign_up_form}
/// A prebuilt form for completing the sign up flow with a confirmation code.
///
/// To customize the form fields, use [ConfirmSignUpForm.custom].
/// {@endtemplate}
class ConfirmSignUpForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.confirm_sign_up_form}
  ConfirmSignUpForm({
    Key? key,
  })  : resendCodeButton = null,
        super._(
          key: key,
          fields: [
            ConfirmSignUpFormField.username(),
            ConfirmSignUpFormField.verificationCode(),
          ],
          actions: const [
            ConfirmSignUpButton(),
            BackToSignInButton(),
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
      AuthenticatorFormState<ConfirmSignUpForm>();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_sign_in_custom_auth_form}
/// A prebuilt form for completing the sign in process with a Custom Auth Flow.
/// {@endtemplate}
class ConfirmSignInCustomAuthForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.confirm_sign_in_custom_auth_form}
  ConfirmSignInCustomAuthForm({Key? key})
      : super._(
          key: key,
          fields: [
            ConfirmSignInFormField.customChallenge(),
          ],
          actions: const [
            ConfirmSignInCustomButton(),
            BackToSignInButton(
              abortSignIn: true,
            ),
          ],
        );

  @override
  AuthenticatorFormState<ConfirmSignInCustomAuthForm> createState() =>
      AuthenticatorFormState<ConfirmSignInCustomAuthForm>();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_sign_in_mfa_form}
/// A prebuilt form for completing the sign in process with an MFA code.
/// {@endtemplate}
class ConfirmSignInMFAForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.confirm_sign_in_mfa_form}
  ConfirmSignInMFAForm({Key? key})
      : super._(
          key: key,
          fields: [
            ConfirmSignInFormField.verificationCode(),
          ],
          actions: const [
            ConfirmSignInMFAButton(),
            BackToSignInButton(),
          ],
        );

  @override
  AuthenticatorFormState<ConfirmSignInMFAForm> createState() =>
      AuthenticatorFormState<ConfirmSignInMFAForm>();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_sign_in_new_password_form}
/// A prebuilt form for completing the force new password flow.
///
/// To customize the form fields, use [ConfirmSignInNewPasswordForm.custom].
/// {@endtemplate}
class ConfirmSignInNewPasswordForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.confirm_sign_in_new_password_form}
  ConfirmSignInNewPasswordForm({
    Key? key,
  }) : super._(
          key: key,
          fields: [
            ConfirmSignInFormField.newPassword(),
            ConfirmSignInFormField.confirmNewPassword(),
          ],
          actions: const [
            ConfirmSignInNewPasswordButton(),
            BackToSignInButton(),
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
      AuthenticatorFormState<ConfirmSignInNewPasswordForm>();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.send_code_form}
/// A prebuilt form for initiating the reset password flow.
/// {@endtemplate}
class ResetPasswordForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.send_code_form}
  ResetPasswordForm({
    Key? key,
  }) : super._(
          key: key,
          fields: [
            SignInFormField.username(),
          ],
          actions: const [
            ResetPasswordButton(),
            BackToSignInButton(),
          ],
        );

  @override
  AuthenticatorFormState<ResetPasswordForm> createState() =>
      AuthenticatorFormState<ResetPasswordForm>();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.reset_password_form}
/// A prebuilt form for completing the reset password flow.
/// {@endtemplate}
class ConfirmResetPasswordForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.reset_password_form}
  const ConfirmResetPasswordForm({
    Key? key,
  }) : super._(
          key: key,
          fields: const [
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
      AuthenticatorFormState<ConfirmResetPasswordForm>();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.verify_user_form}
/// A prebuilt form for initiating the account recovery attribute verification process.
/// {@endtemplate}
class VerifyUserForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.verify_user_form}
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
      AuthenticatorFormState<VerifyUserForm>();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_verify_user_form}
/// A prebuilt form for completing the account recovery attribute verification process.
/// {@endtemplate}
class ConfirmVerifyUserForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.confirm_verify_user_form}
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
      AuthenticatorFormState<ConfirmVerifyUserForm>();
}
