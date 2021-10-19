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

import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/widgets/input_types/authenticator_input.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthenticatorPhoneInput extends AuthenticatorInput {
  const AuthenticatorPhoneInput(
      {required Key key,
      required bool enabled,
      required void Function(String) onChanged,
      required FormFieldValidator<String>? validator,
      required TextInputType keyboardType,
      required String? initialValue,
      required Widget? suffixIcon,
      required Widget? companionWidget,
      required int errorMaxLines,
      required bool obscureText,
      required String hintText})
      : super(
            key: key,
            enabled: enabled,
            onChanged: onChanged,
            validator: validator,
            keyboardType: keyboardType,
            initialValue: initialValue,
            suffixIcon: suffixIcon,
            companionWidget: companionWidget,
            errorMaxLines: errorMaxLines,
            obscureText: obscureText,
            hintText: hintText);

  @override
  _AuthenticatorPhoneInputState createState() =>
      _AuthenticatorPhoneInputState();
}

class _AuthenticatorPhoneInputState extends State<AuthenticatorPhoneInput> {
  String _selectedValue = '1';

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      DropdownButton<String>(
        value: _selectedValue,
        items: <String>['1', '2', '3', '4'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
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
        style: widget.enabled
            ? null
            : const TextStyle(
                color: AuthenticatorColors.disabledTextColor,
              ),
        initialValue: widget.initialValue,
        enabled: widget.enabled,
        validator: widget.validator,
        onChanged: (phoneValue) {
          widget.onChanged('+$_selectedValue$phoneValue');
        },
        decoration: InputDecoration(
          suffixIcon: widget.suffixIcon,
          errorMaxLines: widget.errorMaxLines,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
          hintText: widget.hintText,
          border: const OutlineInputBorder(),
        ),
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
      ))
    ]);
  }
}
