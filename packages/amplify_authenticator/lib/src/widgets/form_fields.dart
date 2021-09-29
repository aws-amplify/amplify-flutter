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

abstract class AuthenticatorFormField extends AuthenticatorComponent {
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
        assert(
          hintTextKey != null || hintText != null,
          'Either title or titleKey must be provided',
        ),
        super(key: key);

  /// Title key for this form field
  final InputResolverKey? titleKey;

  /// Custom title for this form field
  final String? title;

  /// Hint text key for this form field
  final InputResolverKey? hintTextKey;

  /// Custom hint text for this form field
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

  /// callback meant to validate inputs of this form field.
  FormFieldValidator<String>? get validator;

  /// Whether to hide input.
  bool get obscureText;

  TextInputType get keyboardType;

  /// The initial value for the [TextFormField].
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

class SignInFormField extends AuthenticatorFormField {
  /// Requires a custom title, hint text, a type (username, password, etc)
  /// and an optional callback for input validation.
  const SignInFormField({
    Key? key,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    required this.type,
    FormFieldValidator<String>? validator,
  })  : _validatorOverride = validator,
        super(
          key: key,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
        );

  const SignInFormField.username({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyUsernameSignInFormField),
          titleKey: InputResolverKey.username_title,
          hintTextKey: InputResolverKey.username_hint,
          type: SignInType.username,
          validator: validator,
        );

  const SignInFormField.password({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPasswordSignInFormField),
          titleKey: InputResolverKey.password_title,
          hintTextKey: InputResolverKey.password_hint,
          type: SignInType.password,
          validator: validator,
        );

  const SignInFormField.email({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyEmailSignInFormField),
          titleKey: InputResolverKey.email_title,
          hintTextKey: InputResolverKey.email_hint,
          type: SignInType.email,
          validator: validator,
        );

  const SignInFormField.phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPhoneNumberSignInFormField),
          titleKey: InputResolverKey.phone_number_title,
          hintTextKey: InputResolverKey.phone_number_hint,
          type: SignInType.phone_number,
          validator: validator,
        );

  const SignInFormField.verifyUsername({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyVerificationCodeSignInFormField),
          titleKey: InputResolverKey.username_title,
          hintTextKey: InputResolverKey.username_hint,
          type: SignInType.verification_code,
          validator: validator,
        );

  const SignInFormField.newUsername({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyNewUsernameSignInFormField),
          titleKey: InputResolverKey.username_title,
          hintTextKey: InputResolverKey.username_hint,
          type: SignInType.new_username,
          validator: validator,
        );

  const SignInFormField.newPassword({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyNewPasswordSignInFormField),
          titleKey: InputResolverKey.password_title,
          hintTextKey: InputResolverKey.password_title,
          type: SignInType.new_password,
          validator: validator,
        );

  const SignInFormField.verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyVerificationCodeSignInFormField),
          titleKey: InputResolverKey.verification_code_title,
          hintTextKey: InputResolverKey.verification_code_hint,
          type: SignInType.verification_code,
          validator: validator,
        );

  final SignInType type;
  final FormFieldValidator<String>? _validatorOverride;

  @override
  State<StatefulWidget> createState() => _SignInFormFieldState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<SignInType>('type', type));
  }
}

class _SignInFormFieldState
    extends _AuthenticatorFormFieldState<SignInFormField> {
  @override
  FormFieldValidator<String>? get validator {
    if (widget._validatorOverride != null) {
      return widget._validatorOverride;
    }
    switch (widget.type) {
      case SignInType.username:
      case SignInType.new_username:
        return validateUsername(context);
      case SignInType.password:
      case SignInType.new_password:
        return validatePassword(context);
      case SignInType.email:
        return validateEmail;
      case SignInType.phone_number:
        return validatePhoneNumber;
      case SignInType.verification_code:
        return validateCode;
    }
  }

  @override
  bool get obscureText {
    switch (widget.type) {
      case SignInType.password:
      case SignInType.new_password:
        return true;
      default:
        return false;
    }
  }

  @override
  void Function(String) get callback {
    switch (widget.type) {
      case SignInType.username:
      case SignInType.email:
      case SignInType.phone_number:
        return viewModel.setUsername;
      case SignInType.password:
        return viewModel.setPassword;
      case SignInType.verification_code:
        return viewModel.setConfirmationCode;
      case SignInType.new_password:
        return viewModel.setNewPassword;
      case SignInType.new_username:
        return viewModel.setNewUsername;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.type) {
      case SignInType.username:
      case SignInType.new_username:
        return TextInputType.text;
      case SignInType.password:
      case SignInType.new_password:
        return TextInputType.visiblePassword;
      case SignInType.email:
        return TextInputType.emailAddress;
      case SignInType.phone_number:
        return TextInputType.phone;
      case SignInType.verification_code:
        return TextInputType.number;
    }
  }
}

