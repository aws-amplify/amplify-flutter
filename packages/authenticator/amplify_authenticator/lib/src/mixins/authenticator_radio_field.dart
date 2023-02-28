// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/input_resolver.dart';
import 'package:amplify_authenticator/src/widgets/authenticator_input_config.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';

mixin AuthenticatorRadioField<FieldType extends Enum, FieldValue,
        T extends AuthenticatorFormField<FieldType, FieldValue>>
    on AuthenticatorFormFieldState<FieldType, FieldValue, T>
    implements SelectableConfig<InputResolverKey, FieldValue> {
  @override
  FieldValue get initialValue;

  @override
  FieldValue get selectionValue => _selectionValue;
  late FieldValue _selectionValue = initialValue;

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    return Column(
      children: <Widget>[
        for (var selection in selections)
          ListTile(
            key: Key('${selection.value}${widget.titleKey}'),
            horizontalTitleGap: 0,
            contentPadding: EdgeInsets.zero,
            title: Text(
              inputResolver.resolve(
                context,
                selection.label,
              ),
            ),
            leading: Radio<FieldValue>(
              value: selection.value,
              groupValue: selectionValue,
              onChanged: (FieldValue? value) {
                if (value != null) {
                  setState(() {
                    _selectionValue = value;
                  });
                  onChanged(value);
                }
              },
              activeColor: Theme.of(context).primaryColor,
            ),
            onTap: () {
              setState(() {
                _selectionValue = selection.value;
              });
              onChanged(selection.value);
            },
          ),
      ],
    );
  }
}
