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
import 'package:smithy_codegen/src/generator/endpoint_resolver_generator.dart';
import 'package:smithy_codegen/src/generator/enum_generator.dart';
import 'package:smithy_codegen/src/generator/operation_generator.dart';
import 'package:smithy_codegen/src/generator/operation_test_generator.dart';
import 'package:smithy_codegen/src/generator/serializers_generator.dart';
import 'package:smithy_codegen/src/generator/service_client_generator.dart';
import 'package:smithy_codegen/src/generator/service_generator.dart';
import 'package:smithy_codegen/src/generator/service_server_generator.dart';
import 'package:smithy_codegen/src/generator/structure_generator.dart';
import 'package:smithy_codegen/src/generator/union_generator.dart';
import 'package:smithy_codegen/src/generator/visitors/default_visitor.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

/// Visits shapes to create libraries as needed. Only certain shape types are
/// given their own library file.
class LibraryVisitor extends DefaultVisitor<Iterable<GeneratedLibrary>> {
  LibraryVisitor(this.context);

  final CodegenContext context;

  /// Tracks visited shapes to prevent stack overflow from nesting.
  final Set<ShapeId> seen = {};

  GeneratedLibrary _buildLibrary(Shape shape, Library library) =>
      GeneratedLibrary(
        shape.smithyLibrary(context),
        library,
      );

  @override
  Iterable<GeneratedLibrary> operationShape(OperationShape shape,
      [Shape? parent]) sync* {
    if (seen.contains(shape.shapeId)) {
      return;
    }
    seen.add(shape.shapeId);

    // Build the operation class.
    final operationLibrary = _buildLibrary(
      shape,
      OperationGenerator(shape, context).generate(),
    );
    yield operationLibrary;

    // Build the waiters, if any
    // if (shape.hasTrait<WaitableTrait>()) {
    //   final library = SmithyLibraryX.create(
    //     packageName: context.packageName,
    //     serviceName: context.serviceName,
    //     libraryType: SmithyLibrary_LibraryType.WAITERS,
    //     filename: operationLibrary.smithyLibrary.filename,
    //     basePath: context.basePath,
    //   );
    //   yield GeneratedLibrary(
    //     library,
    //     WaiterGenerator(shape, context: context).generate(),
    //   );
    // }

    // Build the operation tests.
    final testLibrary = SmithyLibraryX.create(
      packageName: context.packageName,
      serviceName: context.serviceName,
      libraryType: SmithyLibrary_LibraryType.TEST,
      filename: shape.dartName,
    );
    final generated = OperationTestGenerator(
      shape,
      context,
      smithyLibrary: testLibrary,
    ).generate();
    if (generated != null) {
      yield GeneratedLibrary(
        testLibrary,
        generated,
        libraryDocs: '// ignore_for_file: unused_element\n',
      );
    }

    // Build the input, output and error shapes
    final shapes = [
      if (shape.input != null) shape.input!.target,
      if (shape.output != null) shape.output!.target,
      ...shape.errors.map((ref) => ref.target),
    ].map(context.shapeFor).cast<StructureShape>();

    for (final child in shapes) {
      yield* structureShape(child);
    }
  }

  @override
  Iterable<GeneratedLibrary> serviceShape(ServiceShape shape,
      [Shape? parent]) sync* {
    if (seen.contains(shape.shapeId)) {
      return;
    }
    seen.add(shape.shapeId);

    // Build service client
    yield GeneratedLibrary(
      context.serviceClientLibrary,
      ServiceClientGenerator(
        shape,
        context,
        smithyLibrary: context.serviceClientLibrary,
      ).generate(),
    );

    if (context.generateServer) {
      // Build service server
      yield GeneratedLibrary(
        context.serviceServerLibrary,
        ServiceServerGenerator(
          shape,
          context,
          smithyLibrary: context.serviceServerLibrary,
        ).generate(),
      );
    }

    // Build serializers library
    yield GeneratedLibrary(
      context.serviceSerializersLibrary,
      SerializersGenerator(context).generate(),
    );

    // Build the endpoint resolver library
    final endpointResolver =
        EndpointResolverGenerator(shape, context).generate();
    if (endpointResolver != null) {
      yield GeneratedLibrary(
        context.endpointResolverLibrary,
        endpointResolver,
      );
    }

    // Build top-level service library (should be last thing built)
    final docs = StringBuffer();
    final title = shape.getTrait<TitleTrait>()?.value;
    if (title != null) {
      docs.writeln('/// # $title');
    }
    if (shape.hasDocs(context)) {
      if (docs.isNotEmpty) docs.writeln('///');
      docs.writeln(shape.formattedDocs(context));
    }
    yield GeneratedLibrary(
      context.serviceLibrary,
      ServiceGenerator(
        shape,
        context,
        smithyLibrary: context.serviceLibrary,
      ).generate(),
      libraryDocs: docs.toString(),
    );
  }

  @override
  Iterable<GeneratedLibrary> enumShape(EnumShape shape, [Shape? parent]) sync* {
    if (seen.contains(shape.shapeId)) {
      return;
    }
    seen.add(shape.shapeId);

    yield _buildLibrary(shape, EnumGenerator(shape, context).generate());
  }

  @override
  Iterable<GeneratedLibrary> listShape(ListShape shape, [Shape? parent]) sync* {
    if (seen.contains(shape.shapeId)) {
      return;
    }
    seen.add(shape.shapeId);

    yield* _foreignMembers([shape.member.target]);
  }

  @override
  Iterable<GeneratedLibrary> mapShape(MapShape shape, [Shape? parent]) sync* {
    if (seen.contains(shape.shapeId)) {
      return;
    }
    seen.add(shape.shapeId);

    yield* _foreignMembers([shape.key.target, shape.value.target]);
  }

  @override
  Iterable<GeneratedLibrary> setShape(SetShape shape, [Shape? parent]) sync* {
    if (seen.contains(shape.shapeId)) {
      return;
    }
    seen.add(shape.shapeId);

    yield* _foreignMembers([shape.member.target]);
  }

  @override
  Iterable<GeneratedLibrary> structureShape(StructureShape shape,
      [Shape? parent]) sync* {
    if (seen.contains(shape.shapeId)) {
      return;
    }
    seen.add(shape.shapeId);

    // Do not generate e.g. Unit shape
    if (Shape.preludeShapes.keys.contains(shape.shapeId)) {
      return;
    }
    yield* _foreignMembers(shape.members.values.map((member) => member.target));
    yield _buildLibrary(
      shape,
      StructureGenerator(shape, context).generate(),
    );
  }

  @override
  Iterable<GeneratedLibrary> unionShape(UnionShape shape,
      [Shape? parent]) sync* {
    if (seen.contains(shape.shapeId)) {
      return;
    }
    seen.add(shape.shapeId);

    yield* _foreignMembers(shape.members.values.map((member) => member.target));
    yield _buildLibrary(shape, UnionGenerator(shape, context).generate());
  }

  Iterable<GeneratedLibrary> _foreignMembers(Iterable<ShapeId> shapeIds) {
    return shapeIds.map(context.shapeFor).expand((shape) {
      if (shape is CollectionShape) {
        return [context.shapeFor(shape.member.target)];
      } else if (shape is MapShape) {
        return [shape.key.target, shape.value.target].map(context.shapeFor);
      }
      return [shape];
    }).expand((shape) => shape.accept(this) ?? const []);
  }
}
