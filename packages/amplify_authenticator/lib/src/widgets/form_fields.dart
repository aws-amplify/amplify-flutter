import 'package:amplify_authenticator/src/enums/confirm_signin_types.dart';
import 'package:amplify_authenticator/src/enums/confirm_signup_types.dart';
import 'package:amplify_authenticator/src/enums/signin_types.dart';
import 'package:amplify_authenticator/src/enums/signup_types.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/utils/validators.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class AuthenticatorFormField extends AuthenticatorComponent {
  const AuthenticatorFormField({
    Key? key,
    required this.title,
    this.hintText,
  }) : super(key: key);

  const factory AuthenticatorFormField.signIn({
    required SignInType type,
    required String title,
    required String hintText,
  }) = SignInFormField;

  const factory AuthenticatorFormField.signUp({
    required SignUpType type,
    required String title,
    required String hintText,
  }) = SignUpFormField;

  const factory AuthenticatorFormField.confirmSignIn({
    required ConfirmSignInType type,
    required String title,
    required String hintText,
  }) = ConfirmSignInFormField;

  const factory AuthenticatorFormField.confirmSignUp({
    required ConfirmSignUpType type,
    required String title,
    required String hintText,
  }) = ConfirmSignUpFormField;

  /// Custom title for this form field
  final String title;

  /// Custom hint text for this form field
  final String? hintText;

  /// callback meant to validate inputs of this form field.
  FormFieldValidator<String>? get validator;

  /// Whether to hide input.
  bool get obscureText;

  /// Callback for when `onChanged` is triggered on the [FormField].
  void Function(String) callback(AuthViewModel viewModel);

  TextInputType get keyboardType;

  @override
  Key get key;

  bool? get enable => null;

  Color? get color => null;

  String? initialValue(AuthViewModel viewModel) => null;

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel) {
    return FormFieldContainer(
      // resendCodeButton: _resetPasswordButton,
      key: key,
      keyboardType: keyboardType,
      callback: callback(viewModel),
      hintText: hintText,
      title: title,
      validator: validator,
      obscureText: obscureText,
      enable: enable,
      color: color,
      initialValue: initialValue(viewModel),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<FormFieldValidator<String>>.has(
        'validator', validator));
    properties.add(DiagnosticsProperty<bool>('obscureText', obscureText));
    properties.add(DiagnosticsProperty<bool?>('enable', enable));
    properties.add(StringProperty('hintText', hintText));
    properties.add(StringProperty('title', title));
    properties
        .add(DiagnosticsProperty<TextInputType>('keyboardType', keyboardType));
    properties.add(ColorProperty('color', color));
  }
}

class SignInFormField extends AuthenticatorFormField {
  /// Requires a custom title, hint text, a type (username, password, etc)
  /// and an optional callback for input validation.
  const SignInFormField({
    Key? key,
    required String title,
    required String hintText,
    required this.type,
    FormFieldValidator<String>? validator,
  })  : _validatorOverride = validator,
        super(
          key: key,
          title: title,
          hintText: hintText,
        );

  final SignInType type;

  final FormFieldValidator<String>? _validatorOverride;

