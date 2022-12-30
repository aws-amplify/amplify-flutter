// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// Generates the `serializers` and `builderFactories` fields necessary for shared
/// use by the operation protocols.
class SerializersGenerator extends Generator<Library> {
  SerializersGenerator(this.context);

  final CodegenContext context;

  @override
  Library generate() {
    return Library((b) => b
      ..name = context.serviceSerializersLibrary.libraryName
      ..body.addAll([
        _serializers,
        _builderFactories,
      ]));
  }

  /// The `serializers` field which aggregates all serializers across the
  /// service's generated shapes.
  Field get _serializers => Field(
        (f) => f
          ..modifier = FieldModifier.constant
          ..type = DartTypes.core.list(DartTypes.smithy.smithySerializer())
          ..name = 'serializers'
          ..assignment = literalConstList([
            for (final type in context.generatedTypes.keys)
              type.property('serializers').spread,
          ]).code,
      );

  /// The `builderFactories` field which is filled in with all the builder
  /// factories necessary for built collection types throughout the service's
  /// closure.
  Field get _builderFactories => Field(
        (f) => f
          ..modifier = FieldModifier.final$
          ..type = DartTypes.core
              .map(DartTypes.builtValue.fullType, DartTypes.core.function)
          ..name = 'builderFactories'
          ..assignment = literalMap({
            for (final entry in context.builderFactories.entries)
              entry.key.fullType(): entry.value,
          }).code,
      );
}
