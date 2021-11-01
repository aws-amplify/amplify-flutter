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

import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/utils/country_code.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthenticatorPhoneInput extends StatefulWidget {
  const AuthenticatorPhoneInput({Key? key}) : super(key: key);

  @override
  _AuthenticatorPhoneInputState createState() =>
      _AuthenticatorPhoneInputState();
}

class _AuthenticatorPhoneInputState extends State<AuthenticatorPhoneInput> {
  String _selectedValue = countryCodes[0].value;

  @override
  Widget build(BuildContext context) {
    final parentState =
        context.findAncestorStateOfType<AuthenticatorFormFieldState>()!;
    final inputResolver = InheritedStrings.of(context).inputs;
    List<int> countryCodeStrings = countryCodes
        .map((Country country) {
          return int.parse(country.value);
        })
        .toSet()
        .toList();
    countryCodeStrings.sort();

    final hintText = parentState.widget.hintText == null
        ? inputResolver.resolve(context, parentState.widget.hintTextKey!)
        : parentState.widget.hintText!;

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
        style: parentState.enabled
            ? null
            : const TextStyle(
                color: AmplifyColors.black20,
              ),
        initialValue: parentState.initialValue,
        enabled: parentState.enabled,
        validator: parentState.validator,
        onChanged: (phoneValue) {
          parentState.widget.fieldDataType
              .onChanged('+$_selectedValue$phoneValue');
        },
        decoration: InputDecoration(
          suffixIcon: parentState.suffixIcon,
          errorMaxLines: parentState.errorMaxLines,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
        keyboardType: TextInputType.phone,
      ))
    ]);
  }
}
