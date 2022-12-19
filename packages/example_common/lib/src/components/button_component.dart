// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:html';

import '../utils/component_edge_insets.dart';
import 'component.dart';

/// {@template example_common.button_component}
/// A component that renders an html button element.
/// {@endtemplate}
class ButtonComponent extends Component {
  /// {@macro example_common.button_component}
  ButtonComponent({
    this.id,
    this.margin = const ComponentEdgeInsets.all(8),
    this.padding = const ComponentEdgeInsets.symmetric(
      vertical: 4,
      horizontal: 8,
    ),
    required this.innerHtml,
    required this.onClick,
    this.loading = false,
  });

  /// The ID for the button.
  final String? id;

  /// The margin of the component
  final ComponentEdgeInsets margin;

  /// The margin of the component
  final ComponentEdgeInsets padding;

  /// The innerHtml for the button.
  final String innerHtml;

  /// The click handler for the button
  final void Function() onClick;

  /// wether or not the button is in a loading state.
  final bool loading;

  late final _buttonElement = ButtonElement()
    ..innerHtml = loading ? 'Loading ...' : innerHtml;

  @override
  Component render() {
    _buttonElement.style.margin = margin.toCssString();
    _buttonElement.style.padding = padding.toCssString();
    return Component.fromElement(_buttonElement);
  }

  @override
  void componentDidMount() {
    _buttonElement.onClick.listen((event) {
      event.preventDefault();
      onClick();
    });
    super.componentDidMount();
  }
}
