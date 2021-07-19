import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/constants/theme_constants.dart';
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
    String? Function(String?)? _validator;
    TextInputType? _keyboardType;

    switch (type) {
      case 'username':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.text;
        _validator = validator ?? validateUsername;
        break;
      case 'email':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateUsername;
        break;
      case 'phone_number':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.phone;
        _validator = validator ?? validateUsername;
        break;
      case 'password':
        _callBack = _authModelView.setPassword;
        _keyboardType = TextInputType.visiblePassword;
        _obscureText = true;
        _validator = validator ?? validatePassword;
        break;
      default:
        break;
    }

    return FormFieldContainer(
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
    String? Function(String?)? _validator;
    TextInputType? _keyboardType;
    switch (type) {
      case 'username':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.text;
        _validator = validator ?? validateUsername;
        break;
      case 'password':
        _callBack = _authModelView.setPassword;
        _keyboardType = TextInputType.visiblePassword;
        _obscureText = true;
        _validator = validator ?? validatePassword;
        break;
      case 'address':
        _callBack = _authModelView.setAddress;
        _keyboardType = TextInputType.streetAddress;
        break;
      case 'birthdate':
        _callBack = _authModelView.setBirthdate;
        _keyboardType = TextInputType.text;
        break;
      case 'email':
        _callBack = _authModelView.setEmail;
        _keyboardType = TextInputType.emailAddress;
        _validator = validator ?? validateEmail;
        break;
      case 'family_name':
        _callBack = _authModelView.setFamilyName;
        _keyboardType = TextInputType.text;
        _validator = validator;
        break;
      case 'gender':
        _callBack = _authModelView.setGender;
        _keyboardType = TextInputType.text;
        _validator = validator;
        break;
      case 'given_name':
        _callBack = _authModelView.setGivenName;
        _keyboardType = TextInputType.text;
        _validator = validator;
        break;
      case 'locale':
        _callBack = _authModelView.setLocale;
        _keyboardType = TextInputType.text;
        _validator = validator;
        break;
      case 'middle_name':
        _callBack = _authModelView.setMiddleName;
        _keyboardType = TextInputType.text;
        _validator = validator;
        break;
      case 'name':
        _callBack = _authModelView.setName;
        _keyboardType = TextInputType.name;
        _validator = validator;
        break;
      case 'nickname':
        _callBack = _authModelView.setNickname;
        _keyboardType = TextInputType.name;
        _validator = validator;
        break;
      case 'phone_number':
        _callBack = _authModelView.setPhoneNumber;
        _keyboardType = TextInputType.phone;
        _validator = validator;
        break;
      case 'picture':
        _callBack = _authModelView.setPicture;
        _keyboardType = TextInputType.text;
        _validator = validator;
        break;
      case 'preferredUsername':
        _callBack = _authModelView.setPreferredUsername;
        _keyboardType = TextInputType.text;
        _validator = validator;
        break;
      case 'profile':
        _callBack = _authModelView.setProfile;
        _keyboardType = TextInputType.text;
        _validator = validator;
        break;
      case 'zoneinfo':
        _callBack = _authModelView.setZoneInfo;
        _keyboardType = TextInputType.text;
        _validator = validator;
        break;
      case 'updated_at':
        _callBack = _authModelView.setUpdatedAt;
        _keyboardType = TextInputType.text;
        _validator = validator;
        break;
      case 'website':
        _callBack = _authModelView.setWebsite;
        _keyboardType = TextInputType.text;
        _validator = validator;
        break;
      default:
        print('Please enter a correct type of form field');
        break;
    }
    return Container(
      margin: FormFieldConstants.marginBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title!),
          const Padding(padding: FormFieldConstants.gap),
          TextFormField(
            validator: _validator,
            onChanged: _callBack,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColor != Colors.blue
                            ? Theme.of(context).primaryColor
                            : AuthenticatorColors.primary)),
                hintText: hintText!,
                border: OutlineInputBorder()),
            keyboardType: _keyboardType,
            obscureText: _obscureText,
          ),
        ],
      ),
    );
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
        break;
    }

    return FormFieldContainer(
        keyboardType: _keyboardType!,
        callback: _callBack,
        hintText: hintText,
        title: title,
        validator: _validator,
        obscureText: _obscureText);
  }
}
