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

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_sign_up_form_field}
/// A prebuilt form field widget for use on the Confirm Sign Up step.
/// {@endtemplate}
abstract class ConfirmSignUpFormField<FieldValue>
    extends AuthenticatorFormField<ConfirmSignUpField, FieldValue,
        ConfirmSignUpFormField<FieldValue>> {
  /// {@macro amplify_authenticator.confirm_sign_up_form_field}
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

  /// {@macro amplify_authenticator.username_form_field}
  static ConfirmSignUpFormField username({
    Key? key,
    FormFieldValidator<UsernameInput>? validator,
  }) =>
      _ConfirmSignUpUsernameField(
        key: key ?? keyUsernameConfirmSignUpFormField,
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
        key: key ?? keyCodeConfirmSignUpFormField,
        titleKey: InputResolverKey.verificationCodeTitle,
        hintTextKey: InputResolverKey.verificationCodeHint,
        field: ConfirmSignUpField.code,
        validator: validator,
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

  @override
  Iterable<String>? get autofillHints {
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
    Key? key,
    required ConfirmSignUpField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    FormFieldValidator<UsernameInput>? validator,
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
