import 'package:flutter/material.dart';

import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';

// ignore: public_member_api_docs
class AuthFormField extends StatelessWidget {
  // ignore: public_member_api_docs
  AuthFormField(
      {required this.title, required this.hintText, required this.type});
  final String? title;
  final String? hintText;
  final String? type;

  @override
  Widget build(BuildContext context) {
    final _authModelView = InheritedAuthViewModel.of(context)!.authViewModel;

    var _callBack;
    TextInputType? _keyboardType;
    switch (type) {
      case 'username':
        _callBack = _authModelView.setUsername;
        _keyboardType = TextInputType.text;
        break;
      case 'password':
        _callBack = _authModelView.setPassword;
        _keyboardType = TextInputType.visiblePassword;
        break;
      case 'code':
        _callBack = _authModelView.setCode;
        _keyboardType = TextInputType.number;
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
        break;
      case 'family_name':
        _callBack = _authModelView.setFamilyName;
        _keyboardType = TextInputType.text;
        break;
      case 'gender':
        _callBack = _authModelView.setGender;
        _keyboardType = TextInputType.text;
        break;
      case 'given_name':
        _callBack = _authModelView.setGivenName;
        _keyboardType = TextInputType.text;
        break;
      case 'locale':
        _callBack = _authModelView.setLocale;
        _keyboardType = TextInputType.text;
        break;
      case 'middle_name':
        _callBack = _authModelView.setMiddleName;
        _keyboardType = TextInputType.text;
        break;
      case 'name':
        _callBack = _authModelView.setName;
        _keyboardType = TextInputType.name;
        break;
      case 'nickname':
        _callBack = _authModelView.setNickname;
        _keyboardType = TextInputType.name;
        break;
      case 'phone_number':
        _callBack = _authModelView.setPhoneNumber;
        _keyboardType = TextInputType.phone;
        break;
      case 'picture':
        _callBack = _authModelView.setPicture;
        _keyboardType = TextInputType.text;
        break;
      case 'preferredUsername':
        _callBack = _authModelView.setPreferredUsername;
        _keyboardType = TextInputType.text;
        break;
      case 'profile':
        _callBack = _authModelView.setProfile;
        _keyboardType = TextInputType.text;
        break;
      case 'zoneinfo':
        _callBack = _authModelView.setZoneInfo;
        _keyboardType = TextInputType.text;
        break;
      case 'updated_at':
        _callBack = _authModelView.setUpdatedAt;
        _keyboardType = TextInputType.text;
        break;
      case 'website':
        _callBack = _authModelView.setWebsite;
        _keyboardType = TextInputType.text;
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
          ),
        ],
      ),
    );
  }
}
