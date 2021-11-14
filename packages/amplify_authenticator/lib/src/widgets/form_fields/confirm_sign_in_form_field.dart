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

/// {@template authenticator.confirm_sign_in_form_field}
/// A form field component on the Confirm Sign In screens.
/// {@endtemplate}
abstract class ConfirmSignInFormField<FieldValue>
    extends AuthenticatorFormField<ConfirmSignInField, FieldValue,
        ConfirmSignInFormField<FieldValue>> {
  /// {@macro authenticator.confirm_sign_in_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const ConfirmSignInFormField._({
    Key? key,
    required ConfirmSignInField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    FormFieldValidator<FieldValue>? validator,
    CognitoUserAttributeKey? customAttributeKey,
  })  : _customAttributeKey = customAttributeKey,
        super._(
            key: key,
            field: field,
            titleKey: titleKey,
            hintTextKey: hintTextKey,
            title: title,
            hintText: hintText,
            validator: validator);

  /// Creates a password component.
  static ConfirmSignInFormField password({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _ConfirmSignInTextField(
        key: key ?? keyPasswordConfirmSignInFormField,
        titleKey: InputResolverKey.passwordTitle,
        hintTextKey: InputResolverKey.passwordHint,
        field: ConfirmSignInField.password,
        validator: validator,
      );

  /// Creates a new password component.
  static ConfirmSignInFormField newPassword({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _ConfirmSignInTextField(
        key: key ?? keyNewPasswordConfirmSignInFormField,
        titleKey: InputResolverKey.passwordTitle,
        hintTextKey: InputResolverKey.newPasswordHint,
        field: ConfirmSignInField.newPassword,
        validator: validator,
      );

  /// Creates a verificationCode component.
  static ConfirmSignInFormField verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _ConfirmSignInTextField(
        key: key ?? keyCodeConfirmSignInFormfield,
        titleKey: InputResolverKey.verificationCodeTitle,
        hintTextKey: InputResolverKey.verificationCodeHint,
        field: ConfirmSignInField.code,
        validator: validator,
      );

  /// Creates a custom attribute component.
  static ConfirmSignInFormField custom({
    Key? key,
    required String title,
    required CognitoUserAttributeKey attributeKey,
    String? hintText,
    FormFieldValidator<String>? validator,
  }) =>
      _ConfirmSignInTextField(
        key: key,
        title: title,
        hintText: hintText,
        field: ConfirmSignInField.custom,
        validator: validator,
        customAttributeKey: attributeKey,
      );

  // Custom Cognito attribute key.
  final CognitoUserAttributeKey? _customAttributeKey;
}

abstract class _ConfirmSignInFormFieldState<FieldValue>
    extends AuthenticatorFormFieldState<ConfirmSignInField, FieldValue,
        ConfirmSignInFormField<FieldValue>> {
  @override
  bool get obscureText {
    switch (widget.field) {
      case ConfirmSignInField.password:
      case ConfirmSignInField.newPassword:
        return true;
      default:
        return false;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.field) {
      case ConfirmSignInField.code:
        return TextInputType.number;
      case ConfirmSignInField.password:
      case ConfirmSignInField.newPassword:
        return TextInputType.visiblePassword;
      case ConfirmSignInField.address:
        return TextInputType.streetAddress;
      case ConfirmSignInField.email:
        return TextInputType.emailAddress;
      case ConfirmSignInField.name:
        return TextInputType.name;
      case ConfirmSignInField.phoneNumber:
        return TextInputType.phone;
      case ConfirmSignInField.birthdate:
        return TextInputType.datetime;
      case ConfirmSignInField.familyName:
      case ConfirmSignInField.gender:
      case ConfirmSignInField.givenName:
      case ConfirmSignInField.middleName:
      case ConfirmSignInField.nickname:
      case ConfirmSignInField.preferredUsername:
      case ConfirmSignInField.custom:
        return TextInputType.text;
    }
  }

  @override
  Widget? get suffix {
    switch (widget.field) {
      case ConfirmSignInField.password:
      case ConfirmSignInField.newPassword:
        return visibilityToggle;
      default:
        return null;
    }
  }
}

class _ConfirmSignInTextField extends ConfirmSignInFormField<String> {
  const _ConfirmSignInTextField({
    Key? key,
    required ConfirmSignInField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    CognitoUserAttributeKey? customAttributeKey,
    FormFieldValidator<String>? validator,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          customAttributeKey: customAttributeKey,
          validator: validator,
        );

  @override
  _ConfirmSignInTextFieldState createState() => _ConfirmSignInTextFieldState();
}

class _ConfirmSignInTextFieldState extends _ConfirmSignInFormFieldState<String>
    with AuthenticatorTextField {
  @override
  String? get initialValue {
    switch (widget.field) {
      case ConfirmSignInField.code:
        return viewModel.confirmationCode;
      case ConfirmSignInField.password:
        return viewModel.password;
      case ConfirmSignInField.newPassword:
        return viewModel.newPassword;
      case ConfirmSignInField.address:
      case ConfirmSignInField.birthdate:
      case ConfirmSignInField.email:
      case ConfirmSignInField.familyName:
      case ConfirmSignInField.gender:
      case ConfirmSignInField.givenName:
      case ConfirmSignInField.middleName:
      case ConfirmSignInField.name:
      case ConfirmSignInField.nickname:
      case ConfirmSignInField.phoneNumber:
      case ConfirmSignInField.preferredUsername:
        return viewModel.getAttribute(widget.field.toCognitoAttribute());
      case ConfirmSignInField.custom:
        return viewModel.getAttribute(widget._customAttributeKey!);
    }
  }

  @override
  ValueChanged<String> get onChanged {
    switch (widget.field) {
      case ConfirmSignInField.code:
        return viewModel.setConfirmationCode;
      case ConfirmSignInField.password:
        return viewModel.setPassword;
      case ConfirmSignInField.newPassword:
        return viewModel.setNewPassword;
      case ConfirmSignInField.address:
        return viewModel.setAddress;
      case ConfirmSignInField.birthdate:
        return viewModel.setBirthdate;
      case ConfirmSignInField.email:
        return viewModel.setEmail;
      case ConfirmSignInField.familyName:
        return viewModel.setFamilyName;
      case ConfirmSignInField.gender:
        return viewModel.setGender;
      case ConfirmSignInField.givenName:
        return viewModel.setGivenName;
      case ConfirmSignInField.middleName:
        return viewModel.setMiddleName;
      case ConfirmSignInField.name:
        return viewModel.setName;
      case ConfirmSignInField.nickname:
        return viewModel.setNickname;
      case ConfirmSignInField.phoneNumber:
        return viewModel.setPhoneNumber;
      case ConfirmSignInField.preferredUsername:
        return viewModel.setPreferredUsername;
      case ConfirmSignInField.custom:
        return (String value) => viewModel.setCustom(
              widget._customAttributeKey!,
              value,
            );
    }
  }

  @override
  FormFieldValidator<String> get validator {
    switch (widget.field) {
      case ConfirmSignInField.code:
        return validateCode;
      case ConfirmSignInField.password:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.passwordEmpty,
          ),
        );
      case ConfirmSignInField.email:
        return validateEmail;
      case ConfirmSignInField.phoneNumber:
        return validatePhoneNumber;
      default:
        return super.validator;
    }
  }
}
