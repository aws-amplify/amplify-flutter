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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/enums/confirm_signin_types.dart';
import 'package:amplify_authenticator/src/enums/confirm_signup_types.dart';
import 'package:amplify_authenticator/src/enums/signin_types.dart';
import 'package:amplify_authenticator/src/enums/signup_types.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/utils/validators.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// {@template authenticator.authenticator_form_field}
/// Base class for form field components.
///
/// See also:
/// - [SignInFormField]
/// - [SignUpFormField]
/// - [ConfirmSignInFormField]
/// - [ConfirmSignUpFormField]
/// {@endtemplate}
abstract class AuthenticatorFormField extends AuthenticatorComponent {
  /// {@macro authenticator.authenticator_form_field}
  const AuthenticatorFormField({
    Key? key,
    this.titleKey,
    this.hintTextKey,
    this.title,
    this.hintText,
  })  : assert(
          titleKey != null || title != null,
          'Either title or titleKey must be provided',
        ),
        super(key: key);

  /// Resolver key for the title
  final InputResolverKey? titleKey;

  /// Custom title
  final String? title;

  /// Resolver key for the hint text
  final InputResolverKey? hintTextKey;

  /// Custom hint text
  final String? hintText;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty('titleKey', titleKey));
    properties.add(EnumProperty('hintTextKey', hintTextKey));
    properties.add(StringProperty('title', title));
    properties.add(StringProperty('hintText', hintText));
  }
}

abstract class _AuthenticatorFormFieldState<T extends AuthenticatorFormField>
    extends AuthenticatorComponentState<T> {
  static const disabledColor = Color.fromRGBO(130, 130, 130, 1);

  /// Callback for when `onChanged` is triggered on the [FormField].
  void Function(String) get callback;

  /// Validates inputs of this form field.
  FormFieldValidator<String>? get validator;

  /// Whether to hide input.
  bool get obscureText;

  /// The keyboard type to use when this field is focused.
  TextInputType get keyboardType;

  /// The initial value to show in the field.
  String? get initialValue => null;

  /// Whether the form field accepts input.
  bool get enabled => true;

  @override
  Widget build(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    return FormFieldContainer(
      // resendCodeButton: _resetPasswordButton,
      keyboardType: keyboardType,
      callback: callback,
      hintText: widget.hintText == null
          ? inputResolver.resolve(context, widget.hintTextKey!)
          : widget.hintText!,
      title: widget.title == null
          ? inputResolver.resolve(context, widget.titleKey!)
          : widget.title!,
      validator: validator,
      obscureText: obscureText,
      enabled: enabled,
      color: enabled ? null : disabledColor,
      initialValue: initialValue,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        ObjectFlagProperty<void Function(String)>.has('callback', callback));
    properties.add(ObjectFlagProperty<FormFieldValidator<String>?>.has(
        'validator', validator));
    properties.add(StringProperty('initialValue', initialValue));
    properties.add(DiagnosticsProperty<bool>('obscureText', obscureText));
    properties.add(DiagnosticsProperty<bool?>('enabled', enabled));
    properties
        .add(DiagnosticsProperty<TextInputType>('keyboardType', keyboardType));
  }
}

