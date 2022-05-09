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

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_sign_in_form_field}
/// A prebuilt form field widget for use on the Confirm Sign In step.
/// {@endtemplate}
abstract class ConfirmSignInFormField<FieldValue>
    extends AuthenticatorFormField<ConfirmSignInField, FieldValue,
        ConfirmSignInFormField<FieldValue>> {
  /// {@macro amplify_authenticator.confirm_sign_in_form_field}
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
    bool? required,
  })  : _customAttributeKey = customAttributeKey,
        super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
          requiredOverride: required,
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

  /// Creates a new password component.
  static ConfirmSignInFormField confirmNewPassword({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _ConfirmSignInTextField(
        key: key ?? keyConfirmNewPasswordConfirmSignInFormField,
        titleKey: InputResolverKey.passwordConfirmationTitle,
        hintTextKey: InputResolverKey.passwordConfirmationHint,
        field: ConfirmSignInField.confirmNewPassword,
        validator: validator,
      );

  /// Creates an auth answer component.
  static ConfirmSignInFormField customChallenge({
    Key? key,
    String? title,
    String? hintText,
    FormFieldValidator<String>? validator,
  }) =>
      _ConfirmSignInTextField(
        key: key ?? keyCustomChallengeConfirmSignInFormField,
        title: title,
        hintText: hintText,
        titleKey:
            title == null ? InputResolverKey.customAuthChallengeTitle : null,
        hintTextKey:
            hintText == null ? InputResolverKey.customAuthChallengeHint : null,
        field: ConfirmSignInField.customChallenge,
        validator: validator,
      );

  /// Creates a verification code component.
  static ConfirmSignInFormField verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _ConfirmSignInTextField(
        key: key ?? keyCodeConfirmSignInFormField,
        titleKey: InputResolverKey.verificationCodeTitle,
        hintTextKey: InputResolverKey.verificationCodeHint,
        field: ConfirmSignInField.code,
        validator: validator,
      );

  /// Creates an address component.
  static ConfirmSignInFormField address({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      _ConfirmSignInTextField(
        key: key ?? keyAddressConfirmSignInFormField,
        titleKey: InputResolverKey.addressTitle,
        hintTextKey: InputResolverKey.addressHint,
        field: ConfirmSignInField.address,
        validator: validator,
        required: required,
      );

  /// Creates a birthdate component.
  static ConfirmSignInFormField birthdate({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      _ConfirmSignInDateField(
        key: key ?? keyBirthdateConfirmSignInFormField,
        titleKey: InputResolverKey.birthdateTitle,
        hintTextKey: InputResolverKey.birthdateHint,
        field: ConfirmSignInField.birthdate,
        validator: validator,
        required: required,
      );

  /// Creates an email component.
  static ConfirmSignInFormField email({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      _ConfirmSignInTextField(
        key: key ?? keyEmailConfirmSignInFormField,
        titleKey: InputResolverKey.emailTitle,
        hintTextKey: InputResolverKey.emailHint,
        field: ConfirmSignInField.email,
        validator: validator,
        required: required,
      );

  /// Creates a familyName component.
  static ConfirmSignInFormField familyName({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      _ConfirmSignInTextField(
        key: key ?? keyFamilyNameConfirmSignInFormField,
        titleKey: InputResolverKey.familyNameTitle,
        hintTextKey: InputResolverKey.familyNameHint,
        field: ConfirmSignInField.familyName,
        validator: validator,
        required: required,
      );

  /// Creates a gender component.
  static ConfirmSignInFormField gender({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      _ConfirmSignInTextField(
        key: key ?? keyGenderConfirmSignInFormField,
        titleKey: InputResolverKey.genderTitle,
        hintTextKey: InputResolverKey.genderHint,
        field: ConfirmSignInField.gender,
        validator: validator,
        required: required,
      );

  /// Creates a givenName component.
  static ConfirmSignInFormField givenName({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      _ConfirmSignInTextField(
        key: key ?? keyGivenNameConfirmSignInFormField,
        titleKey: InputResolverKey.givenNameTitle,
        hintTextKey: InputResolverKey.givenNameHint,
        field: ConfirmSignInField.givenName,
        validator: validator,
        required: required,
      );

  /// Creates a middleName component.
  static ConfirmSignInFormField middleName({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      _ConfirmSignInTextField(
        key: key ?? keyMiddleNameConfirmSignInFormField,
        titleKey: InputResolverKey.middleNameTitle,
        hintTextKey: InputResolverKey.middleNameHint,
        field: ConfirmSignInField.middleName,
        validator: validator,
        required: required,
      );

  /// Creates a name component.
  static ConfirmSignInFormField name({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      _ConfirmSignInTextField(
        key: key ?? keyNameConfirmSignInFormField,
        titleKey: InputResolverKey.nameTitle,
        hintTextKey: InputResolverKey.nameHint,
        field: ConfirmSignInField.name,
        validator: validator,
        required: required,
      );

  /// Creates a nickname component.
  static ConfirmSignInFormField nickname({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      _ConfirmSignInTextField(
        key: key ?? keyNicknameConfirmSignInFormField,
        titleKey: InputResolverKey.nicknameTitle,
        hintTextKey: InputResolverKey.nicknameHint,
        field: ConfirmSignInField.nickname,
        validator: validator,
        required: required,
      );

  /// Creates a phoneNumber component.
  static ConfirmSignInFormField phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      _ConfirmSignInPhoneField(
        key: key ?? keyPhoneNumberConfirmSignInFormField,
        titleKey: InputResolverKey.phoneNumberTitle,
        hintTextKey: InputResolverKey.phoneNumberHint,
        field: ConfirmSignInField.phoneNumber,
        validator: validator,
        required: required,
      );

  /// Creates a preferredUsername component.
  static ConfirmSignInFormField preferredUsername({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      _ConfirmSignInTextField(
        key: key ?? keyPreferredUsernameConfirmSignInFormField,
        titleKey: InputResolverKey.preferredUsernameTitle,
        hintTextKey: InputResolverKey.preferredUsernameHint,
        field: ConfirmSignInField.preferredUsername,
        validator: validator,
        required: required,
      );

  /// Creates a custom attribute component.
  static ConfirmSignInFormField custom({
    Key? key,
    required String title,
    required CognitoUserAttributeKey attributeKey,
    String? hintText,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      _ConfirmSignInTextField(
        key: key,
        title: title,
        hintText: hintText,
        field: ConfirmSignInField.custom,
        validator: validator,
        attributeKey: attributeKey,
        required: required,
      );

  /// Custom Cognito attribute key.
  final CognitoUserAttributeKey? _customAttributeKey;

  @override
  int get displayPriority {
    switch (field) {
      case ConfirmSignInField.newPassword:
        return 100;
      case ConfirmSignInField.confirmNewPassword:
        return 99;
      case ConfirmSignInField.code:
      case ConfirmSignInField.customChallenge:
        return 10;
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
      case ConfirmSignInField.custom:
        return 1;
    }
  }

  @override
  bool get required {
    switch (field) {
      case ConfirmSignInField.code:
      case ConfirmSignInField.customChallenge:
      case ConfirmSignInField.newPassword:
      case ConfirmSignInField.confirmNewPassword:
        return true;
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
      case ConfirmSignInField.custom:
        return false;
    }
  }
}

abstract class _ConfirmSignInFormFieldState<FieldValue>
    extends AuthenticatorFormFieldState<ConfirmSignInField, FieldValue,
        ConfirmSignInFormField<FieldValue>> {
  @override
  bool get obscureText {
    switch (widget.field) {
      case ConfirmSignInField.newPassword:
      case ConfirmSignInField.confirmNewPassword:
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
      case ConfirmSignInField.newPassword:
      case ConfirmSignInField.confirmNewPassword:
        return TextInputType.visiblePassword;
      case ConfirmSignInField.address:
        return TextInputType.streetAddress;
      case ConfirmSignInField.email:
        return TextInputType.emailAddress;
      case ConfirmSignInField.name:
        return TextInputType.name;
      case ConfirmSignInField.phoneNumber:
        return TextInputType.phone;
      default:
        return TextInputType.text;
    }
  }

  @override
  Widget? get suffix {
    switch (widget.field) {
      case ConfirmSignInField.newPassword:
      case ConfirmSignInField.confirmNewPassword:
        return visibilityToggle;
      default:
        return null;
    }
  }

  @override
  int? get maxLength {
    switch (widget.field) {
      case ConfirmSignInField.code:
        return 6;
      default:
        return null;
    }
  }

  @override
  int get errorMaxLines {
    switch (widget.field) {
      case ConfirmSignInField.newPassword:
      case ConfirmSignInField.confirmNewPassword:
        return 6;
      default:
        return super.errorMaxLines;
    }
  }
}

class _ConfirmSignInPhoneField extends ConfirmSignInFormField<String> {
  const _ConfirmSignInPhoneField({
    Key? key,
    required ConfirmSignInField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    CognitoUserAttributeKey? attributeKey,
    FormFieldValidator<String>? validator,
    bool? required,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
          customAttributeKey: attributeKey,
          required: required,
        );

  @override
  _ConfirmSignInPhoneFieldState createState() =>
      _ConfirmSignInPhoneFieldState();
}

class _ConfirmSignInPhoneFieldState extends _ConfirmSignInTextFieldState
    with AuthenticatorPhoneFieldMixin {
  @override
  String? get initialValue {
    var initialValue = state.getAttribute(CognitoUserAttributeKey.phoneNumber);
    if (initialValue != null) {
      initialValue = displayPhoneNumber(initialValue);
    }
    return initialValue;
  }

  @override
  ValueChanged<String> get onChanged {
    return (phoneNumber) {
      phoneNumber = formatPhoneNumber(phoneNumber)!;
      state.phoneNumber = phoneNumber;
    };
  }

  @override
  FormFieldValidator<String> get validator {
    return (phoneNumber) {
      phoneNumber = formatPhoneNumber(phoneNumber);
      return validatePhoneNumber(
        inputResolver: stringResolver.inputs,
        context: context,
        isOptional: isOptional,
      )(phoneNumber);
    };
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
    CognitoUserAttributeKey? attributeKey,
    FormFieldValidator<String>? validator,
    bool? required,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
          customAttributeKey: attributeKey,
          required: required,
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
        return state.confirmationCode;
      case ConfirmSignInField.newPassword:
        return state.newPassword;
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
        return state.getAttribute(widget.field.toCognitoAttribute());
      case ConfirmSignInField.custom:
        return state.getAttribute(widget._customAttributeKey!);
      default:
        return null;
    }
  }

  @override
  ValueChanged<String> get onChanged {
    switch (widget.field) {
      case ConfirmSignInField.code:
        return (v) => state.confirmationCode = v;
      case ConfirmSignInField.customChallenge:
        return (v) => state.confirmationCode = v;
      case ConfirmSignInField.newPassword:
        return (v) => state.newPassword = v;
      case ConfirmSignInField.confirmNewPassword:
        return (v) => state.passwordConfirmation = v;
      case ConfirmSignInField.address:
        return (v) => state.address = v;
      case ConfirmSignInField.email:
        return (v) => state.email = v;
      case ConfirmSignInField.familyName:
        return (v) => state.familyName = v;
      case ConfirmSignInField.gender:
        return (v) => state.gender = v;
      case ConfirmSignInField.givenName:
        return (v) => state.givenName = v;
      case ConfirmSignInField.middleName:
        return (v) => state.middleName = v;
      case ConfirmSignInField.name:
        return (v) => state.name = v;
      case ConfirmSignInField.nickname:
        return (v) => state.nickname = v;
      case ConfirmSignInField.preferredUsername:
        return (v) => state.preferredUsername = v;
      case ConfirmSignInField.custom:
        return (String value) => state.setCustomAttribute(
              widget._customAttributeKey!,
              value,
            );
      default:
        return super.onChanged;
    }
  }

  @override
  FormFieldValidator<String> get validator {
    switch (widget.field) {
      case ConfirmSignInField.code:
        return validateCode(
          isOptional: isOptional,
          context: context,
          inputResolver: stringResolver.inputs,
        );
      case ConfirmSignInField.newPassword:
        return validateNewPassword(
          amplifyConfig: config.amplifyConfig,
          inputResolver: stringResolver.inputs,
        )(context);
      case ConfirmSignInField.confirmNewPassword:
        return validatePasswordConfirmation(
          () => state.newPassword,
          context: context,
          inputResolver: stringResolver.inputs,
        );
      case ConfirmSignInField.email:
        return validateEmail(
          inputResolver: stringResolver.inputs,
          context: context,
          isOptional: isOptional,
        );
      case ConfirmSignInField.address:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.addressEmpty,
          ),
          isOptional: isOptional,
        );
      case ConfirmSignInField.birthdate:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.birthdateEmpty,
          ),
          isOptional: isOptional,
        );
      case ConfirmSignInField.familyName:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.familyNameEmpty,
          ),
          isOptional: isOptional,
        );
      case ConfirmSignInField.gender:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.genderEmpty,
          ),
          isOptional: isOptional,
        );
      case ConfirmSignInField.givenName:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.givenNameEmpty,
          ),
          isOptional: isOptional,
        );
      case ConfirmSignInField.middleName:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.middleNameEmpty,
          ),
          isOptional: isOptional,
        );
      case ConfirmSignInField.name:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.nameEmpty,
          ),
          isOptional: isOptional,
        );
      case ConfirmSignInField.nickname:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.nicknameEmpty,
          ),
          isOptional: isOptional,
        );
      case ConfirmSignInField.preferredUsername:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.preferredUsernameEmpty,
          ),
          isOptional: isOptional,
        );
      default:
        return super.validator;
    }
  }
}

class _ConfirmSignInDateField extends ConfirmSignInFormField<String> {
  const _ConfirmSignInDateField({
    Key? key,
    required ConfirmSignInField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    CognitoUserAttributeKey? attributeKey,
    FormFieldValidator<String>? validator,
    bool? required,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
          customAttributeKey: attributeKey,
          required: required,
        );

  @override
  _ConfirmSignInDateFieldState createState() => _ConfirmSignInDateFieldState();
}

class _ConfirmSignInDateFieldState extends _ConfirmSignInFormFieldState<String>
    with AuthenticatorDateField {
  @override
  String? get initialValue {
    return state.getAttribute(widget.field.toCognitoAttribute());
  }

  @override
  ValueChanged<String> get onChanged {
    return (v) => state.birthdate = v;
  }

  @override
  FormFieldValidator<String> get validator {
    return simpleValidator(
      stringResolver.inputs.resolve(
        context,
        InputResolverKey.birthdateEmpty,
      ),
      isOptional: isOptional,
    );
  }
}
