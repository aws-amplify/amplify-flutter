// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/src/changelog/changelog.dart';
import 'package:markdown/markdown.dart';

/// Renders the [markdown] AST as a string.
String render(Iterable<Node> markdown) {
  final renderer = _MarkdownRenderer();
  for (final node in markdown) {
    node.accept(renderer);
  }
  return renderer.output;
}

class _MarkdownRenderer implements NodeVisitor {
  final StringBuffer _builder = StringBuffer();
  String get output => _builder.toString();

  @override
  void visitElementAfter(Element element) {
    switch (element.type) {
      case ElementType.ul:
        _builder.writeln();
        break;
      default:
        break;
    }
  }

  @override
  bool visitElementBefore(Element element) {
    switch (element.type) {
      case ElementType.h1:
      case ElementType.h2:
      case ElementType.h3:
      case ElementType.h4:
      case ElementType.h5:
      case ElementType.h6:
        final headerNum = int.parse(element.type.name.substring(1));
        _builder.writeln('${'#' * headerNum} ${element.textContent}');
        if (headerNum < 3) {
          _builder.writeln();
        }
        break;
      case ElementType.li:
        _builder.writeln('- ${element.textContent}');
        break;
      case ElementType.ul:
      case ElementType.unknown:
        break;
    }
    return true;
  }

  @override
  void visitText(Text text) {}
}
