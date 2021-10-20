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
class ConfirmSignUpFormField
    extends AuthenticatorFormField<ConfirmSignUpField, ConfirmSignUpFormField> {
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

  /// Creates a username component.
  const ConfirmSignUpFormField.username({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyUsernameConfirmSignUpFormfield,
          titleKey: InputResolverKey.usernameTitle,
          hintTextKey: InputResolverKey.usernameHint,
          field: ConfirmSignUpField.username,
          validator: validator,
        );

  /// Creates a password component.
  const ConfirmSignUpFormField.password({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyPasswordConfirmSignUpFormfield,
          titleKey: InputResolverKey.passwordTitle,
          hintTextKey: InputResolverKey.passwordHint,
          field: ConfirmSignUpField.password,
          validator: validator,
        );

  /// Creates an email component.
  const ConfirmSignUpFormField.email({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyEmailConfirmSignUpFormfield,
          titleKey: InputResolverKey.emailTitle,
          hintTextKey: InputResolverKey.emailHint,
          field: ConfirmSignUpField.email,
          validator: validator,
        );

  /// Creates a phoneNumber component.
  const ConfirmSignUpFormField.phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyPhoneNumberConfirmSignUpFormfield,
          titleKey: InputResolverKey.phoneNumberTitle,
          hintTextKey: InputResolverKey.phoneNumberHint,
          field: ConfirmSignUpField.phoneNumber,
          validator: validator,
        );

  /// Creates a verificationCode component.
  const ConfirmSignUpFormField.verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyCodeConfirmSignUpFormfield,
          titleKey: InputResolverKey.verificationCodeTitle,
          hintTextKey: InputResolverKey.verificationCodeHint,
          field: ConfirmSignUpField.code,
          validator: validator,
        );

  @override
  _ConfirmSignUpFormFieldState createState() => _ConfirmSignUpFormFieldState();
}

class _ConfirmSignUpFormFieldState extends _AuthenticatorFormFieldState<
    ConfirmSignUpField, ConfirmSignUpFormField> {
  @override
  String? get initialValue {
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return viewModel.username;
      case ConfirmSignUpField.phoneNumber:
        return viewModel.getAttribute(CognitoUserAttributes.phoneNumber);
      case ConfirmSignUpField.email:
        return viewModel.getAttribute(CognitoUserAttributes.email);
      case ConfirmSignUpField.password:
        return viewModel.password;
      case ConfirmSignUpField.code:
        return viewModel.confirmationCode;
    }
  }

  @override
  FormFieldValidator<String>? get validator {
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
  ValueChanged<String> get onChanged {
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return usernameOnChangedForAlias;
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
  TextInputType get keyboardType {
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return usernameKeyboardTypeForAlias;
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
