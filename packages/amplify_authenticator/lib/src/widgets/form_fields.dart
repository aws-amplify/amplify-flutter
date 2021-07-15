import 'package:amplify_authenticator/src/enums/confirm_signin_types.dart';

import 'package:amplify_authenticator/src/keys.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:amplify_authenticator/src/utils/validators.dart';
import 'package:amplify_authenticator/src/enums/signin_types.dart';
import 'package:amplify_authenticator/src/enums/signup_types.dart';
import 'package:amplify_authenticator/src/enums/confirm_signup_types.dart';

class SignInFormField extends StatelessWidget {
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
  final String type;

  /// callback meant to validate inputs of this form field.
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final _authModelView = InheritedAuthViewModel.of(context)!.signInViewModel;
    bool _obscureText = false;
    late void Function(String) _callBack;
    late Key _key;
    String? Function(String?)? _validator;
    TextInputType _keyboardType = TextInputType.text;
    final SignInType? _type = fromStringToSignInType(type);

    switch (_type) {
      case SignInType.username:
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.text;
        _validator = validator ?? validateUsername;
        _key = const Key(keyUsernameSignInFormfield);
        break;
      case SignInType.email:
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateUsername;
        _key = const Key(keyEmailSignInFormfield);
        break;
      case SignInType.phone_number:
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.phone;
        _validator = validator ?? validateUsername;
        _key = const Key(keyPhoneNumberSignInFormfield);
        break;
      case SignInType.password:
        _callBack = _authModelView.setPassword;
        _keyboardType = TextInputType.visiblePassword;
        _obscureText = true;
        _validator = validator ?? validatePassword;
        _key = const Key(keyPasswordSignInFormfield);
        break;
      default:
        break;
    }

    return FormFieldContainer(
        key: _key,
        keyboardType: _keyboardType,
        callback: _callBack,
        hintText: hintText,
        title: title,
        validator: _validator,
        obscureText: _obscureText);
  }
}

