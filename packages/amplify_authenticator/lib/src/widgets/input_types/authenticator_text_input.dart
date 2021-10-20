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
import 'package:amplify_authenticator/src/state/inherited_input.dart';
import 'package:amplify_authenticator/src/widgets/input_types/authenticator_input.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthenticatorTextInput extends AuthenticatorInput {
  const AuthenticatorTextInput({required Key key, required bool obscureText})
      : super(key: key, obscureText: obscureText);

  @override
  _AuthenticatorTextInputState createState() => _AuthenticatorTextInputState();
}

class _AuthenticatorTextInputState extends AuthenticatorInputState {
  @override
  Widget build(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    inheritedInput = InheritedInput.of(context)!;

    hintText = inheritedInput?.field.hintText == null
        ? inputResolver.resolve(context, inheritedInput!.field.hintTextKey!)
        : inheritedInput!.field.hintText!;

    return TextFormField(
      style: inheritedInput!.enabled
          ? null
          : const TextStyle(
              color: AuthenticatorColors.disabledTextColor,
            ),
      initialValue: inheritedInput!.initialValue,
      enabled: inheritedInput!.enabled,
      validator: inheritedInput!.validator,
      onChanged: inheritedInput!.onChanged,
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
      keyboardType: inheritedInput!.keyboardType,
      obscureText: widget.obscureText,
    );
  }
}
