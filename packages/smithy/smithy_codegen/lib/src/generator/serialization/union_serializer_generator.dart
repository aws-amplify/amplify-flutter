// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/serialization/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_config.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/protocol_ext.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// Generates a serializer class for [shape] and [protocol].
class UnionSerializerGenerator extends SerializerGenerator<UnionShape>
    with NamedMembersGenerationContext, UnionGenerationContext {
  UnionSerializerGenerator(
    UnionShape shape,
    CodegenContext context,
    ProtocolDefinitionTrait protocol, {
    SerializerConfig? config,
  }) : super(shape, context, protocol, config: config);

  @override
  Reference get serializedSymbol => symbol;

  @override
  bool get isStructuredSerializer => true;

  @override
  Class generate() {
    return Class(
      (c) => c
        ..name = serializerClassName
        ..extend = DartTypes.smithy.structuredSmithySerializer(symbol)
        ..constructors.add(constructor)
        ..methods.addAll([
          _typesGetter,
          supportedProtocols,
          deserialize,
          serialize,
        ]),
    );
  }

  /// Metadata about [shape] in the context of [protocol], including renames and
  /// other protocol-specific traits.
  late final ProtocolTraits protocolTraits = () {
    final builder = ProtocolTraitsBuilder();

    // JSON traits
    if (protocol.supportsTrait(JsonNameTrait.id)) {
      for (final member in members) {
        final jsonName = member.getTrait<JsonNameTrait>()?.value;
        if (jsonName != null) {
          builder.memberWireNames[member] = jsonName;
        }
      }
    }

    return builder.build();
  }();

  /// The `types` getter.
  Method get _typesGetter => Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.core.iterable(DartTypes.core.type)
          ..type = MethodType.getter
          ..name = 'types'
          ..lambda = true
          ..body = literalConstList([
            symbol,
            // Variant class types
            ...sortedMembers.map(
              (member) => refer(variantClassName(member)),
            ),
          ]).code,
      );

  @override
  Code get deserializeCode {
    final builder = BlockBuilder();
    builder.statements.add(Code.scope((allocate) => '''
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as ${allocate(DartTypes.core.string)};
    iterator.moveNext();
    final value = iterator.current as ${allocate(DartTypes.core.object)};
    switch (key) {
    '''));

    for (final member in sortedMembers) {
      final memberWireName =
          protocolTraits.memberWireNames[member] ?? member.memberName;
      builder.statements.addAll([
        Code("case '$memberWireName':"),
        symbol
            .newInstanceNamed(variantName(member), [
              deserializerFor(
                member,
                memberSymbol: memberSymbols[member]!.unboxed,
              ),
            ])
            .returned
            .statement,
      ]);
    }

    builder.statements.addAll([
      const Code('}'),

      // Add the unknown option. Do not try to deserialize it since
      // we have no information about it.
      symbol
          .newInstanceNamed(sdkUnknown, [refer('key'), refer('value')])
          .returned
          .statement,
    ]);

    return builder.build();
  }

  @override
  Code get serializeCode {
    final builder = BlockBuilder();

    final object = refer('object');
    final branches = <String, Expression>{};
    for (final member in sortedMembers) {
      final memberName = member.dartName(ShapeType.union);
      branches[memberName] = Method(
        (m) => m
          ..requiredParameters.add(Parameter((p) => p
            ..type = memberSymbols[member]!.unboxed
            ..name = memberName))
          ..lambda = true
          ..body = serializerFor(
            member,
            refer(memberName),
            memberSymbol: memberSymbols[member]!.unboxed,
          ).code,
      ).closure;
    }
    var hasRenames = false;
    if (protocolTraits.memberWireNames.isNotEmpty) {
      hasRenames = true;
      builder.addExpression(
        declareConst('renames').assign(
          literalConstMap({
            for (final entry in protocolTraits.memberWireNames.entries)
              entry.key.memberName: entry.value,
          }),
        ),
      );
    }
    builder.statements.addAll([
      object.asA(symbol).statement,
      literalList([
        if (hasRenames)
          refer('renames')
              .index(object.property('name'))
              .ifNullThen(object.property('name'))
        else
          object.property('name'),
        object.property('when').call([], {
          ...branches,

          // Do not try to serialize the unknown type since
          // we have no information about it and it could fail.
          // We could try/catch the serialization, but that would
          // be inconsistent with the deserialize code.
          sdkUnknown: Method(
            (m) => m
              ..requiredParameters.addAll([
                Parameter((p) => p
                  ..type = DartTypes.core.string
                  ..name = '_'),
                Parameter((p) => p
                  ..type = unknownMemberSymbol
                  ..name = sdkUnknown),
              ])
              ..lambda = true
              ..body = refer(sdkUnknown).code,
          ).closure,
        }, [
          DartTypes.core.object.boxed
        ]).nullChecked
      ]).returned.statement,
    ]);

    return builder.build();
  }
}
