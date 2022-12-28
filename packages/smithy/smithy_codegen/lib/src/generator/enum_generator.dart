// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/docs.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

/// Generates enums for [StringShape] types.
class EnumGenerator extends LibraryGenerator<EnumShape> {
  EnumGenerator(
    EnumShape enumShape,
    CodegenContext context, {
    SmithyLibrary? smithyLibrary,
  }) : super(
          enumShape,
          context: context,
          smithyLibrary: smithyLibrary,
        );

  late final List<MemberShape> sortedDefinitions = shape.enumValues.toList()
    ..sort((a, b) {
      return a.variantName.compareTo(b.variantName);
    });

  late final List<EnumValueTrait> sortedEnumValues = sortedDefinitions
      .map((def) => def.expectTrait<EnumValueTrait>())
      .toList();

  Reference get valueType => shape.getType() == ShapeType.intEnum
      ? DartTypes.core.int
      : DartTypes.core.string;

  @override
  Library generate() {
    // Tracks the generated type.
    context.generatedTypes[symbol] ??= {};

    builder.body.addAll([
      _classDefinition,
      _helperExtension,
    ]);

    return builder.build();
  }

  /// The `SmithyEnum` class definition.
  Class get _classDefinition => Class(
        (c) => c
          ..name = className
          ..docs.addAll([
            if (shape.hasDocs(context)) shape.formattedDocs(context),
          ])
          ..extend = shape is StringEnumShape
              ? DartTypes.smithy.smithyEnum(symbol)
              : DartTypes.smithy.smithyIntEnum(symbol)
          ..constructors.addAll([
            _privateConstructor,
            _sdkUnknownConstructor,
          ])
          ..fields.addAll([
            ..._variantFields,
            _valuesField,
            _serializersField,
          ]),
      );

  /// The private constructor which is used internally.
  ///
  /// ```dart
  /// MyEnum._(int index, String name, String value)
  ///   : super(index, name, value);
  /// ```
  Constructor get _privateConstructor => Constructor(
        (c) => c
          ..constant = true
          ..name = '_'
          ..requiredParameters.addAll([
            Parameter((p) => p
              ..name = 'index'
              ..type = DartTypes.core.int),
            Parameter((p) => p
              ..name = 'name'
              ..type = DartTypes.core.string),
            Parameter((p) => p
              ..name = 'value'
              ..type = valueType),
          ])
          ..initializers.add(refer('super').call([
            refer('index'),
            refer('name'),
            refer('value'),
          ]).code),
      );

  /// The `sdkUnknown` constructor for values which do not match the
  /// enumerated ones.
  ///
  /// ```dart
  /// const MyEnum._sdkUnknown(String value) : super.sdkUnknown(value);
  /// ```
  Constructor get _sdkUnknownConstructor => Constructor(
        (c) => c
          ..constant = true
          ..name = '_sdkUnknown'
          ..requiredParameters.add(Parameter((p) => p
            ..name = 'value'
            ..type = valueType))
          ..initializers.add(refer('super').property('sdkUnknown').call([
            refer('value'),
          ]).code),
      );

  /// Enumerated value fields, as `static const` properties.
  Iterable<Field> get _variantFields =>
      sortedDefinitions.mapIndexed((index, definition) {
        final enumValue = definition.expectTrait<EnumValueTrait>();
        return Field((f) {
          final docs = definition.getTrait<DocumentationTrait>()?.value;
          if (docs != null) {
            f.docs.add(formatDocs(docs));
          }
          f
            ..static = true
            ..modifier = FieldModifier.constant
            ..name = definition.variantName
            ..assignment = symbol.newInstanceNamed('_', [
              literalNum(index),
              literalString(definition.memberName),
              literal(enumValue.value),
            ]).code;
        });
      });

  /// The static `values` field with all enum values.
  Field get _valuesField => Field(
        (f) => f
          ..static = true
          ..modifier = FieldModifier.constant
          ..name = 'values'
          ..docs.add('/// All values of [$className].')
          ..assignment = literalList(
            sortedDefinitions.map((e) => symbol.property(e.variantName)),
            symbol,
          ).code,
      );

  /// The list of serializers for this enum.
  Field get _serializersField {
    final serializerType = shape is StringEnumShape
        ? DartTypes.smithy.smithyEnumSerializer
        : DartTypes.smithy.smithyIntEnumSerializer;
    return Field((f) => f
      ..static = true
      ..modifier = FieldModifier.constant
      ..type = DartTypes.core.list(DartTypes.smithy.smithySerializer(symbol))
      ..name = 'serializers'
      ..assignment = literalConstList([
        serializerType.constInstance([
          literalString(shape.shapeId.shape),
        ], {
          'values': refer('values'),
          'sdkUnknown': symbol.property('_sdkUnknown'),
          'supportedProtocols': literalConstList([
            for (final protocol in context.serviceProtocols)
              if (!protocol.isSynthetic) protocol.shapeId.constructed,
          ])
        })
      ]).code);
  }

  /// Adds helper functions `byName` and `byValue` via an extension.
  Extension get _helperExtension => Extension((e) => e
    ..name = '${className}Helpers'
    ..on = DartTypes.core.list(symbol)
    ..methods.addAll([
      // The `byName` method
      Method(
        (m) => m
          ..returns = symbol
          ..name = 'byName'
          ..docs.addAll([
            '/// Returns the value of [$className] whose name matches [name].',
            '/// ',
            '/// Throws a `StateError` if no matching value is found.',
          ])
          ..requiredParameters.add(Parameter((p) => p
            ..type = DartTypes.core.string
            ..name = 'name'))
          ..lambda = true
          ..body = refer('firstWhere').call([
            Method(
              (c) => c
                ..lambda = true
                ..requiredParameters.add(Parameter((p) => p..name = 'el'))
                ..body = refer('el')
                    .property('name')
                    .property('toLowerCase')
                    .call([])
                    .equalTo(refer('name').property('toLowerCase').call([]))
                    .code,
            ).closure,
          ]).code,
      ),

      // The `byValue` method
      Method(
        (m) => m
          ..returns = symbol
          ..name = 'byValue'
          ..docs.addAll([
            '/// Returns the value of [$className] whose value matches [value].'
          ])
          ..requiredParameters.add(Parameter((p) => p
            ..type = valueType
            ..name = 'value'))
          ..lambda = true
          ..body = refer('firstWhere').call([
            Method(
              (c) => c
                ..lambda = true
                ..requiredParameters.add(Parameter((p) => p..name = 'el'))
                ..body =
                    refer('el').property('value').equalTo(refer('value')).code,
            ).closure,
          ]).code,
      ),
    ]));
}

extension EnumVariantName on MemberShape {
  /// The name of the enum variant.
  String get variantName => memberName.camelCase.nameEscaped(ShapeType.enum_);
}
