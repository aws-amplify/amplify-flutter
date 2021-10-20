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
import 'package:flutter/services.dart';

class AuthenticatorDateInput extends AuthenticatorInput {
  const AuthenticatorDateInput({required Key key, required bool obscureText})
      : super(key: key, obscureText: obscureText);

  @override
  _AuthenticatorDateInputState createState() => _AuthenticatorDateInputState();
}

class _AuthenticatorDateInputState extends AuthenticatorInputState {
  String? _dateString;

  late TextEditingController _controller;

  String _convertToDateString(DateTime dt) {
    return "${dt.year.toString()}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')}";
  }

  // ignore: avoid_void_async
  void _pickTime() async {
    DateTime? d = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 110),
        lastDate: DateTime.now());
    if (d != null) {
      setState(() {
        _dateString = _convertToDateString(d);
      });
      inheritedInput!.onChanged(_dateString!);
    }
  }

  String _checkHyphenFormat(String text) {
    final chars = text.split('');
    if (chars.length > 4) {
      if (chars[4] != '-') {
        chars.insert(4, '-');
      }
    }
    if (chars.length > 7) {
      if (chars[7] != '-') {
        chars.insert(7, '-');
      }
    }
    return chars.join();
  }

  @override
  Widget build(BuildContext context) {
    inheritedInput = InheritedInput.of(context)!;
    _controller = TextEditingController(
        text: _dateString ?? inheritedInput!.initialValue);
    final inputResolver = stringResolver.inputs;
    inheritedInput = InheritedInput.of(context)!;

    hintText = inheritedInput?.field.hintText == null
        ? inputResolver.resolve(context, inheritedInput!.field.hintTextKey!)
        : inheritedInput!.field.hintText!;

    bool deletion = false;
    int previousTextLength = 0;

    return Row(children: [
      IconButton(
        icon: const Icon(Icons.calendar_today),
        tooltip: 'Select birthdate',
        onPressed: _pickTime,
      ),
      Expanded(
          child: TextFormField(
        inputFormatters: [LengthLimitingTextInputFormatter(10)],
        style: inheritedInput!.enabled
            ? null
            : const TextStyle(
                color: AuthenticatorColors.disabledTextColor,
              ),
        enabled: inheritedInput!.enabled,
        validator: inheritedInput!.validator,
        onChanged: (newValue) {
          deletion = previousTextLength >= newValue.length;
          previousTextLength = newValue.length;
          // add hyphens as user types
          // TODO: debounce
          if (!deletion) {
            _controller.value =
                TextEditingValue(text: _checkHyphenFormat(_controller.text));
            _controller.selection = TextSelection.fromPosition(
                TextPosition(offset: _controller.text.length));
            // previousTextLength++;
          }

          inheritedInput!.onChanged(newValue);
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
        keyboardType: TextInputType.datetime,
        obscureText: widget.obscureText,
        controller: _controller,
      ))
    ]);
  }
}
