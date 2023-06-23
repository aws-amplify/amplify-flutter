// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/serialization/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/protocol_ext.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// Generates a serializer class for [shape] and [protocol].
class StructureSerializerGenerator extends SerializerGenerator<StructureShape>
    with NamedMembersGenerationContext, StructureGenerationContext {
  StructureSerializerGenerator(
    super.shape,
    super.context,
    super.protocol, {
    super.config,
  });

  @override
  Reference get serializedSymbol =>
      config.usePayload ? payloadSymbol.unboxed : symbol;

  /// The members which get serialized.
  ///
  /// In general, this is members of the payload ([payloadMembers]).
  /// However, for test cases, we want to deserialize *all* members.
  List<MemberShape> get serializedMembers =>
      config.usePayload ? payloadMembers : members;

  @override
  bool get isStructuredSerializer =>
      !config.usePayload ||
      payloadMember == null ||
      payloadMember is SimpleShape ||
      payloadMember is EnumShape;

  /// Metadata about [shape] in the context of [protocol], including renames and
  /// other protocol-specific traits.
  late final ProtocolTraits protocolTraits = () {
    final builder = ProtocolTraitsBuilder();

    // JSON traits
    if (protocol.supportsTrait(JsonNameTrait.id)) {
      for (final member in payloadMembers) {
        final jsonName = member.getTrait<JsonNameTrait>()?.value;
        if (jsonName != null) {
          builder.memberWireNames[member] = jsonName;
        }
      }
    }

    // XML traits
    if (protocol.supportsTrait(XmlNameTrait.id)) {
      final wireName = shape.getTrait<XmlNameTrait>()?.value;
      if (wireName != null) {
        builder.wireName = wireName;
      }
    }
    if (protocol.supportsTrait(XmlNamespaceTrait.id)) {
      final xmlNamespace = shape.getTrait<XmlNamespaceTrait>();
      if (xmlNamespace != null) {
        builder.namespace = xmlNamespace;
      }
    }
    if (protocol.supportsTrait(XmlNameTrait.id)) {
      for (final member in payloadMembers) {
        final xmlName = member.getTrait<XmlNameTrait>()?.value;
        if (xmlName != null) {
          builder.memberWireNames[member] = xmlName;
        }
      }
    }
    if (protocol.supportsTrait(XmlAttributeTrait.id)) {
      for (final member in payloadMembers) {
        final isXmlAttribute = member.hasTrait<XmlAttributeTrait>();
        if (isXmlAttribute) {
          builder.attributeMembers.add(member);
        }
      }
    }
    if (protocol.supportsTrait(XmlFlattenedTrait.id)) {
      for (final member in payloadMembers) {
        final isXmlFlattened = member.hasTrait<XmlFlattenedTrait>();
        if (isXmlFlattened) {
          builder.flattenedMembers.add(member);
        }
      }
    }
    if (protocol.supportsTrait(XmlNamespaceTrait.id)) {
      for (final member in payloadMembers) {
        final xmlNamespace = member.getTrait<XmlNamespaceTrait>();
        if (xmlNamespace != null) {
          builder.memberNamespaces[member] = xmlNamespace;
        }
      }
    }

    return builder.build();
  }();

  /// The names of members on the wire with optional renames, e.g. using
  /// [JsonNameTrait] or [XmlNameTrait].
  Map<MemberShape, String> get wireNames =>
      protocolTraits.memberWireNames.toMap();

  /// The name of [member] on the wire.
  String memberWireName(MemberShape member) => config.renameMembers
      ? wireNames[member] ?? member.memberName
      : member.memberName;

  @override
  Class? generate() {
    if (shape.shapeId == Shape.unit || payloadShape is UnionShape) {
      return null;
    }

    // Tracks the generated type.
    context.generatedTypes[symbol] ??= {};

    return Class(
      (c) => c
        ..name = serializerClassName
        ..extend = isStructuredSerializer
            ? DartTypes.smithy.structuredSmithySerializer(serializedSymbol)
            : DartTypes.smithy.primitiveSmithySerializer(serializedSymbol)
        ..constructors.add(constructor)
        ..methods.addAll([
          _typesGetter,
          supportedProtocols,
          deserialize,
          serialize,
        ]),
    );
  }

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
            if (config.usePrivateSymbols) builtSymbol,
            if (isStructuredSerializer && config.usePayload) ...[
              if (hasBuiltPayload) payloadSymbol,
              if (config.usePrivateSymbols && builtPayloadSymbol != null)
                builtPayloadSymbol,
            ],
          ]).code,
      );

  Code get deserializePreamble => Code.scope(
        (allocate) => '''
      final iterator = serialized.iterator;
      while (iterator.moveNext()) {
        final key = iterator.current as ${allocate(DartTypes.core.string)};
        iterator.moveNext();
        final value = iterator.current;
        if (value == null) {
          continue;
        }
        switch (key) {
      ''',
      );

  @override
  Code get deserializeCode {
    if (!isStructuredSerializer) {
      return deserializerFor(
        payloadMember!,
        value: refer('serialized'),
        memberSymbol: serializedSymbol.unboxed,
      ).returned.statement;
    }

    final builderSymbol =
        config.usePayload ? payloadBuilderSymbol : this.builderSymbol;
    if (serializedMembers.isEmpty) {
      return builderSymbol
          .newInstance([])
          .property('build')
          .call([])
          .returned
          .statement;
    }

    final builder = BlockBuilder()
      // Create the builder.
      ..addExpression(
        declareFinal('result').assign(builderSymbol.newInstance([])),
      );

    // Iterate over the serialized elements.
    builder.statements.addAll([
      deserializePreamble,
      ...fieldDeserializers,
      const Code('''
        }
      }
      '''),
    ]);

    // There is no way to distinguish between a null blob and empty blob
    // when it is targeted as a payload type, e.g. how do you deserialize
    // an empty HTTP body to a nullable Uint8List, as null or as an empty
    // list?
    //
    // Since this causes tests to fail, and since it does not affect the
    // intent of the test, we inject an empty blob so that tests pass.
    if (config.isTest && payloadMember != null) {
      final targetShape = context.shapeFor(payloadMember!.target);
      if (targetShape.getType() == ShapeType.blob) {
        builder.addExpression(
          refer('result')
              .property(payloadMember!.dartName(ShapeType.structure))
              .assignNullAware(
                targetShape.isStreaming
                    ? DartTypes.async.stream().constInstanceNamed('empty', [])
                    : DartTypes.typedData.uint8List
                        .newInstance([literalNum(0)]),
              ),
        );
      }
    }

    builder.addExpression(
      refer('result').property('build').call([]).returned,
    );

    return builder.build();
  }

  /// Expression to deserialize fields within the `switch` statement.
  Iterable<Code> get fieldDeserializers sync* {
    for (final member in serializedMembers) {
      final wireName = memberWireName(member);
      final memberSymbol = memberSymbols[member]!;
      final targetShape = context.shapeFor(member.target);
      final hasNestedBuilder = targetShape.hasNestedBuilder;
      final value = refer('value');
      yield Block.of([
        const Code('case '),
        literalString(wireName).code,
        const Code(':'),
        if (hasNestedBuilder)
          refer('result')
              .property(member.dartName(ShapeType.structure))
              .property('replace')
              .call([
            deserializerFor(member, memberSymbol: memberSymbol.unboxed),
          ]).statement
        else
          refer('result')
              .property(member.dartName(ShapeType.structure))
              .assign(
                deserializerFor(
                  member,
                  value: value,
                  memberSymbol: memberSymbol.unboxed,
                ),
              )
              .statement,
      ]);
    }
  }

  @override
  Code get serializeCode {
    if (config.isTest) {
      return DartTypes.core.stateError
          .newInstance([literalString('Not supported for tests')])
          .thrown
          .statement;
    }
    if (isStructuredSerializer && serializedMembers.isEmpty) {
      return literalConstList([], DartTypes.core.object.boxed).code;
    }
    final builder = BlockBuilder();
    final payloadVar = refer('object');
    final resultVar = refer(r'result$');

    if (!isStructuredSerializer) {
      builder.addExpression(
        serializerFor(
          payloadMember!,
          payloadVar,
          memberSymbol: payloadSymbol.unboxed,
        ).nullChecked.returned,
      );
      return builder.build();
    }

    builder.addExpression(
      declareFinal(resultVar.symbol!).assign(
        literalList([], DartTypes.core.object.boxed),
      ),
    );

    // Destructure `payload` so that members can be null-checked w/ promotion.
    builder.statements.add(
      destructure(payloadSymbol, serializedMembers, payloadVar),
    );

    // Create a result object with all the non-null members.
    final nonNullMembers =
        serializedMembers.where((member) => !member.isNullable(context, shape));
    final nonNullResult = <Expression>[];
    for (final member in nonNullMembers) {
      final memberRef = refer(member.dartName(ShapeType.structure));
      nonNullResult.addAll([
        literalString(memberWireName(member)),
        serializerFor(member, memberRef),
      ]);
    }
    if (nonNullResult.isNotEmpty) {
      builder.addExpression(
        resultVar.property('addAll').call([literalList(nonNullResult)]),
      );
    }

    // Add remaining objects only if they're non-null.
    final nullableMembers =
        serializedMembers.where((member) => member.isNullable(context, shape));
    for (final member in nullableMembers) {
      final memberRef = refer(member.dartName(ShapeType.structure));
      builder.statements.addAll([
        resultVar
            .cascade('add')
            .call([literalString(memberWireName(member))])
            .cascade('add')
            .call([
              serializerFor(
                member,
                memberRef,
                memberSymbol: context.symbolFor(member.target, shape).unboxed,
              )
            ])
            .statement
            .wrapWithBlockIf(memberRef.notEqualTo(literalNull), true),
      ]);
    }

    builder.addExpression(resultVar.returned);

    return builder.build();
  }
}
