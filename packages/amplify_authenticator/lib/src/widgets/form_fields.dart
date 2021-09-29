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
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/views/confirm_verify_user_view_model.dart';
import 'package:amplify_authenticator/src/views/verify_user_view_model.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:amplify_authenticator/src/utils/validators.dart';
import 'package:amplify_authenticator/src/enums/signin_types.dart';
import 'package:amplify_authenticator/src/enums/signup_types.dart';
import 'package:amplify_authenticator/src/enums/confirm_signup_types.dart';
import 'package:amplify_flutter/src/config/auth/password_protection_settings.dart';

class SignInFormField extends StatefulWidget {
  /// Requires a custom title, hint text, a type (username, password, etc)
  /// and an optional callback for input validation.
  const SignInFormField(
      {Key? key,
      required this.title,
      required this.hintText,
      required this.type,
      this.validator})
      : super(key: key);

  /// Custom title for this form field
  final String title;

  /// Custom hint text for this form field
  final String hintText;

  /// This form field currently supports the following form field types:
  /// * Username
  /// * Email
  /// * Phone number
  /// * Password
  /// * New Password
  /// * Verification Code
  final String type;

  /// callback meant to validate inputs of this form field.
  final String? Function(String?)? validator;

  @override
  _SignInFormFieldState createState() => _SignInFormFieldState();
}

class _SignInFormFieldState extends State<SignInFormField> {
  bool _toggle = true;

  void _setToggle() {
    setState(() {
      _toggle = !_toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _signInViewModel =
        InheritedAuthViewModel.of(context)!.signInViewModel;
    final _confirmSignUpViewModel =
        InheritedAuthViewModel.of(context)!.confirmSignUpViewModel;
    AuthStringResolver? _authStrings = InheritedStrings.of(context)!.resolver;

    bool _obscureText = false;
    late void Function(String) _callBack;
    late Key _key;
    String? Function(String?)? _validator;
    TextInputType _keyboardType = TextInputType.text;
    final SignInType? _type = fromStringToSignInType(widget.type);
    Widget? _resetPasswordButton;
    Widget? _visible;

    switch (_type) {
      case SignInType.username:
        _callBack = (value) {
          _signInViewModel.setUsername(value);
          _confirmSignUpViewModel.setUsername(value);
        };
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.username_empty(context));
        _key = const Key(keyUsernameSignInFormField);
        break;
      case SignInType.email:
        _callBack = (value) {
          _signInViewModel.setUsername(value);
          _confirmSignUpViewModel.setUsername(value);
        };
        _keyboardType = TextInputType.emailAddress;
        _validator = widget.validator ?? validateEmail;
        _key = const Key(keyEmailSignInFormField);
        break;
      case SignInType.phone_number:
        _callBack = (value) {
          _signInViewModel.setUsername(value);
          _confirmSignUpViewModel.setUsername(value);
        };
        _keyboardType = TextInputType.phone;
        _validator = widget.validator ?? validatePhoneNumber;
        _key = const Key(keyPhoneNumberSignInFormField);
        break;
      case SignInType.password:
        _callBack = (value) {
          _signInViewModel.setPassword(value);
          _confirmSignUpViewModel.setPassword(value);
        };
        _visible = InkWell(
          onTap: _setToggle,
          child: const Icon(
            Icons.visibility,
            size: 20,
          ),
        );
        _keyboardType = TextInputType.visiblePassword;
        _obscureText = _toggle;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.password_empty(context));
        _key = const Key(keyPasswordSignInFormField);
        _resetPasswordButton = const ResetPasswordButton();
        break;
      case SignInType.verification_code:
        _callBack = _signInViewModel.setConfirmationCode;
        _keyboardType = TextInputType.number;
        _key = const Key(keyVerificationCodeSignInFormField);
        _validator = widget.validator ?? validateCode;
        break;
      case SignInType.new_password:
        _callBack = _signInViewModel.setNewPassword;
        _visible = InkWell(
          onTap: _setToggle,
          child: const Icon(
            Icons.visibility,
            size: 20,
          ),
        );
        _keyboardType = TextInputType.visiblePassword;
        _obscureText = _toggle;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.password_empty(context));
        _key = const Key(keyNewPasswordSignInFormField);
        break;
      case SignInType.new_username:
        _callBack = _signInViewModel.setNewUsername;
        _keyboardType = TextInputType.text;

        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.username_empty(context));
        _key = const Key(keyNewUsernameSignInFormField);
        break;
      default:
        break;
    }

    return FormFieldContainer(
        visible: _visible,
        resendCodeButton: _resetPasswordButton,
        key: _key,
        keyboardType: _keyboardType,
        callback: _callBack,
        hintText: widget.hintText,
        title: widget.title,
        validator: _validator,
        obscureText: _obscureText);
  }
}

