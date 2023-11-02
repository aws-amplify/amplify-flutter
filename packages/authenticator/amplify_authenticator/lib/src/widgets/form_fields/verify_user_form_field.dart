// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../form_field.dart';

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.verify_user_form_field}
/// A prebuilt [Radio] widget for use on the Verify User step.
/// {@endtemplate}
abstract class VerifyUserFormField<FieldValue extends Object>
    extends AuthenticatorFormField<VerifyAttributeField, FieldValue> {
  /// {@macro amplify_authenticator.verify_user_form_field}
  const VerifyUserFormField._({
    super.key,
    required super.field,
    super.titleKey,
    super.hintTextKey,
    super.title,
    super.hintText,
    super.validator,
    super.autofillHints,
  }) : super._();

  static VerifyUserFormField<CognitoUserAttributeKey> verifyAttribute({
    Key? key,
    FormFieldValidator<CognitoUserAttributeKey>? validator,
  }) =>
      _VerifyUserRadioField(
        key: keyVerifyUserRadioButtonFormField,
        field: VerifyAttributeField.verify,
        validator: validator,
      );

  /// Creates a password component.
  static VerifyUserFormField<String> confirmVerifyAttribute({
    Key? key,
    FormFieldValidator<String>? validator,
    Iterable<String>? autofillHints,
  }) =>
      _VerifyUserTextField(
        key: keyVerifyUserConfirmationCode,
        titleKey: InputResolverKey.verificationCodeTitle,
        hintTextKey: InputResolverKey.verificationCodeHint,
        field: VerifyAttributeField.confirmVerify,
        validator: validator,
        autofillHints: autofillHints,
      );

  @override
  bool get required => true;
}

abstract class _VerifyUserFormFieldState<FieldValue extends Object>
    extends AuthenticatorFormFieldState<VerifyAttributeField, FieldValue,
        VerifyUserFormField<FieldValue>> {
  @override
  int get errorMaxLines {
    return 1;
  }
}

class _VerifyUserTextField extends VerifyUserFormField<String> {
  const _VerifyUserTextField({
    super.key,
    required super.field,
    super.titleKey,
    super.hintTextKey,
    super.validator,
    super.autofillHints,
  }) : super._();

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
    return state.confirmationCode;
  }

  @override
  ValueChanged<String> get onChanged {
    return (v) => state.confirmationCode = v;
  }

  @override
  Iterable<String>? get autofillHints =>
      widget.autofillHints ??
      [
        AutofillHints.oneTimeCode,
      ];

  @override
  FormFieldValidator<String> get validator {
    return simpleValidator(
      stringResolver.inputs.resolve(
        context,
        InputResolverKey.verificationCodeEmpty,
      ),
      isOptional: isOptional,
    );
  }
}

class _VerifyUserRadioField
    extends VerifyUserFormField<CognitoUserAttributeKey> {
  const _VerifyUserRadioField({
    super.key,
    required super.field,
    super.validator,
  }) : super._();

  @override
  _VerifyAttributeFieldState createState() => _VerifyAttributeFieldState();
}

class _VerifyAttributeFieldState
    extends _VerifyUserFormFieldState<CognitoUserAttributeKey>
    with AuthenticatorRadioField {
  @override
  late final List<InputSelection<InputResolverKey, CognitoUserAttributeKey>>
      selections;

  @override
  late final CognitoUserAttributeKey initialValue;

  @override
  void initState() {
    super.initState();

    final authState = InheritedAuthBloc.of(context, listen: false).currentState;
    if (authState is! VerifyUserFlow) {
      throw StateError('Invalid verify attribute state: $authState');
    }
    final unverifiedKeys = authState.unverifiedAttributeKeys;
    selections = [
      if (unverifiedKeys.contains(CognitoUserAttributeKey.email))
        const InputSelection<InputResolverKey, CognitoUserAttributeKey>(
          label: InputResolverKey.emailTitle,
          value: CognitoUserAttributeKey.email,
        ),
      if (unverifiedKeys.contains(CognitoUserAttributeKey.phoneNumber))
        const InputSelection<InputResolverKey, CognitoUserAttributeKey>(
          label: InputResolverKey.phoneNumberTitle,
          value: CognitoUserAttributeKey.phoneNumber,
        ),
    ];
    initialValue = selections.first.value;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      state.attributeKeyToVerify = initialValue;
    });
  }

  @override
  ValueChanged<CognitoUserAttributeKey> get onChanged {
    return (CognitoUserAttributeKey key) => state.attributeKeyToVerify = key;
  }
}