class SignUpFormField extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final _authModelView = InheritedAuthViewModel.of(context)!.signUpViewModel;
    bool _obscureText = false;
    late dynamic _callBack;
    Key _key;
    String? Function(String?)? _validator;
    TextInputType _keyboardType = TextInputType.text;
    final SignUpType? _type = fromStringToSignUpType(type);

    switch (_type) {
      case SignUpType.username:
        _callBack = (String value) => _authModelView.setUsername(value);
        _keyboardType = TextInputType.text;
        _validator = validator ?? validateUsername;
        _key = const Key(keyUsernameSignUpFormField);
        break;
      case SignUpType.password:
        _callBack = (String value) => _authModelView.setPassword(value);
        _keyboardType = TextInputType.visiblePassword;
        _obscureText = true;
        _validator = validator ?? validatePassword;
        _key = const Key(keyPasswordSignUpFormField);
        break;
      case SignUpType.address:
        _callBack = (String value) => _authModelView.setAddress(value, type);
        _keyboardType = TextInputType.streetAddress;
        _key = const Key(keyAddressSignUpFormField);

        break;
      case SignUpType.birthdate:
        _callBack = (String value) => _authModelView.setBirthdate(value, type);
        _keyboardType = TextInputType.text;
        _key = const Key(keyBirthdateSignUpFormField);
        break;
      case SignUpType.email:
        _callBack = (String value) => _authModelView.setEmail(value, type);
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateEmail;
        _key = const Key(keyEmailSignUpFormField);
        break;
      case SignUpType.family_name:
        _callBack = (String value) => _authModelView.setFamilyName(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyFamilyNameSignUpFormField);
        break;
      case SignUpType.gender:
        _callBack = (String value) => _authModelView.setGender(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyGenderSignUpFormField);
        break;
      case SignUpType.given_name:
        _callBack = (String value) => _authModelView.setGivenName(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyGivenNameSignUpFormField);
        break;
      case SignUpType.locale:
        _callBack = (String value) => _authModelView.setLocale(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyLocaleSignUpFormField);
        break;
      case SignUpType.middle_name:
        _callBack = (String value) => _authModelView.setMiddleName(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyMiddleNameSignUpFormField);
        break;
      case SignUpType.name:
        _callBack = (String value) => _authModelView.setName(value, type);
        _keyboardType = TextInputType.name;
        _validator = validator;
        _key = const Key(keyNameSignUpFormField);
        break;
      case SignUpType.nickname:
        _callBack = (String value) => _authModelView.setNickname(value, type);
        _keyboardType = TextInputType.name;
        _validator = validator;
        _key = const Key(keyNicknameSignUpFormField);
        break;
      case SignUpType.phone_number:
        _callBack =
            (String value) => _authModelView.setPhoneNumber(value, type);
        _keyboardType = TextInputType.phone;
        _validator = validator;
        _key = const Key(keyPhoneNumberSignUpFormField);
        break;
      case SignUpType.picture:
        _callBack = (String value) => _authModelView.setPicture(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyPictureSignUpFormField);
        break;
      case SignUpType.preferredUsername:
        _callBack =
            (String value) => _authModelView.setPreferredUsername(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyPreferredUsernameSignUpFormField);
        break;
      case SignUpType.profile:
        _callBack = (String value) => _authModelView.setProfile(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyProfileSignUpFormField);
        break;
      case SignUpType.zoneinfo:
        _callBack = (String value) => _authModelView.setZoneInfo(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyZoneinfoSignUpFormField);
        break;
      case SignUpType.updated_at:
        _callBack = (String value) => _authModelView.setUpdatedAt(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyUpdatedAtSignUpFormField);
        break;
      case SignUpType.website:
        _callBack = (String value) => _authModelView.setWebsite(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyWebsiteSignUpFormField);
        break;
      default:
        _callBack = (String value) => _authModelView.setCustom(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyCustomSignUpFormField);

        break;
    }
    return FormFieldContainer(
        key: _key,
        keyboardType: _keyboardType,
        callback: _callBack,
        hintText: hintText,
        title: title,
        validator: _validator,
        obscureText: _obscureText);
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
      required this.hintText,
      required this.type,
      this.validator})
      : super(key: key);

  ///Custom title for this form field
  final String title;

  ///Custom hint text for this form field
  final String hintText;

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
    final _authModelView =
        InheritedAuthViewModel.of(context)!.confirmSignUpViewModel;
    bool _obscureText = false;
    late void Function(String) _callBack;
    String? Function(String?)? _validator;
    TextInputType _keyboardType = TextInputType.text;
    late Key _key;
    final ConfirmSignUpType? _type = fromStringToConfirmSignUpType(type);
    switch (_type) {
      case ConfirmSignUpType.username:
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.text;
        _validator = validator ?? validateUsername;
        _key = const Key(keyUsernameConfirmSignUpFormfield);
        break;
      case ConfirmSignUpType.email:
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateEmail;
        _key = const Key(keyEmailConfirmSignUpFormfield);
        break;
      case ConfirmSignUpType.phone_number:
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.phone;
        _validator = validator;
        _key = const Key(keyPhoneNumberConfirmSignUpFormfield);
        break;
      case ConfirmSignUpType.code:
        _callBack = _authModelView.setCode;
        _keyboardType = TextInputType.visiblePassword;
        _validator = validator;
        _key = const Key(keyCodeConfirmSignUpFormfield);
        break;
      default:
        //throw exception
        break;
    }

    return FormFieldContainer(
        key: _key,
        keyboardType: _keyboardType,
        callback: _callBack,
        hintText: hintText,
        title: title,
        validator: _validator,
        obscureText: _obscureText);
  }
}

