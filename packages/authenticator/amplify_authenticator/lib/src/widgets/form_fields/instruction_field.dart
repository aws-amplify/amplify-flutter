// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';

mixin InstructionField<FieldType extends Enum,
        T extends AuthenticatorFormField<FieldType, String>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  String get text => '';

  TextStyle get textStyle => const TextStyle();

  @override
  double? get marginBottom => 10;

  @override
  Widget buildFormField(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}