class SignUpFormField extends StatefulWidget {
  /// Requires a custom title, hint text, a type (username, password, etc)
  /// and an optional callback for input validation.
  const SignUpFormField(
      {required this.title,
      required this.hintText,
      required this.type,
      this.validator});

  ///Custom title for this form field
  final String title;

  ///Custom hint text for this form field
  final String hintText;

  /// This form will support the following form field types:
  /// * username
  /// * password
  /// * address
  /// * birthdate
  /// * email
  /// * family_name
  /// * gender
  /// * given_name
  /// * locate
  /// * middle_name
  /// * name
  /// * nickname
  /// * phone_number
  /// * picture
  /// * preferred_username
  /// * profile
  /// * zoneinfo
  /// * updated_at
  /// * website
  /// * custom
  final String type;

  /// callback meant to validate inputs of this form field.
  final String? Function(String?)? validator;

  @override
  _SignUpFormFieldState createState() => _SignUpFormFieldState();
}

class _SignUpFormFieldState extends State<SignUpFormField> {
  bool _toggle = true;

  void _setToggle() {
    setState(() {
      _toggle = !_toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _signUpViewModel =
        InheritedAuthViewModel.of(context)!.signUpViewModel;
    final _confirmSignUpViewModel =
        InheritedAuthViewModel.of(context)!.confirmSignUpViewModel;
    final _config = InheritedConfig.of(context)!.config;
    AuthStringResolver _authStrings = InheritedStrings.of(context)!.resolver;
    bool _obscureText = false;
    late dynamic _callBack;
    int _errorMaxLines = 1;
    Key _key;
    String? Function(String?)? _validator;
    TextInputType _keyboardType = TextInputType.text;
    final SignUpType? _type = fromStringToSignUpType(widget.type);
    Widget? _visible;
    PasswordProtectionSettings? _passwordProtectionSettings =
        InheritedConfig.of(context)
            ?.config
            ?.auth
            ?.awsCognitoAuthPlugin
            ?.auth?['Default']
            ?.passwordProtectionSettings;

    switch (_type) {
      case SignUpType.username:
        _callBack = (String value) {
          _signUpViewModel.setUsername(value);
          _confirmSignUpViewModel.setUsername(value);
        };
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.username_empty(context));
        _key = const Key(keyUsernameSignUpFormField);
        break;
      case SignUpType.password:
        _callBack = (String value) {
          _signUpViewModel.setPassword(value);
          _confirmSignUpViewModel.setPassword(value);
        };
        _visible = InkWell(
          onTap: _setToggle,
          child: const Icon(
            Icons.visibility,
            size: 20,
          ),
        );
        _keyboardType = TextInputType.visiblePassword;
        _obscureText = _toggle;
        _validator = widget.validator ?? validateSignUpPassword(context);
        _errorMaxLines = 6;
        _key = const Key(keyPasswordSignUpFormField);
        break;
      case SignUpType.passwordConfirmation:
        _callBack = (String value) {
          _signUpViewModel.setPasswordConfirmation(value);
          _confirmSignUpViewModel.setPassword(value);
        };
        _keyboardType = TextInputType.visiblePassword;
        _obscureText = true;
        _validator =
            widget.validator ?? validatePasswordConfirmation(_signUpViewModel);
        _key = const Key(keyPasswordConfirmationSignUpFormField);
        break;
      case SignUpType.address:
        _callBack =
            (String value) => _signUpViewModel.setAddress(value, widget.type);
        _keyboardType = TextInputType.streetAddress;
        _key = const Key(keyAddressSignUpFormField);
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.address_empty(context));
        break;
      case SignUpType.birthdate:
        _callBack =
            (String value) => _signUpViewModel.setBirthdate(value, widget.type);
        _keyboardType = TextInputType.text;
        _key = const Key(keyBirthdateSignUpFormField);
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.birthdate_empty(context));
        break;
      case SignUpType.email:
        _callBack =
            (String value) => _signUpViewModel.setEmail(value, widget.type);
        _keyboardType = TextInputType.emailAddress;
        _validator = widget.validator ?? validateEmail;
        _key = const Key(keyEmailSignUpFormField);
        break;
      case SignUpType.family_name:
        _callBack = (String value) =>
            _signUpViewModel.setFamilyName(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.family_name_empty(context));
        _key = const Key(keyFamilyNameSignUpFormField);
        break;
      case SignUpType.gender:
        _callBack =
            (String value) => _signUpViewModel.setGender(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.gender_empty(context));
        _key = const Key(keyGenderSignUpFormField);
        break;
      case SignUpType.given_name:
        _callBack =
            (String value) => _signUpViewModel.setGivenName(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.given_name_empty(context));
        _key = const Key(keyGivenNameSignUpFormField);
        break;
      case SignUpType.locale:
        _callBack =
            (String value) => _signUpViewModel.setLocale(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.locale_empty(context));
        _key = const Key(keyLocaleSignUpFormField);
        break;
      case SignUpType.middle_name:
        _callBack = (String value) =>
            _signUpViewModel.setMiddleName(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.middle_name_empty(context));
        _key = const Key(keyMiddleNameSignUpFormField);
        break;
      case SignUpType.name:
        _callBack =
            (String value) => _signUpViewModel.setName(value, widget.type);
        _keyboardType = TextInputType.name;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.name_empty(context));
        _key = const Key(keyNameSignUpFormField);
        break;
      case SignUpType.nickname:
        _callBack =
            (String value) => _signUpViewModel.setNickname(value, widget.type);
        _keyboardType = TextInputType.name;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.nickname_empty(context));
        _key = const Key(keyNicknameSignUpFormField);
        break;
      case SignUpType.phone_number:
        _callBack = (String value) =>
            _signUpViewModel.setPhoneNumber(value, widget.type);
        _keyboardType = TextInputType.phone;
        _validator = widget.validator ?? validatePhoneNumber;
        _key = const Key(keyPhoneNumberSignUpFormField);
        break;
      case SignUpType.picture:
        _callBack =
            (String value) => _signUpViewModel.setPicture(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.picture_empty(context));
        _key = const Key(keyPictureSignUpFormField);
        break;
      case SignUpType.preferredUsername:
        _callBack = (String value) =>
            _signUpViewModel.setPreferredUsername(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(
                _authStrings.inputs.preferred_username_empty(context));
        _key = const Key(keyPreferredUsernameSignUpFormField);
        break;
      case SignUpType.profile:
        _callBack =
            (String value) => _signUpViewModel.setProfile(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.profile_empty(context));
        _key = const Key(keyProfileSignUpFormField);
        break;
      case SignUpType.zoneinfo:
        _callBack =
            (String value) => _signUpViewModel.setZoneInfo(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.zoneinfo_empty(context));
        _key = const Key(keyZoneinfoSignUpFormField);
        break;
      case SignUpType.updated_at:
        _callBack =
            (String value) => _signUpViewModel.setUpdatedAt(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.updated_at_empty(context));
        _key = const Key(keyUpdatedAtSignUpFormField);
        break;
      case SignUpType.website:
        _callBack =
            (String value) => _signUpViewModel.setWebsite(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.website_empty(context));
        _key = const Key(keyWebsiteSignUpFormField);
        break;
      default:
        _callBack =
            (String value) => _signUpViewModel.setCustom(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator;
        _key = const Key(keyCustomSignUpFormField);

        break;
    }

    return FormFieldContainer(
        visible: _visible,
        key: _key,
        keyboardType: _keyboardType,
        callback: _callBack,
        hintText: widget.hintText,
        title: widget.title,
        validator: _validator,
        obscureText: _obscureText,
        errorMaxLines: _errorMaxLines);
  }
}

