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
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/text_customization/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/form.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';

class AuthenticatorTextInput extends StatelessAuthenticatorComponent {
  const AuthenticatorTextInput({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel,
      AuthStringResolver stringResolver) {
    final parentState =
        context.findAncestorStateOfType<AuthenticatorFormFieldState>()!;
    final inputResolver = stringResolver.inputs;
    final hintText = parentState.widget.hintText == null
        ? inputResolver.resolve(context, parentState.widget.hintTextKey!)
        : parentState.widget.hintText!;
    return ValueListenableBuilder<bool?>(
        valueListenable: context
            .findAncestorStateOfType<AuthenticatorFormState>()!
            .obscureTextToggleValue,
        builder: (BuildContext context, bool? toggleObscureText, Widget? _) {
          return TextFormField(
            style: parentState.enabled
                ? null
                : const TextStyle(
                    color: AuthenticatorColors.disabledTextColor,
                  ),
            initialValue: parentState.initialValue,
            enabled: parentState.enabled,
            validator: parentState.validator,
            onChanged: parentState.onChanged,
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
            keyboardType: parentState.keyboardType,
            obscureText: toggleObscureText ?? true,
          );
        });
  }
}