/// {@template authenticator.sign_in_form_field}
/// A form field component on the Sign In screen.
/// {@endtemplate}
class SignInFormField extends AuthenticatorFormField {
  /// {@macro authenticator.sign_in_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const SignInFormField({
    Key? key,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    required this.field,
    FormFieldValidator<String>? validator,
  })  : _validatorOverride = validator,
        super(
          key: key,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
        );

  /// Creates a username component.
  const SignInFormField.username({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyUsernameSignInFormField),
          titleKey: InputResolverKey.usernameTitle,
          hintTextKey: InputResolverKey.usernameHint,
          field: SignInField.username,
          validator: validator,
        );

  /// Creates a password component.
  const SignInFormField.password({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPasswordSignInFormField),
          titleKey: InputResolverKey.passwordTitle,
          hintTextKey: InputResolverKey.passwordHint,
          field: SignInField.password,
          validator: validator,
        );

  /// Creates an email component.
  const SignInFormField.email({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyEmailSignInFormField),
          titleKey: InputResolverKey.emailTitle,
          hintTextKey: InputResolverKey.emailHint,
          field: SignInField.email,
          validator: validator,
        );

  /// Creates a phoneNumber component.
  const SignInFormField.phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPhoneNumberSignInFormField),
          titleKey: InputResolverKey.phoneNumberTitle,
          hintTextKey: InputResolverKey.phoneNumberHint,
          field: SignInField.phoneNumber,
          validator: validator,
        );

  /// Creates a verifyUsername component.
  const SignInFormField.verifyUsername({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyVerificationCodeSignInFormField),
          titleKey: InputResolverKey.usernameTitle,
          hintTextKey: InputResolverKey.usernameHint,
          field: SignInField.verificationCode,
          validator: validator,
        );

  /// Creates a newUsername component.
  const SignInFormField.newUsername({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyNewUsernameSignInFormField),
          titleKey: InputResolverKey.usernameTitle,
          hintTextKey: InputResolverKey.usernameHint,
          field: SignInField.newUsername,
          validator: validator,
        );

  /// Creates a newPassword component.
  const SignInFormField.newPassword({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyNewPasswordSignInFormField),
          titleKey: InputResolverKey.passwordTitle,
          hintTextKey: InputResolverKey.passwordTitle,
          field: SignInField.newPassword,
          validator: validator,
        );

  /// Creates a verificationCode component.
  const SignInFormField.verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyVerificationCodeSignInFormField),
          titleKey: InputResolverKey.verificationCodeTitle,
          hintTextKey: InputResolverKey.verificationCodeHint,
          field: SignInField.verificationCode,
          validator: validator,
        );

  /// The field this form field controls.
  final SignInField field;

  final FormFieldValidator<String>? _validatorOverride;

  @override
  State<StatefulWidget> createState() => _SignInFormFieldState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<SignInField>('field', field));
  }
}

