// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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

class GeneratedOutput {
  const GeneratedOutput({
    required this.context,
    required this.libraries,
  });

  /// The contexts used to generate [libraries].
  final CodegenContext context;

  /// The generated Dart libraries.
  final List<GeneratedLibrary> libraries;
}

/// Generates a Dart file for each of the relevant shape types in [ast].
///
/// Returns a map from the library to its formatted definition file.
Map<ShapeId, GeneratedOutput> generateForAst(
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

  final outputs = <ShapeId, GeneratedOutput>{};

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
    final Iterable<GeneratedLibrary> libraries = [
      ...operations,
      ...additionalShapes.map(context.shapeFor),
      serviceShape
    ].expand((shape) => shape.accept(visitor) ?? const []);
    outputs[serviceShape.shapeId] = GeneratedOutput(
      context: context,
      libraries: libraries.toSet().toList(),
    );
  }

  return outputs;
}
