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

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'protocol_definition_trait.g.dart';

/// A trait that is attached to other traits to define a Smithy protocol.
@ShapeIdConverter()
@JsonSerializable()
class ProtocolDefinitionTrait implements Trait<ProtocolDefinitionTrait> {
  const ProtocolDefinitionTrait({
    this.traits = const [],
    this.noInlineDocumentSupport = false,
  });

  factory ProtocolDefinitionTrait.fromJson(Object? json) =>
      _$ProtocolDefinitionTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('protocolDefinition');

  /// List of shape IDs that protocol implementations MUST understand in order
  /// to successfully use the protocol. Each shape MUST exist and MUST be a
  /// trait. Code generators SHOULD ensure that they support each listed trait.
  final List<ShapeId> traits;

  /// If set to `true`, indicates that this protocol does not support `document`
  /// type shapes. A service that uses such a protocol MUST NOT contain any
  /// `document` shapes in their service closure.
  final bool noInlineDocumentSupport;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [traits, noInlineDocumentSupport];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$ProtocolDefinitionTraitToJson(this);

  @override
  ProtocolDefinitionTrait get value => this;
}
