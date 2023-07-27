// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

import 'package:aws_common/aws_common.dart';
import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/config_parameter.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

class ServiceClientGenerator extends LibraryGenerator<ServiceShape> {
  ServiceClientGenerator(
    super.shape,
    CodegenContext context, {
    super.smithyLibrary,
  }) : super(
          context: context,
        );

  late final List<OperationShape> _operations =
      context.shapes.values.whereType<OperationShape>().toList();

  bool get isAwsService => shape.hasTrait<ServiceTrait>();

  @override
  String get className => context.serviceClientName;

  @override
  Library generate() {
    if (_operations.isNotEmpty) {
      builder
        ..name = context.serviceClientLibrary.libraryName
        ..body.add(_clientClass);
    }
    return builder.build();
  }

  Class get _clientClass => Class((c) {
        c
          ..name = className
          ..docs.addAll([
            if (shape.hasDocs(context)) shape.formattedDocs(context),
          ])
          ..constructors.add(_clientConstructor)
          ..methods.addAll(_operationMethods)
          ..fields.addAll(_clientFields);
      });

  Constructor get _clientConstructor => Constructor(
        (ctor) => ctor
          ..docs.addAll([
            if (shape.hasDocs(context)) shape.formattedDocs(context),
          ])
          ..constant = true
          ..optionalParameters.addAll(constructorParameters)
          ..initializers.addAll(constructorInitializers),
      );

  Iterable<Field> get _clientFields => LinkedHashSet<Field>(
        equals: (a, b) => a.name == b.name,
        hashCode: (key) => key.name.hashCode,
      )..addAll(
          _operations
              .expand((op) => op.operationParameters(context))
              .where((p) => p.location.inClientConstructor)
              .map(
                (parameter) => Field(
                  (f) => f
                    ..modifier = FieldModifier.final$
                    ..type = parameter.type
                    ..name = private(parameter.name),
                ),
              ),
        );

  Iterable<Parameter> get constructorParameters =>
      operationParameters.where((p) => p.location.inClientConstructor).map(
            (param) => Parameter(
              (p) => p
                ..type = param.type
                ..required = param.required && param.defaultTo == null
                ..defaultTo = param.defaultTo
                ..name = param.name
                ..named = true,
            ),
          );

  Iterable<ConfigParameter> get operationParameters =>
      LinkedHashSet<ConfigParameter>(
        equals: (a, b) => a.name == b.name,
        hashCode: (key) => key.name.hashCode,
      )..addAll(
          _operations.expand((op) => op.operationParameters(context)),
        );

  Iterable<Code> get constructorInitializers => constructorParameters.map(
        (param) => refer(private(param.name)).assign(refer(param.name)).code,
      );

  String private(String s) => s.startsWith('_') ? s : '_$s';

  /// Generate a callable method for each operation.
  Iterable<Method> get _operationMethods sync* {
    for (final operation in _operations) {
      final httpTrait = operation.httpTrait(context);
      if (httpTrait == null) {
        continue;
      }
      final operationInput = operation.inputSymbol(context);
      var operationOutput = operation.outputSymbol(context);
      // Replace Unit with void for nicer DX
      if (operationOutput == DartTypes.smithy.unit) {
        operationOutput = DartTypes.core.void$;
      }
      final paginatedTraits = operation.paginatedTraits(context);
      final isPaginated = paginatedTraits != null;
      yield Method(
        (m) => m
          ..docs.addAll([
            if (operation.hasDocs(context)) operation.formattedDocs(context),
          ])
          ..returns = isPaginated
              ? DartTypes.smithy.smithyOperation(
                  DartTypes.smithy.paginatedResult(
                    paginatedTraits.items?.symbol.unboxed ?? operationOutput,
                    paginatedTraits.pageSize?.symbol.unboxed ??
                        DartTypes.core.void$,
                    paginatedTraits.outputToken!.symbol.unboxed,
                  ),
                )
              : DartTypes.smithy.smithyOperation(operationOutput)
          ..name = operation.shapeId.shape.camelCase
          ..lambda = false
          ..requiredParameters.addAll([
            if (operationInput != DartTypes.smithy.unit)
              Parameter(
                (p) => p
                  ..type = operationInput
                  ..name = 'input',
              ),
          ])
          ..optionalParameters.addAll(
            operationParameters.where((p) => p.location.inClientMethod).map(
                  (param) => Parameter(
                    (p) => p
                      ..required = false
                      ..toThis = false
                      ..type = param.type.boxed
                      ..name = param.name
                      ..named = true,
                  ),
                ),
          )
          ..body = context
              .symbolFor(operation.shapeId)
              .newInstance([], {
                for (final param in operationParameters
                    .where((p) => p.location.inConstructor))
                  param.name: param.location.inClientMethod &&
                          param.location.inClientConstructor
                      ? refer(param.name).ifNullThen(refer(private(param.name)))
                      : param.location.inClientConstructor
                          ? refer(private(param.name))
                          : refer(param.name),
              })
              .property(isPaginated ? 'runPaginated' : 'run')
              .call([
                if (operationInput == DartTypes.smithy.unit)
                  DartTypes.smithy.unit.constInstance([])
                else
                  refer('input'),
              ], {
                for (final param in operationParameters.where(
                  (p) => p.location.inClientMethod && p.location.inRun,
                ))
                  param.name: param.location.inClientConstructor
                      ? refer(param.name).ifNullThen(refer(private(param.name)))
                      : refer(param.name),
              })
              .returned
              .statement,
      );
    }
  }
}
