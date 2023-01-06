// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:html';

import 'component.dart';

/// {@template example_common.text_component}
/// a component that displays text
/// {@endtemplate}
class TextComponent extends Component {
  /// {@macro example_common.text_component}
  TextComponent(this.text);

  /// The content to be displayed in the text element.
  final String text;

  @override
  Component render() {
    return Component.fromElement(Element.p()..innerHtml = text);
  }
}
