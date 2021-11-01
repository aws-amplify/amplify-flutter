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

import 'package:amplify_authenticator/amplify_authenticator.dart';

/// Configuration for defining input types in [AuthenticatorFormField].

class RadioButtonFieldConfig {
  final List<InputSelection> selections;
  const RadioButtonFieldConfig({required this.selections});
}

/// Allows for configuration of fields with multiple selections, such as dropdowns, switches and radio buttons
class InputSelection<T extends Enum> {
  final InputResolverKey label;

  final T value;

  const InputSelection({required this.label, required this.value});
}
