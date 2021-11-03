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
abstract class SignInFormField<FieldValue> extends AuthenticatorFormField<
    SignInField, FieldValue, SignInFormField<FieldValue>> {
  /// {@macro authenticator.sign_in_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  SignInFormField._({
    Key? key,
    required SignInField field,
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
  static SignInFormField username({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _SignInTextField(
        key: key ?? keyUsernameSignInFormField,
        titleKey: InputResolverKey.usernameTitle,
        hintTextKey: InputResolverKey.usernameHint,
        field: SignInField.username,
        validator: validator,
      );

  /// Creates a password component.
  static SignInFormField password({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _SignInTextField(
        key: key ?? keyPasswordSignInFormField,
        titleKey: InputResolverKey.passwordTitle,
        hintTextKey: InputResolverKey.passwordHint,
        field: SignInField.password,
        validator: validator,
      );

  /// Creates an email component.
  static SignInFormField email({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _SignInTextField(
        key: key ?? keyEmailSignInFormField,
        titleKey: InputResolverKey.emailTitle,
        hintTextKey: InputResolverKey.emailHint,
        field: SignInField.email,
        validator: validator,
      );

  /// Creates a phoneNumber component.
  static SignInFormField phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _SignInTextField(
        key: key ?? keyPhoneNumberSignInFormField,
        titleKey: InputResolverKey.phoneNumberTitle,
        hintTextKey: InputResolverKey.phoneNumberHint,
        field: SignInField.phoneNumber,
        validator: validator,
      );

  /// Creates a verifyUsername component.
  static SignInFormField verifyUsername({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _SignInTextField(
        key: key ?? keyVerificationCodeSignInFormField,
        titleKey: InputResolverKey.usernameTitle,
        hintTextKey: InputResolverKey.usernameHint,
        field: SignInField.verificationCode,
        validator: validator,
      );

  /// Creates a newUsername component.
  static SignInFormField newUsername({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _SignInTextField(
        key: key ?? keyNewUsernameSignInFormField,
        titleKey: InputResolverKey.usernameTitle,
        hintTextKey: InputResolverKey.usernameHint,
        field: SignInField.newUsername,
        validator: validator,
      );

  /// Creates a newPassword component.
  static SignInFormField newPassword({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _SignInTextField(
        key: key ?? keyNewPasswordSignInFormField,
        titleKey: InputResolverKey.passwordTitle,
        hintTextKey: InputResolverKey.passwordTitle,
        field: SignInField.newPassword,
        validator: validator,
      );

  /// Creates a verificationCode component.
  static SignInFormField verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _SignInTextField(
        key: key ?? keyVerificationCodeSignInFormField,
        titleKey: InputResolverKey.verificationCodeTitle,
        hintTextKey: InputResolverKey.verificationCodeHint,
        field: SignInField.verificationCode,
        validator: validator,
      );

  // @override
  // _SignInFormFieldState createState() => _SignInFormFieldState();
}

abstract class _SignInFormFieldState<FieldValue>
    extends AuthenticatorFormFieldState<SignInField, FieldValue,
        SignInFormField<FieldValue>> {
  @override
  bool get obscureText {
    switch (widget.field) {
      case SignInField.password:
      case SignInField.newPassword:
        return true;
      default:
        return false;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.field) {
      case SignInField.username:
      case SignInField.newUsername:
        return TextInputType.text;
      case SignInField.password:
      case SignInField.newPassword:
        return TextInputType.visiblePassword;
      case SignInField.email:
        return TextInputType.emailAddress;
      case SignInField.phoneNumber:
        return TextInputType.phone;
      case SignInField.verificationCode:
        return TextInputType.number;
    }
  }

  @override
  Widget? get suffixIcon {
    switch (widget.field) {
      case SignInField.password:
      case SignInField.newPassword:
        return visibilityToggle;
      default:
        return null;
    }
  }

  @override
  Widget? get companionWidget {
    switch (widget.field) {
      case SignInField.password:
        return ResetPasswordButton();
      default:
        return null;
    }
  }

  @override
  Widget buildForm(BuildContext context) {
    // TODO: implement buildForm
    throw UnimplementedError();
  }
}

class _SignInTextField extends SignInFormField<String> {
  _SignInTextField({
    Key? key,
    required SignInField field,
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
  _SignInTextFieldState createState() => _SignInTextFieldState();
}

class _SignInTextFieldState extends _SignInFormFieldState<String>
    with AuthenticatorTextField {
  @override
  String? get initialValue {
    switch (widget.field) {
      case SignInField.username:
        return viewModel.username;
      case SignInField.email:
        return viewModel.getAttribute(CognitoUserAttributes.email);
      case SignInField.phoneNumber:
        return viewModel.getAttribute(CognitoUserAttributes.phoneNumber);
      case SignInField.password:
        return viewModel.password;
      case SignInField.verificationCode:
        return viewModel.confirmationCode;
      case SignInField.newPassword:
        return viewModel.newPassword;
      case SignInField.newUsername:
        return viewModel.newUsername;
    }
  }

  @override
  ValueChanged<String>? get onChanged {
    switch (widget.field) {
      case SignInField.username:
        return viewModel.setUsername;
      case SignInField.password:
        return viewModel.setPassword;
      case SignInField.email:
        return viewModel.setEmail;
      case SignInField.phoneNumber:
        return viewModel.setPhoneNumber;
      case SignInField.verificationCode:
        return viewModel.setConfirmationCode;
      case SignInField.newPassword:
        return viewModel.setNewPassword;
      case SignInField.newUsername:
        return viewModel.setNewUsername;
      default:
        return null;
    }
  }

  @override
  FormFieldValidator<String>? get validator {
    switch (widget.field) {
      case SignInField.username:
      case SignInField.newUsername:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.usernameEmpty,
          ),
        );
      case SignInField.password:
      case SignInField.newPassword:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.passwordEmpty,
          ),
        );
      case SignInField.email:
        return validateEmail;
      case SignInField.phoneNumber:
        return validatePhoneNumber;
      case SignInField.verificationCode:
        return validateCode;
    }
  }

  @override
  Widget buildForm(BuildContext context) {
    // TODO: implement buildForm
    throw UnimplementedError();
  }
}
