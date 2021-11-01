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
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/utils/country_code.dart';
import 'package:amplify_authenticator/src/widgets/input_types/field_config.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthenticatorRadioButtonsInput extends StatefulWidget {
  final RadioButtonFieldConfig config;
  const AuthenticatorRadioButtonsInput({Key? key, required this.config})
      : super(key: key);

  @override
  _AuthenticatorRadioButtonInputState createState() =>
      _AuthenticatorRadioButtonInputState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<RadioButtonFieldConfig>('config', config));
  }
}

class _AuthenticatorRadioButtonInputState
    extends State<AuthenticatorRadioButtonsInput> {
  Enum? _selectedValue;

  @override
  Widget build(BuildContext context) {
    final parentState =
        context.findAncestorStateOfType<AuthenticatorFormFieldState>()!;
    final inputResolver = InheritedStrings.of(context).inputs;
    return Column(
      children: <Widget>[
        for (var selection in widget.config.selections)
          ListTile(
            horizontalTitleGap: 0,
            contentPadding: EdgeInsets.zero,
            title: Text(inputResolver.resolve(
              context,
              selection.label,
            )),
            leading: Radio(
              value: selection.value,
              groupValue: _selectedValue,
              onChanged: (Enum? value) {
                setState(() {
                  _selectedValue = value;
                });
                parentState.widget.fieldDataType
                    .onChanged(_selectedValue.toString());
              },
              activeColor: Colors.green,
            ),
          )
      ],
    );
  }
}
