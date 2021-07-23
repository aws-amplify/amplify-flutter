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

    switch (type) {
      case 'username':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.text;
        _validator = validator ?? validateUsername;
        _key = const Key(keyUsernameSignInFormfield);
        break;
      case 'email':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateUsername;
        _key = const Key(keyEmailSignInFormfield);
        break;
      case 'phone_number':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.phone;
        _validator = validator ?? validateUsername;
        _key = const Key(keyPhoneNumberSignInFormfield);
        break;
      case 'password':
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

///Sign Up Form Field
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
    ;
    switch (type) {
      case 'username':
        _callBack = (String value) => _authModelView.setUsername(value);
        _keyboardType = TextInputType.text;
        _validator = validator ?? validateUsername;
        _key = const Key(keyUsernameSignUpFormfield);
        break;
      case 'password':
        _callBack = (String value) => _authModelView.setPassword(value);
        _keyboardType = TextInputType.visiblePassword;
        _obscureText = true;
        _validator = validator ?? validatePassword;
        _key = const Key(keyPasswordSignUpFormfield);
        break;
      case 'address':
        _callBack = (String value) => _authModelView.setAddress(value, type);
        _keyboardType = TextInputType.streetAddress;
        _key = const Key(keyAddressFormfield);
        break;
      case 'birthdate':
        _callBack = (String value) => _authModelView.setBirthdate(value, type);
        _keyboardType = TextInputType.text;
        _key = const Key(keyBirthdateSignUpFormField);
        break;
      case 'email':
        _callBack = (String value) => _authModelView.setEmail(value, type);
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateEmail;
        _key = const Key(keyEmailSignUpFormField);
        break;
      case 'family_name':
        _callBack = (String value) => _authModelView.setFamilyName(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyFamilyNameSignUpFormField);
        break;
      case 'gender':
        _callBack = (String value) => _authModelView.setGender(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyGenderSignUpFormField);
        break;
      case 'given_name':
        _callBack = (String value) => _authModelView.setGivenName(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyGivenNameSignUpFormField);
        break;
      case 'locale':
        _callBack = (String value) => _authModelView.setLocale(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyLocaleSignUpFormField);
        break;
      case 'middle_name':
        _callBack = (String value) => _authModelView.setMiddleName(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyMiddleNameSignUpFormField);
        break;
      case 'name':
        _callBack = (String value) => _authModelView.setName(value, type);
        _keyboardType = TextInputType.name;
        _validator = validator;
        _key = const Key(keyNameSignUpFormField);
        break;
      case 'nickname':
        _callBack = (String value) => _authModelView.setNickname(value, type);
        _keyboardType = TextInputType.name;
        _validator = validator;
        _key = const Key(keyNicknameSignUpFormField);
        break;
      case 'phone_number':
        _callBack =
            (String value) => _authModelView.setPhoneNumber(value, type);
        _keyboardType = TextInputType.phone;
        _validator = validator;
        _key = const Key(keyPhoneNumberSignUpFormField);
        break;
      case 'picture':
        _callBack = (String value) => _authModelView.setPicture(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyPictureSignUpFormField);
        break;
      case 'preferredUsername':
        _callBack =
            (String value) => _authModelView.setPreferredUsername(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyPreferredUsernameSignUpFormField);
        break;
      case 'profile':
        _callBack = (String value) => _authModelView.setProfile(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyProfileSignUpFormField);
        break;
      case 'zoneinfo':
        _callBack = (String value) => _authModelView.setZoneInfo(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyZoneinfoSignUpFormField);
        break;
      case 'updated_at':
        _callBack = (String value) => _authModelView.setUpdatedAt(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = const Key(keyUpdatedAtSignUpFormField);
        break;
      case 'website':
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
    bool _obscureText = false;
    late void Function(String) _callBack;
    String? Function(String?)? _validator;
    TextInputType _keyboardType = TextInputType.text;
    late Key _key;
    switch (type) {
      case 'username':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.text;
        _validator = validator ?? validateUsername;
        _key = const Key(keyUsernameConfirmSignUpFormfield);
        break;
      case 'email':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateEmail;
        _key = const Key(keyEmailConfirmSignUpFormfield);
        break;
      case 'phone_number':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.phone;
        _validator = validator;
        _key = const Key(keyPhoneNumberConfirmSignUpFormfield);
        break;
      case 'code':
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
