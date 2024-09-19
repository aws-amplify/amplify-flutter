// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../form_field.dart';

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.email_setup_form_field}
/// A prebuilt form field widget for use on the Email MFA setup step.
/// {@endtemplate}
abstract class EmailSetupFormField<FieldValue extends Object>
    extends AuthenticatorFormField<EmailSetupField, FieldValue> {
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
  }) : super._();

  /// Creates an email component.
  static EmailSetupFormField<String> email({
    Key? key,
    FormFieldValidator<String>? validator,
    Iterable<String>? autofillHints,
  }) =>
      _EmailSetupTextField(
        key: key ?? keyEmailSetupFormField,
        titleKey: InputResolverKey.emailTitle,
        hintTextKey: InputResolverKey.emailHint,
        field: EmailSetupField.email,
        validator: validator,
        autofillHints: autofillHints,
      );
}

abstract class _EmailSetupFormFieldState<FieldValue extends Object>
    extends AuthenticatorFormFieldState<EmailSetupField, FieldValue,
        EmailSetupFormField<FieldValue>> {
  @override
  TextInputType get keyboardType {
    return TextInputType.emailAddress;
  }

  @override
  Iterable<String>? get autofillHints {
    return [AutofillHints.email];
  }

  bool get required {
    switch (widget.field) {
      case EmailSetupField.email:
        return true;
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('required', required));
  }
}

class _EmailSetupTextField extends EmailSetupFormField<String> {
  const _EmailSetupTextField({
    super.key,
    required super.field,
    super.titleKey,
    super.hintTextKey,
    super.validator,
    super.autofillHints,
  }) : super._();

  @override
  _EmailSetupTextFieldState createState() => _EmailSetupTextFieldState();
}

class _EmailSetupTextFieldState extends _EmailSetupFormFieldState<String>
    with AuthenticatorTextField {
  @override
  bool get obscureText {
    return false;
  }
}
