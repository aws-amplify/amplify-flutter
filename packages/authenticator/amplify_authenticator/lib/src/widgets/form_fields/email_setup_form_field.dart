// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../form_field.dart';

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.email_setup_form_field}
/// A prebuilt form field widget for use on the Email MFA setup step.
/// {@endtemplate}
class EmailSetupFormField
    extends AuthenticatorFormField<EmailSetupField, String> {
  /// Creates an email FormField for the email setup step.
  const EmailSetupFormField.email({
    Key? key,
    FormFieldValidator<String>? validator,
    Iterable<String>? autofillHints,
    AuthenticatorTextFieldController? authenticatorTextFieldController,
  }) : this._(
         key: key ?? keyEmailSetupFormField,
         field: EmailSetupField.email,
         titleKey: InputResolverKey.emailTitle,
         hintTextKey: InputResolverKey.emailHint,
         validator: validator,
         autofillHints: autofillHints,
         authenticatorTextFieldController: authenticatorTextFieldController,
       );

  /// {@macro amplify_authenticator.email_setup_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const EmailSetupFormField._({
    super.key,
    required super.field,
    super.titleKey,
    super.hintTextKey,
    super.title,
    super.hintText,
    super.validator,
    super.autofillHints,
    this.authenticatorTextFieldController,
  }) : super._();

  @override
  final AuthenticatorTextFieldController? authenticatorTextFieldController;

  @override
  bool get required => true;

  @override
  AuthenticatorFormFieldState<EmailSetupField, String, EmailSetupFormField>
  createState() => _EmailSetupFormFieldState();
}

class _EmailSetupFormFieldState
    extends
        AuthenticatorFormFieldState<
          EmailSetupField,
          String,
          EmailSetupFormField
        >
    with AuthenticatorTextField {
  @override
  TextInputType get keyboardType {
    return TextInputType.emailAddress;
  }

  @override
  Iterable<String>? get autofillHints {
    return [AutofillHints.email];
  }

  @override
  ValueChanged<String> get onChanged {
    return (v) => state.mfaEmail = v;
  }

  @override
  FormFieldValidator<String> get validator {
    return validateEmail(
      isOptional: isOptional,
      context: context,
      inputResolver: stringResolver.inputs,
    );
  }
}
