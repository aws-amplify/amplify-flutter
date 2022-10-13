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
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/visitors/library_visitor.dart';
import 'package:smithy_codegen/src/version.dart';

/// Header which prefixes all generated files.
const String header =
    '// Generated with smithy-dart $packageVersion. DO NOT MODIFY.';

/// The default emitter for codegen operations.
DartEmitter buildEmitter(Allocator allocator) => DartEmitter(
      allocator: allocator,
      orderDirectives: true,
      useNullSafetySyntax: true,
    );

/// Builds a service closure for a [ServiceShape].
CodegenContext buildContext(
  SmithyAst ast, {
  required ServiceShape serviceShape,
  required String packageName,
  String? serviceName,
  String? basePath,
  Iterable<ShapeId> includeShapes = const [],
  Iterable<ShapeId> additionalShapes = const [],
  bool generateServer = false,
}) {
  // Builds a service closure with just one service shape. All the other
  // shapes can remain - they will not be generated for services which do
  // not reference them due to how LibraryVisitor works.
  final serviceClosureShapes = ast.shapes.entries.where((el) {
    if (el.value is OperationShape) {
      return includeShapes.isEmpty || includeShapes.contains(el.key);
    }
    return true;
  });
  final serviceClosure = ShapeMap(Map.fromEntries(serviceClosureShapes));

  return CodegenContext(
    smithyVersion: ast.version,
    metadata: ast.metadata.toMap(),
    shapes: serviceClosure,
    packageName: packageName,
    basePath: basePath,
    serviceShapeId: serviceShape.shapeId,
    serviceName: serviceName,
    additionalShapes: additionalShapes,
    generateServer: generateServer,
  );
}

/// Generates a Dart file for each of the relevant shape types in [ast].
///
/// Returns a map from the library to its formatted definition file.
List<GeneratedLibrary> generateForAst(
  SmithyAst ast, {
  required String packageName,
  String? serviceName,
  String? basePath,
  Iterable<ShapeId> includeShapes = const [],
  Iterable<ShapeId> additionalShapes = const [],
  bool generateServer = false,
}) {
  var serviceShapes = ast.shapes.values.whereType<ServiceShape>();
  if (serviceName != null) {
    if (serviceShapes.length != 1) {
      throw CodegenException(
        'When specifying a service name, it is assumed that only one service is '
        'to be generated. However, the provided AST contains '
        '${serviceShapes.length} service shapes.',
      );
    }
    serviceShapes = [serviceShapes.first];
  }

  final Set<GeneratedLibrary> libraries = {};

  for (final serviceShape in serviceShapes) {
    final context = buildContext(
      ast,
      serviceShape: serviceShape,
      packageName: packageName,
      basePath: basePath,
      serviceName: serviceShapes.length == 1 ? serviceName : null,
      includeShapes: includeShapes,
      additionalShapes: additionalShapes,
      generateServer: generateServer,
    );

    // Generate libraries for relevant shape types.
    //
    // Build service shapes last, since they aggregate generated types.
    final operations = context.shapes.values.whereType<OperationShape>();
    final visitor = LibraryVisitor(context);
    libraries.addAll([
      ...operations,
      ...additionalShapes.map(context.shapeFor),
      serviceShape
    ].expand((shape) => shape.accept(visitor) ?? const []));
  }

  return libraries.toList();
}
