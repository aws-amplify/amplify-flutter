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

import 'package:aws_common/aws_common.dart';
import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/visitors/symbol_visitor.dart';

/// The context for code generation.
class CodegenContext {
  CodegenContext({
    required this.smithyVersion,
    this.metadata = const {},
    required ShapeMap shapes,
    required this.packageName,
    ShapeId? serviceShapeId,
    String? serviceName,
    this.basePath,
    this.pubspec,
    Iterable<ShapeId> additionalShapes = const {},
    this.generateServer = false,
  })  : _shapes = shapes,
        _serviceName = serviceName,
        serviceShapeId = serviceShapeId ??
            shapes.entries.singleWhereOrNull((entry) {
              return entry.value is ServiceShape;
            })?.key,
        _additionalShapes = additionalShapes.toSet() {
    if (serviceShapeId == null && serviceName == null) {
      throw ArgumentError(
        'Either serviceShapeId or serviceName must be provided.',
      );
    }
  }

  /// The version of Smithy being generated for.
  final String smithyVersion;

  /// Metadata about the model.
  final Map<String, Object> metadata;

  /// The service closure's shape map.
  final ShapeMap _shapes;

  /// Additional shapes to generate as part of the service closure.
  final Set<ShapeId> _additionalShapes;

  /// The service closure's shape map.
  late final ShapeMap shapes = ShapeMap(Map.fromEntries(
    _shapes.entries.where((entry) {
      return serviceShapeId == null ||
          entry.key.namespace == serviceShapeId!.namespace ||
          _additionalShapes.contains(entry.key);
    }),
  ));

  /// Tracks the service's generated types and the private symbols to hide.
  ///
  /// Used for creating common `serializers` definition.
  final Map<Reference, Set<String>> generatedTypes = {};

  /// Tracks the service's needed builder factories.
  final Map<Reference, Expression> builderFactories = {};

  /// The name of the package being generated.
  final String packageName;

  /// If the SDK is being generated as a subpackage, the base path indicates
  /// the root of the subpackage.
  final String? basePath;

  /// The shape ID of the service being generated.
  final ShapeId? serviceShapeId;

  /// The name of the service being generated.
  String get serviceName {
    if (_serviceName != null) {
      return _serviceName!;
    }
    final sdkId = service?.getTrait<ServiceTrait>()?.sdkId;
    if (sdkId != null) {
      return sdkId;
    }
    return serviceShapeId!.shape;
  }

  /// A manual rename of the service.
  final String? _serviceName;

  /// The pubspec of the package being generated. If included, dependencies will
  /// be added as needed during code generation.
  final Pubspec? pubspec;

  /// The service shape being generated.
  late final ServiceShape? service =
      serviceShapeId == null ? null : shapeFor(serviceShapeId!) as ServiceShape;

  /// The protocol for this service.
  late final List<ProtocolDefinitionTrait> serviceProtocols = () {
    final protocols =
        service?.traits.values.whereType<ProtocolDefinitionTrait>().toList();
    if (protocols == null || protocols.isEmpty) {
      return const [GenericJsonProtocolDefinitionTrait()];
    }
    return protocols;
  }();

  /// Returns the shape for [shapeId].
  Shape shapeFor(ShapeId shapeId) {
    final shape = _shapes[shapeId] ?? Shape.preludeShapes[shapeId];
    if (shape != null) {
      return shape;
    }
    throw CodegenException('No shape found for ID: $shapeId');
  }

  /// Returns the symbol or [Reference] for [shapeId].
  Reference symbolFor(ShapeId shapeId, [Shape? parent]) {
    final shape = shapeFor(shapeId);
    return shape.accept(SymbolVisitor(this), parent);
  }

  /// The service's serializers library.
  late final SmithyLibrary serviceSerializersLibrary = SmithyLibraryX.create(
    packageName: packageName,
    serviceName: serviceName,
    libraryType: SmithyLibrary_LibraryType.COMMON,
    filename: 'serializers.dart',
    basePath: basePath,
  );

  /// The service's endpoint resolvers library.
  late final SmithyLibrary endpointResolverLibrary = SmithyLibraryX.create(
    packageName: packageName,
    serviceName: serviceName,
    libraryType: SmithyLibrary_LibraryType.COMMON,
    filename: 'endpoint_resolver.dart',
    basePath: basePath,
  );

  /// The service's serializers reference.
  late final Reference serializersRef =
      Reference('serializers', serviceSerializersLibrary.libraryUrl);

  /// The service's builder factories reference.
  late final Reference builderFactoriesRef =
      Reference('builderFactories', serviceSerializersLibrary.libraryUrl);

  /// The service's client library.
  late final SmithyLibrary serviceClientLibrary = SmithyLibraryX.create(
    packageName: packageName,
    serviceName: serviceName,
    libraryType: SmithyLibrary_LibraryType.CLIENT,
    filename: serviceClientName,
    basePath: basePath,
  );

  /// Whether to generate server code.
  final bool generateServer;

  /// The service's server library.
  late final SmithyLibrary serviceServerLibrary = SmithyLibraryX.create(
    packageName: packageName,
    serviceName: serviceName,
    libraryType: SmithyLibrary_LibraryType.SERVER,
    filename: serviceServerName,
    basePath: basePath,
  );

  // For backwards compatibility reasons, some services will include
  // "service" or "API" as a suffix. New SDK major versions SHOULD strip
  // service and api suffixes from sdkId when generating a client name.
  //
  // https://awslabs.github.io/smithy/1.0/spec/aws/aws-core.html#using-sdk-service-id-for-client-naming
  late final String _serviceCommonName =
      serviceName.replaceAll(RegExp(r'(API|Client|Service)$'), '').pascalCase;

  late final String serviceServerName = '${_serviceCommonName}Server';

  late final String serviceClientName = '${_serviceCommonName}Client';

  /// The top-level service library.
  late final SmithyLibrary serviceLibrary = SmithyLibraryX.create(
    packageName: packageName,
    serviceName: serviceName,
    libraryType: SmithyLibrary_LibraryType.SERVICE,
    filename: serviceName,
    basePath: basePath,
  );
}
