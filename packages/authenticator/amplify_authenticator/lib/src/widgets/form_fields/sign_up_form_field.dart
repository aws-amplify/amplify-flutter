// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of authenticator.form_field;

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.sign_up_form_field}
/// A prebuilt form field widget for use on the Sign Up step.
/// {@endtemplate}
abstract class SignUpFormField<FieldValue>
    extends AuthenticatorFormField<SignUpField, FieldValue> {
  /// {@macro amplify_authenticator.sign_up_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const SignUpFormField._({
    Key? key,
    required SignUpField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    FormFieldValidator<FieldValue>? validator,
    CognitoUserAttributeKey? customAttributeKey,
    bool? required,
    Iterable<String>? autofillHints,
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
          autofillHints: autofillHints,
        );

  /// {@template amplify_authenticator.username_form_field}
  /// Creates a username component based on your app's configuration.
  ///
  /// The look and behavior of this widget will depend on your app's auth configuration.
  /// The `usernameAttributes` will be used to determine if the field is a standard
  /// username field, and email field, or a phone number field.
  /// {@endtemplate}
  ///
  /// If your app is configured to use email or phone, the value provided for this widget
  /// will be saved as the user's email or phone number in addition to their username.
  static SignUpFormField username({
    Key? key,
    FormFieldValidator<UsernameInput>? validator,
    Iterable<String>? autofillHints,
  }) =>
      _SignUpUsernameField(
        key: key ?? keyUsernameSignUpFormField,
        validator: validator,
        autofillHints: autofillHints,
      );

  /// Creates a password component.
  static SignUpFormField password({
    Key? key,
    FormFieldValidator<String>? validator,
    Iterable<String>? autofillHints,
  }) =>
      _SignUpTextField(
        key: key ?? keyPasswordSignUpFormField,
        titleKey: InputResolverKey.passwordTitle,
        hintTextKey: InputResolverKey.passwordHint,
        field: SignUpField.password,
        validator: validator,
        autofillHints: autofillHints,
      );

  /// Creates a passwordConfirmation component.
  static SignUpFormField passwordConfirmation({
    Key? key,
    FormFieldValidator<String>? validator,
    Iterable<String>? autofillHints,
  }) =>
      _SignUpTextField(
        key: key ?? keyPasswordConfirmationSignUpFormField,
        titleKey: InputResolverKey.passwordConfirmationTitle,
        hintTextKey: InputResolverKey.passwordConfirmationHint,
        field: SignUpField.passwordConfirmation,
        validator: validator,
        autofillHints: autofillHints,
      );

  /// Creates an address component.
  static SignUpFormField address({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
  }) =>
      _SignUpTextField(
        key: key ?? keyAddressSignUpFormField,
        titleKey: InputResolverKey.addressTitle,
        hintTextKey: InputResolverKey.addressHint,
        field: SignUpField.address,
        validator: validator,
        required: required,
        autofillHints: autofillHints,
      );

  /// Creates a birthdate component.
  static SignUpFormField birthdate({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
  }) =>
      _SignUpDateField(
        key: key ?? keyBirthdateSignUpFormField,
        titleKey: InputResolverKey.birthdateTitle,
        hintTextKey: InputResolverKey.birthdateHint,
        field: SignUpField.birthdate,
        validator: validator,
        required: required,
        autofillHints: autofillHints,
      );

  /// Creates an email component.
  static SignUpFormField email({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
  }) =>
      _SignUpTextField(
        key: key ?? keyEmailSignUpFormField,
        titleKey: InputResolverKey.emailTitle,
        hintTextKey: InputResolverKey.emailHint,
        field: SignUpField.email,
        validator: validator,
        required: required,
        autofillHints: autofillHints,
      );

  /// Creates a familyName component.
  static SignUpFormField familyName({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
  }) =>
      _SignUpTextField(
        key: key ?? keyFamilyNameSignUpFormField,
        titleKey: InputResolverKey.familyNameTitle,
        hintTextKey: InputResolverKey.familyNameHint,
        field: SignUpField.familyName,
        validator: validator,
        required: required,
        autofillHints: autofillHints,
      );

  /// Creates a gender component.
  static SignUpFormField gender({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
  }) =>
      _SignUpTextField(
        key: key ?? keyGenderSignUpFormField,
        titleKey: InputResolverKey.genderTitle,
        hintTextKey: InputResolverKey.genderHint,
        field: SignUpField.gender,
        validator: validator,
        required: required,
        autofillHints: autofillHints,
      );

  /// Creates a givenName component.
  static SignUpFormField givenName({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
  }) =>
      _SignUpTextField(
        key: key ?? keyGivenNameSignUpFormField,
        titleKey: InputResolverKey.givenNameTitle,
        hintTextKey: InputResolverKey.givenNameHint,
        field: SignUpField.givenName,
        validator: validator,
        required: required,
        autofillHints: autofillHints,
      );

  /// Creates a middleName component.
  static SignUpFormField middleName({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
  }) =>
      _SignUpTextField(
        key: key ?? keyMiddleNameSignUpFormField,
        titleKey: InputResolverKey.middleNameTitle,
        hintTextKey: InputResolverKey.middleNameHint,
        field: SignUpField.middleName,
        validator: validator,
        required: required,
        autofillHints: autofillHints,
      );

  /// Creates a name component.
  static SignUpFormField name({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
  }) =>
      _SignUpTextField(
        key: key ?? keyNameSignUpFormField,
        titleKey: InputResolverKey.nameTitle,
        hintTextKey: InputResolverKey.nameHint,
        field: SignUpField.name,
        validator: validator,
        required: required,
        autofillHints: autofillHints,
      );

  /// Creates a nickname component.
  static SignUpFormField nickname({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
  }) =>
      _SignUpTextField(
        key: key ?? keyNicknameSignUpFormField,
        titleKey: InputResolverKey.nicknameTitle,
        hintTextKey: InputResolverKey.nicknameHint,
        field: SignUpField.nickname,
        validator: validator,
        required: required,
        autofillHints: autofillHints,
      );

  /// Creates a phoneNumber component.
  static SignUpFormField phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
  }) =>
      _SignUpPhoneField(
        key: key ?? keyPhoneNumberSignUpFormField,
        titleKey: InputResolverKey.phoneNumberTitle,
        hintTextKey: InputResolverKey.phoneNumberHint,
        field: SignUpField.phoneNumber,
        validator: validator,
        required: required,
        autofillHints: autofillHints,
      );

  /// Creates a preferredUsername component.
  static SignUpFormField preferredUsername({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
  }) =>
      _SignUpTextField(
        key: key ?? keyPreferredUsernameSignUpFormField,
        titleKey: InputResolverKey.preferredUsernameTitle,
        hintTextKey: InputResolverKey.preferredUsernameHint,
        field: SignUpField.preferredUsername,
        validator: validator,
        required: required,
        autofillHints: autofillHints,
      );

  /// Creates a custom attribute component.
  static SignUpFormField custom({
    Key? key,
    required String title,
    required CognitoUserAttributeKey attributeKey,
    String? hintText,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
  }) =>
      _SignUpTextField(
        key: key,
        title: title,
        hintText: hintText,
        field: SignUpField.custom,
        validator: validator,
        attributeKey: attributeKey,
        required: required,
        autofillHints: autofillHints,
      );

  /// Custom Cognito attribute key.
  final CognitoUserAttributeKey? _customAttributeKey;

  @override
  int get displayPriority {
    switch (field) {
      case SignUpField.username:
        return 1000;
      case SignUpField.password:
        return 101;
      case SignUpField.passwordConfirmation:
        return 100;
      case SignUpField.address:
      case SignUpField.birthdate:
      case SignUpField.email:
      case SignUpField.familyName:
      case SignUpField.gender:
      case SignUpField.givenName:
      case SignUpField.middleName:
      case SignUpField.name:
      case SignUpField.nickname:
      case SignUpField.phoneNumber:
      case SignUpField.preferredUsername:
      case SignUpField.custom:
        return 1;
    }
  }

  @override
  bool get required {
    switch (field) {
      case SignUpField.username:
      case SignUpField.password:
      case SignUpField.passwordConfirmation:
        return true;
      case SignUpField.address:
      case SignUpField.birthdate:
      case SignUpField.email:
      case SignUpField.familyName:
      case SignUpField.gender:
      case SignUpField.givenName:
      case SignUpField.middleName:
      case SignUpField.name:
      case SignUpField.nickname:
      case SignUpField.phoneNumber:
      case SignUpField.preferredUsername:
      case SignUpField.custom:
        return false;
    }
  }

  @override
  UsernameType? get usernameType {
    switch (field) {
      case SignUpField.email:
        return UsernameType.email;
      case SignUpField.phoneNumber:
        return UsernameType.phoneNumber;
      case SignUpField.preferredUsername:
        return UsernameType.username;
      case SignUpField.username:
      case SignUpField.password:
      case SignUpField.passwordConfirmation:
      case SignUpField.address:
      case SignUpField.birthdate:
      case SignUpField.familyName:
      case SignUpField.gender:
      case SignUpField.givenName:
      case SignUpField.middleName:
      case SignUpField.name:
      case SignUpField.nickname:
      case SignUpField.custom:
        return null;
    }
  }
}

