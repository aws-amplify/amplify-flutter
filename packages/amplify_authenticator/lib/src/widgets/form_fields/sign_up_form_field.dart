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
///   /// Creates a extends component.
class SignUpFormField
    extends AuthenticatorFormField<SignUpField, SignUpFormField> {
  /// {@macro authenticator.sign_up_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const SignUpFormField._(
      {Key? key,
      required SignUpField field,
      InputResolverKey? titleKey,
      InputResolverKey? hintTextKey,
      String? title,
      String? hintText,
      FormFieldValidator<String>? validator,
      String? customAttributeKey,
      InputType inputType = InputType.text})
      : _customAttributeKey = customAttributeKey,
        super._(
            key: key,
            field: field,
            titleKey: titleKey,
            hintTextKey: hintTextKey,
            title: title,
            hintText: hintText,
            validator: validator,
            inputType: inputType);

  /// Creates a username component.
  const SignUpFormField.username({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyUsernameSignUpFormField,
          titleKey: InputResolverKey.usernameTitle,
          hintTextKey: InputResolverKey.usernameHint,
          field: SignUpField.username,
          validator: validator,
        );

  /// Creates a password component.
  const SignUpFormField.password({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyPasswordSignUpFormField,
          titleKey: InputResolverKey.passwordTitle,
          hintTextKey: InputResolverKey.passwordHint,
          field: SignUpField.password,
          validator: validator,
        );

  /// Creates a passwordConfirmation component.
  const SignUpFormField.passwordConfirmation({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyPasswordConfirmationSignUpFormField,
          titleKey: InputResolverKey.passwordConfirmationTitle,
          hintTextKey: InputResolverKey.passwordConfirmationHint,
          field: SignUpField.passwordConfirmation,
          validator: validator,
        );

  /// Creates an address component.
  const SignUpFormField.address({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyAddressSignUpFormField,
          titleKey: InputResolverKey.addressTitle,
          hintTextKey: InputResolverKey.addressHint,
          field: SignUpField.address,
          validator: validator,
        );

  /// Creates a birthdate component.
  const SignUpFormField.birthdate({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
            key: key ?? keyBirthdateSignUpFormField,
            titleKey: InputResolverKey.birthdateTitle,
            hintTextKey: InputResolverKey.birthdateHint,
            field: SignUpField.birthdate,
            validator: validator,
            inputType: InputType.datePicker);

  /// Creates a nemail component.
  const SignUpFormField.email({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyEmailSignUpFormField,
          titleKey: InputResolverKey.emailTitle,
          hintTextKey: InputResolverKey.emailHint,
          field: SignUpField.email,
          validator: validator,
        );

  /// Creates a familyName component.
  const SignUpFormField.familyName({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyFamilyNameSignUpFormField,
          titleKey: InputResolverKey.familyNameTitle,
          hintTextKey: InputResolverKey.familyNameHint,
          field: SignUpField.familyName,
          validator: validator,
        );

  /// Creates a gender component.
  const SignUpFormField.gender({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyGenderSignUpFormField,
          titleKey: InputResolverKey.genderTitle,
          hintTextKey: InputResolverKey.genderHint,
          field: SignUpField.gender,
          validator: validator,
        );

  /// Creates a givenName component.
  const SignUpFormField.givenName({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyGivenNameSignUpFormField,
          titleKey: InputResolverKey.givenNameTitle,
          hintTextKey: InputResolverKey.givenNameHint,
          field: SignUpField.givenName,
          validator: validator,
        );

  /// Creates a locale component.
  const SignUpFormField.locale({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyLocaleSignUpFormField,
          titleKey: InputResolverKey.localeTitle,
          hintTextKey: InputResolverKey.localeHint,
          field: SignUpField.locale,
          validator: validator,
        );

  /// Creates a middleName component.
  const SignUpFormField.middleName({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyMiddleNameSignUpFormField,
          titleKey: InputResolverKey.middleNameTitle,
          hintTextKey: InputResolverKey.middleNameHint,
          field: SignUpField.middleName,
          validator: validator,
        );

  /// Creates a name component.
  const SignUpFormField.name({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyNameSignUpFormField,
          titleKey: InputResolverKey.nameTitle,
          hintTextKey: InputResolverKey.nameHint,
          field: SignUpField.name,
          validator: validator,
        );

  /// Creates a nickname component.
  const SignUpFormField.nickname({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyNicknameSignUpFormField,
          titleKey: InputResolverKey.nicknameTitle,
          hintTextKey: InputResolverKey.nicknameHint,
          field: SignUpField.nickname,
          validator: validator,
        );

  /// Creates a phoneNumber component.
  const SignUpFormField.phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
            key: key ?? keyPhoneNumberSignUpFormField,
            titleKey: InputResolverKey.phoneNumberTitle,
            hintTextKey: InputResolverKey.phoneNumberHint,
            field: SignUpField.phoneNumber,
            validator: validator,
            inputType: InputType.phone);

  /// Creates a picture component.
  const SignUpFormField.picture({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyPictureSignUpFormField,
          titleKey: InputResolverKey.pictureTitle,
          hintTextKey: InputResolverKey.pictureHint,
          field: SignUpField.picture,
          validator: validator,
        );

  /// Creates a preferredUsername component.
  const SignUpFormField.preferredUsername({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyPreferredUsernameSignUpFormField,
          titleKey: InputResolverKey.preferredUsernameTitle,
          hintTextKey: InputResolverKey.preferredUsernameHint,
          field: SignUpField.preferredUsername,
          validator: validator,
        );

  /// Creates a profile component.
  const SignUpFormField.profile({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyProfileSignUpFormField,
          titleKey: InputResolverKey.profileTitle,
          hintTextKey: InputResolverKey.profileHint,
          field: SignUpField.profile,
          validator: validator,
        );

  /// Creates an updatedAt component.
  const SignUpFormField.updatedAt({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyUpdatedAtSignUpFormField,
          titleKey: InputResolverKey.updatedAtTitle,
          hintTextKey: InputResolverKey.updatedAtHint,
          field: SignUpField.updatedAt,
          validator: validator,
        );

  /// Creates a website component.
  const SignUpFormField.website({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyWebsiteSignUpFormField,
          titleKey: InputResolverKey.websiteTitle,
          hintTextKey: InputResolverKey.websiteHint,
          field: SignUpField.website,
          validator: validator,
        );

  /// Creates a zoneinfo component.
  const SignUpFormField.zoneinfo({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyZoneinfoSignUpFormField,
          titleKey: InputResolverKey.zoneinfoTitle,
          hintTextKey: InputResolverKey.zoneinfoHint,
          field: SignUpField.zoneinfo,
          validator: validator,
        );

  /// Creates a custom attribute component.
  ///
  /// TODO: Document [attributeKey]
  const SignUpFormField.custom({
    Key? key,
    required String title,
    required String attributeKey,
    String? hintText,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key,
          title: title,
          hintText: hintText,
          field: SignUpField.custom,
          validator: validator,
          customAttributeKey: attributeKey,
        );

  /// Custom Cognito attribute key.
  final String? _customAttributeKey;

  @override
  _SignUpFormFieldState createState() => _SignUpFormFieldState();
}

class _SignUpFormFieldState
    extends AuthenticatorFormFieldState<SignUpField, SignUpFormField> {
  @override
  String? get initialValue {
    switch (widget.field) {
      case SignUpField.username:
        return viewModel.username;
      case SignUpField.password:
        return viewModel.password;
      case SignUpField.passwordConfirmation:
        return viewModel.passwordConfirmation;
      case SignUpField.address:
      case SignUpField.birthdate:
      case SignUpField.email:
      case SignUpField.familyName:
      case SignUpField.gender:
      case SignUpField.givenName:
      case SignUpField.locale:
      case SignUpField.middleName:
      case SignUpField.name:
      case SignUpField.nickname:
      case SignUpField.phoneNumber:
      case SignUpField.picture:
      case SignUpField.preferredUsername:
      case SignUpField.profile:
      case SignUpField.zoneinfo:
      case SignUpField.updatedAt:
      case SignUpField.website:
        return viewModel.getAttribute(widget.field.toCognitoAttribute());
      case SignUpField.custom:
        return viewModel.getAttribute(widget._customAttributeKey!);
    }
  }

  @override
  FormFieldValidator<String>? get validator {
    switch (widget.field) {
      case SignUpField.username:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.usernameEmpty,
          ),
        );
      case SignUpField.password:
        return validateSignUpPassword(context);
      case SignUpField.passwordConfirmation:
        return validatePasswordConfirmation(() => viewModel.password);
      case SignUpField.email:
        return validateEmail;
      case SignUpField.phoneNumber:
        return validatePhoneNumber;
      case SignUpField.address:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.addressEmpty,
          ),
        );
      case SignUpField.birthdate:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.birthdateEmpty,
          ),
        );
      case SignUpField.familyName:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.familyNameEmpty,
          ),
        );
      case SignUpField.gender:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.genderEmpty,
          ),
        );
      case SignUpField.givenName:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.givenNameEmpty,
          ),
        );
      case SignUpField.locale:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.localeEmpty,
          ),
        );
      case SignUpField.middleName:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.middleNameEmpty,
          ),
        );
      case SignUpField.name:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.nameEmpty,
          ),
        );
      case SignUpField.nickname:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.nicknameEmpty,
          ),
        );
      case SignUpField.picture:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.pictureEmpty,
          ),
        );
      case SignUpField.preferredUsername:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.preferredUsernameEmpty,
          ),
        );
      case SignUpField.profile:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.profileEmpty,
          ),
        );
      case SignUpField.zoneinfo:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.zoneinfoEmpty,
          ),
        );
      case SignUpField.updatedAt:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.updatedAtEmpty,
          ),
        );
      case SignUpField.website:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.websiteEmpty,
          ),
        );
      case SignUpField.custom:
        return null;
    }
  }

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
  void Function(String) get onChanged {
    switch (widget.field) {
      case SignUpField.username:
        return usernameOnChangedForAlias;
      case SignUpField.password:
        return viewModel.setPassword;
      case SignUpField.passwordConfirmation:
        return viewModel.setPasswordConfirmation;
      case SignUpField.address:
        return viewModel.setAddress;
      case SignUpField.birthdate:
        return viewModel.setBirthdate;
      case SignUpField.email:
        return viewModel.setEmail;
      case SignUpField.familyName:
        return viewModel.setFamilyName;
      case SignUpField.gender:
        return viewModel.setGender;
      case SignUpField.givenName:
        return viewModel.setGivenName;
      case SignUpField.locale:
        return viewModel.setLocale;
      case SignUpField.middleName:
        return viewModel.setMiddleName;
      case SignUpField.name:
        return viewModel.setName;
      case SignUpField.nickname:
        return viewModel.setNickname;
      case SignUpField.phoneNumber:
        return viewModel.setPhoneNumber;
      case SignUpField.picture:
        return viewModel.setPicture;
      case SignUpField.preferredUsername:
        return viewModel.setPreferredUsername;
      case SignUpField.profile:
        return viewModel.setProfile;
      case SignUpField.zoneinfo:
        return viewModel.setZoneInfo;
      case SignUpField.updatedAt:
        return viewModel.setUpdatedAt;
      case SignUpField.website:
        return viewModel.setWebsite;
      case SignUpField.custom:
        return (String value) => viewModel.setCustom(
              widget._customAttributeKey!,
              value,
            );
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.field) {
      case SignUpField.username:
        return usernameKeyboardTypeForAlias;
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
      case SignUpField.birthdate:
      case SignUpField.updatedAt:
        return TextInputType.datetime;
      case SignUpField.website:
        return TextInputType.url;
      case SignUpField.familyName:
      case SignUpField.gender:
      case SignUpField.givenName:
      case SignUpField.locale:
      case SignUpField.middleName:
      case SignUpField.nickname:
      case SignUpField.picture:
      case SignUpField.preferredUsername:
      case SignUpField.profile:
      case SignUpField.zoneinfo:
      case SignUpField.custom:
        return TextInputType.text;
    }
  }

  @override
  Widget? get suffixIcon {
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
}
