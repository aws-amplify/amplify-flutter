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

import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InheritedInput extends InheritedWidget {
  final void Function(String) onChanged;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? initialValue;
  final bool enabled;
  final Widget? suffixIcon;
  final Widget? companionWidget;
  final int errorMaxLines;

  const InheritedInput({
    Key? key,
    this.initialValue,
    this.suffixIcon,
    this.companionWidget,
    this.validator,
    required this.errorMaxLines,
    required this.obscureText,
    required this.onChanged,
    required this.keyboardType,
    required this.enabled,
    required this.field,
    required Widget child,
  }) : super(key: key, child: child);

  final AuthenticatorFormField field;

  static InheritedInput? of(BuildContext context) =>
      context.findAncestorWidgetOfExactType<InheritedInput>();

  @override
  bool updateShouldNotify(covariant InheritedInput oldWidget) {
    return oldWidget.field != field;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('obscureText', obscureText));
    properties.add(ObjectFlagProperty<void Function(String p1)>.has(
        'onChanged', onChanged));
    properties.add(ObjectFlagProperty<FormFieldValidator<String>?>.has(
        'validator', validator));
    properties
        .add(DiagnosticsProperty<TextInputType>('keyboardType', keyboardType));
    properties.add(StringProperty('initialValue', initialValue));
    properties.add(DiagnosticsProperty<bool>('enabled', enabled));
    properties.add(IntProperty('errorMaxLines', errorMaxLines));
  }
}
