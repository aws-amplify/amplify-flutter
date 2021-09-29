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
import 'package:amplify_authenticator/src/enums/signup_types.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/utils/validators.dart';
import 'package:amplify_flutter/src/config/auth/auth_block_config.dart';
import 'package:flutter/widgets.dart';

class DefaultSignUpForm extends SignUpForm {
  DefaultSignUpForm() : super(formFields: FormFields(children: const []));

  @override
  SignUpForm build(BuildContext context) {
    final _authStrings = InheritedStrings.of(context)!.resolver;
    AuthBlockConfig? _authConfig = InheritedConfig.of(context)
        ?.config
        ?.auth
        ?.awsCognitoAuthPlugin
        ?.auth?['Default'];

    List<Widget> _signUpAttributes = [
      SignUpFormField(
          title: _authStrings.inputs.username_title(context),
          hintText: _authStrings.inputs.username_hint(context),
          type: 'username'),
      SignUpFormField(
          title: _authStrings.inputs.password_title(context),
          hintText: _authStrings.inputs.password_hint(context),
          type: 'password'),
      SignUpFormField(
          title: _authStrings.inputs.password_confirmation_title(context),
          hintText: _authStrings.inputs.password_confirmation_hint(context),
          type: 'passwordConfirmation'),
    ];

    _authConfig?.signupAttributes?.forEach((attr) {
      switch (attr) {
        case 'ADDRESS':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.address_title(context),
              hintText: _authStrings.inputs.address_hint(context),
              type: 'address'));
          break;
        case 'BIRTHDATE':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.birthdate_title(context),
              hintText: _authStrings.inputs.birthdate_hint(context),
              type: 'birthdate'));
          break;
        case 'EMAIL':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.email_title(context),
              hintText: _authStrings.inputs.email_hint(context),
              type: 'email'));
          break;
        case 'FAMILY_NAME':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.family_name_title(context),
              hintText: _authStrings.inputs.family_name_hint(context),
              type: 'family_name'));
          break;
        case 'MIDDLE_NAME':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.middle_name_title(context),
              hintText: _authStrings.inputs.middle_name_hint(context),
              type: 'middle_name'));
          break;
        case 'GENDER':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.gender_title(context),
              hintText: _authStrings.inputs.gender_hint(context),
              type: 'gender'));
          break;

        /// TODO: Potentially remove locale and add to api call based on phone locale
        case 'LOCALE':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.locale_title(context),
              hintText: _authStrings.inputs.locale_hint(context),
              type: 'locale'));
          break;
        case 'GIVEN_NAME':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.given_name_title(context),
              hintText: _authStrings.inputs.given_name_hint(context),
              type: 'given_name'));
          break;
        case 'NAME':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.name_title(context),
              hintText: _authStrings.inputs.name_hint(context),
              type: 'name'));
          break;
        case 'NICKNAME':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.nickname_title(context),
              hintText: _authStrings.inputs.nickname_hint(context),
              type: 'nickname'));
          break;
        case 'PHONE_NUMBER':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.phone_number_title(context),
              hintText: _authStrings.inputs.phone_number_hint(context),
              type: 'phone_number'));
          break;
        case 'PREFERRED_USERNAME':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.preferred_username_title(context),
              hintText: _authStrings.inputs.preferred_username_hint(context),
              type: 'preferred_username'));
          break;
        case 'PICTURE':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.picture_title(context),
              hintText: _authStrings.inputs.picture_hint(context),
              type: 'picture'));
          break;
        case 'PROFILE':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.profile_title(context),
              hintText: _authStrings.inputs.profile_hint(context),
              type: 'profile'));
          break;

        /// TODO: Potentially remove updated_at and add to api call based on device datetime
        case 'UPDATED_AT':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.updated_at_title(context),
              hintText: _authStrings.inputs.updated_at_hint(context),
              type: 'updated_at'));
          break;
        case 'WEBSITE':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.website_title(context),
              hintText: _authStrings.inputs.website_hint(context),
              type: 'website'));
          break;

        /// TODO: Potentially remove zoneinfo and add to api call based on device timezone
        case 'ZONEINFO':
          _signUpAttributes.add(SignUpFormField(
              title: _authStrings.inputs.zoneinfo_title(context),
              hintText: _authStrings.inputs.zoneinfo_hint(context),
              type: 'zoneinfo'));
          break;
      }
      ;
    });
    return SignUpForm(
      formFields: FormFields(
        children: _signUpAttributes,
      ),
    );
  }
}
