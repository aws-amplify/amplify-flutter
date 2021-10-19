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

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

abstract class AuthenticatorInput extends StatefulWidget {
  final bool enabled;
  final void Function(String) onChanged;
  final FormFieldValidator<String>? validator;
  final TextInputType keyboardType;
  final String? initialValue;
  final Widget? suffixIcon;
  final Widget? companionWidget;
  final int errorMaxLines;
  final bool obscureText;
  final String hintText;

  const AuthenticatorInput(
      {required Key key,
      required this.enabled,
      required this.onChanged,
      required this.validator,
      required this.keyboardType,
      required this.initialValue,
      required this.suffixIcon,
      required this.companionWidget,
      required this.errorMaxLines,
      required this.obscureText,
      required this.hintText})
      : super(key: key);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        ObjectFlagProperty<void Function(String)>.has('callback', onChanged));
    properties.add(ObjectFlagProperty<FormFieldValidator<String>?>.has(
        'validator', validator));
    properties.add(StringProperty('initialValue', initialValue));
    properties.add(DiagnosticsProperty<bool>('obscureText', obscureText));
    properties.add(DiagnosticsProperty<bool?>('enabled', enabled));
    properties.add(DiagnosticsProperty<String>('hintText', hintText));
    properties
        .add(DiagnosticsProperty<TextInputType>('keyboardType', keyboardType));
    properties.add(IntProperty('errorMaxLines', errorMaxLines));
  }
}
