// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/src/generator/serialization/structure_serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';
import 'package:smithy_codegen/src/util/trait_ext.dart';

/// Generates a serializer class for [shape] and [protocol].
class StructureXmlSerializerGenerator extends StructureSerializerGenerator {
  StructureXmlSerializerGenerator(
    super.shape,
    super.context,
    super.protocol, {
    super.config,
  });

  String get payloadWireName {
    String? payloadWireName;
    final payloadMember = this.payloadMember;
    if (payloadMember != null) {
      payloadWireName = payloadMember.getTrait<XmlNameTrait>()?.value ??
          shape.getTrait<XmlNameTrait>()?.value;
    }
    return payloadWireName ??
        payloadShape.getTrait<XmlNameTrait>()?.value ??
        payloadShape.className(context) ??
        super.wireName;
  }

  @override
  bool get isStructuredSerializer =>
      payloadShape is NamedMembersShape && payloadShape is! EnumShape;

  @override
  bool get hasBuiltPayload =>
      payloadShape is StructureShape &&
      (payloadShape as StructureShape).hasBuiltPayload(context);

  @override
  Reference get payloadBuilderSymbol => payloadSymbol.unboxed.typeRef.rebuild(
        (t) => t.symbol = '${t.symbol}Builder',
      );

  @override
  List<MemberShape> get payloadMembers {
    if (payloadMember != null) {
      if (payloadShape is NamedMembersShape && payloadShape is! EnumShape) {
        return (payloadShape as NamedMembersShape).members.values.toList();
      }
      return const [];
    }
    return super.payloadMembers;
  }

  @override
  Map<MemberShape, Reference> get memberSymbols => {
        for (final member in payloadMembers)
          member: context.symbolFor(member.target, payloadShape),
      };

  @override
  late final Map<MemberShape, String> wireNames = () {
    final renames = <MemberShape, String>{};
    for (final member in payloadMembers) {
      final rename = member.getTrait<XmlNameTrait>()?.value;
      if (rename != null) {
        renames[member] = rename;
      }
    }
    return renames;
  }();

  XmlNamespaceTrait? get namespace =>
      payloadMember?.getTrait<XmlNamespaceTrait>() ??
      payloadShape.getTrait<XmlNamespaceTrait>() ??
      context.service?.getTrait<XmlNamespaceTrait>();

  late final List<MemberShape> attributeMembers = payloadMembers
      .where((member) => member.hasTrait<XmlAttributeTrait>())
      .toList();

  late final List<MemberShape> flattenedMembers = payloadMembers
      .where((member) => member.hasTrait<XmlFlattenedTrait>())
      .toList();

  /// The custom BuiltX constructor for XML payloads.
  Expression _builtXmlConstructor(MemberShape member, Shape targetShape) {
    final Expression ctor;
    final isFlattened = member.hasTrait<XmlFlattenedTrait>();
    var memberName = isFlattened ? memberWireName(member) : null;
    if (targetShape is ListShape) {
      memberName ??= targetShape.member.getTrait<XmlNameTrait>()?.value;
      final memberNamespace = targetShape.member.getTrait<XmlNamespaceTrait>();
      ctor = DartTypes.smithy.xmlBuiltListSerializer.constInstance([], {
        if (memberName != null) 'memberName': literalString(memberName),
        if (memberNamespace != null)
          'memberNamespace': memberNamespace.constructedInstance,
        if (protocol is AwsQueryTrait)
          'indexer': DartTypes.smithy.xmlIndexer.property('awsQueryList'),
      });
    } else if (targetShape is SetShape) {
      memberName ??= targetShape.member.getTrait<XmlNameTrait>()?.value;
      final memberNamespace = targetShape.member.getTrait<XmlNamespaceTrait>();
      ctor = DartTypes.smithy.xmlBuiltSetSerializer.constInstance([], {
        if (memberName != null) 'memberName': literalString(memberName),
        if (memberNamespace != null)
          'memberNamespace': memberNamespace.constructedInstance,
        if (protocol is AwsQueryTrait)
          'indexer': DartTypes.smithy.xmlIndexer.property('awsQueryList'),
      });
    } else {
      targetShape as MapShape;
      final keyName = targetShape.key.traits.getTrait<XmlNameTrait>()?.value;
      final valueName =
          targetShape.value.traits.getTrait<XmlNameTrait>()?.value;
      final valueShape = context.shapeFor(targetShape.value.target);
      if (valueShape is ListShape) {
        ctor = DartTypes.smithy.xmlBuiltMultimapSerializer.constInstance([], {
          if (keyName != null) 'keyName': literalString(keyName),
          if (valueName != null) 'valueName': literalString(valueName),
          if (isFlattened)
            'flattenedKey': literalString(memberWireName(member)),
          if (protocol is AwsQueryTrait)
            'indexer': DartTypes.smithy.xmlIndexer.property('awsQueryMap'),
        });
      } else {
        ctor = DartTypes.smithy.xmlBuiltMapSerializer.constInstance([], {
          if (keyName != null) 'keyName': literalString(keyName),
          if (valueName != null) 'valueName': literalString(valueName),
          if (isFlattened)
            'flattenedKey': literalString(memberWireName(member)),
          if (protocol is AwsQueryTrait)
            'indexer': DartTypes.smithy.xmlIndexer.property('awsQueryMap'),
        });
      }
    }
    return ctor;
  }