class ConfirmSignUpFormField extends StatelessWidget {
  /// Requires a custom title, hint text, a type (username, password, etc)
  /// and an optional callback for input validation.
  ///
  /// It's good to mention that this form field might not be exposed
  /// to the consumer due to the fact that the authenticator may only
  /// support three custom forms, sign in, sign up and confirm sign in.
  const ConfirmSignUpFormField(
      {Key? key,
      required this.title,
      this.hintText,
      required this.type,
      this.validator})
      : super(key: key);

  ///Custom title for this form field
  final String title;

  ///Custom hint text for this form field
  final String? hintText;

  /// This form field currently supports the following form field types:
  /// * Username
  /// * Email
  /// * Phone number
  /// * Code
  final String type;

  /// callback meant to validate inputs of this form field.
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final _confirmSignUpViewModel =
        InheritedAuthViewModel.of(context)!.confirmSignUpViewModel;
    final _authStrings = InheritedStrings.of(context)!.resolver;

    bool _obscureText = false;
    late void Function(String) _callBack;
    String? Function(String?)? _validator;
    TextInputType _keyboardType = TextInputType.text;
    late Key _key;
    final ConfirmSignUpType? _type = fromStringToConfirmSignUpType(type);
    Widget? _resendCodeButton;
    bool _enable = true;
    String? _initialValue;
    Color? _color;