class SignUpFormField extends AuthenticatorFormField {
  /// Requires a custom title, hint text, a type (username, password, etc)
  /// and an optional callback for input validation.
  const SignUpFormField({
    Key? key,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    required this.type,
    FormFieldValidator<String>? validator,
  })  : _validatorOverride = validator,
        super(
          key: key,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
        );

  const SignUpFormField.username({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyUsernameSignUpFormField),
          titleKey: InputResolverKey.username_title,
          hintTextKey: InputResolverKey.username_hint,
          type: SignUpType.username,
          validator: validator,
        );

  const SignUpFormField.password({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPasswordSignUpFormField),
          titleKey: InputResolverKey.password_title,
          hintTextKey: InputResolverKey.password_hint,
          type: SignUpType.password,
          validator: validator,
        );

  const SignUpFormField.passwordConfirmation({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPasswordConfirmationSignUpFormField),
          titleKey: InputResolverKey.password_confirmation_title,
          hintTextKey: InputResolverKey.password_confirmation_hint,
          type: SignUpType.passwordConfirmation,
          validator: validator,
        );

  const SignUpFormField.address({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyAddressSignUpFormField),
          titleKey: InputResolverKey.address_title,
          hintTextKey: InputResolverKey.address_hint,
          type: SignUpType.address,
          validator: validator,
        );

  const SignUpFormField.birthdate({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyBirthdateSignUpFormField),
          titleKey: InputResolverKey.birthdate_title,
          hintTextKey: InputResolverKey.birthdate_hint,
          type: SignUpType.birthdate,
          validator: validator,
        );

  const SignUpFormField.email({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyEmailSignUpFormField),
          titleKey: InputResolverKey.email_title,
          hintTextKey: InputResolverKey.email_hint,
          type: SignUpType.email,
          validator: validator,
        );

  const SignUpFormField.familyName({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyFamilyNameSignUpFormField),
          titleKey: InputResolverKey.family_name_title,
          hintTextKey: InputResolverKey.family_name_hint,
          type: SignUpType.family_name,
          validator: validator,
        );

  const SignUpFormField.gender({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyGenderSignUpFormField),
          titleKey: InputResolverKey.gender_title,
          hintTextKey: InputResolverKey.gender_hint,
          type: SignUpType.gender,
          validator: validator,
        );

  const SignUpFormField.givenName({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyGivenNameSignUpFormField),
          titleKey: InputResolverKey.given_name_title,
          hintTextKey: InputResolverKey.given_name_hint,
          type: SignUpType.given_name,
          validator: validator,
        );

  const SignUpFormField.locale({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyLocaleSignUpFormField),
          titleKey: InputResolverKey.locale_title,
          hintTextKey: InputResolverKey.locale_hint,
          type: SignUpType.locale,
          validator: validator,
        );

  const SignUpFormField.middleName({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyMiddleNameSignUpFormField),
          titleKey: InputResolverKey.middle_name_title,
          hintTextKey: InputResolverKey.middle_name_hint,
          type: SignUpType.middle_name,
          validator: validator,
        );

  const SignUpFormField.name({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyNameSignUpFormField),
          titleKey: InputResolverKey.name_title,
          hintTextKey: InputResolverKey.name_hint,
          type: SignUpType.name,
          validator: validator,
        );

  const SignUpFormField.nickname({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyNicknameSignUpFormField),
          titleKey: InputResolverKey.nickname_title,
          hintTextKey: InputResolverKey.nickname_hint,
          type: SignUpType.nickname,
          validator: validator,
        );

