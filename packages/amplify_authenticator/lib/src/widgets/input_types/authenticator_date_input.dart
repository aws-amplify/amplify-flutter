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

class AuthenticatorDateInput extends AuthenticatorInput {
  const AuthenticatorDateInput(
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
  _AuthenticatorDateInputState createState() => _AuthenticatorDateInputState();
}

class _AuthenticatorDateInputState extends State<AuthenticatorDateInput> {
  String? _dateString;

  late TextEditingController _controller;

  String _convertToDateString(DateTime dt) {
    return "${dt.year.toString()}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')}";
  }

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
      widget.onChanged(_dateString!);
    }
  }

  @override
  Widget build(BuildContext context) {
    _controller =
        TextEditingController(text: _dateString ?? widget.initialValue);
    return Row(children: [
      IconButton(
        icon: const Icon(Icons.calendar_today),
        tooltip: 'Select birthdate',
        onPressed: _pickTime,
      ),
      Expanded(
          child: TextFormField(
        style: widget.enabled
            ? null
            : const TextStyle(
                color: AuthenticatorColors.disabledTextColor,
              ),
        enabled: widget.enabled,
        validator: widget.validator,
        onChanged: (newValue) {
          if ([4, 7].contains(newValue.length)) {
            _controller.value = TextEditingValue(text: _controller.text + '-');
            _controller.selection = TextSelection.fromPosition(
                TextPosition(offset: _controller.text.length));
          }
          widget.onChanged(newValue);
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
        controller: _controller,
      ))
    ]);
  }
}
