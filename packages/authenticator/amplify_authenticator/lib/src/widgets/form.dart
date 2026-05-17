// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: diagnostic_describe_all_properties, cascade_invocations

library;

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/enums/enums.dart';
import 'package:amplify_authenticator/src/mixins/authenticator_username_field.dart';
import 'package:amplify_authenticator/src/state/auth_state.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator/src/state/inherited_authenticator_state.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/utils/list.dart';
import 'package:amplify_authenticator/src/widgets/button.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/auth/identity_provider.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/auth/mfa.dart';
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
  const AuthenticatorForm({super.key, required this.child})
    : fields = const [],
      actions = const [],
      includeDefaultSocialProviders = false;

  const AuthenticatorForm._({
    super.key,
    required this.fields,
    required this.actions,
    this.includeDefaultSocialProviders = true,
  }) : child = null;

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
    properties.add(
      DiagnosticsProperty<bool>(
        'includeDefaultSocialProviders',
        includeDefaultSocialProviders,
      ),
    );
  }
}

class AuthenticatorFormState<T extends AuthenticatorForm>
    extends AuthenticatorComponentState<T>
    with UsernameAttributes<T> {
  AuthenticatorFormState();

  static AuthenticatorFormState of(BuildContext context) {
    final state = context.findAncestorStateOfType<AuthenticatorFormState>();
    // ignore: prefer_asserts_with_message
    assert(() {
      if (state == null) {
        FlutterError.presentError(
          FlutterErrorDetails(
            exception: FlutterError.fromParts([
              ErrorSummary('No AuthenticatorForm widget found.'),
              ErrorDescription(
                'All Form Field widgets from amplify_authenticator must be a descendant of a AuthenticatorForm widget.',
              ),
              ErrorDescription(
                'If you are using prebuilt Form Field widgets to create a custom Authenticator UI, '
                'ensure that they are a descendant of a AuthenticatorForm widget.',
              ),
            ]),
          ),
        );
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
        child: AutofillGroup(child: widget.child!),
      );
    }

    final runtimeActions = this.runtimeActions(context);
    return Form(
      key: formKey,
      child: AutofillGroup(
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
                ],
              ].spacedBy(const SizedBox(height: 12)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<ValueNotifier<bool?>>(
        'obscureTextToggleValue',
        obscureTextToggleValue,
      ),
    );
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
  SignUpForm({super.key})
    : _includeDefaultFields = true,
      super._(
        fields: [
          SignUpFormField.username(),
          SignUpFormField.password(),
          SignUpFormField.passwordConfirmation(),
        ],
        actions: const [SignUpButton()],
      );

  /// A custom Sign Up form.
  const SignUpForm.custom({
    super.key,
    required List<SignUpFormField> super.fields,
  }) : _includeDefaultFields = false,
       super._(actions: const [SignUpButton()]);

  /// Controls whether the default form fields are included, based on settings in
  /// the Auth plugin configuration.
  final bool _includeDefaultFields;

  @override
  AuthenticatorFormState<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends AuthenticatorFormState<SignUpForm> {
  _SignUpFormState() : super();

  bool get isCustomForm => !widget._includeDefaultFields;

  static final logger = AmplifyLogger().createChild('SignUpForm');

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // If a custom form is used, check for duplicate fields and log a warning.
    if (isCustomForm) {
      final fields = widget.fields.map((e) => e.field);
      switch (selectedUsernameType) {
        case UsernameType.email:
          if (fields.contains(SignUpField.email)) {
            logger.warn(_duplicateFieldLog('email', 'email()'));
          }
        case UsernameType.phoneNumber:
          if (fields.contains(SignUpField.phoneNumber)) {
            logger.warn(_duplicateFieldLog('phone number', 'phoneNumber()'));
          }
        case UsernameType.username:
          break;
      }
    }
  }

  @override
  List<AuthenticatorFormField> get allFields {
    if (isCustomForm) {
      return widget.fields;
    }

    // combine fields
    final fields = [...widget.fields, ...runtimeFields(context)];

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
    final authConfig = InheritedConfig.of(context).amplifyOutputs?.auth;
    final runtimeAttributes = <CognitoUserAttributeKey>{
      ...?authConfig?.standardRequiredAttributes,
      ...?authConfig?.userVerificationTypes,
    };
    if (runtimeAttributes.isEmpty) {
      return const [];
    }

    final runtimeFields = runtimeAttributes
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

    final hasSmsMfa = authConfig?.mfaMethods?.contains(MfaMethod.sms) ?? false;
    if (hasSmsMfa && selectedUsernameType != UsernameType.phoneNumber) {
      final mfaConfiguration =
          authConfig?.mfaConfiguration ?? MfaEnforcement.off;
      final hasSmsField = runtimeFields.any(
        (f) => f.field == SignUpField.phoneNumber,
      );
      if (!hasSmsField && mfaConfiguration != MfaEnforcement.off) {
        runtimeFields.add(
          SignUpFormField.phoneNumber(
            required: mfaConfiguration == MfaEnforcement.on,
          ),
        );
      }
    }

    return runtimeFields;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('isCustomForm', isCustomForm));
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
  SignInForm({super.key, super.includeDefaultSocialProviders})
    : super._(
        fields: [SignInFormField.username(), SignInFormField.password()],
        actions: const [SignInButton(), ForgotPasswordButton()],
      );

  /// A custom Sign In form.
  const SignInForm.custom({
    super.key,
    required super.fields,
    super.includeDefaultSocialProviders,
  }) : super._(actions: const [SignInButton(), ForgotPasswordButton()]);

  @override
  AuthenticatorFormState<SignInForm> createState() => _SignInFormState();
}

class _PrimaryView extends StatelessWidget {
  const _PrimaryView({
    super.key,
    required this.preferred,
    required this.otherMethods,
    required this.buttonResolver,
    required this.onShowOther,
  });

  final AuthFactorType preferred;
  final List<AuthFactorType> otherMethods;
  final ButtonResolver buttonResolver;
  final VoidCallback onShowOther;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SignInFormField.username(),
        const SizedBox(height: 16),
        FactorSignInButton(factor: preferred),
        if (otherMethods.isNotEmpty) ...[
          const SizedBox(height: 8),
          Center(
            child: TextButton(
              onPressed: onShowOther,
              child: Text(
                buttonResolver.resolve(
                  context,
                  ButtonResolverKey.otherSignInOptions,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class _OtherOptionsView extends StatelessWidget {
  const _OtherOptionsView({
    super.key,
    required this.preferred,
    required this.otherMethods,
    required this.buttonResolver,
    required this.stringResolver,
    required this.onBack,
  });

  final AuthFactorType preferred;
  final List<AuthFactorType> otherMethods;
  final ButtonResolver buttonResolver;
  final AuthStringResolver stringResolver;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    final username = InheritedAuthenticatorState.of(context).username;
    final hasPassword = otherMethods.contains(AuthFactorType.password);
    // Include the preferred method as a passwordless option on this screen
    final passwordlessMethods = [
      if (preferred != AuthFactorType.password) preferred,
      ...otherMethods.where((m) => m != AuthFactorType.password),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Read-only username
        TextFormField(
          initialValue: username,
          readOnly: true,
          enabled: false,
          decoration: const InputDecoration(labelText: 'Email'),
        ),
        const SizedBox(height: 16),

        // Password section
        if (hasPassword) ...[
          SignInFormField.password(),
          const SizedBox(height: 8),
          const SignInWithPasswordLabeledButton(),
        ],

        // "or" divider
        if (hasPassword && passwordlessMethods.isNotEmpty) ...[
          const SizedBox(height: 8),
          Row(
            children: [
              const Expanded(child: Divider()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text('or', style: Theme.of(context).textTheme.bodySmall),
              ),
              const Expanded(child: Divider()),
            ],
          ),
          const SizedBox(height: 8),
        ],

        // Passwordless buttons
        ...passwordlessMethods.map(
          (factor) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: FactorSignInButton(factor: factor),
          ),
        ),

        const SizedBox(height: 4),
        Center(
          child: TextButton(
            onPressed: onBack,
            child: Text(
              stringResolver.buttons.backTo(context, AuthenticatorStep.signIn),
            ),
          ),
        ),
      ],
    );
  }
}

class _SignInFormState extends AuthenticatorFormState<SignInForm> {
  _SignInFormState() : super();

  bool _showOtherOptions = false;

  PasswordlessSettings? get _passwordlessSettings {
    return InheritedAuthBloc.of(context, listen: false).passwordlessSettings;
  }

  AuthFactorType? get _preferred {
    // Explicit setting takes priority
    final explicit = _passwordlessSettings?.preferredAuthMethod;
    if (explicit != null) return explicit;
    // Fall back to backend config
    return InheritedConfig.of(
      context,
    ).amplifyOutputs?.auth?.passwordless?.preferredChallenge;
  }

  List<AuthFactorType> get _otherMethods {
    final preferred = _preferred;
    if (preferred == null) return [];
    // Use explicit list if provided, otherwise derive from backend config
    final settings = _passwordlessSettings;
    if (settings?.availableAuthMethods != null) {
      return settings!.otherAuthMethods;
    }
    final outputs = InheritedConfig.of(
      context,
    ).amplifyOutputs?.auth?.passwordless;
    final all = <AuthFactorType>[
      AuthFactorType.webAuthn,
      if (outputs?.emailOtpEnabled ?? false) AuthFactorType.emailOtp,
      if (outputs?.smsOtpEnabled ?? false) AuthFactorType.smsOtp,
      AuthFactorType.password,
    ];
    final hidden = settings?.hiddenAuthMethods ?? [];
    return all.where((m) => m != preferred && !hidden.contains(m)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final preferred = _preferred;
    // No preferred method set — use standard password form
    if (preferred == null || preferred == AuthFactorType.password) {
      return super.build(context);
    }

    final formKey = InheritedAuthenticatorState.of(context).formKey;
    final buttonResolver = stringResolver.buttons;
    final otherMethods = _otherMethods;

    return Form(
      key: formKey,
      child: AutofillGroup(
        child: AnimatedSwitcher(
          duration: Duration.zero,
          child: _showOtherOptions
              ? _OtherOptionsView(
                  key: const ValueKey('other'),
                  preferred: preferred,
                  otherMethods: otherMethods,
                  buttonResolver: buttonResolver,
                  stringResolver: stringResolver,
                  onBack: () => setState(() => _showOtherOptions = false),
                )
              : _PrimaryView(
                  key: const ValueKey('primary'),
                  preferred: preferred,
                  otherMethods: otherMethods,
                  buttonResolver: buttonResolver,
                  onShowOther: () {
                    if (formKey.currentState?.validate() ?? false) {
                      setState(() => _showOtherOptions = true);
                    }
                  },
                ),
        ),
      ),
    );
  }

  @override
  List<Widget> runtimeActions(BuildContext context) {
    if (!widget.includeDefaultSocialProviders) {
      return const [];
    }

    final socialProviders = InheritedConfig.of(
      context,
    ).amplifyOutputs?.auth?.oauth?.identityProviders;

    if (socialProviders == null || socialProviders.isEmpty) {
      return const [];
    }

    // Sort Apple first based off their app guidelines.
    socialProviders.sort((a, b) {
      if (a == IdentityProvider.apple) {
        return -1;
      } else if (b == IdentityProvider.apple) {
        return 1;
      }
      return a.name.compareTo(b.name);
    });

    return [
      SocialSignInButtons(
        providers: socialProviders.map((e) {
          switch (e) {
            case IdentityProvider.facebook:
              return AuthProvider.facebook;
            case IdentityProvider.google:
              return AuthProvider.google;
            case IdentityProvider.amazon:
              return AuthProvider.amazon;
            case IdentityProvider.apple:
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
  ConfirmSignUpForm({super.key})
    : resendCodeButton = null,
      super._(
        fields: [
          ConfirmSignUpFormField.username(),
          ConfirmSignUpFormField.verificationCode(),
        ],
        actions: const [ConfirmSignUpButton(), BackToSignInButton()],
      );

  /// A custom Confirm Sign Up form.
  const ConfirmSignUpForm.custom({
    super.key,
    required super.fields,
    this.resendCodeButton,
  }) : super._(actions: const [ConfirmSignUpButton(), BackToSignInButton()]);

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
  ConfirmSignInCustomAuthForm({super.key})
    : super._(
        fields: [ConfirmSignInFormField.customChallenge()],
        actions: const [
          ConfirmSignInCustomButton(),
          BackToSignInButton(abortSignIn: true),
        ],
      );

  @override
  AuthenticatorFormState<ConfirmSignInCustomAuthForm> createState() =>
      AuthenticatorFormState<ConfirmSignInCustomAuthForm>();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_sign_in_mfa_form}
/// A prebuilt form for completing the sign in process with an MFA code, from
/// either SMS, TOTP, or Email.
/// {@endtemplate}
class ConfirmSignInMFAForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.confirm_sign_in_mfa_form}
  ConfirmSignInMFAForm({super.key})
    : super._(
        fields: [ConfirmSignInFormField.verificationCode()],
        actions: const [ConfirmSignInMFAButton(), BackToSignInButton()],
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
  ConfirmSignInNewPasswordForm({super.key})
    : super._(
        fields: [
          ConfirmSignInFormField.newPassword(),
          ConfirmSignInFormField.confirmNewPassword(),
        ],
        actions: const [ConfirmSignInNewPasswordButton(), BackToSignInButton()],
      );

  /// A custom Confirm Sign In with New Password form.
  const ConfirmSignInNewPasswordForm.custom({super.key, required super.fields})
    : super._(
        actions: const [ConfirmSignInNewPasswordButton(), BackToSignInButton()],
      );

  @override
  AuthenticatorFormState<ConfirmSignInNewPasswordForm> createState() =>
      AuthenticatorFormState<ConfirmSignInNewPasswordForm>();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.continue_sign_in_with_mfa_selection_form}
/// A prebuilt form for selecting MFA preference.
/// {@endtemplate}
class ContinueSignInWithMfaSelectionForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.continue_sign_in_with_mfa_selection_form}
  ContinueSignInWithMfaSelectionForm({super.key})
    : super._(
        fields: [ConfirmSignInFormField.mfaSelection()],
        actions: const [
          ContinueSignInMFASelectionButton(),
          BackToSignInButton(),
        ],
      );

  @override
  AuthenticatorFormState<ContinueSignInWithMfaSelectionForm> createState() =>
      AuthenticatorFormState<ContinueSignInWithMfaSelectionForm>();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.continue_sign_in_with__mfa_setup_selection_form}
/// A prebuilt form for selecting an MFA method during setup.
/// {@endtemplate}
class ContinueSignInWithMfaSetupSelectionForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.continue_sign_in_with__mfa_setup_selection_form}
  ContinueSignInWithMfaSetupSelectionForm({super.key})
    : super._(
        fields: [ConfirmSignInFormField.mfaSetupSelection()],
        actions: const [
          ContinueSignInMFASetupSelectionButton(),
          BackToSignInButton(),
        ],
      );

  @override
  AuthenticatorFormState<ContinueSignInWithMfaSetupSelectionForm>
  createState() =>
      AuthenticatorFormState<ContinueSignInWithMfaSetupSelectionForm>();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.continue_sign_in_with_totp_setup_form}
/// A prebuilt form for completing the totp setup process.
/// {@endtemplate}
class ContinueSignInWithTotpSetupForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.continue_sign_in_with_totp_setup_form}
  ContinueSignInWithTotpSetupForm({super.key})
    : super._(
        fields: [TotpSetupFormField.totpSetup()],
        actions: const [ConfirmSignInMFAButton(), BackToSignInButton()],
      );

  @override
  AuthenticatorFormState<ContinueSignInWithTotpSetupForm> createState() =>
      AuthenticatorFormState<ContinueSignInWithTotpSetupForm>();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.continue_sign_in_with_email_mfa_setup_form}
/// A prebuilt form for completing the email mfa setup process.
/// {@endtemplate}
class ContinueSignInWithEmailMfaSetupForm extends AuthenticatorForm {
  ContinueSignInWithEmailMfaSetupForm({super.key})
    : super._(
        fields: [const EmailSetupFormField.email()],
        actions: const [
          ContinueSignInWithEmailMfaSetupButton(),
          BackToSignInButton(),
        ],
      );

  @override
  AuthenticatorFormState<ContinueSignInWithEmailMfaSetupForm> createState() =>
      AuthenticatorFormState<ContinueSignInWithEmailMfaSetupForm>();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.send_code_form}
/// A prebuilt form for initiating the reset password flow.
/// {@endtemplate}
class ResetPasswordForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.send_code_form}
  ResetPasswordForm({super.key})
    : super._(
        fields: [SignInFormField.username()],
        actions: const [ResetPasswordButton(), BackToSignInButton()],
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
  const ConfirmResetPasswordForm({super.key})
    : super._(
        fields: const [
          ResetPasswordFormField.verificationCode(),
          ResetPasswordFormField.newPassword(),
          ResetPasswordFormField.passwordConfirmation(),
        ],
        actions: const [ConfirmResetPasswordButton(), BackToSignInButton()],
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
  VerifyUserForm({super.key})
    : super._(
        fields: [VerifyUserFormField.verifyAttribute()],
        actions: const [VerifyUserButton(), SkipVerifyUserButton()],
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
  ConfirmVerifyUserForm({super.key})
    : super._(
        fields: [VerifyUserFormField.confirmVerifyAttribute()],
        actions: const [ConfirmVerifyUserButton(), SkipVerifyUserButton()],
      );

  @override
  AuthenticatorFormState<ConfirmVerifyUserForm> createState() =>
      AuthenticatorFormState<ConfirmVerifyUserForm>();
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.continue_sign_in_with_first_factor_selection_form}
/// A prebuilt form for selecting a first-factor authentication method.
///
/// This form renders a challenge selection screen with:
/// - A read-only username display at the top
/// - An inline password field + submit button if PASSWORD is available
/// - A divider between password and passwordless methods
/// - Full-width buttons for each passwordless method (passkey, email OTP, SMS OTP)
/// - A back-to-sign-in link at the bottom
/// {@endtemplate}
class ContinueSignInWithFirstFactorSelectionForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.continue_sign_in_with_first_factor_selection_form}
  const ContinueSignInWithFirstFactorSelectionForm({super.key})
    : super._(fields: const [], actions: const []);

  @override
  AuthenticatorFormState<ContinueSignInWithFirstFactorSelectionForm>
  createState() => _ContinueSignInWithFirstFactorSelectionFormState();
}

class _ContinueSignInWithFirstFactorSelectionFormState
    extends AuthenticatorFormState<ContinueSignInWithFirstFactorSelectionForm> {
  bool _isPasskeySupported = false;
  bool _isPasskeySupportChecked = false;
  bool _isSubmitting = false;

  /// Tracks which action initiated the submission (password or a factor key).
  String? _submittingAction;
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _checkPasskeySupport();
  }

  Future<void> _checkPasskeySupport() async {
    try {
      final supported = await Amplify.Auth.isPasskeySupported();
      if (mounted) {
        setState(() {
          _isPasskeySupported = supported;
          _isPasskeySupportChecked = true;
        });
      }
    } on Exception {
      if (mounted) {
        setState(() {
          _isPasskeySupported = false;
          _isPasskeySupportChecked = true;
        });
      }
    }
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  Set<AuthFactorType> get _availableFactors {
    final bloc = InheritedAuthBloc.of(context, listen: false);
    final currentState = bloc.currentState;
    if (currentState is ContinueSignInWithFirstFactorSelection) {
      return currentState.availableFactors;
    }
    return const {};
  }

  Set<AuthFactorType> get _filteredFactors {
    final factors = Set<AuthFactorType>.from(_availableFactors);

    // Remove passkey if not supported on this platform
    if (!_isPasskeySupported) {
      factors.remove(AuthFactorType.webAuthn);
    }

    // Apply hiddenAuthMethods from PasswordlessSettings if available
    final authenticator = context
        .findAncestorWidgetOfExactType<Authenticator>();
    final hiddenMethods =
        authenticator?.passwordlessSettings?.hiddenAuthMethods;
    if (hiddenMethods != null) {
      factors.removeAll(hiddenMethods);
    }

    return factors;
  }

  bool get _hasPassword => _filteredFactors.contains(AuthFactorType.password);

  List<AuthFactorType> get _passwordlessMethods {
    return _filteredFactors.where((f) => f != AuthFactorType.password).toList();
  }

  Future<void> _submitPassword() async {
    final password = _passwordController.text.trim();
    if (password.isEmpty) return;

    setState(() {
      _isSubmitting = true;
      _submittingAction = 'password';
    });

    final confirm = AuthConfirmSignInData(confirmationValue: password);
    final bloc = InheritedAuthBloc.of(context, listen: false);
    bloc.add(AuthConfirmSignIn(confirm));
    // ignore: invalid_use_of_visible_for_testing_member
    await state.nextBlocEvent();

    if (mounted) {
      setState(() {
        _isSubmitting = false;
        _submittingAction = null;
      });
    }
  }

  Future<void> _selectFactor(AuthFactorType factor) async {
    setState(() {
      _isSubmitting = true;
      _submittingAction = factor.value;
    });

    final confirm = AuthConfirmSignInData(confirmationValue: factor.value);
    final bloc = InheritedAuthBloc.of(context, listen: false);
    bloc.add(AuthConfirmSignIn(confirm));
    // ignore: invalid_use_of_visible_for_testing_member
    await state.nextBlocEvent();

    if (mounted) {
      setState(() {
        _isSubmitting = false;
        _submittingAction = null;
      });
    }
  }

  ButtonResolverKey _buttonKeyForFactor(AuthFactorType factor) {
    switch (factor) {
      case AuthFactorType.webAuthn:
        return ButtonResolverKey.signInWithPasskey;
      case AuthFactorType.emailOtp:
        return ButtonResolverKey.signInWithEmail;
      case AuthFactorType.smsOtp:
        return ButtonResolverKey.signInWithSms;
      default:
        return ButtonResolverKey.continueLabel;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_isPasskeySupportChecked) {
      return const Center(child: CircularProgressIndicator());
    }

    final buttonResolver = stringResolver.buttons;
    final formKey = InheritedAuthenticatorState.of(context).formKey;
    final passwordlessMethods = _passwordlessMethods;

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Username display (read-only)
          if (state.username.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                state.username,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),

          // Password section
          if (_hasPassword) ...[
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              enabled: !_isSubmitting,
              decoration: InputDecoration(
                labelText: buttonResolver.resolve(
                  context,
                  ButtonResolverKey.signInWithPassword,
                ),
              ),
              onFieldSubmitted: (_) => _submitPassword(),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: _submittingAction == 'password'
                  ? const Center(child: CircularProgressIndicator())
                  : ElevatedButton(
                      onPressed: _isSubmitting ? null : _submitPassword,
                      child: Text(
                        buttonResolver.resolve(
                          context,
                          ButtonResolverKey.signInWithPassword,
                        ),
                      ),
                    ),
            ),
          ],

          // Divider between password and passwordless methods
          if (_hasPassword && passwordlessMethods.isNotEmpty) ...[
            const SizedBox(height: 16),
            Row(
              children: [
                const Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'or',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                const Expanded(child: Divider()),
              ],
            ),
            const SizedBox(height: 16),
          ],

          // Passwordless method buttons
          ...passwordlessMethods.map(
            (factor) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SizedBox(
                width: double.infinity,
                child: _submittingAction == factor.value
                    ? const Center(child: CircularProgressIndicator())
                    : OutlinedButton(
                        onPressed: _isSubmitting
                            ? null
                            : () => _selectFactor(factor),
                        child: Text(
                          buttonResolver.resolve(
                            context,
                            _buttonKeyForFactor(factor),
                          ),
                        ),
                      ),
              ),
            ),
          ),

          // Back to sign in
          const SizedBox(height: 4),
          const BackToSignInButton(),
        ],
      ),
    );
  }
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.passkey_prompt_form}
/// A prebuilt form for the post-authentication passkey registration prompt.
///
/// This form has three visual states:
/// - **Initial**: Heading, description, passkey icon, create button, skip link
/// - **Loading**: Same layout with disabled buttons and progress indicator
/// - **Success**: Success icon, credential list, set up another link, continue button
/// {@endtemplate}
class PasskeyPromptForm extends AuthenticatorForm {
  /// {@macro amplify_authenticator.passkey_prompt_form}
  const PasskeyPromptForm({super.key})
    : super._(fields: const [], actions: const []);

