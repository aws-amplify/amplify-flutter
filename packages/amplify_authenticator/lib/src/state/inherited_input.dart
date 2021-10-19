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
import 'package:flutter/material.dart';

class InheritedInput extends InheritedWidget {
  const InheritedInput({
    Key? key,
    required this.field,
    required Widget child,
  }) : super(key: key, child: child);

  final AuthenticatorFormField field;

  @override
  static InheritedInput? of(BuildContext context) =>
      context.findAncestorWidgetOfExactType<InheritedInput>();

  @override
  bool updateShouldNotify(covariant InheritedInput oldWidget) {
    return oldWidget.field != field;
  }
}
