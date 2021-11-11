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

  /// Creates a password component.
  static ConfirmSignUpFormField password({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _ConfirmSignUpTextField(
        key: key ?? keyPasswordConfirmSignUpFormfield,
        titleKey: InputResolverKey.passwordTitle,
        hintTextKey: InputResolverKey.passwordHint,
        field: ConfirmSignUpField.password,
        validator: validator,
      );

  /// Creates an email component.
  static ConfirmSignUpFormField email({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _ConfirmSignUpTextField(
        key: key ?? keyEmailConfirmSignUpFormfield,
        titleKey: InputResolverKey.emailTitle,
        hintTextKey: InputResolverKey.emailHint,
        field: ConfirmSignUpField.email,
        validator: validator,
      );

  /// Creates a phoneNumber component.
  static ConfirmSignUpFormField phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _ConfirmSignUpTextField(
        key: key ?? keyPhoneNumberConfirmSignUpFormfield,
        titleKey: InputResolverKey.phoneNumberTitle,
        hintTextKey: InputResolverKey.phoneNumberHint,
        field: ConfirmSignUpField.phoneNumber,
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
}

abstract class _ConfirmSignUpFormFieldState<FieldValue>
    extends AuthenticatorFormFieldState<ConfirmSignUpField, FieldValue,
        ConfirmSignUpFormField<FieldValue>> {
  @override
  bool get obscureText {
    switch (widget.field) {
      case ConfirmSignUpField.password:
        return true;
      default:
        return false;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return TextInputType.text;
      case ConfirmSignUpField.password:
        return TextInputType.visiblePassword;
      case ConfirmSignUpField.email:
        return TextInputType.emailAddress;
      case ConfirmSignUpField.phoneNumber:
        return TextInputType.phone;
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
      case ConfirmSignUpField.phoneNumber:
        return viewModel.getAttribute(CognitoUserAttributeKey.phoneNumber);
      case ConfirmSignUpField.email:
        return viewModel.getAttribute(CognitoUserAttributeKey.email);
      case ConfirmSignUpField.password:
        return viewModel.password;
      case ConfirmSignUpField.code:
        return viewModel.confirmationCode;
    }
  }

  @override
  ValueChanged<String> get onChanged {
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return viewModel.setUsername;
      case ConfirmSignUpField.password:
        return viewModel.setPassword;
      case ConfirmSignUpField.email:
        return viewModel.setEmail;
      case ConfirmSignUpField.phoneNumber:
        return viewModel.setPhoneNumber;
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
      case ConfirmSignUpField.password:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.passwordEmpty,
          ),
        );
      case ConfirmSignUpField.email:
        return validateEmail;
      case ConfirmSignUpField.phoneNumber:
        return validatePhoneNumber;
      case ConfirmSignUpField.code:
        return validateCode;
    }
  }
}