    switch (_type) {
      case ConfirmSignUpType.username:
        _callBack = _confirmSignUpViewModel.setUsername;
        _keyboardType = TextInputType.text;
        _validator = validator ??
            simpleValidator(_authStrings.inputs.username_empty(context));
        _key = const Key(keyUsernameConfirmSignUpFormfield);
        _enable = false;
        _initialValue = _confirmSignUpViewModel.username;
        _color = const Color.fromRGBO(130, 130, 130, 1);
        break;
      case ConfirmSignUpType.email:
        _callBack = _confirmSignUpViewModel.setUsername;
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateEmail;
        _key = const Key(keyEmailConfirmSignUpFormfield);
        _enable = false;
        _initialValue = _confirmSignUpViewModel.username;
        _color = const Color.fromRGBO(130, 130, 130, 1);
        break;
      case ConfirmSignUpType.phone_number:
        _callBack = _confirmSignUpViewModel.setUsername;
        _keyboardType = TextInputType.phone;
        _validator = validator ?? validatePhoneNumber;
        _key = const Key(keyPhoneNumberConfirmSignUpFormfield);
        _enable = false;
        _initialValue = _confirmSignUpViewModel.username;
        _color = const Color.fromRGBO(130, 130, 130, 1);
        break;
      case ConfirmSignUpType.code:
        _callBack = _confirmSignUpViewModel.setCode;
        _keyboardType = TextInputType.visiblePassword;
        _validator = validator ?? validateCode;
        _key = const Key(keyCodeConfirmSignUpFormfield);
        _resendCodeButton = const LostCodeButton(
          key: Key(keyLostCodeButton),
        );
        break;
      default:
        break;
    }

    return FormFieldContainer(
        color: _color,
        initialValue: _initialValue,
        enable: _enable,
        resendCodeButton: _resendCodeButton,
        key: _key,
        keyboardType: _keyboardType,
        callback: _callBack,
        hintText: hintText,
        title: title,
        validator: _validator,
        obscureText: _obscureText);
  }
}

class ConfirmSignInFormField extends StatefulWidget {
  /// Requires a custom title, hint text, a type (code, password, etc)
  /// and an optional callback for input validation.
  const ConfirmSignInFormField(
      {required this.title,
      required this.hintText,
      required this.type,
      this.validator});

  ///Custom title for this form field
  final String title;

  ///Custom hint text for this form field
  final String hintText;

  /// This form will support the following form field types:
  /// * code
  /// * password
  /// * birthdate
  /// * email
  /// * family_name
  /// * gender
  /// * given_name
  /// * locate
  /// * middle_name
  /// * name
  /// * nickname
  /// * phone_number
  /// * picture
  /// * preferred_username
  /// * profile
  /// * zoneinfo
  /// * updated_at
  /// * website
  /// * custom
  final String type;

  /// callback meant to validate inputs of this form field.
  final String? Function(String?)? validator;

  @override
  _ConfirmSignInFormFieldState createState() => _ConfirmSignInFormFieldState();
}

class _ConfirmSignInFormFieldState extends State<ConfirmSignInFormField> {
  bool _toggle = true;