  @override
  AuthenticatorFormState<PasskeyPromptForm> createState() =>
      _PasskeyPromptFormState();
}

class _PasskeyPromptFormState
    extends AuthenticatorFormState<PasskeyPromptForm> {
  PasskeyPromptState get _promptState {
    final bloc = InheritedAuthBloc.of(context, listen: false);
    final currentState = bloc.currentState;
    if (currentState is PasskeyPromptState) {
      return currentState;
    }
    return const PasskeyPromptState();
  }

  void _createPasskey() {
    final bloc = InheritedAuthBloc.of(context, listen: false);
    bloc.add(const AuthPasskeyRegister());
  }

  void _skipPasskey() {
    final bloc = InheritedAuthBloc.of(context, listen: false);
    bloc.add(const AuthPasskeySkip());
  }

  @override
  Widget build(BuildContext context) {
    final promptState = _promptState;
    final titleResolver = stringResolver.titles;
    final buttonResolver = stringResolver.buttons;
    final messageResolver = stringResolver.messages;
    final theme = Theme.of(context);
    final formKey = InheritedAuthenticatorState.of(context).formKey;

    if (promptState.isSuccess) {
      return _buildSuccessView(
        context,
        formKey: formKey,
        promptState: promptState,
        titleResolver: titleResolver,
        buttonResolver: buttonResolver,
        theme: theme,
      );
    }

    return _buildPromptView(
      context,
      formKey: formKey,
      promptState: promptState,
      titleResolver: titleResolver,
      buttonResolver: buttonResolver,
      messageResolver: messageResolver,
      theme: theme,
    );
  }

  Widget _buildPromptView(
    BuildContext context, {
    required Key formKey,
    required PasskeyPromptState promptState,
    required TitleResolver titleResolver,
    required ButtonResolver buttonResolver,
    required MessageResolver messageResolver,
    required ThemeData theme,
  }) {
    final isRegistering = promptState.isRegistering;

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Passkey icon
          Icon(Icons.fingerprint, size: 64, color: theme.colorScheme.primary),
          const SizedBox(height: 16),

          // Description text
          Text(
            messageResolver.passkeyPromptDescription(context),
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),

          // Error message (if any)
          if (promptState.errorMessage != null) ...[
            Text(
              promptState.errorMessage!,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.error,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
          ],

          // Create a passkey button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: isRegistering ? null : _createPasskey,
              child: isRegistering
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text(
                      buttonResolver.resolve(
                        context,
                        ButtonResolverKey.createPasskey,
                      ),
                    ),
            ),
          ),
          const SizedBox(height: 12),

          // Continue without a passkey link
          Center(
            child: TextButton(
              onPressed: isRegistering ? null : _skipPasskey,
              child: Text(
                buttonResolver.resolve(
                  context,
                  ButtonResolverKey.continueWithoutPasskey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuccessView(
    BuildContext context, {
    required Key formKey,
    required PasskeyPromptState promptState,
    required TitleResolver titleResolver,
    required ButtonResolver buttonResolver,
    required ThemeData theme,
  }) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Success icon
          const Icon(Icons.check_circle, color: Colors.green, size: 64),
          const SizedBox(height: 16),

          // Success title
          Text(
            titleResolver.passkeyCreatedSuccess(context),
            style: theme.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),

          // Registered credentials list
          if (promptState.registeredCredentials.isNotEmpty) ...[
            ...promptState.registeredCredentials.map(
              (credential) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  leading: const Icon(Icons.key),
                  title: Text(
                    credential.friendlyName ??
                        credential.credentialId.substring(
                          0,
                          credential.credentialId.length.clamp(0, 8),
                        ),
                  ),
                  subtitle: Text(
                    credential.createdAt.toLocal().toString().split('.').first,
                  ),
                  dense: true,
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],

          // Set up another passkey link
          Center(
            child: TextButton(
              onPressed: _createPasskey,
              child: Text(
                buttonResolver.resolve(
                  context,
                  ButtonResolverKey.setupAnotherPasskey,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),

          // Continue button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _skipPasskey,
              child: Text(
                buttonResolver.resolve(
                  context,
                  ButtonResolverKey.continueLabel,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String _duplicateFieldLog(String alias, String field) {
  return 'SignUpForm contains `SignUpFormField.$field`, but Amplify Auth is '
      'configured to use $alias as a username. This will result in duplicate '
      '$alias fields. Consider removing `SignUpFormField.$field`, or changing '
      'how users sign in. For more info, see: '
      'https://pub.dev/documentation/amplify_authenticator/latest/amplify_authenticator/SignUpFormField/username.html';
}