abstract class _SignUpFormFieldState<FieldValue>
    extends AuthenticatorFormFieldState<SignUpField, FieldValue,
        SignUpFormField<FieldValue>> {
  @override
  bool get obscureText {
    switch (widget.field) {
      case SignUpField.password:
      case SignUpField.passwordConfirmation:
        return true;
      default:
        return false;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.field) {
      case SignUpField.password:
      case SignUpField.passwordConfirmation:
        return TextInputType.visiblePassword;
      case SignUpField.address:
        return TextInputType.streetAddress;
      case SignUpField.email:
        return TextInputType.emailAddress;
      case SignUpField.name:
        return TextInputType.name;
      case SignUpField.phoneNumber:
        return TextInputType.phone;
      default:
        return TextInputType.text;
    }
  }

  @override
  Widget? get suffix {
    switch (widget.field) {
      case SignUpField.password:
      case SignUpField.passwordConfirmation:
        return visibilityToggle;
      default:
        return null;
    }
  }

  @override
  int get errorMaxLines {
    switch (widget.field) {
      case SignUpField.password:
        return 6;
      default:
        return super.errorMaxLines;
    }
  }

  @override
  Iterable<String>? get autofillHints {
    if (widget.autofillHints != null) return widget.autofillHints;
    switch (widget.field) {
      case SignUpField.password:
      case SignUpField.passwordConfirmation:
        return const [
          AutofillHints.newPassword,
        ];
      case SignUpField.address:
        return const [
          AutofillHints.fullStreetAddress,
        ];
      case SignUpField.email:
        return const [
          AutofillHints.email,
        ];
      case SignUpField.name:
        return const [
          AutofillHints.name,
        ];
      case SignUpField.phoneNumber:
        return const [
          AutofillHints.telephoneNumber,
        ];
      case SignUpField.username:
        return const [
          AutofillHints.newUsername,
        ];
      case SignUpField.birthdate:
        return const [
          AutofillHints.birthday,
        ];
      case SignUpField.familyName:
        return const [
          AutofillHints.familyName,
        ];
      case SignUpField.gender:
        return const [
          AutofillHints.gender,
        ];
      case SignUpField.givenName:
        return const [
          AutofillHints.givenName,
        ];
      case SignUpField.middleName:
        return const [
          AutofillHints.middleName,
        ];
      case SignUpField.nickname:
        return const [
          AutofillHints.nickname,
        ];
      case SignUpField.preferredUsername:
        return const [
          AutofillHints.newUsername,
        ];
      case SignUpField.custom:
        return null;
    }
  }
}

