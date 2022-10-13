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
