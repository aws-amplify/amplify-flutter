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

import 'package:tuple/tuple.dart';
import 'package:xml/xml.dart';

/// {@template smithy_test.equatable_xml}
/// Converts an [XmlDocument] to a list of equatable objects.
/// {@endtemplate}
extension EquatableXml on XmlDocument {
  /// {@macro smithy_test.equatable_xml}
  List<Object?> toEquatable() {
    final props = <Object?>[];
    accept(_EquatableVisitor(props));
    return props;
  }
}

class _EquatableVisitor with XmlVisitor {
  const _EquatableVisitor(this.props);

  final List<Object?> props;

  List<XmlAttribute> _attrs(XmlHasAttributes node) => [...node.attributes]
    ..sort((a, b) => a.name.local.compareTo(b.name.local));

  List<XmlNode> _children(XmlHasChildren node) => [
        ...<XmlElement>[...node.childElements]
          ..sort((a, b) => a.name.local.compareTo(b.name.local)),
        ...node.children.where((el) => el is! XmlElement)
      ];

  /// Visit an [XmlName].
  @override
  void visitName(XmlName name) => props.addAll([
        name.prefix,
        name.local,
        name.qualified,
      ]);

  /// Visit an [XmlAttribute] node.
  @override
  void visitAttribute(XmlAttribute node) {
    visit(node.name);
    props.add(node.value);
  }

  /// Visit an [XmlDeclaration] node.
  @override
  void visitDeclaration(XmlDeclaration node) {
    _attrs(node).forEach(visit);
  }

  /// Visit an [XmlDocument] node.
  @override
  void visitDocument(XmlDocument node) {
    visit(node.rootElement);
  }

  /// Visit an [XmlDocumentFragment] node.
  @override
  void visitDocumentFragment(XmlDocumentFragment node) {
    _children(node).forEach(visit);
  }

  /// Visit an [XmlElement] node.
  @override
  void visitElement(XmlElement node) {
    visit(node.name);
    _attrs(node).forEach(visit);
    _children(node).forEach(visit);
  }

  /// Visit an [XmlCDATA] node.
  @override
  void visitCDATA(XmlCDATA node) {}

  /// Visit an [XmlComment] node.
  @override
  void visitComment(XmlComment node) {}

  /// Visit an [XmlDoctype] node.
  @override
  void visitDoctype(XmlDoctype node) {}

  /// Visit an [XmlProcessing] node.
  @override
  void visitProcessing(XmlProcessing node) {}

  /// Visit an [XmlText] node.
  @override
  void visitText(XmlText node) {
    final text = node.text.trim();
    if (text.isNotEmpty) {
      props.add(node.text);
    }
  }
}
