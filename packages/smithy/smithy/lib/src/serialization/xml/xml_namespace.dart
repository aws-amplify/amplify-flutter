// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:xml/xml.dart';

class XmlNamespace with AWSEquatable<XmlNamespace> {
  const XmlNamespace(this.uri, [this.prefix]);

  final String uri;
  final String? prefix;

  XmlName get xmlName =>
      prefix == null ? XmlName('xmlns') : XmlName(prefix!, 'xmlns');

  @override
  List<Object?> get props => [uri, prefix];
}

class XmlElementName with AWSEquatable<XmlElementName> {
  const XmlElementName(this.name, [this.namespace]);

  final String name;
  final XmlNamespace? namespace;

  @override
  List<Object?> get props => [name, namespace];
}