  @override
  FormFieldValidator<String>? get validator {
    if (_validatorOverride != null) {
      return _validatorOverride;
    }
    switch (type) {
      case SignInType.username:
      case SignInType.new_username:
        return validateUsername;
      case SignInType.password:
      case SignInType.new_password:
        return validatePassword;
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
    switch (type) {
      case SignInType.password:
      case SignInType.new_password:
        return true;
      default:
        return false;
    }
  }

  @override
  void Function(String) callback(AuthViewModel viewModel) {
    switch (type) {
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
    switch (type) {
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

  @override
  Key get key {
    switch (type) {
      case SignInType.username:
        return const Key(keyUsernameSignInFormField);
      case SignInType.password:
        return const Key(keyEmailSignInFormField);
      case SignInType.email:
        return const Key(keyPhoneNumberSignInFormField);
      case SignInType.phone_number:
        return const Key(keyPasswordSignInFormField);
      case SignInType.verification_code:
        return const Key(keyVerificationCodeSignInFormField);
      case SignInType.new_password:
        return const Key(keyNewPasswordSignInFormField);
      case SignInType.new_username:
        return const Key(keyNewUsernameSignInFormField);
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
    properties.add(StringProperty('hintText', hintText));
    properties.add(EnumProperty('type', type));
    properties.add(ObjectFlagProperty<FormFieldValidator<String>>.has(
        'validator', validator));
  }
}

class SignUpFormField extends AuthenticatorFormField {
  /// Requires a custom title, hint text, a type (username, password, etc)
  /// and an optional callback for input validation.
  const SignUpFormField({
    Key? key,
    required String title,
    required String hintText,
    required this.type,
    FormFieldValidator<String>? validator,
  })  : _validatorOverride = validator,
        super(
          key: key,
          title: title,
          hintText: hintText,
        );

  final SignUpType type;

  final FormFieldValidator<String>? _validatorOverride;

  @override
  FormFieldValidator<String>? get validator {
    if (_validatorOverride != null) {
      return _validatorOverride;
    }
    switch (type) {
      case SignUpType.username:
        return validateUsername;
      case SignUpType.password:
        return validatePassword;
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
    switch (type) {
      case SignUpType.password:
        return true;
      default:
        return false;
    }
  }

  @override
  void Function(String) callback(AuthViewModel viewModel) {
    switch (type) {
      case SignUpType.username:
        return viewModel.setUsername;
      case SignUpType.password:
        return viewModel.setPassword;
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
    switch (type) {
      case SignUpType.address:
        return TextInputType.streetAddress;
      case SignUpType.email:
        return TextInputType.emailAddress;
      case SignUpType.name:
        return TextInputType.name;
      case SignUpType.password:
        return TextInputType.visiblePassword;
      case SignUpType.phone_number:
        return TextInputType.phone;
      default:
        return TextInputType.text;
    }
  }

  @override
  Key get key {
    switch (type) {
      case SignUpType.username:
        return const Key(keyUsernameSignUpFormField);
      case SignUpType.password:
        return const Key(keyPasswordSignUpFormField);
      case SignUpType.address:
        return const Key(keyAddressSignUpFormField);
      case SignUpType.birthdate:
        return const Key(keyBirthdateSignUpFormField);
      case SignUpType.email:
        return const Key(keyEmailSignUpFormField);
      case SignUpType.family_name:
        return const Key(keyFamilyNameSignUpFormField);
      case SignUpType.gender:
        return const Key(keyGenderSignUpFormField);
      case SignUpType.given_name:
        return const Key(keyGivenNameSignUpFormField);
      case SignUpType.locale:
        return const Key(keyLocaleSignUpFormField);
      case SignUpType.middle_name:
        return const Key(keyMiddleNameSignUpFormField);
      case SignUpType.name:
        return const Key(keyNameSignUpFormField);
      case SignUpType.nickname:
        return const Key(keyNicknameSignUpFormField);
      case SignUpType.phone_number:
        return const Key(keyPhoneNumberSignUpFormField);
      case SignUpType.picture:
        return const Key(keyPictureSignUpFormField);
      case SignUpType.preferredUsername:
        return const Key(keyPreferredUsernameSignUpFormField);
      case SignUpType.profile:
        return const Key(keyProfileSignUpFormField);
      case SignUpType.zoneinfo:
        return const Key(keyZoneinfoSignUpFormField);
      case SignUpType.updated_at:
        return const Key(keyUpdatedAtSignUpFormField);
      case SignUpType.website:
        return const Key(keyWebsiteSignUpFormField);
      // TODO:
      // case SignUpType.custom:
      //   return const Key(keyCustomSignUpFormField);
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
    properties.add(StringProperty('hintText', hintText));
    properties.add(EnumProperty('type', type));
    properties.add(ObjectFlagProperty<FormFieldValidator<String>>.has(
        'validator', validator));
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
    required String title,
    String? hintText,
    required this.type,
    FormFieldValidator<String>? validator,
  })  : _validatorOverride = validator,
        super(
          key: key,
          title: title,
          hintText: hintText,
        );

  final ConfirmSignUpType type;

  final FormFieldValidator<String>? _validatorOverride;

  @override
  FormFieldValidator<String>? get validator {
    if (_validatorOverride != null) {
      return _validatorOverride;
    }
    switch (type) {
      case ConfirmSignUpType.username:
        return validateUsername;
      case ConfirmSignUpType.password:
        return validatePassword;
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
    switch (type) {
      case ConfirmSignUpType.password:
        return true;
      default:
        return false;
    }
  }

  @override
  void Function(String) callback(AuthViewModel viewModel) {
    switch (type) {
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
    switch (type) {
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
  Key get key {
    switch (type) {
      case ConfirmSignUpType.username:
        return const Key(keyUsernameConfirmSignUpFormfield);
      case ConfirmSignUpType.password:
        return const Key(keyPasswordConfirmSignUpFormfield);
      case ConfirmSignUpType.email:
        return const Key(keyEmailConfirmSignUpFormfield);
      case ConfirmSignUpType.phone_number:
        return const Key(keyPhoneNumberConfirmSignUpFormfield);
      case ConfirmSignUpType.code:
        return const Key(keyCodeConfirmSignUpFormfield);
    }
  }

  @override
  bool? get enable {
    switch (type) {
      case ConfirmSignUpType.code:
        return true;
      // TODO: password?
      default:
        return false;
    }
  }

  @override
  Color? get color {
    const disabledColor = Color.fromRGBO(130, 130, 130, 1);
    switch (type) {
      case ConfirmSignUpType.username:
      case ConfirmSignUpType.phone_number:
      case ConfirmSignUpType.email:
        return disabledColor;
      // TODO: password?
      default:
        return null;
    }
  }

  @override
  String? initialValue(AuthViewModel viewModel) {
    switch (type) {
      case ConfirmSignUpType.username:
      case ConfirmSignUpType.email:
      case ConfirmSignUpType.phone_number:
        return viewModel.username;
      default:
        return null;
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
    properties.add(StringProperty('hintText', hintText));
    properties.add(EnumProperty('type', type));
    properties.add(ObjectFlagProperty<FormFieldValidator<String>>.has(
        'validator', validator));
  }
}

class ConfirmSignInFormField extends AuthenticatorFormField {
  /// Requires a custom title, hint text, a type (code, password, etc)
  /// and an optional callback for input validation.
  const ConfirmSignInFormField({
    Key? key,
    required String title,
    required String hintText,
    required this.type,
    FormFieldValidator<String>? validator,
  })  : _validatorOverride = validator,
        super(
          key: key,
          title: title,
          hintText: hintText,
        );

  final ConfirmSignInType type;

  final FormFieldValidator<String>? _validatorOverride;

  @override
  FormFieldValidator<String>? get validator {
    if (_validatorOverride != null) {
      return _validatorOverride;
    }
    switch (type) {
      case ConfirmSignInType.code:
        return validateCode;
      case ConfirmSignInType.password:
        return validatePassword;
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
    switch (type) {
      case ConfirmSignInType.password:
        return true;
      default:
        return false;
    }
  }

  @override
  void Function(String) callback(AuthViewModel viewModel) {
    switch (type) {
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
    switch (type) {
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
      default:
        return TextInputType.text;
    }
  }

  @override
  Key get key {
    switch (type) {
      case ConfirmSignInType.code:
        return const Key(keyCodeConfirmSignInFormfield);
      case ConfirmSignInType.password:
        return const Key(keyPasswordConfirmSignInFormField);
      case ConfirmSignInType.address:
        return const Key(keyAddressConfirmSignInFormField);
      case ConfirmSignInType.birthdate:
        return const Key(keyBirthdateConfirmSignInFormField);
      case ConfirmSignInType.email:
        return const Key(keyEmailConfirmSignInFormField);
      case ConfirmSignInType.family_name:
        return const Key(keyFamilyNameConfirmSignInFormField);
      case ConfirmSignInType.gender:
        return const Key(keyGenderConfirmSignInFormField);
      case ConfirmSignInType.given_name:
        return const Key(keyGivenNameConfirmSignInFormField);
      case ConfirmSignInType.locale:
        return const Key(keyLocaleConfirmSignInFormField);
      case ConfirmSignInType.middle_name:
        return const Key(keyMiddleNameConfirmSignInFormField);
      case ConfirmSignInType.name:
        return const Key(keyNameConfirmSignInFormField);
      case ConfirmSignInType.nickname:
        return const Key(keyNicknameConfirmSignInFormField);
      case ConfirmSignInType.phone_number:
        return const Key(keyPhoneNumberConfirmSignInFormField);
      case ConfirmSignInType.picture:
        return const Key(keyPictureConfirmSignInFormField);
      case ConfirmSignInType.preferredUsername:
        return const Key(keyPreferredUsernameConfirmSignInFormField);
      case ConfirmSignInType.profile:
        return const Key(keyProfileConfirmSignInFormField);
      case ConfirmSignInType.zoneinfo:
        return const Key(keyZoneinfoConfirmSignInFormField);
      case ConfirmSignInType.updated_at:
        return const Key(keyUpdatedAtConfirmSignInFormField);
      case ConfirmSignInType.website:
        return const Key(keyWebsiteConfirmSignInFormField);
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('hintText', hintText));
    properties.add(StringProperty('title', title));
    properties.add(ObjectFlagProperty<String? Function(String? p1)>.has(
        'validator', validator));
    properties.add(EnumProperty('type', type));
  }
}
