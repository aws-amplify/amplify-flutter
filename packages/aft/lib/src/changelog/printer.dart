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

import 'package:aft/src/changelog/changelog.dart';
import 'package:markdown/markdown.dart';

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
  void visitElementAfter(Element element) {}

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
