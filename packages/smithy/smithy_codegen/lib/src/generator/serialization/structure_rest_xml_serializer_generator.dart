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
import 'package:smithy_codegen/src/generator/context.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_config.dart';
import 'package:smithy_codegen/src/generator/serialization/structure_serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';
import 'package:smithy_codegen/src/util/trait_ext.dart';

/// Generates a serializer class for [shape] and [protocol].
class StructureRestXmlSerializerGenerator extends StructureSerializerGenerator {
  StructureRestXmlSerializerGenerator(
    StructureShape shape,
    CodegenContext context,
    RestXmlTrait protocol, {
    SerializerConfig? config,
  }) : super(shape, context, protocol, config: config);

  String get payloadWireName =>
      payloadMember?.getTrait<XmlNameTrait>()?.value ??
      payloadShape.getTrait<XmlNameTrait>()?.value ??
      payloadShape.className(context) ??
      super.wireName;

  @override
  bool get isStructuredSerializer => payloadShape is NamedMembersShape;

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
      if (payloadShape is NamedMembersShape) {
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
      });
    } else if (targetShape is SetShape) {
      memberName ??= targetShape.member.getTrait<XmlNameTrait>()?.value;
      final memberNamespace = targetShape.member.getTrait<XmlNamespaceTrait>();
      ctor = DartTypes.smithy.xmlBuiltSetSerializer.constInstance([], {
        if (memberName != null) 'memberName': literalString(memberName),
        if (memberNamespace != null)
          'memberNamespace': memberNamespace.constructedInstance,
      });
    } else {
      targetShape as MapShape;
      final String? keyName =
          targetShape.key.traits.getTrait<XmlNameTrait>()?.value;
      final String? valueName =
          targetShape.value.traits.getTrait<XmlNameTrait>()?.value;
      ctor = DartTypes.smithy.xmlBuiltMapSerializer.constInstance([], {
        if (keyName != null) 'keyName': literalString(keyName),
        if (valueName != null) 'valueName': literalString(valueName),
        if (isFlattened) 'flattenedKey': literalString(memberWireName(member)),
      });
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
    final object = refer('object');
    final payload = refer('payload');
    final result = refer('result');

    // Get the payload, since we handle serializing the input & payload types
    // in the same serializer.
    final withPayloadVar = serializedMembers.isNotEmpty;
    final payloadSymbol = this.payloadSymbol;
    if (withPayloadVar) {
      if (hasPayload) {
        builder.addExpression(
          object
              .isA(symbol)
              .conditional(
                object.property('getPayload').call([]),
                object.asA(payloadSymbol),
              )
              .assignFinal('payload'),
        );
      } else {
        builder.addExpression(object.asA(symbol).assignFinal('payload'));
      }
    }

    // Create a result object to store serialized members.
    final namespace = this.namespace;
    builder.addExpression(
      literalList([
        DartTypes.smithy.xmlElementName.constInstance([
          literalString(payloadWireName),
          if (namespace != null) namespace.constructedInstance
        ])
      ], DartTypes.core.object.boxed)
          .assignFinal('result'),
    );

    // Check if payload is null at this point
    if (withPayloadVar) {
      if (payloadMember?.isNullable(context, shape) ?? false) {
        builder.statements.add(
          result.returned.wrapWithBlockIf(payload.equalTo(literalNull), true),
        );
      }
    }

    Expression ref(MemberShape member) =>
        payload.property(member.dartName(ShapeType.structure));

    for (final member in attributeMembers) {
      final memberRef = ref(member);
      final isNullable = member.isNullable(context, shape);
      builder.statements.add(
        result
            .property('add')
            .call([
              DartTypes.xml.xmlAttribute.newInstance([
                DartTypes.xml.xmlName.newInstance([
                  literalString(memberWireName(member)),
                ]),
                serializerFor(
                  member,
                  isNullable ? memberRef.nullChecked : memberRef,
                ).asA(DartTypes.core.string),
              ]),
            ])
            .statement
            .wrapWithBlockIf(
              memberRef.notEqualTo(literalNull),
              member.isNullable(context, shape),
            ),
      );
    }

    final serializableMembers =
        serializedMembers.where((member) => !attributeMembers.contains(member));
    for (final member in serializableMembers) {
      final memberRef = ref(member);
      final isFlattened = flattenedMembers.contains(member);
      final isNullable = member.isNullable(context, shape);
      var serializer = serializerFor(
        member,
        isNullable ? memberRef.nullChecked : memberRef,
      );
      final memberNs = member.getTrait<XmlNamespaceTrait>();
      Expression addRes = result;
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
              member.isNullable(context, shape),
            ),
      );
    }

    builder.addExpression(result.returned);

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
      final deserialized = _builtXmlConstructor(member, targetShape)
          .property('deserialize')
          .call([
        refer('serializers'),
        value.asA(DartTypes.core.iterable(DartTypes.core.object.boxed)),
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
    final preamble = Code.scope((allocate) => '''
      final iterator = serialized.iterator;
      while (iterator.moveNext()) {
        final key = iterator.current;
        iterator.moveNext();
        final value = iterator.current;
        switch (key as ${allocate(DartTypes.core.string)}) {
      ''');
    return Block.of([
      if (shape.isError && !(protocol as RestXmlTrait).noErrorWrapping)
        Code.scope((allocate) => '''
      final errorIterator = serialized.iterator;
      while (errorIterator.moveNext()) {
        final key = errorIterator.current;
        errorIterator.moveNext();
        if (key == 'Error') {
          serialized = errorIterator.current as ${allocate(DartTypes.core.iterable(DartTypes.core.object.boxed))};
        }
      }'''),
      preamble,
    ]);
  }

  @override
  Iterable<Code> get fieldDeserializers sync* {
    for (var member in serializedMembers) {
      final wireName = memberWireName(member);
      var memberSymbol = memberSymbols[member]!;
      final isNullable = member.isNullable(context, shape);
      final targetShape = context.shapeFor(member.target);
      final hasNestedBuilder = [
        ShapeType.map,
        ShapeType.list,
        ShapeType.set,
        ShapeType.structure,
      ].contains(targetShape.getType());
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
                postProcess(deserializerFor(targetMember,
                    memberSymbol: memberSymbol.unboxed)),
              ])
              .statement
              .wrapWithBlockIf(
                value.notEqualTo(literalNull),
                isNullable,
              )
        else
          refer('result')
              .property(member.dartName(ShapeType.structure))
              .assign(deserializerFor(
                member,
                value: isNullable ? value : value.nullChecked,
                memberSymbol: memberSymbol.unboxed,
              ))
              .statement
              .wrapWithBlockIf(
                value.notEqualTo(literalNull),
                isNullable,
              ),
        const Code('break;'),
      ]);
    }
  }
}
