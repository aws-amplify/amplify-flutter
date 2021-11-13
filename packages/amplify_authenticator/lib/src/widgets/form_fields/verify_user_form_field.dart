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
  const VerifyUserFormField._({
    Key? key,
    required VerifyAttributeField field,
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

  static VerifyUserFormField verifyAttribute({
    Key? key,
    FormFieldValidator<CognitoUserAttributeKey>? validator,
  }) =>
      _VerifyUserRadioField(
        key: keyUnverifiedAttributes,
        field: VerifyAttributeField.verify,
        validator: validator,
      );

  /// Creates a password component.
  static VerifyUserFormField confirmVerifyAttribute({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _VerifyUserTextField(
        key: keyAttributeToVerify,
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
  int get errorMaxLines {
    return 1;
  }
}

class _VerifyUserTextField extends VerifyUserFormField<String> {
  const _VerifyUserTextField({
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
          validator: validator,
        );

  @override
  _VerifyUserTextFieldState createState() => _VerifyUserTextFieldState();
}

class _VerifyUserTextFieldState extends _VerifyUserFormFieldState<String>
    with AuthenticatorTextField {
  @override
  bool get obscureText {
    return false;
  }

  @override
  TextInputType get keyboardType {
    return TextInputType.text;
  }

  @override
  String? get initialValue {
    return viewModel.confirmationCode;
  }

  @override
  ValueChanged<String> get onChanged {
    return viewModel.setConfirmationCode;
  }

  @override
  FormFieldValidator<String> get validator {
    return simpleValidator(
      stringResolver.inputs.resolve(
        context,
        InputResolverKey.preferredUsernameEmpty,
      ),
    );
  }
}

class _VerifyUserRadioField
    extends VerifyUserFormField<CognitoUserAttributeKey> {
  const _VerifyUserRadioField({
    Key? key,
    required VerifyAttributeField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    FormFieldValidator<CognitoUserAttributeKey>? validator,
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
  _VerifyAttributeFieldState createState() => _VerifyAttributeFieldState();
}

class _VerifyAttributeFieldState
    extends _VerifyUserFormFieldState<CognitoUserAttributeKey>
    with AuthenticatorRadioField {
  late final List<InputSelection<InputResolverKey, CognitoUserAttributeKey>>
      _inputSelections;

  @override
  List<InputSelection<InputResolverKey, CognitoUserAttributeKey>>
      get selections => _inputSelections;

  @override
  late final CognitoUserAttributeKey initialValue;

  @override
  void initState() {
    super.initState();

    final _authState =
        InheritedAuthBloc.of(context, listen: false).currentState;
    if (_authState is! VerifyUserFlow) {
      throw StateError('Invalid verify attribute state: $_authState');
    }
    final List<CognitoUserAttributeKey> _unverifiedKeys =
        _authState.unverifiedAttributeKeys;
    _inputSelections = [
      if (_unverifiedKeys.contains(CognitoUserAttributeKey.email))
        const InputSelection<InputResolverKey, CognitoUserAttributeKey>(
          label: InputResolverKey.emailTitle,
          value: CognitoUserAttributeKey.email,
        ),
      if (_unverifiedKeys.contains(CognitoUserAttributeKey.phoneNumber))
        const InputSelection<InputResolverKey, CognitoUserAttributeKey>(
          label: InputResolverKey.phoneNumberTitle,
          value: CognitoUserAttributeKey.phoneNumber,
        )
    ];
    initialValue = _inputSelections.first.value;
  }

  @override
  ValueChanged<CognitoUserAttributeKey> get onChanged {
    return viewModel.setAttributeKeyToVerify;
  }
}