  const SignUpFormField.phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPhoneNumberSignUpFormField),
          titleKey: InputResolverKey.phone_number_title,
          hintTextKey: InputResolverKey.phone_number_hint,
          type: SignUpType.phone_number,
          validator: validator,
        );

  const SignUpFormField.picture({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPictureSignUpFormField),
          titleKey: InputResolverKey.picture_title,
          hintTextKey: InputResolverKey.picture_hint,
          type: SignUpType.picture,
          validator: validator,
        );

  const SignUpFormField.preferredUsername({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPreferredUsernameSignUpFormField),
          titleKey: InputResolverKey.preferred_username_title,
          hintTextKey: InputResolverKey.preferred_username_hint,
          type: SignUpType.preferredUsername,
          validator: validator,
        );

  const SignUpFormField.profile({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyProfileSignUpFormField),
          titleKey: InputResolverKey.profile_title,
          hintTextKey: InputResolverKey.profile_hint,
          type: SignUpType.profile,
          validator: validator,
        );

  const SignUpFormField.updatedAt({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyUpdatedAtSignUpFormField),
          titleKey: InputResolverKey.updated_at_title,
          hintTextKey: InputResolverKey.updated_at_hint,
          type: SignUpType.updated_at,
          validator: validator,
        );

  const SignUpFormField.website({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyWebsiteSignUpFormField),
          titleKey: InputResolverKey.website_title,
          hintTextKey: InputResolverKey.website_hint,
          type: SignUpType.website,
          validator: validator,
        );

  const SignUpFormField.zoneinfo({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyZoneinfoSignUpFormField),
          titleKey: InputResolverKey.zoneinfo_title,
          hintTextKey: InputResolverKey.zoneinfo_hint,
          type: SignUpType.zoneinfo,
          validator: validator,
        );

  const SignUpFormField.custom({
    Key? key,
    required String title,
    String? hintText,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key,
          title: title,
          hintText: hintText,
          type: SignUpType.custom, // TODO
          validator: validator,
        );

  final SignUpType type;
  final FormFieldValidator<String>? _validatorOverride;

  @override
  State<StatefulWidget> createState() => _SignUpFormFieldState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty('type', type));
  }
}

class _SignUpFormFieldState
    extends _AuthenticatorFormFieldState<SignUpFormField> {
  @override
  FormFieldValidator<String>? get validator {
    if (widget._validatorOverride != null) {
      return widget._validatorOverride;
    }
    switch (widget.type) {
      case SignUpType.username:
        return validateUsername(context);
      case SignUpType.password:
        return validatePassword(context);
      case SignUpType.email:
        return validateEmail;
      case SignUpType.phone_number:
        return validatePhoneNumber;
      default:
        return null;
    }
  }

  @override
  bool get obscureText {
    switch (widget.type) {
      case SignUpType.password:
        return true;
      default:
        return false;
    }
  }

  @override
  void Function(String) get callback {
    switch (widget.type) {
      case SignUpType.username:
        return viewModel.setUsername;
      case SignUpType.password:
        return viewModel.setPassword;
      case SignUpType.passwordConfirmation:
        return viewModel.setPasswordConfirmation;
      case SignUpType.address:
        return viewModel.setAddress;
      case SignUpType.birthdate:
        return viewModel.setBirthdate;
      case SignUpType.email:
        return viewModel.setEmail;
      case SignUpType.family_name:
        return viewModel.setFamilyName;
      case SignUpType.gender:
        return viewModel.setGender;
      case SignUpType.given_name:
        return viewModel.setGivenName;
      case SignUpType.locale:
        return viewModel.setLocale;
      case SignUpType.middle_name:
        return viewModel.setMiddleName;
      case SignUpType.name:
        return viewModel.setName;
      case SignUpType.nickname:
        return viewModel.setNickname;
      case SignUpType.phone_number:
        return viewModel.setPhoneNumber;
      case SignUpType.picture:
        return viewModel.setPicture;
      case SignUpType.preferredUsername:
        return viewModel.setPreferredUsername;
      case SignUpType.profile:
        return viewModel.setProfile;
      case SignUpType.zoneinfo:
        return viewModel.setZoneInfo;
      case SignUpType.updated_at:
        return viewModel.setUpdatedAt;
      case SignUpType.website:
        return viewModel.setWebsite;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.type) {
      case SignUpType.username:
        return TextInputType.text;
      case SignUpType.password:
      case SignUpType.passwordConfirmation:
        return TextInputType.visiblePassword;
      case SignUpType.address:
        return TextInputType.streetAddress;
      case SignUpType.email:
        return TextInputType.emailAddress;
      case SignUpType.name:
        return TextInputType.name;
      case SignUpType.phone_number:
        return TextInputType.phone;
      case SignUpType.birthdate:
      case SignUpType.updated_at:
        return TextInputType.datetime;
      case SignUpType.website:
        return TextInputType.url;
      case SignUpType.family_name:
      case SignUpType.gender:
      case SignUpType.given_name:
      case SignUpType.locale:
      case SignUpType.middle_name:
      case SignUpType.nickname:
      case SignUpType.picture:
      case SignUpType.preferredUsername:
      case SignUpType.profile:
      case SignUpType.zoneinfo:
        return TextInputType.text;
    }
  }
}

