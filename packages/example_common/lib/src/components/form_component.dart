// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:html';

import 'component.dart';

/// {@template example_common.form_component}
/// a component that displays a form
/// {@endtemplate}
class FormComponent extends Component {
  /// {@macro example_common.form_component}
  FormComponent({this.id, required this.children});

  /// The ID of the form element
  final String? id;

  /// The form elements
  final List<Component> children;

  @override
  Component render() {
    final formElement = FormElement();
    if (id != null) formElement.id = id!;
    for (var child in children) {
      formElement.appendComponent(child);
    }
    return Component.fromElement(formElement);
  }
}