class _SignUpTextField extends SignUpFormField<String> {
  const _SignUpTextField({
    Key? key,
    required SignUpField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    CognitoUserAttributeKey? attributeKey,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
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
          autofillHints: autofillHints,
        );

  @override
  _SignUpTextFieldState createState() => _SignUpTextFieldState();
}

class _SignUpTextFieldState extends _SignUpFormFieldState<String>
    with AuthenticatorTextField {
  @override
  String? get initialValue {
    switch (widget.field) {
      case SignUpField.username:
        return state.username;
      case SignUpField.password:
        return state.password;
      case SignUpField.passwordConfirmation:
        return state.passwordConfirmation;
      case SignUpField.address:
      case SignUpField.birthdate:
      case SignUpField.email:
      case SignUpField.familyName:
      case SignUpField.gender:
      case SignUpField.givenName:
      case SignUpField.middleName:
      case SignUpField.name:
      case SignUpField.nickname:
      case SignUpField.preferredUsername:
        return state.getAttribute(widget.field.toCognitoAttribute());
      case SignUpField.custom:
        return state.getAttribute(widget._customAttributeKey!);
      default:
        return null;
    }
  }

  @override
  ValueChanged<String> get onChanged {
    switch (widget.field) {
      case SignUpField.username:
        return (v) => state.username = v;
      case SignUpField.password:
        return (v) => state.password = v;
      case SignUpField.passwordConfirmation:
        return (v) => state.passwordConfirmation = v;
      case SignUpField.address:
        return (v) => state.address = v;
      case SignUpField.email:
        if (selectedUsernameType == UsernameType.email) {
          return (email) {
            state.email = email;
            state.username = email;
          };
        }
        return (v) => state.email = v;
      case SignUpField.familyName:
        return (v) => state.familyName = v;
      case SignUpField.gender:
        return (v) => state.gender = v;
      case SignUpField.givenName:
        return (v) => state.givenName = v;
      case SignUpField.middleName:
        return (v) => state.middleName = v;
      case SignUpField.name:
        return (v) => state.name = v;
      case SignUpField.nickname:
        return (v) => state.nickname = v;
      case SignUpField.preferredUsername:
        return (v) => state.preferredUsername = v;
      case SignUpField.custom:
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
      case SignUpField.username:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.usernameEmpty,
          ),
          isOptional: isOptional,
        );
      case SignUpField.password:
        return validateNewPassword(
          amplifyConfig: config.amplifyConfig,
          inputResolver: stringResolver.inputs,
        )(context);
      case SignUpField.passwordConfirmation:
        return validatePasswordConfirmation(
          () => state.password,
          context: context,
          inputResolver: stringResolver.inputs,
        );
      case SignUpField.email:
        return validateEmail(
          inputResolver: stringResolver.inputs,
          context: context,
          isOptional: isOptional,
        );
      case SignUpField.address:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.addressEmpty,
          ),
          isOptional: isOptional,
        );
      case SignUpField.birthdate:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.birthdateEmpty,
          ),
          isOptional: isOptional,
        );
      case SignUpField.familyName:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.familyNameEmpty,
          ),
          isOptional: isOptional,
        );
      case SignUpField.gender:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.genderEmpty,
          ),
          isOptional: isOptional,
        );
      case SignUpField.givenName:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.givenNameEmpty,
          ),
          isOptional: isOptional,
        );
      case SignUpField.middleName:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.middleNameEmpty,
          ),
          isOptional: isOptional,
        );
      case SignUpField.name:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.nameEmpty,
          ),
          isOptional: isOptional,
        );
      case SignUpField.nickname:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.nicknameEmpty,
          ),
          isOptional: isOptional,
        );
      case SignUpField.preferredUsername:
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