  void _setToggle() {
    setState(() {
      _toggle = !_toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _authModelView =
        InheritedAuthViewModel.of(context)!.confirmSignInViewModel;
    final _authStrings = InheritedStrings.of(context)!.resolver;
    bool _obscureText = false;
    late dynamic _callBack;
    Key _key;
    String? Function(String?)? _validator;
    TextInputType _keyboardType = TextInputType.text;
    final ConfirmSignInType? _type = fromStringToConfirmSignInType(widget.type);
    Widget? _visible;
    switch (_type) {
      case ConfirmSignInType.code:
        _callBack = (String value) => _authModelView.setCode(value);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ?? validateCode;
        _key = const Key(keyCodeConfirmSignInFormfield);
        break;
      case ConfirmSignInType.password:
        _callBack = (String value) {
          _authModelView.setCode(value);
        };
        _visible = InkWell(
          onTap: _setToggle,
          child: const Icon(
            Icons.visibility,
            size: 20,
          ),
        );
        _keyboardType = TextInputType.visiblePassword;
        _obscureText = _toggle;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.password_empty(context));
        _key = const Key(keyPasswordConfirmSignInFormField);
        break;
      case ConfirmSignInType.address:
        _callBack =
            (String value) => _authModelView.setAddress(value, widget.type);
        _keyboardType = TextInputType.streetAddress;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.address_empty(context));
        _key = const Key(keyAddressConfirmSignInFormField);
        break;
      case ConfirmSignInType.birthdate:
        _callBack =
            (String value) => _authModelView.setBirthdate(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.birthdate_empty(context));
        _key = const Key(keyBirthdateConfirmSignInFormField);
        break;
      case ConfirmSignInType.email:
        _callBack =
            (String value) => _authModelView.setEmail(value, widget.type);
        _keyboardType = TextInputType.emailAddress;
        _validator = widget.validator ?? validateEmail;
        _key = const Key(keyEmailConfirmSignInFormField);
        break;
      case ConfirmSignInType.family_name:
        _callBack =
            (String value) => _authModelView.setFamilyName(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.family_name_empty(context));
        _key = const Key(keyFamilyNameConfirmSignInFormField);
        break;
      case ConfirmSignInType.gender:
        _callBack =
            (String value) => _authModelView.setGender(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.gender_empty(context));
        _key = const Key(keyGenderConfirmSignInFormField);
        break;
      case ConfirmSignInType.given_name:
        _callBack =
            (String value) => _authModelView.setGivenName(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.given_name_empty(context));
        _key = const Key(keyGivenNameConfirmSignInFormField);
        break;
      case ConfirmSignInType.locale:
        _callBack =
            (String value) => _authModelView.setLocale(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.locale_empty(context));
        _key = const Key(keyLocaleConfirmSignInFormField);
        break;
      case ConfirmSignInType.middle_name:
        _callBack =
            (String value) => _authModelView.setMiddleName(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.middle_name_empty(context));
        _key = const Key(keyMiddleNameConfirmSignInFormField);
        break;
      case ConfirmSignInType.name:
        _callBack =
            (String value) => _authModelView.setName(value, widget.type);
        _keyboardType = TextInputType.name;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.name_empty(context));
        _key = const Key(keyNameConfirmSignInFormField);
        break;
      case ConfirmSignInType.nickname:
        _callBack =
            (String value) => _authModelView.setNickname(value, widget.type);
        _keyboardType = TextInputType.name;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.nickname_empty(context));
        _key = const Key(keyNicknameConfirmSignInFormField);
        break;
      case ConfirmSignInType.phone_number:
        _callBack =
            (String value) => _authModelView.setPhoneNumber(value, widget.type);
        _keyboardType = TextInputType.phone;
        _validator = widget.validator ?? validatePhoneNumber;
        _key = const Key(keyPhoneNumberConfirmSignInFormField);
        break;
      case ConfirmSignInType.picture:
        _callBack =
            (String value) => _authModelView.setPicture(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.picture_empty(context));
        _key = const Key(keyPictureConfirmSignInFormField);
        break;
      case ConfirmSignInType.preferredUsername:
        _callBack = (String value) =>
            _authModelView.setPreferredUsername(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(
                _authStrings.inputs.preferred_username_empty(context));
        _key = const Key(keyPreferredUsernameConfirmSignInFormField);
        break;
      case ConfirmSignInType.profile:
        _callBack =
            (String value) => _authModelView.setProfile(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.profile_empty(context));
        _key = const Key(keyProfileConfirmSignInFormField);
        break;
      case ConfirmSignInType.zoneinfo:
        _callBack =
            (String value) => _authModelView.setZoneInfo(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.zoneinfo_empty(context));
        _key = const Key(keyZoneinfoConfirmSignInFormField);
        break;
      case ConfirmSignInType.updated_at:
        _callBack =
            (String value) => _authModelView.setUpdatedAt(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.updated_at_empty(context));
        _key = const Key(keyUpdatedAtConfirmSignInFormField);
        break;
      case ConfirmSignInType.website:
        _callBack =
            (String value) => _authModelView.setWebsite(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator ??
            simpleValidator(_authStrings.inputs.website_empty(context));
        _key = const Key(keyWebsiteConfirmSignInFormField);
        break;
      default:
        _callBack =
            (String value) => _authModelView.setCustom(value, widget.type);
        _keyboardType = TextInputType.text;
        _validator = widget.validator;
        _key = const Key(keyCustomConfirmSignInFormField);

        break;
    }
    return FormFieldContainer(
        visible: _visible,
        key: _key,
        keyboardType: _keyboardType,
        callback: _callBack,
        hintText: widget.hintText,
        title: widget.title,
        validator: _validator,
        obscureText: _obscureText);
  }
}

