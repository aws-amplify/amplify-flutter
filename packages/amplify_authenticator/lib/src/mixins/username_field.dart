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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';

enum _UsernameType {
  username,
  email,
  phoneNumber,
  emailOrPhoneNumber,
}

mixin AuthenticatorUsernameField<FieldType,
        T extends AuthenticatorFormField<FieldType, UsernameInput, T>>
    on AuthenticatorFormFieldState<FieldType, UsernameInput, T> {
  // Toggle value for the email or phone number case.
  bool _useEmail = true;

  _UsernameType get usernameType {
    if (usernameAttributes.isEmpty) {
      return _UsernameType.username;
    }
    if (usernameAttributes.length >= 2) {
      return _UsernameType.emailOrPhoneNumber;
    }
    final usernameAttribute = usernameAttributes.single;
    if (usernameAttribute == CognitoUserAttributeKey.email) {
      return _UsernameType.email;
    }
    assert(
      usernameAttribute == CognitoUserAttributeKey.phoneNumber,
      'Unknown username attribute: $usernameAttribute',
    );
    return _UsernameType.phoneNumber;
  }

  UsernameType get usernameInputType {
    switch (usernameType) {
      case _UsernameType.username:
        return UsernameType.username;
      case _UsernameType.email:
        return UsernameType.email;
      case _UsernameType.phoneNumber:
        return UsernameType.phoneNumber;
      case _UsernameType.emailOrPhoneNumber:
        if (_useEmail) {
          return UsernameType.email;
        }
        return UsernameType.phoneNumber;
    }
  }

  @override
  ValueChanged<UsernameInput> get onChanged {
    void _onEmailChange(UsernameInput input) {
      viewModel.setEmail(input.username);
      viewModel.setUsername(input.username);
    }

    void _onPhoneChange(UsernameInput input) {
      viewModel.setPhoneNumber(input.username);
      viewModel.setUsername(input.username);
    }

    switch (usernameType) {
      case _UsernameType.username:
        return (input) {
          viewModel.setUsername(input.username);
        };
      case _UsernameType.email:
        return _onEmailChange;
      case _UsernameType.phoneNumber:
        return _onPhoneChange;
      case _UsernameType.emailOrPhoneNumber:
        if (_useEmail) {
          return _onEmailChange;
        }
        return _onPhoneChange;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (usernameType) {
      case _UsernameType.username:
        return TextInputType.text;
      case _UsernameType.email:
        return TextInputType.emailAddress;
      case _UsernameType.phoneNumber:
        return TextInputType.phone;
      case _UsernameType.emailOrPhoneNumber:
        if (_useEmail) {
          return TextInputType.emailAddress;
        }
        return TextInputType.phone;
    }
  }

  InputResolverKey get hintKey {
    switch (usernameType) {
      case _UsernameType.username:
        return InputResolverKey.usernameHint;
      case _UsernameType.email:
        return InputResolverKey.emailHint;
      case _UsernameType.phoneNumber:
        return InputResolverKey.phoneNumberHint;
      case _UsernameType.emailOrPhoneNumber:
        if (_useEmail) {
          return InputResolverKey.emailHint;
        }
        return InputResolverKey.phoneNumberHint;
    }
  }

  InputResolverKey get titleKey {
    switch (usernameType) {
      case _UsernameType.username:
        return InputResolverKey.usernameTitle;
      case _UsernameType.email:
        return InputResolverKey.emailTitle;
      case _UsernameType.phoneNumber:
        return InputResolverKey.phoneNumberTitle;
      case _UsernameType.emailOrPhoneNumber:
        if (_useEmail) {
          return InputResolverKey.emailTitle;
        }
        return InputResolverKey.phoneNumberTitle;
    }
  }

  @override
  Widget get title {
    final inputResolver = stringResolver.inputs;
    final labelText = Text(inputResolver.resolve(context, titleKey));
    switch (usernameType) {
      case _UsernameType.username:
      case _UsernameType.email:
      case _UsernameType.phoneNumber:
        return labelText;
      case _UsernameType.emailOrPhoneNumber:
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            labelText,
            IconTheme(
              data: const IconThemeData(size: 16.0),
              child: Row(
                children: [
                  const Icon(Icons.phone),
                  Switch(
                    value: _useEmail,
                    onChanged: (val) {
                      setState(() {
                        _useEmail = val;
                      });
                    },
                  ),
                  const Icon(Icons.email),
                ],
              ),
            ),
          ],
        );
    }
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    final hintText = inputResolver.resolve(context, hintKey);
    return TextFormField(
      style: enabled
          ? null
          : const TextStyle(
              color: AmplifyColors.fontDisabled,
            ),
      initialValue: initialValue?.username,
      enabled: enabled,
      validator: (String? username) {
        final _validator = widget.validatorOverride ?? validator;
        return _validator(UsernameInput(
          type: usernameInputType,
          username: username ?? '',
        ));
      },
      onChanged: (String username) {
        return onChanged(UsernameInput(
          type: usernameInputType,
          username: username,
        ));
      },
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        errorMaxLines: errorMaxLines,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        hintText: hintText,
        border: const OutlineInputBorder(),
        isDense: true,
      ),
      keyboardType: keyboardType,
      obscureText: false,
    );
  }
}
