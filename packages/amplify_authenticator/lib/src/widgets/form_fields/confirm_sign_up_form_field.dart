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

part of authenticator.form_field;

/// {@template authenticator.confirm_sign_up_form_field}
/// A form field component on the Confirm Sign Up screen.
/// {@endtemplate}
abstract class ConfirmSignUpFormField<FieldValue>
    extends AuthenticatorFormField<ConfirmSignUpField, FieldValue,
        ConfirmSignUpFormField<FieldValue>> {
  /// {@macro authenticator.confirm_sign_up_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const ConfirmSignUpFormField._({
    Key? key,
    required ConfirmSignUpField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    FormFieldValidator<FieldValue>? validator,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
        );

  /// Creates a username component.
  static ConfirmSignUpFormField username({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _ConfirmSignUpTextField(
        key: key,
        titleKey: InputResolverKey.usernameTitle,
        hintTextKey: InputResolverKey.usernameHint,
        field: ConfirmSignUpField.username,
        validator: validator,
      );

  /// Creates a verificationCode component.
  static ConfirmSignUpFormField verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _ConfirmSignUpTextField(
        key: key ?? keyCodeConfirmSignUpFormfield,
        titleKey: InputResolverKey.verificationCodeTitle,
        hintTextKey: InputResolverKey.verificationCodeHint,
        field: ConfirmSignUpField.code,
        validator: validator,
      );

  @override
  int get priority {
    switch (field) {
      case ConfirmSignUpField.username:
        return 2;
      case ConfirmSignUpField.code:
        return 1;
    }
  }

  @override
  bool get markRequired {
    switch (field) {
      case ConfirmSignUpField.username:
      case ConfirmSignUpField.code:
        return true;
    }
  }
}

abstract class _ConfirmSignUpFormFieldState<FieldValue>
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
        var resendCodeButton =
            InheritedForms.of(context).confirmSignUpForm.resendCodeButton;
        return resendCodeButton ?? const LostCodeButton(key: keyLostCodeButton);
      default:
        return null;
    }
  }
}

class _ConfirmSignUpTextField extends ConfirmSignUpFormField<String> {
  const _ConfirmSignUpTextField({
    Key? key,
    required ConfirmSignUpField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    FormFieldValidator<String>? validator,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
        );

  @override
  _ConfirmSignUpTextFieldState createState() => _ConfirmSignUpTextFieldState();
}

class _ConfirmSignUpTextFieldState extends _ConfirmSignUpFormFieldState<String>
    with AuthenticatorTextField {
  @override
  String? get initialValue {
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return viewModel.username;
      case ConfirmSignUpField.code:
        return viewModel.confirmationCode;
    }
  }

  @override
  ValueChanged<String> get onChanged {
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return viewModel.setUsername;
      case ConfirmSignUpField.code:
        return viewModel.setConfirmationCode;
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
        );
      case ConfirmSignUpField.code:
        return validateCode;
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
