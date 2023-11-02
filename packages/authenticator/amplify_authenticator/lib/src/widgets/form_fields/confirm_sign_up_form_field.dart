// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../form_field.dart';

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_sign_up_form_field}
/// A prebuilt form field widget for use on the Confirm Sign Up step.
/// {@endtemplate}
abstract class ConfirmSignUpFormField<FieldValue extends Object>
    extends AuthenticatorFormField<ConfirmSignUpField, FieldValue> {
  /// {@macro amplify_authenticator.confirm_sign_up_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const ConfirmSignUpFormField._({
    super.key,
    required super.field,
    super.titleKey,
    super.hintTextKey,
    super.title,
    super.hintText,
    super.validator,
    super.autofillHints,
  }) : super._();

  /// {@macro amplify_authenticator.username_form_field}
  static ConfirmSignUpFormField<UsernameInput> username({
    Key? key,
    FormFieldValidator<UsernameInput>? validator,
    Iterable<String>? autofillHints,
  }) =>
      _ConfirmSignUpUsernameField(
        key: key ?? keyUsernameConfirmSignUpFormField,
        titleKey: InputResolverKey.usernameTitle,
        hintTextKey: InputResolverKey.usernameHint,
        field: ConfirmSignUpField.username,
        validator: validator,
        autofillHints: autofillHints,
      );

  /// Creates a verificationCode component.
  static ConfirmSignUpFormField<String> verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
    Iterable<String>? autofillHints,
  }) =>
      _ConfirmSignUpTextField(
        key: key ?? keyCodeConfirmSignUpFormField,
        titleKey: InputResolverKey.verificationCodeTitle,
        hintTextKey: InputResolverKey.verificationCodeHint,
        field: ConfirmSignUpField.code,
        validator: validator,
        autofillHints: autofillHints,
      );

  @override
  int get displayPriority {
    switch (field) {
      case ConfirmSignUpField.username:
        return 2;
      case ConfirmSignUpField.code:
        return 1;
    }
  }

  @override
  bool get required {
    switch (field) {
      case ConfirmSignUpField.username:
      case ConfirmSignUpField.code:
        return true;
    }
  }
}

abstract class _ConfirmSignUpFormFieldState<FieldValue extends Object>
    extends AuthenticatorFormFieldState<ConfirmSignUpField, FieldValue,
        ConfirmSignUpFormField<FieldValue>> {
  @override
  TextInputType get keyboardType {
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return TextInputType.text;
      case ConfirmSignUpField.code:
        return TextInputType.number;
    }
  }

  @override
  bool get enabled {
    switch (widget.field) {
      case ConfirmSignUpField.code:
        return true;
      default:
        return false;
    }
  }

  @override
  Widget? get companionWidget {
    switch (widget.field) {
      case ConfirmSignUpField.code:
        final resendCodeButton =
            InheritedForms.of(context).confirmSignUpForm.resendCodeButton;
        return resendCodeButton ?? const LostCodeButton(key: keyLostCodeButton);
      default:
        return null;
    }
  }

  @override
  Iterable<String>? get autofillHints {
    if (widget.autofillHints != null) return widget.autofillHints;
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return const [
          AutofillHints.newUsername,
        ];
      case ConfirmSignUpField.code:
        return const [
          AutofillHints.oneTimeCode,
        ];
    }
  }
}

class _ConfirmSignUpTextField extends ConfirmSignUpFormField<String> {
  const _ConfirmSignUpTextField({
    super.key,
    required super.field,
    super.titleKey,
    super.hintTextKey,
    super.validator,
    super.autofillHints,
  }) : super._();

  @override
  _ConfirmSignUpTextFieldState createState() => _ConfirmSignUpTextFieldState();
}

class _ConfirmSignUpTextFieldState extends _ConfirmSignUpFormFieldState<String>
    with AuthenticatorTextField {
  @override
  String? get initialValue {
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return state.username;
      case ConfirmSignUpField.code:
        return state.confirmationCode;
    }
  }

  @override
  ValueChanged<String> get onChanged {
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return (v) => state.username = v;
      case ConfirmSignUpField.code:
        return (v) => state.confirmationCode = v;
    }
  }

  @override
  FormFieldValidator<String> get validator {
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.usernameEmpty,
          ),
          isOptional: isOptional,
        );
      case ConfirmSignUpField.code:
        return validateCode(
          isOptional: isOptional,
          context: context,
          inputResolver: stringResolver.inputs,
        );
    }
  }

  @override
  int? get maxLength {
    switch (widget.field) {
      case ConfirmSignUpField.code:
        return 6;
      case ConfirmSignUpField.username:
        return null;
    }
  }
}

class _ConfirmSignUpUsernameField
    extends ConfirmSignUpFormField<UsernameInput> {
  const _ConfirmSignUpUsernameField({
    super.key,
    required super.field,
    super.titleKey,
    super.hintTextKey,
    super.validator,
    super.autofillHints,
  }) : super._();

  @override
  _ConfirmSignUpUsernameFieldState createState() =>
      _ConfirmSignUpUsernameFieldState();
}

class _ConfirmSignUpUsernameFieldState
    extends _ConfirmSignUpFormFieldState<UsernameInput>
    with
        AuthenticatorUsernameField<ConfirmSignUpField,
            ConfirmSignUpFormField<UsernameInput>> {
  @override
  Widget? get surlabel => null;
}
