// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:html';

import '../utils/component_edge_insets.dart';
import 'component.dart';
import 'container_component.dart';
import 'flex_component.dart';

/// {@template example_common.text_form_field_component}
/// a component that displays a form field - an input and a label.
/// {@endtemplate}
class TextFormFieldComponent extends Component {
  /// {@macro example_common.text_form_field_component}
  TextFormFieldComponent({
    this.id = '',
    this.padding,
    this.margin = const ComponentEdgeInsets.all(8),
    required this.labelText,
    this.initialValue,
    required this.onChanged,
    this.required = false,
    this.type = 'text',
  });

  /// The id of the input element
  final String id;

  /// The padding of the component
  final ComponentEdgeInsets? padding;

  /// The padding of the component
  final ComponentEdgeInsets margin;

  /// The text of the label
  final String labelText;

  /// The initial value of the field
  final String? initialValue;

  /// Whether or not the field is required
  final bool required;

  /// The input type.
  final String type;

  /// A callback that will run when the value has changed.
  final void Function(String? value) onChanged;

  late final _labelElement = LabelElement()..innerHtml = labelText;
  late final _inputElement = InputElement()
    ..type = type
    ..required = required
    ..id = id
    ..style.width = '100%'
    ..style.boxSizing = 'border-box'
    ..value = initialValue;

  @override
  Component render() {
    return ContainerComponent(
      margin: margin,
      padding: padding,
      child: ColumnComponent(
        children: [
          Component.fromElement(_labelElement),
          ContainerComponent(height: 6),
          Component.fromElement(_inputElement),
        ],
      ),
    );
  }

  @override
  void componentDidMount() {
    _inputElement.onKeyUp.listen((Event event) {
      event.preventDefault();
      onChanged((_inputElement).value);
    });
    super.componentDidMount();
  }
}