class VerifyUserFormFieldGroup extends StatefulWidget {
  final List<String> unverifiedAttributeKeys;

  const VerifyUserFormFieldGroup({
    Key? key,
    required this.unverifiedAttributeKeys,
  }) : super(key: key);

  @override
  _VerifyUserFormFieldGroupState createState() =>
      _VerifyUserFormFieldGroupState();
}

class _VerifyUserFormFieldGroupState extends State<VerifyUserFormFieldGroup> {
  String? _value;
  late VerifyUserViewModel _verifyUserViewModel;
  late ConfirmVerifyUserViewModel _confirmVerifyUserViewModel;

  // set value for the verify user & confirm verify user view model
  void setUserAttributeKey(String? value) {
    setState(() {
      _value = value;
      _verifyUserViewModel.setUserAttributeKey(value);
      _confirmVerifyUserViewModel.setUserAttributeKey(value);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _verifyUserViewModel =
        InheritedAuthViewModel.of(context)!.verifyUserViewModel;
    _confirmVerifyUserViewModel =
        InheritedAuthViewModel.of(context)!.confirmVerifyUserViewModel;

    // preselect first option by default
    // TODO: determine if this is the desired functionality
    // alternatively it could be left blank
    String initialValue = widget.unverifiedAttributeKeys.first;
    setUserAttributeKey(initialValue);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TODO: Use constants for attribute keys from #697 after feature branch has been updated with main
        if (widget.unverifiedAttributeKeys.contains('email'))
          VerifyUserFormField(
            label: 'Email', // TODO: support localization
            attributeKey: 'email',
            onChanged: (String? value) {
              setState(() {
                _value = value;
                _verifyUserViewModel.setUserAttributeKey(value);
                _confirmVerifyUserViewModel.setUserAttributeKey(_value);
              });
            },
            groupValue: _value,
          ),
        if (widget.unverifiedAttributeKeys.contains('phone_number'))
          VerifyUserFormField(
            label: 'Phone Number', // TODO: support localization
            attributeKey: 'phone_number',
            onChanged: (String? value) {
              setState(() {
                _value = value;
                setUserAttributeKey(value);
              });
            },
            groupValue: _value,
          ),
      ],
    );
  }
}

class VerifyUserFormField extends StatelessWidget {
  const VerifyUserFormField({
    required this.label,
    required this.attributeKey,
    required this.onChanged,
    this.groupValue,
    Key? key,
  }) : super(key: key);

  final String label;
  final String attributeKey;
  final void Function(String?)? onChanged;
  final String? groupValue;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.label),
      leading: Radio<String>(
        value: attributeKey,
        groupValue: this.groupValue,
        onChanged: onChanged,
      ),
    );
  }
}

class ConfirmVerifyUserFormField extends StatefulWidget {
  /// Requires a custom title, hint text and an optional
  /// callback for input validation.
  const ConfirmVerifyUserFormField({
    required this.title,
    required this.hintText,
    this.validator,
  });

  /// Custom title for this form field
  final String title;

  /// Custom hint text for this form field
  final String hintText;

  /// callback meant to validate inputs of this form field.
  final String? Function(String?)? validator;

  @override
  _ConfirmVerifyUserFormFieldState createState() =>
      _ConfirmVerifyUserFormFieldState();
}

class _ConfirmVerifyUserFormFieldState
    extends State<ConfirmVerifyUserFormField> {
  @override
  Widget build(BuildContext context) {
    final _authViewModel =
        InheritedAuthViewModel.of(context)!.confirmVerifyUserViewModel;
    bool _obscureText = false;
    late dynamic _callBack;
    Key _key;
    String? Function(String?)? _validator;
    TextInputType _keyboardType = TextInputType.text;
    Widget? _visible;
    _callBack = (String value) => _authViewModel.setCode(value);
    _keyboardType = TextInputType.text;
    _validator = widget.validator ?? validateCode;
    _key = const Key(keyCodeConfirmSignInFormfield);
    return FormFieldContainer(
      visible: _visible,
      key: _key,
      keyboardType: _keyboardType,
      callback: _callBack,
      hintText: widget.hintText,
      title: widget.title,
      validator: _validator,
      obscureText: _obscureText,
    );
  }
}
