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

/// {@template authenticator.sign_up_form_field}
/// A form field component on the Sign Up screen.
/// {@endtemplate}
class SignUpFormField extends AuthenticatorFormField {
  /// {@macro authenticator.sign_up_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const SignUpFormField._({
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
  static SignUpFormField username({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.username,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates a password component.
  static SignUpFormField password({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.password,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates a confirm password component.
  static SignUpFormField passwordConfirmation({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.passwordConfirmation,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates a new password component.
  static SignUpFormField newPassword({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.newPassword,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates a new verification code component.
  static SignUpFormField verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.verificationCode,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates an address code component.
  static SignUpFormField address({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.address,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates an address code component.
  static SignUpFormField birthdate({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.birthdate,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates an email component.
  static SignUpFormField email({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.email,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates an family name component.
  static SignUpFormField familyName({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.familyName,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates an gender component.
  static SignUpFormField gender({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.gender,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates an given name component.
  static SignUpFormField givenName({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.givenName,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates an middle name component.
  static SignUpFormField middleName({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.middleName,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates an name component.
  static SignUpFormField name({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.name,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates an nickname component.
  static SignUpFormField nickname({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.nickname,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates an preferred username component.
  static SignUpFormField phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.phoneNumber,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates an preferred username component.
  static SignUpFormField preferredUsername({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.preferredUsername,
        key: key,
        validator: validator,
        required: required,
      );

  /// Creates an custom attribute component.
  static SignUpFormField custom({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
  }) =>
      SignUpFormField._(
        field: AuthenticatorFormFieldType.custom,
        key: key,
        validator: validator,
        required: required,
        titleKey: titleKey,
        hintTextKey: hintTextKey,
        title: title,
        hintText: hintText,
      );

  @override
  int get displayPriority {
    switch (field) {
      case AuthenticatorFormFieldType.username:
        return 1000;
      case AuthenticatorFormFieldType.password:
        return 101;
      case AuthenticatorFormFieldType.passwordConfirmation:
        return 100;
      default:
        return 1;
    }
  }

  @override
  SignUpFormFieldState createState() => SignUpFormFieldState();
}

class SignUpFormFieldState extends AuthenticatorFormFieldState {
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
      case AuthenticatorFormFieldType.passwordConfirmation:
        return AuthenticatorTextFormField.passwordConfirmation(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      case AuthenticatorFormFieldType.newPassword:
        return AuthenticatorTextFormField.newPassword(
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
      case AuthenticatorFormFieldType.address:
        return AuthenticatorTextFormField.address(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      case AuthenticatorFormFieldType.birthdate:
        return AuthenticatorDateFormField.birthdate(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      case AuthenticatorFormFieldType.email:
        return AuthenticatorTextFormField.email(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      case AuthenticatorFormFieldType.familyName:
        return AuthenticatorTextFormField.familyName(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      case AuthenticatorFormFieldType.gender:
        return AuthenticatorTextFormField.gender(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      case AuthenticatorFormFieldType.givenName:
        return AuthenticatorTextFormField.givenName(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      case AuthenticatorFormFieldType.middleName:
        return AuthenticatorTextFormField.middleName(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      case AuthenticatorFormFieldType.name:
        return AuthenticatorTextFormField.name(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      case AuthenticatorFormFieldType.nickname:
        return AuthenticatorTextFormField.nickname(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      case AuthenticatorFormFieldType.phoneNumber:
        return AuthenticatorPhoneFormField.phoneNumber(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      case AuthenticatorFormFieldType.preferredUsername:
        return AuthenticatorTextFormField.preferredUsername(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      case AuthenticatorFormFieldType.custom:
        return AuthenticatorTextFormField.custom(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      default:
        throw StateError('${widget.field} is not supported as a sign up field');
    }
  }
}
