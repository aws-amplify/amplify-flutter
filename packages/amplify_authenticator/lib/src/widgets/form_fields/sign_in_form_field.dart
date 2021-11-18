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

/// {@template authenticator.sign_in_form_field}
/// A form field component on the Sign In screen.
/// {@endtemplate}
class SignInFormField extends AuthenticatorFormField {
  /// {@macro authenticator.sign_in_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const SignInFormField._({
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
  static SignInFormField username({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignInFormField._(
        field: AuthenticatorFormFieldType.username,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates a password component.
  static SignInFormField password({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignInFormField._(
        field: AuthenticatorFormFieldType.password,
        key: key,
        validator: validator,
        required: required,
      );

  @override
  int get displayPriority {
    switch (field) {
      case AuthenticatorFormFieldType.username:
        return 2;
      case AuthenticatorFormFieldType.password:
        return 1;
      default:
        throw StateError('$field is not supported as a sign in field');
    }
  }

  @override
  SignInFormFieldState createState() => SignInFormFieldState();
}

class SignInFormFieldState extends AuthenticatorFormFieldState {
  @override
  Widget build(BuildContext context) {
    switch (widget.field) {
      case AuthenticatorFormFieldType.username:
        return AuthenticatorUsernameFormField.username(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      case AuthenticatorFormFieldType.password:
        return AuthenticatorTextFormField.password(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );

      default:
        throw StateError('${widget.field} is not supported as a sign in field');
    }
  }
}