class _SignInFormFieldState
    extends _AuthenticatorFormFieldState<SignInFormField> {
  @override
  FormFieldValidator<String>? get validator {
    if (widget._validatorOverride != null) {
      return widget._validatorOverride;
    }
    switch (widget.field) {
      case SignInField.username:
      case SignInField.newUsername:
        return validateUsername(context);
      case SignInField.password:
      case SignInField.newPassword:
        return validatePassword(context);
      case SignInField.email:
        return validateEmail;
      case SignInField.phoneNumber:
        return validatePhoneNumber;
      case SignInField.verificationCode:
        return validateCode;
    }
  }

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
  void Function(String) get callback {
    switch (widget.field) {
      case SignInField.username:
      case SignInField.email:
      case SignInField.phoneNumber:
        return viewModel.setUsername;
      case SignInField.password:
        return viewModel.setPassword;
      case SignInField.verificationCode:
        return viewModel.setConfirmationCode;
      case SignInField.newPassword:
        return viewModel.setNewPassword;
      case SignInField.newUsername:
        return viewModel.setNewUsername;
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
}

/// {@template authenticator.sign_up_form_field}
/// A form field component on the Sign Up screen.
/// {@endtemplate}
///   /// Creates a extends component.
class SignUpFormField extends AuthenticatorFormField {
  /// {@macro authenticator.sign_up_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const SignUpFormField({
    Key? key,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    required this.field,
    FormFieldValidator<String>? validator,
    String? customAttributeKey,
  })  : _customAttribute = customAttributeKey,
        _validatorOverride = validator,
        super(
          key: key,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
        );

  /// Creates a username component.
  const SignUpFormField.username({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyUsernameSignUpFormField),
          titleKey: InputResolverKey.usernameTitle,
          hintTextKey: InputResolverKey.usernameHint,
          field: SignUpField.username,
          validator: validator,
        );

  /// Creates a password component.
  const SignUpFormField.password({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPasswordSignUpFormField),
          titleKey: InputResolverKey.passwordTitle,
          hintTextKey: InputResolverKey.passwordHint,
          field: SignUpField.password,
          validator: validator,
        );

  /// Creates a passwordConfirmation component.
  const SignUpFormField.passwordConfirmation({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPasswordConfirmationSignUpFormField),
          titleKey: InputResolverKey.passwordConfirmationTitle,
          hintTextKey: InputResolverKey.passwordConfirmationHint,
          field: SignUpField.passwordConfirmation,
          validator: validator,
        );

  /// Creates an address component.
  const SignUpFormField.address({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyAddressSignUpFormField),
          titleKey: InputResolverKey.addressTitle,
          hintTextKey: InputResolverKey.addressHint,
          field: SignUpField.address,
          validator: validator,
        );

  /// Creates a birthdate component.
  const SignUpFormField.birthdate({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyBirthdateSignUpFormField),
          titleKey: InputResolverKey.birthdateTitle,
          hintTextKey: InputResolverKey.birthdateHint,
          field: SignUpField.birthdate,
          validator: validator,
        );

  /// Creates a nemail component.
  const SignUpFormField.email({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyEmailSignUpFormField),
          titleKey: InputResolverKey.emailTitle,
          hintTextKey: InputResolverKey.emailHint,
          field: SignUpField.email,
          validator: validator,
        );

  /// Creates a familyName component.
  const SignUpFormField.familyName({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyFamilyNameSignUpFormField),
          titleKey: InputResolverKey.familyNameTitle,
          hintTextKey: InputResolverKey.familyNameHint,
          field: SignUpField.familyName,
          validator: validator,
        );

  /// Creates a gender component.
  const SignUpFormField.gender({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyGenderSignUpFormField),
          titleKey: InputResolverKey.genderTitle,
          hintTextKey: InputResolverKey.genderHint,
          field: SignUpField.gender,
          validator: validator,
        );

  /// Creates a givenName component.
  const SignUpFormField.givenName({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyGivenNameSignUpFormField),
          titleKey: InputResolverKey.givenNameTitle,
          hintTextKey: InputResolverKey.givenNameHint,
          field: SignUpField.givenName,
          validator: validator,
        );

  /// Creates a locale component.
  const SignUpFormField.locale({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyLocaleSignUpFormField),
          titleKey: InputResolverKey.localeTitle,
          hintTextKey: InputResolverKey.localeHint,
          field: SignUpField.locale,
          validator: validator,
        );

  /// Creates a middleName component.
  const SignUpFormField.middleName({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyMiddleNameSignUpFormField),
          titleKey: InputResolverKey.middleNameTitle,
          hintTextKey: InputResolverKey.middleNameHint,
          field: SignUpField.middleName,
          validator: validator,
        );

  /// Creates a name component.
  const SignUpFormField.name({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyNameSignUpFormField),
          titleKey: InputResolverKey.nameTitle,
          hintTextKey: InputResolverKey.nameHint,
          field: SignUpField.name,
          validator: validator,
        );

  /// Creates a nickname component.
  const SignUpFormField.nickname({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyNicknameSignUpFormField),
          titleKey: InputResolverKey.nicknameTitle,
          hintTextKey: InputResolverKey.nicknameHint,
          field: SignUpField.nickname,
          validator: validator,
        );

  /// Creates a phoneNumber component.
  const SignUpFormField.phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPhoneNumberSignUpFormField),
          titleKey: InputResolverKey.phoneNumberTitle,
          hintTextKey: InputResolverKey.phoneNumberHint,
          field: SignUpField.phoneNumber,
          validator: validator,
        );

  /// Creates a picture component.
  const SignUpFormField.picture({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPictureSignUpFormField),
          titleKey: InputResolverKey.pictureTitle,
          hintTextKey: InputResolverKey.pictureHint,
          field: SignUpField.picture,
          validator: validator,
        );

  /// Creates a preferredUsername component.
  const SignUpFormField.preferredUsername({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPreferredUsernameSignUpFormField),
          titleKey: InputResolverKey.preferredUsernameTitle,
          hintTextKey: InputResolverKey.preferredUsernameHint,
          field: SignUpField.preferredUsername,
          validator: validator,
        );

  /// Creates a profile component.
  const SignUpFormField.profile({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyProfileSignUpFormField),
          titleKey: InputResolverKey.profileTitle,
          hintTextKey: InputResolverKey.profileHint,
          field: SignUpField.profile,
          validator: validator,
        );

  /// Creates an updatedAt component.
  const SignUpFormField.updatedAt({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyUpdatedAtSignUpFormField),
          titleKey: InputResolverKey.updatedAtTitle,
          hintTextKey: InputResolverKey.updatedAtHint,
          field: SignUpField.updatedAt,
          validator: validator,
        );

  /// Creates a website component.
  const SignUpFormField.website({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyWebsiteSignUpFormField),
          titleKey: InputResolverKey.websiteTitle,
          hintTextKey: InputResolverKey.websiteHint,
          field: SignUpField.website,
          validator: validator,
        );

  /// Creates a zoneinfo component.
  const SignUpFormField.zoneinfo({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyZoneinfoSignUpFormField),
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
  }) : this(
          key: key,
          title: title,
          hintText: hintText,
          field: SignUpField.custom,
          validator: validator,
          customAttributeKey: attributeKey,
        );

  /// The field this form field controls.
  final SignUpField field;

  final FormFieldValidator<String>? _validatorOverride;

  final String? _customAttribute;

  @override
  State<StatefulWidget> createState() => _SignUpFormFieldState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty('field', field));
  }
}

