import 'package:amplify_authenticator/src/keys.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:amplify_authenticator/src/utils/validators.dart';

/// Sign In Form Field
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
  final String? title;

  /// Custom hint text for this form field
  final String? hintText;

  /// This form field currently supports the following form field types:
  /// * Username
  /// * Email
  /// * Phone number
  /// * Password
  final String? type;

  /// callback meant to validate inputs of this form field.
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final _authModelView = InheritedAuthViewModel.of(context)!.signInViewModel;
    var _obscureText = false;
    var _callBack;
    Key? _key;
    String? Function(String?)? _validator;
    TextInputType? _keyboardType;

    switch (type) {
      case 'username':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.text;
        _validator = validator ?? validateUsername;
        _key = Key(keyUsernameSignInFormfield);
        break;
      case 'email':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateUsername;
        _key = Key(keyEmailSignInFormfield);
        break;
      case 'phone_number':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.phone;
        _validator = validator ?? validateUsername;
        _key = Key(keyPhoneNumberSignInFormfield);
        break;
      case 'password':
        _callBack = _authModelView.setPassword;
        _keyboardType = TextInputType.visiblePassword;
        _obscureText = true;
        _validator = validator ?? validatePassword;
        _key = Key(keyPasswordSignInFormfield);
        break;
      default:
        break;
    }

    return FormFieldContainer(
        key: _key,
        keyboardType: _keyboardType!,
        callback: _callBack,
        hintText: hintText,
        title: title,
        validator: _validator,
        obscureText: _obscureText);
  }
}

///Sign Up Form Field
class SignUpFormField extends StatelessWidget {
  /// Requires a custom title, hint text, a type (username, password, etc)
  /// and an optional callback for input validation.
  SignUpFormField(
      {required this.title,
      required this.hintText,
      required this.type,
      this.validator});

  ///Custom title for this form field
  final String? title;

  ///Custom hint text for this form field
  final String? hintText;

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
  final String? type;

  /// callback meant to validate inputs of this form field.
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final _authModelView = InheritedAuthViewModel.of(context)!.signUpViewModel;
    var _obscureText = false;
    var _callBack;
    Key? _key;
    String? Function(String?)? _validator;
    TextInputType? _keyboardType;
    switch (type) {
      case 'username':
        _callBack = (value) => _authModelView.setUsername(value);
        _keyboardType = TextInputType.text;
        _validator = validator ?? validateUsername;
        _key = Key(keyUsernameSignUpFormfield);
        break;
      case 'password':
        _callBack = (value) => _authModelView.setPassword(value);
        _keyboardType = TextInputType.visiblePassword;
        _obscureText = true;
        _validator = validator ?? validatePassword;
        _key = Key(keyPasswordSignUpFormfield);
        break;
      case 'address':
        _callBack = (value) => _authModelView.setAddress(value, type);
        _keyboardType = TextInputType.streetAddress;
        _key = Key(keyAddressFormfield);
        break;
      case 'birthdate':
        _callBack = (value) => _authModelView.setBirthdate(value, type);
        _keyboardType = TextInputType.text;
        _key = Key(keyBirthdateSignUpFormField);
        break;
      case 'email':
        _callBack = (value) => _authModelView.setEmail(value, type);
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateEmail;
        _key = Key(keyEmailSignUpFormField);
        break;
      case 'family_name':
        _callBack = (value) => _authModelView.setFamilyName(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key(keyFamilyNameSignUpFormField);
        break;
      case 'gender':
        _callBack = (value) => _authModelView.setGender(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key(keyGenderSignUpFormField);
        break;
      case 'given_name':
        _callBack = (value) => _authModelView.setGivenName(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key(keyGivenNameSignUpFormField);
        break;
      case 'locale':
        _callBack = (value) => _authModelView.setLocale(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key(keyLocaleSignUpFormField);
        break;
      case 'middle_name':
        _callBack = (value) => _authModelView.setMiddleName(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key(keyMiddleNameSignUpFormField);
        break;
      case 'name':
        _callBack = (value) => _authModelView.setName(value, type);
        _keyboardType = TextInputType.name;
        _validator = validator;
        _key = Key(keyNameSignUpFormField);
        break;
      case 'nickname':
        _callBack = (value) => _authModelView.setNickname(value, type);
        _keyboardType = TextInputType.name;
        _validator = validator;
        _key = Key(keyNicknameSignUpFormField);
        break;
      case 'phone_number':
        _callBack = (value) => _authModelView.setPhoneNumber(value, type);
        _keyboardType = TextInputType.phone;
        _validator = validator;
        _key = Key(keyPhoneNumberSignUpFormField);
        break;
      case 'picture':
        _callBack = (value) => _authModelView.setPicture(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key(keyPictureSignUpFormField);
        break;
      case 'preferredUsername':
        _callBack = (value) => _authModelView.setPreferredUsername(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key(keyPreferredUsernameSignUpFormField);
        break;
      case 'profile':
        _callBack = (value) => _authModelView.setProfile(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key(keyProfileSignUpFormField);
        break;
      case 'zoneinfo':
        _callBack = (value) => _authModelView.setZoneInfo(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key(keyZoneinfoSignUpFormField);
        break;
      case 'updated_at':
        _callBack = (value) => _authModelView.setUpdatedAt(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key(keyUpdatedAtSignUpFormField);
        break;
      case 'website':
        _callBack = (value) => _authModelView.setWebsite(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key(keyWebsiteSignUpFormField);
        break;
      default:
        if (type != null) {
          _callBack = (value) => _authModelView.setCustom(value, type);
          _keyboardType = TextInputType.text;
          _validator = validator;
          _key = Key(keyCustomSignUpFormField);
        }
        print('Please enter a non null type of form field');
        break;
    }
    return FormFieldContainer(
        key: _key,
        keyboardType: _keyboardType!,
        callback: _callBack,
        hintText: hintText,
        title: title,
        validator: _validator,
        obscureText: _obscureText);
  }
}

///Confirm Sign Up Form Field
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
  final String? title;

  ///Custom hint text for this form field
  final String? hintText;

  /// This form field currently supports the following form field types:
  /// * Username
  /// * Email
  /// * Phone number
  /// * Code
  final String? type;

  /// callback meant to validate inputs of this form field.
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final _authModelView =
        InheritedAuthViewModel.of(context)!.confirmSignUpViewModel;
    var _obscureText = false;
    var _callBack;
    String? Function(String?)? _validator;
    TextInputType? _keyboardType;
    Key? _key;
    switch (type) {
      case 'username':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.text;
        _validator = validator ?? validateUsername;
        _key = Key(keyUsernameConfirmSignUpFormfield);
        break;
      case 'email':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateEmail;
        _key = Key(keyEmailConfirmSignUpFormfield);
        break;
      case 'phone_number':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.phone;
        _validator = validator;
        _key = Key(keyPhoneNumberConfirmSignUpFormfield);
        break;
      case 'code':
        _callBack = _authModelView.setCode;
        _keyboardType = TextInputType.visiblePassword;
        _validator = validator;
        _key = Key(keyPasswordConfirmSignUpFormfield);
        break;
      default:
        print('Please enter a correct type of form field');
        break;
    }

    return FormFieldContainer(
        key: _key,
        keyboardType: _keyboardType!,
        callback: _callBack,
        hintText: hintText,
        title: title,
        validator: _validator,
        obscureText: _obscureText);
  }
}