  @override
  Expression serializerFor(
    MemberShape member,
    Expression memberRef, {
    Reference? memberSymbol,
  }) {
    final targetShape = context.shapeFor(member.target);
    final targetType = targetShape.getType();
    memberSymbol ??= memberSymbols[member]!;
    if (targetType == ShapeType.list ||
        targetType == ShapeType.set ||
        targetType == ShapeType.map) {
      return _builtXmlConstructor(member, targetShape)
          .property('serialize')
          .call([
        refer('serializers'),
        memberRef,
      ], {
        'specifiedType': memberSymbol.fullType(),
      });
    }
    return super.serializerFor(
      member,
      memberRef,
      memberSymbol: memberSymbol,
    );
  }

  @override
  Code get serializeCode {
    if (config.isTest) {
      return DartTypes.core.stateError
          .newInstance([literalString('Not supported for tests')])
          .thrown
          .statement;
    }
    final builder = BlockBuilder();
    final payloadVar = refer('object');
    final resultVar = refer(r'result$');

    // Create a result object to store serialized members.
    final namespace = this.namespace;
    final payloadResponseName = protocol is AwsQueryTrait
        ? '${payloadWireName}Response'
        : payloadWireName;
    builder.addExpression(
      declareFinal(resultVar.symbol!).assign(
        literalList(
          [
            DartTypes.smithy.xmlElementName.constInstance([
              literalString(payloadResponseName),
              if (namespace != null) namespace.constructedInstance
            ])
          ],
          DartTypes.core.object.boxed,
        ),
      ),
    );

    // Destructure `payload` so that members can be null-checked w/ promotion.
    builder.statements.add(
      destructure(payloadSymbol, serializedMembers, payloadVar),
    );
    Expression ref(MemberShape member) =>
        refer(member.dartName(ShapeType.structure));

    for (final member in attributeMembers) {
      final memberRef = ref(member);
      final isNullable = member.isNullable(context, shape);
      builder.statements.add(
        resultVar
            .property('add')
            .call([
              DartTypes.xml.xmlAttribute.newInstance([
                DartTypes.xml.xmlName.newInstance([
                  literalString(memberWireName(member)),
                ]),
                serializerFor(
                  member,
                  memberRef,
                ).asA(DartTypes.core.string),
              ]),
            ])
            .statement
            .wrapWithBlockIf(
              memberRef.notEqualTo(literalNull),
              isNullable,
            ),
      );
    }

    final serializableMembers =
        serializedMembers.where((member) => !attributeMembers.contains(member));

    if (serializableMembers.isEmpty && !isStructuredSerializer) {
      // serializing a primitive
      builder.addExpression(
        resultVar.property('add').call([
          serializerFor(
            payloadMember!,
            payloadVar,
            memberSymbol: payloadSymbol.unboxed,
          ),
        ]),
      );
    }

    for (final member in serializableMembers) {
      final memberRef = ref(member);
      final isFlattened = flattenedMembers.contains(member);
      final isNullable = member.isNullable(context, shape);
      final serializer = serializerFor(member, memberRef);
      final memberNs = member.getTrait<XmlNamespaceTrait>();
      Expression addRes = resultVar;
      if (!isFlattened) {
        addRes = addRes.cascade('add').call([
          DartTypes.smithy.xmlElementName.constInstance([
            literalString(memberWireName(member)),
            if (memberNs != null) memberNs.constructedInstance,
          ]),
        ]);
      }
      builder.statements.add(
        addRes
            .cascade(isFlattened ? 'addAll' : 'add')
            .call([serializer])
            .statement
            .wrapWithBlockIf(
              memberRef.notEqualTo(literalNull),
              isNullable,
            ),
      );
    }

    builder.addExpression(resultVar.returned);

    return builder.build();
  }

