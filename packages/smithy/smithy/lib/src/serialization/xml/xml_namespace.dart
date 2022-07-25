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
