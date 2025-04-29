// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';

import 'package:example_common/src/components/component.dart';
import 'package:web/web.dart';

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
    return Component.fromElement(HTMLParagraphElement()..innerHTML = text.toJS);
  }
}
