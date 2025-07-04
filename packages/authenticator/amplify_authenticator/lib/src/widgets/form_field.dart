// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library;

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/enums/enums.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/mixins/authenticator_date_field.dart';
import 'package:amplify_authenticator/src/mixins/authenticator_phone_field.dart';
import 'package:amplify_authenticator/src/mixins/authenticator_radio_field.dart';
import 'package:amplify_authenticator/src/mixins/authenticator_text_field.dart';
import 'package:amplify_authenticator/src/mixins/authenticator_username_field.dart';
import 'package:amplify_authenticator/src/models/username_input.dart';
import 'package:amplify_authenticator/src/state/auth_state.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/utils/validators.dart';
import 'package:amplify_authenticator/src/widgets/authenticator_input_config.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/form.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

part 'form_fields/confirm_sign_in_form_field.dart';
part 'form_fields/confirm_sign_up_form_field.dart';
part 'form_fields/email_setup_form_field.dart';
part 'form_fields/mfa_selection_form_field.dart';
part 'form_fields/mfa_setup_selection_form_field.dart';
part 'form_fields/phone_number_field.dart';
part 'form_fields/reset_password_form_field.dart';
part 'form_fields/sign_in_form_field.dart';
part 'form_fields/sign_up_form_field.dart';
part 'form_fields/totp_setup_form_field.dart';
part 'form_fields/verify_user_form_field.dart';

/// {@template amplify_authenticator.authenticator_form_field}
/// Base class for form field components.
///
/// See also:
/// - [SignInFormField]
/// - [SignUpFormField]
/// - [ConfirmSignInFormField]
/// - [ConfirmSignUpFormField]
/// - [TotpSetupFormField]
/// - [VerifyUserFormField]
/// {@endtemplate}
abstract class AuthenticatorFormField<
  FieldType extends Enum,
  FieldValue extends Object
>
    extends
        AuthenticatorComponent<AuthenticatorFormField<FieldType, FieldValue>> {
  /// {@macro amplify_authenticator.authenticator_form_field}
  const AuthenticatorFormField._({
    super.key,
    required this.field,
    this.titleKey,
    this.hintTextKey,
    this.title,
    this.hintText,
    FormFieldValidator<FieldValue>? validator,
    this.requiredOverride,
    this.autofillHints,
  }) : validatorOverride = validator;

  /// Resolver key for the title
  final InputResolverKey? titleKey;

  /// Custom title
  final String? title;

  /// Resolver key for the hint text
  final InputResolverKey? hintTextKey;

  /// Custom hint text
  final String? hintText;

  /// The field this form field controls.
  final FieldType field;

  /// Override of default validator.
  final FormFieldValidator<FieldValue>? validatorOverride;

  /// The priority to show this field when ordering fields visually in a form.
  /// Larger numbers take higher precedence.
  int get displayPriority => 1;

  /// User override of default [required] value.
  final bool? requiredOverride;

  /// Autocomplete hints to override the default value
  final Iterable<String>? autofillHints;

  /// Whether the field is required in the form.
  ///
  /// Defaults to `false`.
  bool get required => false;

  /// The username attribute corresponding to this field, if any. This is used
  /// to properly address situations where custom fields are added which conflict
  /// with username fields.
  UsernameType? get usernameType => null;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(EnumProperty('field', field))
      ..add(DiagnosticsProperty('titleKey', titleKey))
      ..add(DiagnosticsProperty('hintTextKey', hintTextKey))
      ..add(StringProperty('title', title))
      ..add(StringProperty('hintText', hintText))
      ..add(
        ObjectFlagProperty<FormFieldValidator<FieldValue>?>.has(
          'validatorOverride',
          validatorOverride,
        ),
      )
      ..add(IntProperty('priority', displayPriority))
      ..add(DiagnosticsProperty<bool>('required', required))
      ..add(DiagnosticsProperty<bool?>('requiredOverride', requiredOverride))
      ..add(EnumProperty<UsernameType?>('usernameType', usernameType))
      ..add(IterableProperty<String>('autofillHints', autofillHints));
  }
}

abstract class AuthenticatorFormFieldState<
  FieldType extends Enum,
  FieldValue extends Object,
  T extends AuthenticatorFormField<FieldType, FieldValue>
