// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/src/generator/types.dart';

extension ProtocolDefinitionUtils on ProtocolDefinitionTrait {
  /// Whether this is a known JSON protocol.
  bool get isJsonProtocol => traits.contains(JsonNameTrait.id);

  /// Whether this is a known XML protocol.
  bool get isXmlProtocol => traits.contains(XmlNameTrait.id);
}

extension XmlInstance on XmlNamespaceTrait {
  Expression get constructedInstance =>
      DartTypes.smithy.xmlNamespace.constInstance([
        literalString(uri),
        if (prefix != null) literalString(prefix!),
      ]);
}