class ConfirmSignUpFormField extends AuthenticatorFormField {
  /// Requires a custom title, hint text, a type (username, password, etc)
  /// and an optional callback for input validation.
  ///
  /// It's good to mention that this form field might not be exposed
  /// to the consumer due to the fact that the authenticator may only
  /// support three custom forms, sign in, sign up and confirm sign in.
  const ConfirmSignUpFormField({
    Key? key,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    required this.type,
    FormFieldValidator<String>? validator,
  })  : _validatorOverride = validator,
        super(
          key: key,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
        );

  const ConfirmSignUpFormField.username({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key,
          titleKey: InputResolverKey.username_title,
          hintTextKey: InputResolverKey.username_hint,
          type: ConfirmSignUpType.username,
          validator: validator,
        );

  const ConfirmSignUpFormField.password({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPasswordConfirmSignUpFormfield),
          titleKey: InputResolverKey.password_title,
          hintTextKey: InputResolverKey.password_hint,
          type: ConfirmSignUpType.password,
          validator: validator,
        );

  const ConfirmSignUpFormField.email({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyEmailConfirmSignUpFormfield),
          titleKey: InputResolverKey.email_title,
          hintTextKey: InputResolverKey.email_hint,
          type: ConfirmSignUpType.email,
          validator: validator,
        );

  const ConfirmSignUpFormField.phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyPhoneNumberConfirmSignUpFormfield),
          titleKey: InputResolverKey.phone_number_title,
          hintTextKey: InputResolverKey.phone_number_hint,
          type: ConfirmSignUpType.phone_number,
          validator: validator,
        );

  const ConfirmSignUpFormField.verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyCodeConfirmSignUpFormfield),
          titleKey: InputResolverKey.verification_code_title,
          hintTextKey: InputResolverKey.verification_code_hint,
          type: ConfirmSignUpType.code,
          validator: validator,
        );

  final ConfirmSignUpType type;
  final FormFieldValidator<String>? _validatorOverride;

  @override
  State<StatefulWidget> createState() => _ConfirmSignUpFormFieldState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<ConfirmSignUpType>('type', type));
  }
}

class _ConfirmSignUpFormFieldState
    extends _AuthenticatorFormFieldState<ConfirmSignUpFormField> {
  @override
  FormFieldValidator<String>? get validator {
    if (widget._validatorOverride != null) {
      return widget._validatorOverride;
    }
    switch (widget.type) {
      case ConfirmSignUpType.username:
        return validateUsername(context);
      case ConfirmSignUpType.password:
        return validatePassword(context);
      case ConfirmSignUpType.email:
        return validateEmail;
      case ConfirmSignUpType.phone_number:
        return validatePhoneNumber;
      case ConfirmSignUpType.code:
        return validateCode;
    }
  }

  @override
  bool get obscureText {
    switch (widget.type) {
      case ConfirmSignUpType.password:
        return true;
      default:
        return false;
    }
  }

  @override
  void Function(String) get callback {
    switch (widget.type) {
      case ConfirmSignUpType.username:
        return viewModel.setUsername;
      case ConfirmSignUpType.password:
        return viewModel.setPassword;
      case ConfirmSignUpType.email:
        return viewModel.setEmail;
      case ConfirmSignUpType.phone_number:
        return viewModel.setPhoneNumber;
      case ConfirmSignUpType.code:
        return viewModel.setConfirmationCode;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.type) {
      case ConfirmSignUpType.username:
        return TextInputType.text;
      case ConfirmSignUpType.password:
        return TextInputType.visiblePassword;
      case ConfirmSignUpType.email:
        return TextInputType.emailAddress;
      case ConfirmSignUpType.phone_number:
        return TextInputType.phone;
      case ConfirmSignUpType.code:
        return TextInputType.number;
    }
  }

  @override
  bool get enabled {
    switch (widget.type) {
      case ConfirmSignUpType.code:
        return true;
      // TODO: password?
      default:
        return false;
    }
  }

  @override
  String? get initialValue {
    switch (widget.type) {
      case ConfirmSignUpType.username:
      case ConfirmSignUpType.email:
      case ConfirmSignUpType.phone_number:
        return viewModel.username;
      default:
        return null;
    }
  }
}

