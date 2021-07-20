import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:amplify_authenticator/src/utils/validators.dart';

///Sign In Form Field
class SignInFormField extends StatelessWidget {
  ///Sign In Form Field Constructor
  const SignInFormField(
      {Key? key,
      required this.title,
      required this.hintText,
      required this.type,
      this.validator})
      : super(key: key);

  ///Custom title for form field
  final String? title;

  ///Custom hint text for form field
  final String? hintText;

  ///Form field type
  final String? type;

  ///Custom validator for form field
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
        _key = Key('usernameSignInFormField');
        break;
      case 'email':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateUsername;
        _key = Key('emailSignInFormField');
        break;
      case 'phone_number':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.phone;
        _validator = validator ?? validateUsername;
        _key = Key('phoneNumberSignInFormField');
        break;
      case 'password':
        _callBack = _authModelView.setPassword;
        _keyboardType = TextInputType.visiblePassword;
        _obscureText = true;
        _validator = validator ?? validatePassword;
        _key = Key('passwordSignInFormField');
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
  ///Sign Up Form Field Constructor
  SignUpFormField(
      {required this.title,
      required this.hintText,
      required this.type,
      this.validator});

  ///Custom title for form field
  final String? title;

  ///Custom hint text for form field
  final String? hintText;

  ///Form field type
  final String? type;

  ///Custom validator for form field
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
        _key = Key('usernameSignUpFormField');
        break;
      case 'password':
        _callBack = (value) => _authModelView.setPassword(value);
        _keyboardType = TextInputType.visiblePassword;
        _obscureText = true;
        _validator = validator ?? validatePassword;
        _key = Key('passwordSignUpFormField');
        break;
      case 'address':
        _callBack = (value) => _authModelView.setAddress(value, type);
        _keyboardType = TextInputType.streetAddress;
        _key = Key('addressSignUpFormField');
        break;
      case 'birthdate':
        _callBack = (value) => _authModelView.setBirthdate(value, type);
        _keyboardType = TextInputType.text;
        _key = Key('birthdateSignUpFormField');
        break;
      case 'email':
        _callBack = (value) => _authModelView.setEmail(value, type);
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateEmail;
        _key = Key('emailSignUpFormField');
        break;
      case 'family_name':
        _callBack = (value) => _authModelView.setFamilyName(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key('familyNameSignUpFormField');
        break;
      case 'gender':
        _callBack = (value) => _authModelView.setGender(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key('genderSignUpFormField');
        break;
      case 'given_name':
        _callBack = (value) => _authModelView.setGivenName(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key('givenNameSignUpFormField');
        break;
      case 'locale':
        _callBack = (value) => _authModelView.setLocale(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key('localeSignUpFormField');
        break;
      case 'middle_name':
        _callBack = (value) => _authModelView.setMiddleName(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key('middleNameSignUpFormField');
        break;
      case 'name':
        _callBack = (value) => _authModelView.setName(value, type);
        _keyboardType = TextInputType.name;
        _validator = validator;
        _key = Key('nameSignUpFormField');
        break;
      case 'nickname':
        _callBack = (value) => _authModelView.setNickname(value, type);
        _keyboardType = TextInputType.name;
        _validator = validator;
        _key = Key('nicknameSignUpFormField');
        break;
      case 'phone_number':
        _callBack = (value) => _authModelView.setPhoneNumber(value, type);
        _keyboardType = TextInputType.phone;
        _validator = validator;
        _key = Key('phoneNumberSignUpFormField');
        break;
      case 'picture':
        _callBack = (value) => _authModelView.setPicture(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key('pictureSignUpFormField');
        break;
      case 'preferredUsername':
        _callBack = (value) => _authModelView.setPreferredUsername(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key('preferredUsernameSignUpFormField');
        break;
      case 'profile':
        _callBack = (value) => _authModelView.setProfile(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key('profileSignUpFormField');
        break;
      case 'zoneinfo':
        _callBack = (value) => _authModelView.setZoneInfo(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key('zoneinfoSignUpFormField');
        break;
      case 'updated_at':
        _callBack = (value) => _authModelView.setUpdatedAt(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key('updatedAtSignUpFormField');
        break;
      case 'website':
        _callBack = (value) => _authModelView.setWebsite(value, type);
        _keyboardType = TextInputType.text;
        _validator = validator;
        _key = Key('webisteSignUpFormField');
        break;
      default:
        if (type != null) {
          _callBack = (value) => _authModelView.setCustom(value, type);
          _keyboardType = TextInputType.text;
          _validator = validator;
          _key = Key('customFormField');
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
  ///Confirm Sign Up Form Field Constructor
  const ConfirmSignUpFormField(
      {Key? key,
      required this.title,
      required this.hintText,
      required this.type,
      this.validator})
      : super(key: key);

  ///Custom title for form field
  final String? title;

  ///Custom hint text for form field
  final String? hintText;

  ///Form field type
  final String? type;

  ///Custom validator for form field
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
        break;
      case 'email':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateEmail;
        break;
      case 'phone_number':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.phone;
        _validator = validator;
        break;
      case 'code':
        _callBack = _authModelView.setCode;
        _keyboardType = TextInputType.visiblePassword;
        _validator = validator;
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