class ConfirmSignInFormField extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final _authModelView =
        InheritedAuthViewModel.of(context)!.confirmSignInViewModel;
    bool _obscureText = false;
    late dynamic _callBack;
    Key _key;
    String? Function(String?)? _validator;
    TextInputType _keyboardType = TextInputType.text;
    final ConfirmSignInType? _type = fromStringToConfirmSignInType(type);

    switch (_type) {
      case ConfirmSignInType.code:
        _callBack = (String value) => _authModelView.setCode(value);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyCodeConfirmSignInFormfield);
        break;
      case ConfirmSignInType.password:
        _callBack = (String value) => _authModelView.setPassword(value, type);
        _keyboardType = TextInputType.visiblePassword;
        _obscureText = true;
        _validator = validator ?? validatePassword;
        _key = const Key(keyPasswordConfirmSignInFormField);
        break;
      case ConfirmSignInType.address:
        _callBack = (String value) => _authModelView.setAddress(value, type);
        _keyboardType = TextInputType.streetAddress;
        _key = const Key(keyAddressConfirmSignInFormField);
        break;
      case ConfirmSignInType.birthdate:
        _callBack = (String value) => _authModelView.setBirthdate(value, type);
        _keyboardType = TextInputType.text;
        _key = const Key(keyBirthdateConfirmSignInFormField);
        break;
      case ConfirmSignInType.email:
        _callBack = (String value) => _authModelView.setEmail(value, type);
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateEmail;
        _key = const Key(keyEmailConfirmSignInFormField);
        break;
      case ConfirmSignInType.family_name:
        _callBack = (String value) => _authModelView.setFamilyName(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyFamilyNameConfirmSignInFormField);
        break;
      case ConfirmSignInType.gender:
        _callBack = (String value) => _authModelView.setGender(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyGenderConfirmSignInFormField);
        break;
      case ConfirmSignInType.given_name:
        _callBack = (String value) => _authModelView.setGivenName(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyGivenNameConfirmSignInFormField);
        break;
      case ConfirmSignInType.locale:
        _callBack = (String value) => _authModelView.setLocale(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyLocaleConfirmSignInFormField);
        break;
      case ConfirmSignInType.middle_name:
        _callBack = (String value) => _authModelView.setMiddleName(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyMiddleNameConfirmSignInFormField);
        break;
      case ConfirmSignInType.name:
        _callBack = (String value) => _authModelView.setName(value, type);
        _keyboardType = TextInputType.name;
        _validator = validator;
        _key = const Key(keyNameConfirmSignInFormField);
        break;
      case ConfirmSignInType.nickname:
        _callBack = (String value) => _authModelView.setNickname(value, type);
        _keyboardType = TextInputType.name;
        _validator = validator;
        _key = const Key(keyNicknameConfirmSignInFormField);
        break;
      case ConfirmSignInType.phone_number:
        _callBack =
            (String value) => _authModelView.setPhoneNumber(value, type);
        _keyboardType = TextInputType.phone;
        _validator = validator;
        _key = const Key(keyPhoneNumberConfirmSignInFormField);
        break;
      case ConfirmSignInType.picture:
        _callBack = (String value) => _authModelView.setPicture(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyPictureConfirmSignInFormField);
        break;
      case ConfirmSignInType.preferredUsername:
        _callBack =
            (String value) => _authModelView.setPreferredUsername(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyPreferredUsernameConfirmSignInFormField);
        break;
      case ConfirmSignInType.profile:
        _callBack = (String value) => _authModelView.setProfile(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyProfileConfirmSignInFormField);
        break;
      case ConfirmSignInType.zoneinfo:
        _callBack = (String value) => _authModelView.setZoneInfo(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyZoneinfoConfirmSignInFormField);
        break;
      case ConfirmSignInType.updated_at:
        _callBack = (String value) => _authModelView.setUpdatedAt(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyUpdatedAtConfirmSignInFormField);
        break;
      case ConfirmSignInType.website:
        _callBack = (String value) => _authModelView.setWebsite(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyWebsiteConfirmSignInFormField);
        break;
      default:
        _callBack = (String value) => _authModelView.setCustom(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyCustomConfirmSignInFormField);

        break;
    }
    return FormFieldContainer(
        key: _key,
        keyboardType: _keyboardType,
        callback: _callBack,
        hintText: hintText,
        title: title,
        validator: _validator,
        obscureText: _obscureText);
  }
}
