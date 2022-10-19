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
    ServiceShape shape,
    CodegenContext context, {
    SmithyLibrary? smithyLibrary,
  }) : super(
          shape,
          context: context,
          smithyLibrary: smithyLibrary,
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
          ..fields.addAll(protocolFields);
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

  Iterable<Field> get protocolFields => LinkedHashSet<Field>(
        equals: (a, b) => a.name == b.name,
        hashCode: (key) => key.name.hashCode,
      )..addAll(
          _operations
              .expand((op) => op.operationParameters(context))
              .where((p) => p.location.inConstructor)
              .map((parameter) => Field(
                    (f) => f
                      ..modifier = FieldModifier.final$
                      ..type = parameter.type
                      ..name = '_${parameter.name}',
                  )),
        );

  Iterable<Parameter> get constructorParameters =>
      operationParameters.where((p) => p.location.inConstructor).map((param) {
        return Parameter(
          (p) => p
            ..type = param.type
            ..required = param.required
            ..name = param.name
            ..named = true,
        );
      });

  Iterable<ConfigParameter> get operationParameters =>
      LinkedHashSet<ConfigParameter>(
        equals: (a, b) => a.name == b.name,
        hashCode: (key) => key.name.hashCode,
      )..addAll(
          _operations.expand((op) => op.operationParameters(context)),
        );

  Iterable<Code> get constructorInitializers => constructorParameters.map(
        (param) => refer('_${param.name}').assign(refer(param.name)).code,
      );

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
      String public(String s) => s.startsWith('_') ? s.substring(1) : s;
      yield Method(
        (m) => m
          ..docs.addAll([
            if (operation.hasDocs(context)) operation.formattedDocs(context),
          ])
          ..returns = isPaginated
              ? DartTypes.smithy
                  .smithyOperation(DartTypes.smithy.paginatedResult(
                  paginatedTraits.items?.symbol.unboxed ?? operationOutput,
                  paginatedTraits.pageSize?.symbol.unboxed ??
                      DartTypes.core.void$,
                ))
              : DartTypes.smithy.smithyOperation(operationOutput)
          ..name = operation.shapeId.shape.camelCase
          ..lambda = false
          ..requiredParameters.addAll([
            if (operationInput != DartTypes.smithy.unit)
              Parameter((p) => p
                ..type = operationInput
                ..name = 'input')
          ])
          ..optionalParameters.addAll(
              operationParameters.where((p) => p.location.inRun).map((param) {
            return Parameter(
              (p) => p
                ..required = false
                ..toThis = false
                ..type = param.type.boxed
                ..name = param.name
                ..named = true,
            );
          }))
          ..body = context
              .symbolFor(operation.shapeId)
              .newInstance([], {
                for (final field in operation.protocolFields(context))
                  public(field.name): refer(field.name),
              })
              .property(isPaginated ? 'runPaginated' : 'run')
              .call([
                if (operationInput == DartTypes.smithy.unit)
                  DartTypes.smithy.unit.constInstance([])
                else
                  refer('input'),
              ], {
                for (final param
                    in operationParameters.where((p) => p.location.inRun))
                  param.name: param.location.inConstructor
                      ? refer(param.name).ifNullThen(refer('_${param.name}'))
                      : refer(param.name)
              })
              .returned
              .statement,
      );
    }
  }
}
