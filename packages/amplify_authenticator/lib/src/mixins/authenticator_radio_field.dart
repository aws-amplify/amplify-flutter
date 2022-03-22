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

import 'package:amplify_authenticator/src/l10n/input_resolver.dart';
import 'package:amplify_authenticator/src/widgets/authenticator_input_config.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';

import 'package:flutter/material.dart';

mixin AuthenticatorRadioField<FieldType, FieldValue,
        T extends AuthenticatorFormField<FieldType, FieldValue, T>>
    on AuthenticatorFormFieldState<FieldType, FieldValue, T>
    implements SelectableConfig<InputResolverKey, FieldValue> {
  @override
  FieldValue get selectionValue => _selectionValue;
  late FieldValue _selectionValue = selections.first.value;

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
                }
                if (selectionValue != null) onChanged(selectionValue!);
              },
              activeColor: Theme.of(context).primaryColor,
            ),
          )
      ],
    );
  }
}
