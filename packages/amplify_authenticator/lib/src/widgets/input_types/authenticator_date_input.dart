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

import 'package:amplify_authenticator/src/l10n/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthenticatorDateInput extends StatelessAuthenticatorComponent {
  const AuthenticatorDateInput({Key? key}) : super(key: key);

  String _convertToDateString(DateTime dt) {
    return "${dt.year.toString()}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')}";
  }

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel,
      AuthStringResolver stringResolver) {
    final parentState =
        context.findAncestorStateOfType<AuthenticatorFormFieldState>()!;
    final inputResolver = stringResolver.inputs;
    final hintText = parentState.widget.hintText == null
        ? inputResolver.resolve(context, parentState.widget.hintTextKey!)
        : parentState.widget.hintText!;
    final TextEditingController _controller =
        TextEditingController(text: parentState.initialValue);
    void _pickTime() {
      showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(DateTime.now().year - 110),
              lastDate: DateTime.now())
          .then((d) => _controller.value =
              TextEditingValue(text: _convertToDateString(d!)));
    }

    return Row(children: [
      IconButton(
        icon: const Icon(Icons.calendar_today),
        tooltip: 'Select birthdate',
        onPressed: _pickTime,
      ),
      Expanded(
          child: TextFormField(
        inputFormatters: [LengthLimitingTextInputFormatter(10)],
        style: parentState.enabled
            ? null
            : const TextStyle(
                color: AmplifyColors.black20,
              ),
        enabled: parentState.enabled,
        readOnly: true,
        validator: parentState.validator,
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
        keyboardType: TextInputType.datetime,
        obscureText: parentState.obscureText,
        controller: _controller,
      ))
    ]);
  }
}