class _SignUpFormFieldState
    extends _AuthenticatorFormFieldState<SignUpFormField> {
  @override
  FormFieldValidator<String>? get validator {
    if (widget._validatorOverride != null) {
      return widget._validatorOverride;
    }
    switch (widget.field) {
      case SignUpField.username:
        return validateUsername(context);
      case SignUpField.password:
        return validatePassword(context);
      case SignUpField.email:
        return validateEmail;
      case SignUpField.phoneNumber:
        return validatePhoneNumber;
      default:
        return null;
    }
  }

  @override
  bool get obscureText {
    switch (widget.field) {
      case SignUpField.password:
        return true;
      default:
        return false;
    }
  }

  @override
  void Function(String) get callback {
    switch (widget.field) {
      case SignUpField.username:
        return viewModel.setUsername;
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
              value,
              widget._customAttribute!,
            );
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.field) {
      case SignUpField.username:
        return TextInputType.text;
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
}

/// {@template authenticator.confirm_sign_up_form_field}
/// A form field component on the Confirm Sign Up screen.
/// {@endtemplate}
class ConfirmSignUpFormField extends AuthenticatorFormField {
  /// {@macro authenticator.confirm_sign_up_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const ConfirmSignUpFormField({
    Key? key,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    required this.field,
    FormFieldValidator<String>? validator,
  })  : _validatorOverride = validator,
        super(
          key: key,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
        );

  /// Creates a username component.
  const ConfirmSignUpFormField.username({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key,
          titleKey: InputResolverKey.usernameTitle,
          hintTextKey: InputResolverKey.usernameHint,
          field: ConfirmSignUpField.username,
          validator: validator,
        );

  /// Creates a password component.
  const ConfirmSignUpFormField.password({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPasswordConfirmSignUpFormfield),
          titleKey: InputResolverKey.passwordTitle,
          hintTextKey: InputResolverKey.passwordHint,
          field: ConfirmSignUpField.password,
          validator: validator,
        );

  /// Creates an email component.
  const ConfirmSignUpFormField.email({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyEmailConfirmSignUpFormfield),
          titleKey: InputResolverKey.emailTitle,
          hintTextKey: InputResolverKey.emailHint,
          field: ConfirmSignUpField.email,
          validator: validator,
        );

  /// Creates a phoneNumber component.
  const ConfirmSignUpFormField.phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPhoneNumberConfirmSignUpFormfield),
          titleKey: InputResolverKey.phoneNumberTitle,
          hintTextKey: InputResolverKey.phoneNumberHint,
          field: ConfirmSignUpField.phone_number,
          validator: validator,
        );

  /// Creates a verificationCode component.
  const ConfirmSignUpFormField.verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyCodeConfirmSignUpFormfield),
          titleKey: InputResolverKey.verificationCodeTitle,
          hintTextKey: InputResolverKey.verificationCodeHint,
          field: ConfirmSignUpField.code,
          validator: validator,
        );

  /// The field this form field controls.
  final ConfirmSignUpField field;
  final FormFieldValidator<String>? _validatorOverride;

  @override

  /// Creates a _ConfirmSignUpFormFieldState component.
  State<StatefulWidget> createState() => _ConfirmSignUpFormFieldState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<ConfirmSignUpField>('field', field));
  }
}

