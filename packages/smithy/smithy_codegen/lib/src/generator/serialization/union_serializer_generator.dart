// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/serialization/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/protocol_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// Generates a serializer class for [shape] and [protocol].
class UnionSerializerGenerator extends SerializerGenerator<UnionShape>
    with NamedMembersGenerationContext, UnionGenerationContext {
  UnionSerializerGenerator(
    super.shape,
    super.context,
    super.protocol, {
    super.config,
  });

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
            ...members.map(
              (member) => refer(variantClassName(member)),
            ),
          ]).code,
      );

  @override
  Code get deserializeCode {
    final builder = BlockBuilder();
    builder.statements.add(
      Code.scope(
        (allocate) => '''
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
    ''',
      ),
    );

    for (final member in members) {
      final memberSymbol = memberSymbols[member]!.unboxed;
      final memberWireName =
          protocolTraits.memberWireNames[member] ?? member.memberName;
      final variantClass = refer(variantClassName(member));
      final Expression Function(Expression) constructor;
      if (memberSymbol.requiresConstructorTransformation) {
        constructor = (deserialized) =>
            variantClass.newInstanceNamed('_', [deserialized]);
      } else if (member.target == Shape.unit) {
        constructor = (_) => variantClass.constInstance([]);
      } else {
        constructor =
            (deserialized) => variantClass.newInstance([deserialized]);
      }
      builder.statements.addAll([
        Code("case '$memberWireName':"),
        constructor(
          deserializerFor(
            member,
            memberSymbol: memberSymbol,
          ),
        ).returned.statement,
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
    for (final member in members) {
      final variantClassName = this.variantClassName(member);
      branches[variantClassName] = serializerFor(
        member,
        refer('value'),
        memberSymbol: memberSymbols[member]!.unboxed,
      );
    }
    branches[variantClassName(unknownMember)] = refer('value');
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
      literalList([
        if (hasRenames)
          refer('renames')
              .index(object.property('name'))
              .ifNullThen(object.property('name'))
        else
          object.property('name'),
        Block((b) {
          b.statements.add(Code.scope((ref) => 'switch (${ref(object)}) {'));
          for (final entry in branches.entries) {
            final MapEntry(key: variantClassName, :value) = entry;
            b.statements
              ..add(Code('$variantClassName(:final value) => '))
              ..add(value.code)
              ..add(const Code(','));
          }
          b.statements.add(const Code('}'));
        }),
      ]).returned.statement,
    ]);

    return builder.build();
  }
}
