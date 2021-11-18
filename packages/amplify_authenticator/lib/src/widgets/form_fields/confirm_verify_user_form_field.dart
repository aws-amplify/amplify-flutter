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

/// {@template authenticator.confirm_verify_user_form_field}
/// A form field component on the Confirm Verify User screen.
/// {@endtemplate}
class ConfirmVerifyUserFormField extends AuthenticatorFormField {
  /// {@macro authenticator.confirm_verify_user_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const ConfirmVerifyUserFormField._({
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

  /// Creates a verification code component.
  static ConfirmVerifyUserFormField verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      ConfirmVerifyUserFormField._(
        field: AuthenticatorFormFieldType.verificationCode,
        key: key,
        validator: validator,
        required: required,
      );

  @override
  ConfirmVerifyUserFormFieldState createState() =>
      ConfirmVerifyUserFormFieldState();
}

class ConfirmVerifyUserFormFieldState extends AuthenticatorFormFieldState {
  @override
  Widget build(BuildContext context) {
    switch (widget.field) {
      case AuthenticatorFormFieldType.verificationCode:
        return AuthenticatorTextFormField.verificationCode(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      default:
        throw StateError(
            '${widget.field} is not supported as a confirm verify user field');
    }
  }
}