class _ConfirmSignUpFormFieldState
    extends _AuthenticatorFormFieldState<ConfirmSignUpFormField> {
  @override
  FormFieldValidator<String>? get validator {
    if (widget._validatorOverride != null) {
      return widget._validatorOverride;
    }
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return validateUsername(context);
      case ConfirmSignUpField.password:
        return validatePassword(context);
      case ConfirmSignUpField.email:
        return validateEmail;
      case ConfirmSignUpField.phone_number:
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
  void Function(String) get callback {
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return viewModel.setUsername;
      case ConfirmSignUpField.password:
        return viewModel.setPassword;
      case ConfirmSignUpField.email:
        return viewModel.setEmail;
      case ConfirmSignUpField.phone_number:
        return viewModel.setPhoneNumber;
      case ConfirmSignUpField.code:
        return viewModel.setConfirmationCode;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return TextInputType.text;
      case ConfirmSignUpField.password:
        return TextInputType.visiblePassword;
      case ConfirmSignUpField.email:
        return TextInputType.emailAddress;
      case ConfirmSignUpField.phone_number:
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
  String? get initialValue {
    switch (widget.field) {
      case ConfirmSignUpField.username:
      case ConfirmSignUpField.email:
      case ConfirmSignUpField.phone_number:
        return viewModel.username;
      default:
        return null;
    }
  }
}

/// {@template authenticator.confirm_sign_in_form_field}
/// A form field component on the Confirm Sign In screens.
/// {@endtemplate}
class ConfirmSignInFormField extends AuthenticatorFormField {
  /// {@macro authenticator.confirm_sign_in_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const ConfirmSignInFormField({
    Key? key,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    required this.field,
    FormFieldValidator<String>? validator,
  })  : _validatorOverride = validator,
        super(
          key: key,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
        );

  const ConfirmSignInFormField.password({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPasswordConfirmSignInFormField),
          titleKey: InputResolverKey.passwordTitle,
          hintTextKey: InputResolverKey.passwordTitle,
          field: ConfirmSignInField.password,
          validator: validator,
        );

  const ConfirmSignInFormField.verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyCodeConfirmSignInFormfield),
          titleKey: InputResolverKey.verificationCodeTitle,
          hintTextKey: InputResolverKey.verificationCodeHint,
          field: ConfirmSignInField.code,
          validator: validator,
        );

  final ConfirmSignInField field;
  final FormFieldValidator<String>? _validatorOverride;

  @override
  State<StatefulWidget> createState() => _ConfirmSignInFormFieldState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<ConfirmSignInField>('field', field));
  }
}

class _ConfirmSignInFormFieldState
    extends _AuthenticatorFormFieldState<ConfirmSignInFormField> {
  @override
  FormFieldValidator<String>? get validator {
    if (widget._validatorOverride != null) {
      return widget._validatorOverride;
    }
    switch (widget.field) {
      case ConfirmSignInField.code:
        return validateCode;
      case ConfirmSignInField.password:
        return validatePassword(context);
      case ConfirmSignInField.email:
        return validateEmail;
      case ConfirmSignInField.phoneNumber:
        return validatePhoneNumber;
      default:
        return null;
    }
  }

  @override
  bool get obscureText {
    switch (widget.field) {
      case ConfirmSignInField.password:
        return true;
      default:
        return false;
    }
  }

  @override
  void Function(String) get callback {
    switch (widget.field) {
      case ConfirmSignInField.code:
        return viewModel.setConfirmationCode;
      case ConfirmSignInField.password:
        return viewModel.setPassword;
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
      case ConfirmSignInField.locale:
        return viewModel.setLocale;
      case ConfirmSignInField.middleName:
        return viewModel.setMiddleName;
      case ConfirmSignInField.name:
        return viewModel.setName;
      case ConfirmSignInField.nickname:
        return viewModel.setNickname;
      case ConfirmSignInField.phoneNumber:
        return viewModel.setPhoneNumber;
      case ConfirmSignInField.picture:
        return viewModel.setPicture;
      case ConfirmSignInField.preferredUsername:
        return viewModel.setPreferredUsername;
      case ConfirmSignInField.profile:
        return viewModel.setProfile;
      case ConfirmSignInField.zoneinfo:
        return viewModel.setZoneInfo;
      case ConfirmSignInField.updatedAt:
        return viewModel.setUpdatedAt;
      case ConfirmSignInField.website:
        return viewModel.setWebsite;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.field) {
      case ConfirmSignInField.code:
        return TextInputType.number;
      case ConfirmSignInField.address:
        return TextInputType.streetAddress;
      case ConfirmSignInField.email:
        return TextInputType.emailAddress;
      case ConfirmSignInField.name:
        return TextInputType.name;
      case ConfirmSignInField.password:
        return TextInputType.visiblePassword;
      case ConfirmSignInField.phoneNumber:
        return TextInputType.phone;
      case ConfirmSignInField.website:
        return TextInputType.url;
      case ConfirmSignInField.birthdate:
      case ConfirmSignInField.updatedAt:
        return TextInputType.datetime;
      case ConfirmSignInField.familyName:
      case ConfirmSignInField.gender:
      case ConfirmSignInField.givenName:
      case ConfirmSignInField.locale:
      case ConfirmSignInField.middleName:
      case ConfirmSignInField.nickname:
      case ConfirmSignInField.picture:
      case ConfirmSignInField.preferredUsername:
      case ConfirmSignInField.profile:
      case ConfirmSignInField.zoneinfo:
        return TextInputType.text;
    }
  }
}
