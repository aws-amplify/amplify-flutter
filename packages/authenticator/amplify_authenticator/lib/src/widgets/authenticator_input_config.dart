// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Configuration for defining content of radio and switch types in [AuthenticatorFormField].
abstract class SelectableConfig<Label, Value> {
  const SelectableConfig();

  List<InputSelection<Label, Value>> get selections;
  Value? get selectionValue;
}

/// Allows for configuration of fields with multiple selections, such as dropdowns, switches and radio buttons
class InputSelection<Label, Value> {
  /// Display text for the selection
  final Label label;

  /// Value for the selection
  final Value value;

  const InputSelection({required this.label, required this.value});
}