>
    extends AuthenticatorComponentState<T> {
  @nonVirtual
  Widget get visibilityToggle =>
      AuthenticatorFormState.of(context).obscureTextToggle;

  @nonVirtual
  UsernameConfigType get usernameType =>
      AuthenticatorFormState.of(context).usernameType;

  @nonVirtual
  UsernameType get selectedUsernameType =>
      AuthenticatorFormState.of(context).selectedUsernameType;

  /// Callback for when `onChanged` is triggered on the [FormField].
  ValueChanged<FieldValue> get onChanged => (_) {};

  /// Validates inputs of this form field.
  ///
  /// By default, this validates all inputs.
  FormFieldValidator<FieldValue> get validator =>
      (_) => null;

  /// Whether to hide input.
  bool get obscureText => false;

  /// The keyboard type to use when this field is focused.
  TextInputType get keyboardType => TextInputType.text;

  /// The initial value to show in the field.
  FieldValue? get initialValue => null;

  /// Whether the form field accepts input.
  bool get enabled => true;

  /// Widget to show at leading end, typically an [Icon].
  Widget? get prefix => null;

  /// Widget to show at trailing end, typically an [Icon].
  Widget? get suffix => null;

  /// Widget to show directly below this field.
  Widget? get companionWidget => null;

  /// Maximum number of lines to use for error text.
  int get errorMaxLines => 2;

  /// The maximum length of the input.
  int? get maxLength => null;

  /// Text content for the form field's label
  String? get labelText {
    final inputResolver = stringResolver.inputs;
    var labelText =
        widget.title ?? widget.titleKey?.resolve(context, inputResolver);
    if (labelText != null) {
      labelText = isOptional
          ? inputResolver.optional(context, labelText)
          : labelText;
    }
    return labelText;
  }

  /// Label widget for the form field
  ///
  /// Defaults to a [Text] object with the form field's label text.
  ///
  /// Displayed above the form field for Amplify Theme, unused for Material Theme
  Widget? get label => labelText != null ? Text(labelText!) : null;

  Widget buildFormField(BuildContext context);

  /// Whether the field is optional, i.e. does not require user input. This is
  /// used to correctly label fields to the user.
  bool get isOptional {
    final isRequired = (widget.requiredOverride ?? false) || widget.required;
    return !isRequired;
  }

  /// Margin below the form field
  double? get marginBottom => FormFieldConstants.marginBottom;

  /// Gap between the label and the form field
  double? get labelGap => FormFieldConstants.gap;

  /// Widget to show above the label.
  Widget? get surlabel => null;

  /// A function that will be called when the Form Field is submitted, for
  /// example when the enter key is pressed down on web/desktop.
  void onFieldSubmitted(String _) {
    if (state.isBusy) return;
    switch (state.currentStep) {
      case AuthenticatorStep.signUp:
        state.signUp();
      case AuthenticatorStep.signIn:
        state.signIn();
      case AuthenticatorStep.confirmSignUp:
        state.confirmSignUp();
      case AuthenticatorStep.confirmSignInCustomAuth:
        state.confirmSignInCustomAuth();
      case AuthenticatorStep.confirmSignInMfa:
        state.confirmSignInMFA();
      case AuthenticatorStep.confirmSignInWithOtpCode:
        state.confirmEmailMfa();
      case AuthenticatorStep.confirmSignInNewPassword:
        state.confirmSignInNewPassword();
      case AuthenticatorStep.confirmSignInWithTotpMfaCode:
      case AuthenticatorStep.continueSignInWithTotpSetup:
        state.confirmTotp();
      case AuthenticatorStep.continueSignInWithEmailMfaSetup:
        state.continueEmailMfaSetup();
      case AuthenticatorStep.continueSignInWithMfaSetupSelection:
        state.continueSignInWithMfaSetupSelection();
      case AuthenticatorStep.resetPassword:
        state.resetPassword();
      case AuthenticatorStep.confirmResetPassword:
        state.confirmResetPassword();
      case AuthenticatorStep.verifyUser:
        state.verifyUser();
      default:
        break;
    }
  }

  // Autocomplete hints
  Iterable<String>? get autofillHints => widget.autofillHints;

  @nonVirtual
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: marginBottom ?? 0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (surlabel != null) surlabel!,
              SizedBox(height: labelGap),
              buildFormField(context),
              if (companionWidget != null) companionWidget!,
            ],
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<TextInputType>('keyboardType', keyboardType))
      ..add(DiagnosticsProperty<bool>('enabled', enabled))
      ..add(IntProperty('errorMaxLines', errorMaxLines))
      ..add(DiagnosticsProperty<bool>('obscureText', obscureText))
      ..add(
        ObjectFlagProperty<ValueChanged<FieldValue>?>.has(
          'onChanged',
          onChanged,
        ),
      )
      ..add(
        ObjectFlagProperty<FormFieldValidator<FieldValue>?>.has(
          'validator',
          validator,
        ),
      )
      ..add(DiagnosticsProperty<FieldValue?>('initialValue', initialValue))
      ..add(EnumProperty<UsernameConfigType>('usernameType', usernameType))
      ..add(
        EnumProperty<UsernameType>(
          'selectedUsernameType',
          selectedUsernameType,
        ),
      )
      ..add(IntProperty('maxLength', maxLength))
      ..add(DiagnosticsProperty<bool>('isOptional', isOptional))
      ..add(StringProperty('labelText', labelText))
      ..add(DiagnosticsProperty<double?>('marginBottom', marginBottom))
      ..add(DoubleProperty('labelGap', labelGap))
      ..add(IterableProperty<String>('autofillHints', autofillHints));
  }
}
