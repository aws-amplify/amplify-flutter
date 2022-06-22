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
