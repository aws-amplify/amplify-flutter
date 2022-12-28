// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/serialization/union_serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/docs.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

class UnionGenerator extends LibraryGenerator<UnionShape>
    with UnionGenerationContext, NamedMembersGenerationContext {
  UnionGenerator(
    UnionShape shape,
    CodegenContext context, {
    SmithyLibrary? smithyLibrary,
  }) : super(shape, context: context, smithyLibrary: smithyLibrary);

  late final _serializers = [
    for (final protocol in context.serviceProtocols)
      UnionSerializerGenerator(shape, context, protocol).generate(),
  ];

  @override
  Library generate() {
    // Tracks the generated type.
    context.generatedTypes[symbol] ??= {};

    builder.body.addAll([
      _typeEnum,
      _unionClass,
      ..._variantClasses,
      ..._serializers,
    ]);

    return builder.build();
  }

  String get _typeEnumName => '${className}Type';

  Class get _unionClass => Class(
        (c) => c
          ..docs.addAll([
            if (shape.hasDocs(context)) shape.formattedDocs(context),
          ])
          ..abstract = true
          ..name = className
          ..extend = DartTypes.smithy.smithyUnion(symbol)
          ..constructors.addAll([
            _privateConstructor,
            ..._factoryConstructors,
          ])
          ..methods.addAll([
            ..._variantGetters,
            _typeGetter,
            _valueGetter,
            _whenMethod,
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
    for (var member in sortedMembers) {
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

  /// The synthetic `Type` enum used to disambiguate the union type with a
  /// discrete, switchable, value.
  Enum get _typeEnum => Enum((e) {
        final docs = '/// The discrete values of [$className].';
        e
          ..name = _typeEnumName
          ..docs.add(docs)
          ..types.add(TypeReference((t) => t
            ..symbol = 'T'
            ..bound = symbol))
          ..constructors.add(Constructor((c) => c
            ..constant = true
            ..docs.add(docs)
            ..requiredParameters.add(Parameter((p) => p
              ..toThis = true
              ..name = 'value'))))
          ..fields.add(Field((f) => f
            ..docs.add('/// The Smithy value.')
            ..modifier = FieldModifier.final$
            ..type = DartTypes.core.string
            ..name = 'value'));
        for (final member in sortedMembers) {
          e.values.add(
            EnumValue(
              (v) => v
                ..docs.add('/// The type for [${variantClassName(member)}].')
                ..name = variantName(member)
                ..types.add(refer(variantClassName(member)))
                ..arguments.add(literalString(member.memberName, raw: true)),
            ),
          );
        }
        e.values.add(
          EnumValue(
            (v) => v
              ..docs.add(formatDocs('The type for an unknown value.'))
              ..name = sdkUnknown
              ..types.add(refer(variantClassName(unknownMember)))
              ..arguments.add(literalString(sdkUnknown)),
          ),
        );
      });

  /// The injected `type` getter.
  Method get _typeGetter => Method(
        (m) => m
          ..type = MethodType.getter
          ..returns = refer(_typeEnumName)
          ..name = 'type',
      );

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
            sortedMembers.fold<Expression?>(null, (ref, m) {
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
    for (var member in sortedMembers) {
      final memberSymbol = memberSymbols[member]!;
      final requiresTransformation =
          memberSymbol.requiresConstructorTransformation;
      var transformedSymbol = memberSymbol;
      if (requiresTransformation) {
        transformedSymbol = memberSymbol.transformedSymbol;
      }
      yield Constructor(
        (c) => c
          ..constant = !requiresTransformation
          ..factory = true
          ..name = variantName(member)
          ..requiredParameters.addAll([
            if (member.target != Shape.unit)
              Parameter(
                (p) => p
                  ..type = transformedSymbol.unboxed
                  ..name = variantName(member),
              ),
          ])
          ..redirect = refer(variantClassName(member)),
      );
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

  /// The `when` method for switching over the union's value.
  Method get _whenMethod {
    return Method((m) {
      m
        ..annotations.add(DartTypes.core.override)
        ..returns = refer('T?')
        ..name = 'when'
        ..types.add(refer('T'));

      m.optionalParameters.addAll([
        for (var member in sortedMembers)
          Parameter(
            (p) => p
              ..named = true
              ..name = variantName(member)
              ..type = FunctionType(
                (t) => t
                  ..isNullable = true
                  ..requiredParameters.add(memberSymbols[member]!.unboxed)
                  ..returnType = refer('T'),
              ),
          ),
        Parameter(
          (p) => p
            ..named = true
            ..name = sdkUnknown
            ..type = FunctionType(
              (t) => t
                ..isNullable = true
                ..requiredParameters.addAll([
                  DartTypes.core.string, // name
                  unknownMemberSymbol, // value
                ])
                ..returnType = refer('T'),
            ),
        ),
      ]);

      m.body = Block.of([
        for (var member in sortedMembers) ...[
          const Code('if ('),
          refer('this').isA(refer(variantClassName(member))).code,
          const Code(') {'),
          refer(variantName(member))
              .nullSafeProperty('call')
              .call([
                refer('this').asA(refer(variantClassName(member))).property(
                      isUnknownMember(member) ? 'value' : variantName(member),
                    ),
              ])
              .returned
              .statement,
          const Code('}'),
        ],
        refer('sdkUnknown')
            .nullSafeProperty('call')
            .call([refer('name'), refer('value')])
            .returned
            .statement,
      ]);
    });
  }

  /// All the serializers for the union.
  Field get _serializersField => Field((f) => f
    ..static = true
    ..modifier = FieldModifier.constant
    ..type = DartTypes.core.list(DartTypes.smithy.smithySerializer(symbol))
    ..name = 'serializers'
    ..assignment = literalConstList([
      for (final serializer in _serializers)
        refer(serializer.name).constInstance([]),
    ]).code);

  /// Factory constructors for each member.
  Iterable<Class> get _variantClasses sync* {
    for (var member in sortedMembers) {
      final memberSymbol = memberSymbols[member]!;
      final requiresTransformation =
          memberSymbol.requiresConstructorTransformation;
      var transformedSymbol = memberSymbol;
      if (requiresTransformation) {
        transformedSymbol = memberSymbol.transformedSymbol;
      }
      final variantName = this.variantName(member);
      final ctor = Constructor(
        (ctor) => ctor
          ..constant = !requiresTransformation
          ..requiredParameters.addAll([
            if (requiresTransformation)
              Parameter((p) => p
                ..type = transformedSymbol.unboxed
                ..name = variantName)
            else if (member.target != Shape.unit)
              Parameter((p) => p
                ..toThis = true
                ..name = variantName),
          ])
          ..initializers.addAll([
            if (requiresTransformation)
              refer('this').property('_').call([
                memberSymbol.transformToInternal(
                  name: variantName,
                  isNullable: false,
                ),
              ]).code
            else ...[
              if (member.target == Shape.unit)
                refer(variantName)
                    .assign(
                      DartTypes.smithy.unit.constInstance([]),
                    )
                    .code,
              refer('super').property('_').call([]).code,
            ]
          ]),
      );
      Constructor? privateConstructor;
      if (requiresTransformation) {
        privateConstructor = Constructor(
          (ctor) => ctor
            ..constant = true
            ..name = '_'
            ..requiredParameters.add(
              Parameter((p) => p
                ..toThis = true
                ..name = variantName),
            )
            ..initializers.add(
              refer('super').property('_').call([]).code,
            ),
        );
      }
      final typeGetter = Method(
        (m) => m
          ..type = MethodType.getter
          ..returns = refer(_typeEnumName)
          ..name = 'type'
          ..annotations.add(DartTypes.core.override)
          ..body = refer(_typeEnumName).property(variantName).code,
      );
      yield Class((c) {
        c
          ..name = variantClassName(member)
          ..extend = symbol
          ..constructors.addAll([
            ctor,
            if (privateConstructor != null) privateConstructor,
          ])
          ..fields.add(Field(
            (f) => f
              ..modifier = FieldModifier.final$
              ..annotations.add(DartTypes.core.override)
              ..name = variantName
              ..type = memberSymbols[member]!.unboxed,
          ))
          ..methods.addAll([
            typeGetter,
            Method((m) => m
              ..annotations.add(DartTypes.core.override)
              ..returns = DartTypes.core.string
              ..name = 'name'
              ..type = MethodType.getter
              ..lambda = true
              ..body = literalString(member.memberName).code),
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
    yield Class((c) => c
      ..name = variantClassName(unknownMember)
      ..extend = symbol
      ..constructors.add(ctor)
      ..methods.add(Method(
        (m) => m
          ..type = MethodType.getter
          ..returns = refer(_typeEnumName)
          ..name = 'type'
          ..annotations.add(DartTypes.core.override)
          ..body = refer(_typeEnumName).property(sdkUnknown).code,
      ))
      ..fields.addAll([
        Field((f) => f
          ..modifier = FieldModifier.final$
          ..annotations.add(DartTypes.core.override)
          ..name = 'name'
          ..type = DartTypes.core.string),
        value,
      ]));
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
    for (final member in sortedMembers) {
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