class _SignUpUsernameField extends SignUpFormField<UsernameInput> {
  const _SignUpUsernameField({
    Key? key,
    FormFieldValidator<UsernameInput>? validator,
    Iterable<String>? autofillHints,
  }) : super._(
          key: key,
          field: SignUpField.username,
          titleKey: InputResolverKey.usernameTitle,
          hintTextKey: InputResolverKey.usernameHint,
          validator: validator,
          autofillHints: autofillHints,
        );

  @override
  _SignUpUsernameFieldState createState() => _SignUpUsernameFieldState();
}

class _SignUpUsernameFieldState extends _SignUpFormFieldState<UsernameInput>
    with AuthenticatorUsernameField {}

class _SignUpPhoneField extends SignUpFormField<String> {
  const _SignUpPhoneField({
    Key? key,
    required SignUpField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    CognitoUserAttributeKey? attributeKey,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
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
          autofillHints: autofillHints,
        );

  @override
  _SignUpPhoneFieldState createState() => _SignUpPhoneFieldState();
}

class _SignUpPhoneFieldState extends _SignUpTextFieldState
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

class _SignUpDateField extends SignUpFormField<String> {
  const _SignUpDateField({
    Key? key,
    required SignUpField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    CognitoUserAttributeKey? attributeKey,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
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
          autofillHints: autofillHints,
        );

  @override
  _SignUpDateFieldState createState() => _SignUpDateFieldState();
}

class _SignUpDateFieldState extends _SignUpFormFieldState<String>
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
