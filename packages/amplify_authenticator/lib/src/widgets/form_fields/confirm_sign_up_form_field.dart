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
class ConfirmSignUpFormField extends AuthenticatorFormField {
  /// {@macro authenticator.confirm_sign_up_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const ConfirmSignUpFormField._({
    Key? key,
    required AuthenticatorFormFieldType field,
    FormFieldValidator<String>? validator,
    bool? required,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
  }) : super._(
          key: key,
          field: field,
          validator: validator,
          required: required,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
        );

  /// Creates a username component.
  static ConfirmSignUpFormField username({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      ConfirmSignUpFormField._(
        field: AuthenticatorFormFieldType.username,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates a verification code component.
  static ConfirmSignUpFormField verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      ConfirmSignUpFormField._(
        field: AuthenticatorFormFieldType.verificationCode,
        key: key,
        validator: validator,
        required: required,
      );

  @override
  ConfirmSignUpFormFieldState createState() => ConfirmSignUpFormFieldState();
}

class ConfirmSignUpFormFieldState extends AuthenticatorFormFieldState {
  @override
  Widget build(BuildContext context) {
    switch (widget.field) {
      case AuthenticatorFormFieldType.username:
        return AuthenticatorUsernameFormField.username(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      case AuthenticatorFormFieldType.verificationCode:
        return AuthenticatorTextFormField.verificationCode(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );

      default:
        throw StateError(
            '${widget.field} is not supported as a confirm sign up field');
    }
  }
}
