// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
