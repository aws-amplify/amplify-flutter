// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

mixin AuthenticatorDateField<FieldType extends Enum,
        T extends AuthenticatorFormField<FieldType, String>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  static final DateFormat _formatter = DateFormat('yyyy-MM-dd');

  String _convertToDateString(DateTime dt) {
    return _formatter.format(dt);
  }

  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    final hintText = widget.hintText == null
        ? inputResolver.resolve(context, widget.hintTextKey!)
        : widget.hintText!;

    DateTime now = DateTime.now();
    Future<void> pickTime() async {
      final date = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: DateTime(DateTime.now().year - 110),
        lastDate: now,
        initialEntryMode: DatePickerEntryMode.input,
      );
      if (date != null) {
        _controller.text = _convertToDateString(date);
        onChanged.call(_controller.text);
      }
    }

    return TextFormField(
      style: enabled
          ? null
          : TextStyle(
              color: Theme.of(context).disabledColor,
            ),
      enabled: enabled,
      readOnly: true,
      onTap: pickTime,
      validator: validator,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_today),
          tooltip: 'Select birthdate',
          onPressed: pickTime,
        ),
        errorMaxLines: errorMaxLines,
        labelText: labelText,
        hintText: hintText,
      ),
      keyboardType: TextInputType.datetime,
      controller: _controller,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