  @override
  Expression deserializerFor(
    MemberShape member, {
    Expression value = const Reference('value'),
    Reference? memberSymbol,
  }) {
    final targetShape = context.shapeFor(member.target);
    final targetType = targetShape.getType();
    memberSymbol ??= memberSymbols[member]!;
    if (targetType == ShapeType.list ||
        targetType == ShapeType.set ||
        targetType == ShapeType.map) {
      final iterableType = DartTypes.core.iterable(DartTypes.core.object.boxed);
      final deserialized = _builtXmlConstructor(member, targetShape)
          .property('deserialize')
          .call([
        refer('serializers'),
        value
            .isA(DartTypes.core.string)
            .conditional(literalConstList([]), value.asA(iterableType)),
      ], {
        'specifiedType': memberSymbol.fullType(),
      });
      if (targetShape is ListShape || targetShape is SetShape) {
        return deserialized.asA(memberSymbol);
      }
      return deserialized;
    }

    return super.deserializerFor(
      member,
      value: value,
      memberSymbol: memberSymbol,
    );
  }

  @override
  Code get deserializePreamble {
    final preamble = Code.scope(
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
    return Block.of([
      if (shape.isError &&
          protocol is RestXmlTrait &&
          !(protocol as RestXmlTrait).noErrorWrapping)
        Code.scope(
          (allocate) => '''
      final errorIterator = serialized.iterator;
      while (errorIterator.moveNext()) {
        final key = errorIterator.current;
        errorIterator.moveNext();
        if (key == 'Error') {
          serialized = errorIterator.current as ${allocate(DartTypes.core.iterable(DartTypes.core.object.boxed))};
        }
      }''',
        ),
      preamble,
    ]);
  }

  @override
  Iterable<Code> get fieldDeserializers sync* {
    for (final member in serializedMembers) {
      final wireName = memberWireName(member);
      var memberSymbol = memberSymbols[member]!;
      final targetShape = context.shapeFor(member.target);
      final hasNestedBuilder = targetShape.hasNestedBuilder;
      final isFlattened = flattenedMembers.contains(member);
      var targetMember = member;
      var nestedMethod = 'replace';
      var postProcess = (Expression exp) => exp;
      if (isFlattened) {
        // For list and set shapes, there will be multiple entries with the
        // same key in the serialized object (the flattened key). We want to
        // deserialize each value and add it to the builder.
        if (targetShape is ListShape) {
          nestedMethod = 'add';
          targetMember = targetShape.member;
          memberSymbol = context.symbolFor(targetMember.target);
        }
        if (targetShape is SetShape) {
          nestedMethod = 'add';
          targetMember = targetShape.member;
          memberSymbol = context.symbolFor(targetMember.target);
        }

        // Convert the processed BuiltMap to Map and add all the entries from
        // it to the builder (there will only be one).
        if (targetShape is MapShape) {
          nestedMethod = 'addAll';
          postProcess = (Expression exp) =>
              exp.property('toMap').call([]).property('cast').call([]);
        }
      }
      final value = refer('value');
      yield Block.of([
        const Code('case '),
        literalString(wireName).code,
        const Code(':'),
        if (hasNestedBuilder)
          refer('result')
              .property(member.dartName(ShapeType.structure))
              .property(nestedMethod)
              .call([
            postProcess(
              deserializerFor(
                targetMember,
                memberSymbol: memberSymbol.unboxed,
              ),
            ),
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
}
