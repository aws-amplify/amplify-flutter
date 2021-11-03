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

/// {@template authenticator.verify_user_form_field}
/// A [Radio] form field component on the Verify User screen.
///
/// Must be a descendant of a [VerifyUserFormFieldGroup] widget.
/// {@endtemplate}
abstract class VerifyUserFormField<FieldValue> extends AuthenticatorFormField<
    VerifyAttributeField, FieldValue, VerifyUserFormField<FieldValue>> {
  /// {@macro authenticator.verify_user_form_field}
  VerifyUserFormField._(
      {Key? key,
      required VerifyAttributeField field,
      InputResolverKey? titleKey,
      InputResolverKey? hintTextKey,
      String? title,
      String? hintText,
      FormFieldValidator<FieldValue>? validator,
      AuthenticatorInputConfig? inputConfig})
      : super._(
            key: key,
            field: field,
            titleKey: titleKey,
            hintTextKey: hintTextKey,
            title: title,
            inputconfig: inputConfig,
            hintText: hintText,
            validator: validator);

  static VerifyUserFormField verifyAttribute(
          {Key? key,
          FormFieldValidator<Enum>? validator,
          required List<InputSelection> unverifiedSelections}) =>
      _VerifyUserRadioField(
          key: key ?? keyUsernameSignUpFormField,
          titleKey: InputResolverKey.usernameTitle,
          hintTextKey: InputResolverKey.usernameHint,
          field: VerifyAttributeField.verify,
          validator: validator,
          inputConfig:
              AuthenticatorInputConfig(selections: unverifiedSelections));

  /// Creates a password component.
  static VerifyUserFormField confirmVerifyAttribute({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _VerifyUserTextField(
        key: key ?? keyVerificationCodeSignInFormField,
        titleKey: InputResolverKey.verificationCodeTitle,
        hintTextKey: InputResolverKey.verificationCodeHint,
        field: VerifyAttributeField.confirmVerify,
        validator: validator,
      );
}

abstract class _VerifyUserFormFieldState<FieldValue>
    extends AuthenticatorFormFieldState<VerifyAttributeField, FieldValue,
        VerifyUserFormField<FieldValue>> {
  @override
  bool get obscureText {
    return false;
  }

  @override
  TextInputType? get keyboardType {
    return TextInputType.text;
  }

  @override
  Widget? get suffixIcon {
    return null;
  }

  @override
  int get errorMaxLines {
    return 1;
  }
}

class _VerifyUserTextField extends VerifyUserFormField<String> {
  _VerifyUserTextField({
    Key? key,
    required VerifyAttributeField field,
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
            validator: validator);

  @override
  _VerifyUserTextFieldState createState() => _VerifyUserTextFieldState();
}

class _VerifyUserTextFieldState extends _VerifyUserFormFieldState<String>
    with AuthenticatorTextField {
  @override
  String? get initialValue {
    return viewModel.confirmationCode;
  }

  @override
  ValueChanged<String>? get onChanged {
    return viewModel.setConfirmationCode;
  }

  @override
  FormFieldValidator<String>? get validator {
    return simpleValidator(
      stringResolver.inputs.resolve(
        context,
        InputResolverKey.preferredUsernameEmpty,
      ),
    );
  }

  @override
  Widget buildForm(BuildContext context) {
    // TODO: implement buildForm
    throw UnimplementedError();
  }
}

class _VerifyUserRadioField extends VerifyUserFormField<Enum> {
  _VerifyUserRadioField({
    Key? key,
    required VerifyAttributeField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    FormFieldValidator<Enum>? validator,
    AuthenticatorInputConfig? inputConfig,
  }) : super._(
            key: key,
            field: field,
            titleKey: titleKey,
            hintTextKey: hintTextKey,
            title: title,
            hintText: hintText,
            validator: validator,
            inputConfig: inputConfig);

  @override
  _VerifyAttributeFieldState createState() => _VerifyAttributeFieldState();
}

class _VerifyAttributeFieldState extends _VerifyUserFormFieldState<Enum>
    with AuthenticatorRadioField {
  @override
  Enum? get initialValue {
    // return viewModel.getAttribute(widget.field.toCognitoAttribute());
    return VerifiedAttributes.email;
  }

  @override
  ValueChanged<Enum> get onChanged {
    return viewModel.setAttributeKeyToVerify;
  }

  @override
  Widget buildForm(BuildContext context) {
    // TODO: implement buildForm
    throw UnimplementedError();
  }
}