class ConfirmSignInFormField extends AuthenticatorFormField {
  /// Requires a custom title, hint text, a type (code, password, etc)
  /// and an optional callback for input validation.
  const ConfirmSignInFormField({
    Key? key,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    required this.type,
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
          titleKey: InputResolverKey.password_title,
          hintTextKey: InputResolverKey.password_title,
          type: ConfirmSignInType.password,
          validator: validator,
        );

  const ConfirmSignInFormField.verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this(
          key: key ?? const Key(keyCodeConfirmSignInFormfield),
          titleKey: InputResolverKey.verification_code_title,
          hintTextKey: InputResolverKey.verification_code_hint,
          type: ConfirmSignInType.code,
          validator: validator,
        );

  final ConfirmSignInType type;
  final FormFieldValidator<String>? _validatorOverride;

  @override
  State<StatefulWidget> createState() => _ConfirmSignInFormFieldState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<ConfirmSignInType>('type', type));
  }
}

class _ConfirmSignInFormFieldState
    extends _AuthenticatorFormFieldState<ConfirmSignInFormField> {
  @override
  FormFieldValidator<String>? get validator {
    if (widget._validatorOverride != null) {
      return widget._validatorOverride;
    }
    switch (widget.type) {
      case ConfirmSignInType.code:
        return validateCode;
      case ConfirmSignInType.password:
        return validatePassword(context);
      case ConfirmSignInType.email:
        return validateEmail;
      case ConfirmSignInType.phone_number:
        return validatePhoneNumber;
      default:
        return null;
    }
  }

  @override
  bool get obscureText {
    switch (widget.type) {
      case ConfirmSignInType.password:
        return true;
      default:
        return false;
    }
  }

  @override
  void Function(String) get callback {
    switch (widget.type) {
      case ConfirmSignInType.code:
        return viewModel.setConfirmationCode;
      case ConfirmSignInType.password:
        return viewModel.setPassword;
      case ConfirmSignInType.address:
        return viewModel.setAddress;
      case ConfirmSignInType.birthdate:
        return viewModel.setBirthdate;
      case ConfirmSignInType.email:
        return viewModel.setEmail;
      case ConfirmSignInType.family_name:
        return viewModel.setFamilyName;
      case ConfirmSignInType.gender:
        return viewModel.setGender;
      case ConfirmSignInType.given_name:
        return viewModel.setGivenName;
      case ConfirmSignInType.locale:
        return viewModel.setLocale;
      case ConfirmSignInType.middle_name:
        return viewModel.setMiddleName;
      case ConfirmSignInType.name:
        return viewModel.setName;
      case ConfirmSignInType.nickname:
        return viewModel.setNickname;
      case ConfirmSignInType.phone_number:
        return viewModel.setPhoneNumber;
      case ConfirmSignInType.picture:
        return viewModel.setPicture;
      case ConfirmSignInType.preferredUsername:
        return viewModel.setPreferredUsername;
      case ConfirmSignInType.profile:
        return viewModel.setProfile;
      case ConfirmSignInType.zoneinfo:
        return viewModel.setZoneInfo;
      case ConfirmSignInType.updated_at:
        return viewModel.setUpdatedAt;
      case ConfirmSignInType.website:
        return viewModel.setWebsite;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.type) {
      case ConfirmSignInType.code:
        return TextInputType.number;
      case ConfirmSignInType.address:
        return TextInputType.streetAddress;
      case ConfirmSignInType.email:
        return TextInputType.emailAddress;
      case ConfirmSignInType.name:
        return TextInputType.name;
      case ConfirmSignInType.password:
        return TextInputType.visiblePassword;
      case ConfirmSignInType.phone_number:
        return TextInputType.phone;
      case ConfirmSignInType.website:
        return TextInputType.url;
      case ConfirmSignInType.birthdate:
      case ConfirmSignInType.updated_at:
        return TextInputType.datetime;
      case ConfirmSignInType.family_name:
      case ConfirmSignInType.gender:
      case ConfirmSignInType.given_name:
      case ConfirmSignInType.locale:
      case ConfirmSignInType.middle_name:
      case ConfirmSignInType.nickname:
      case ConfirmSignInType.picture:
      case ConfirmSignInType.preferredUsername:
      case ConfirmSignInType.profile:
      case ConfirmSignInType.zoneinfo:
        return TextInputType.text;
    }
  }
}
