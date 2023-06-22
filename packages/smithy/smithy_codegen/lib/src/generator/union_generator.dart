// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/serialization/union_serializer_generator.dart';
import 'package:smithy_codegen/src/generator/structure_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

class UnionGenerator extends LibraryGenerator<UnionShape>
    with UnionGenerationContext, NamedMembersGenerationContext {
  UnionGenerator(
    super.shape,
    CodegenContext context, {
    super.smithyLibrary,
  }) : super(context: context);

  late final _serializers = [
    for (final protocol in context.serviceProtocols)
      UnionSerializerGenerator(shape, context, protocol).generate(),
  ];

  @override
  Library generate() {
    // Tracks the generated type.
    context.generatedTypes[symbol] ??= {};

    builder.body.addAll([
      _unionClass,
      ..._variantClasses,
      ..._serializers,
    ]);

    return builder.build();
  }

  Class get _unionClass => Class(
        (c) => c
          ..docs.addAll([
            if (shape.hasDocs(context)) shape.formattedDocs(context),
          ])
          ..sealed = true
          ..name = className
          ..extend = DartTypes.smithy.smithyUnion(symbol)
          ..constructors.addAll([
            _privateConstructor,
            ..._factoryConstructors,
          ])
          ..methods.addAll([
            ..._variantGetters,
            _valueGetter,
            _toString,
          ])
          ..fields.addAll([
            _serializersField,
          ]),
      );

  /// Prevents initialization of the class, except via [_factoryConstructors].
  Constructor get _privateConstructor => Constructor(
        (c) => c
          ..constant = true
          ..name = '_',
      );

  /// The getter fields for members.
  Iterable<Method> get _variantGetters sync* {
    for (final member in members) {
      yield Method(
        (m) => m
          ..docs.addAll([
            if (member.hasDocs(context)) member.formattedDocs(context),
          ])
          ..returns = memberSymbols[member]!.boxed
          ..type = MethodType.getter
          ..name = variantName(member)
          ..lambda = true
          ..body = literalNull.code,
      );
    }
  }

  /// The `value` override.
  Method get _valueGetter => Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.core.object
          ..type = MethodType.getter
          ..name = 'value'
          ..lambda = true
          ..body = Block.of([
            const Code('('),
            members.fold<Expression?>(null, (ref, m) {
              final memberRef = refer(variantName(m));
              if (ref == null) {
                return memberRef;
              }
              return ref.ifNullThen(memberRef);
            })!.code,
            refer(')').nullChecked.code,
          ]),
      );

  /// Factory constructors for each member.
  Iterable<Constructor> get _factoryConstructors sync* {
    for (final member in members) {
      final memberSymbol = memberSymbols[member]!;
      final transformedSymbol = memberSymbol.transformedSymbol;
      final targetShape = context.shapeFor(member.target);
      final isStructureShape =
          targetShape is StructureShape && member.target != Shape.unit;
      final requiresTransformation =
          memberSymbol.requiresConstructorTransformation || isStructureShape;
      yield Constructor((c) {
        c
          ..constant = !requiresTransformation
          ..factory = true
          ..name = variantName(member);

        switch (targetShape) {
          case final StructureShape struct when isStructureShape:
            final structGenerator = StructureGenerator(struct, context);
            c.optionalParameters.addAll(
              structGenerator.members.map(structGenerator.memberParameter),
            );
            final memberNames = structGenerator.members
                .map((member) => member.dartName(ShapeType.structure));
            final constructorInvocation =
                structGenerator.symbol.newInstance([], {
              for (final member in memberNames) member: refer(member),
            });
            c
              ..lambda = true
              ..body = refer(variantClassName(member))
                  .newInstance([constructorInvocation]).code;
          case _:
            if (member.target != Shape.unit) {
              c.requiredParameters.add(
                Parameter(
                  (p) => p
                    ..type = transformedSymbol.unboxed
                    ..name = variantName(member),
                ),
              );
            }
            c.redirect = refer(variantClassName(member));
        }
      });
    }

    yield Constructor(
      (c) => c
        ..constant = true
        ..factory = true
        ..name = sdkUnknown
        ..requiredParameters.addAll([
          Parameter(
            (p) => p
              ..type = DartTypes.core.string
              ..name = 'name',
          ),
          Parameter(
            (p) => p
              ..type = unknownMemberSymbol
              ..name = 'value',
          ),
        ])
        ..redirect = refer(variantClassName(unknownMember)),
    );
  }

  /// All the serializers for the union.
  Field get _serializersField => Field(
        (f) => f
          ..static = true
          ..modifier = FieldModifier.constant
          ..type =
              DartTypes.core.list(DartTypes.smithy.smithySerializer(symbol))
          ..name = 'serializers'
          ..assignment = literalConstList([
            for (final serializer in _serializers)
              refer(serializer.name).constInstance([]),
          ]).code,
      );

  /// Factory constructors for each member.
  Iterable<Class> get _variantClasses sync* {
    for (final member in members) {
      final memberSymbol = memberSymbols[member]!;
      final requiresTransformation =
          memberSymbol.requiresConstructorTransformation;
      final transformedSymbol = memberSymbol.transformedSymbol;
      final variantName = this.variantName(member);
      final ctor = Constructor(
        (ctor) => ctor
          ..constant = !requiresTransformation
          ..requiredParameters.addAll([
            if (requiresTransformation)
              Parameter(
                (p) => p
                  ..type = transformedSymbol.unboxed
                  ..name = variantName,
              )
            else if (member.target != Shape.unit)
              Parameter(
                (p) => p
                  ..toThis = true
                  ..name = variantName,
              ),
          ])
          ..initializers.addAll([
            if (requiresTransformation)
              refer('this').property('_').call([
                memberSymbol.transformToInternal(
                  name: variantName,
                  isNullable: false,
                ),
              ]).code
            else
              refer('super').property('_').call([]).code,
          ]),
      );
      Constructor? privateConstructor;
      if (requiresTransformation) {
        privateConstructor = Constructor(
          (ctor) => ctor
            ..constant = true
            ..name = '_'
            ..requiredParameters.add(
              Parameter(
                (p) => p
                  ..toThis = true
                  ..name = variantName,
              ),
            )
            ..initializers.add(
              refer('super').property('_').call([]).code,
            ),
        );
      }
      yield Class((c) {
        c
          ..name = variantClassName(member)
          ..modifier = ClassModifier.final$
          ..extend = symbol
          ..constructors.addAll([
            ctor,
            if (privateConstructor != null) privateConstructor,
          ])
          ..fields.addAll([
            if (member.target != Shape.unit)
              Field(
                (f) => f
                  ..modifier = FieldModifier.final$
                  ..annotations.add(DartTypes.core.override)
                  ..name = variantName
                  ..type = memberSymbols[member]!.unboxed,
              ),
          ])
          ..methods.addAll([
            Method(
              (m) => m
                ..annotations.add(DartTypes.core.override)
                ..returns = DartTypes.core.string
                ..name = 'name'
                ..type = MethodType.getter
                ..lambda = true
                ..body = literalString(member.memberName).code,
            ),
            if (member.target == Shape.unit)
              Method(
                (m) => m
                  ..annotations.add(DartTypes.core.override)
                  ..returns = memberSymbols[member]!.unboxed
                  ..name = variantName
                  ..type = MethodType.getter
                  ..lambda = true
                  ..body = DartTypes.smithy.unit.constInstance([]).code,
              ),
          ]);
      });
    }

    // Unknown constructor
    final ctor = Constructor(
      (ctor) => ctor
        ..constant = true
        ..requiredParameters.addAll([
          Parameter(
            (p) => p
              ..toThis = true
              ..name = 'name',
          ),
          Parameter(
            (p) => p
              ..toThis = true
              ..name = 'value',
          ),
        ])
        ..initializers.add(refer('super').property('_').call([]).code),
    );
    final value = Field(
      (f) => f
        ..modifier = FieldModifier.final$
        ..annotations.add(DartTypes.core.override)
        ..name = 'value'
        ..type = unknownMemberSymbol,
    );
    yield Class(
      (c) => c
        ..name = variantClassName(unknownMember)
        ..modifier = ClassModifier.final$
        ..extend = symbol
        ..constructors.add(ctor)
        ..fields.addAll([
          Field(
            (f) => f
              ..modifier = FieldModifier.final$
              ..annotations.add(DartTypes.core.override)
              ..name = 'name'
              ..type = DartTypes.core.string,
          ),
          value,
        ]),
    );
  }

  Method get _toString {
    final builder = BlockBuilder();
    final helper = refer('helper');
    builder.addExpression(
      declareFinal('helper').assign(
        DartTypes.builtValue.newBuiltValueToStringHelper
            .call([literalString(className, raw: true)]),
      ),
    );
    // Add a check for every member instead of doing helper.add(name, value)
    // since some members may be sensitive or have other specific requirements
    // to consider when logging.
    for (final member in members) {
      final dartName = member.dartName(ShapeType.union);
      final isSensitive = shape.hasTrait<SensitiveTrait>() ||
          member.hasTrait<SensitiveTrait>() ||
          context.shapeFor(member.target).hasTrait<SensitiveTrait>();
      final stringValue =
          isSensitive ? literalString('***SENSITIVE***') : refer(dartName);
      builder.statements.add(
        helper
            .property('add')
            .call([
              literalString(dartName, raw: true),
              stringValue,
            ])
            .statement
            .wrapWithBlockIf(refer(dartName).notEqualTo(literalNull), true),
      );
    }
    builder.addExpression(helper.property('toString').call([]).returned);
    return Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.core.string
        ..name = 'toString'
        ..body = builder.build(),
    );
  }
}
