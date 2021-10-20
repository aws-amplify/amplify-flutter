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

import 'dart:io';

import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/state/inherited_input.dart';
import 'package:amplify_authenticator/src/utils/country_code.dart';
import 'package:amplify_authenticator/src/widgets/input_types/authenticator_input.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthenticatorPhoneInput extends AuthenticatorInput {
  const AuthenticatorPhoneInput({required Key key, required bool obscureText})
      : super(key: key, obscureText: obscureText);

  @override
  _AuthenticatorPhoneInputState createState() =>
      _AuthenticatorPhoneInputState();
}

class _AuthenticatorPhoneInputState extends AuthenticatorInputState {
  @override
  Widget build(BuildContext context) {
    String _selectedValue = countryCodes[0].value;
    List<int> countryCodeStrings = countryCodes
        .map((Country country) {
          return int.parse(country.value);
        })
        .toSet()
        .toList();
    countryCodeStrings.sort();
    final inputResolver = stringResolver.inputs;
    inheritedInput = InheritedInput.of(context)!;

    hintText = inheritedInput?.field.hintText == null
        ? inputResolver.resolve(context, inheritedInput!.field.hintTextKey!)
        : inheritedInput!.field.hintText!;

    return Row(children: [
      DropdownButton<String>(
        value: _selectedValue,
        items: countryCodeStrings.map((int value) {
          return DropdownMenuItem<String>(
            value: value.toString(),
            child: Text('+$value'),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            _selectedValue = newValue!;
          });
        },
      ),
      Expanded(
          child: TextFormField(
        style: inheritedInput!.enabled
            ? null
            : const TextStyle(
                color: AuthenticatorColors.disabledTextColor,
              ),
        initialValue: inheritedInput!.initialValue,
        enabled: inheritedInput!.enabled,
        validator: inheritedInput!.validator,
        onChanged: (phoneValue) {
          inheritedInput!.onChanged('+$_selectedValue$phoneValue');
        },
        decoration: InputDecoration(
          suffixIcon: inheritedInput!.suffixIcon,
          errorMaxLines: inheritedInput!.errorMaxLines,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
        keyboardType: TextInputType.phone,
        obscureText: widget.obscureText,
      ))
    ]);
  }
}
