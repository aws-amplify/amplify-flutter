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

import 'package:amplify_authenticator/src/widgets/form.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

mixin AuthenticatorTextField<FieldType,
        T extends AuthenticatorFormField<FieldType, String>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    final hintText = widget.hintText == null
        ? widget.hintTextKey?.resolve(context, inputResolver)
        : widget.hintText!;
    return ValueListenableBuilder<bool>(
      valueListenable:
          AuthenticatorFormState.of(context).obscureTextToggleValue,
      builder: (BuildContext context, bool toggleObscureText, Widget? _) {
        var obscureText = this.obscureText && toggleObscureText;
        return TextFormField(
          style: enabled
              ? null
              : TextStyle(color: Theme.of(context).disabledColor),
          initialValue: initialValue,
          enabled: enabled,
          validator: widget.validatorOverride ?? validator,
          onChanged: onChanged,
          autocorrect: false,
          decoration: InputDecoration(
            labelText: labelText,
            prefixIcon: prefix,
            prefixIconConstraints: const BoxConstraints(
              minWidth: 40,
              maxWidth: 70,
            ),
            suffixIcon: suffix,
            errorMaxLines: errorMaxLines,
            hintText: hintText,
          ),
          maxLength: maxLength,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          keyboardType: keyboardType,
          obscureText: obscureText,
          onFieldSubmitted: onFieldSubmitted,
        );
      },
    );
  }
}
