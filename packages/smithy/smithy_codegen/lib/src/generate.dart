// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/visitors/library_visitor.dart';
import 'package:smithy_codegen/src/version.dart';

const List<String> _ignoredRules = [
  'avoid_unused_constructor_parameters',
  'deprecated_member_use_from_same_package',
  'non_constant_identifier_names',
];

/// Header which prefixes all generated files.
final String header = '''
// Generated with smithy-dart $packageVersion. DO NOT MODIFY.
// ignore_for_file: ${_ignoredRules.join(',')}
''';

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
  Map<ShapeId, Reference>? symbolOverrides,
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
    symbolOverrides: symbolOverrides,
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
  Map<ShapeId, Reference>? symbolOverrides,
}) {
  const transformers = <ShapeVisitor<Shape>>[
    _CognitoWorkaroundVisitor(),
  ];
  for (final transformer in transformers) {
    ast = ast.rebuild((ast) {
      ast.shapes!.updateAll((_, shape) => shape.accept(transformer));
    });
  }

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
      symbolOverrides: symbolOverrides,
    );

    context.run(() {
      // Generate libraries for relevant shape types.
      //
      // Build service shapes last, since they aggregate generated types.
      final operations = context.shapes.values.whereType<OperationShape>();
      final visitor = LibraryVisitor(context);
      final libraries = [
        ...operations,
        ...additionalShapes.map(context.shapeFor),
        serviceShape
      ].expand<GeneratedLibrary>((shape) => shape.accept(visitor) ?? const []);
      outputs[serviceShape.shapeId] = GeneratedOutput(
        context: context,
        libraries: libraries.toSet().toList(),
      );
    });
  }

  return outputs;
}

/// Workarounds for issues with Cognito IDP Smithy models.
// TODO(dnys1): Remove when fixed by Cognito
class _CognitoWorkaroundVisitor extends CategoryShapeVisitor<Shape> {
  const _CognitoWorkaroundVisitor();

  /// Cognito is currently missing some `@optionalAuth` traits in their service
  /// schema. This is awaiting a fix by Cognito and the current approach by
  /// AWS SDKs is to manually fix this inline.
  static const missingOptionalAuth = [
    'com.amazonaws.cognitoidentityprovider#AssociateSoftwareToken',
    'com.amazonaws.cognitoidentityprovider#ConfirmDevice',
    'com.amazonaws.cognitoidentityprovider#ForgetDevice',
    'com.amazonaws.cognitoidentityprovider#GetDevice',
    'com.amazonaws.cognitoidentityprovider#GlobalSignOut',
    'com.amazonaws.cognitoidentityprovider#ListDevices',
    'com.amazonaws.cognitoidentityprovider#RevokeToken',
    'com.amazonaws.cognitoidentityprovider#SetUserMFAPreference',
    'com.amazonaws.cognitoidentityprovider#UpdateDeviceStatus',
    'com.amazonaws.cognitoidentityprovider#VerifySoftwareToken',
  ];

  @override
  EnumShape enumShape(EnumShape shape, [Shape? parent]) => shape;

  @override
  ListShape listShape(ListShape shape, [Shape? parent]) => shape;

  @override
  MapShape mapShape(MapShape shape, [Shape? parent]) {
    if (shape.shapeId.toString() ==
        'com.amazonaws.cognitoidentityprovider#ChallengeParametersType') {
      shape.traits[SparseTrait.id] = const SparseTrait();
    }
    return shape;
  }

  @override
  MemberShape memberShape(MemberShape shape, [Shape? parent]) => shape;

  @override
  OperationShape operationShape(OperationShape shape, [Shape? parent]) {
    if (missingOptionalAuth.contains(shape.shapeId.toString())) {
      shape.traits[OptionalAuthTrait.id] = const OptionalAuthTrait();
    }
    return shape;
  }

  @override
  ResourceShape resourceShape(ResourceShape shape, [Shape? parent]) => shape;

  @override
  ServiceShape serviceShape(ServiceShape shape, [Shape? parent]) => shape;

  @override
  SetShape setShape(SetShape shape, [Shape? parent]) => shape;

  @override
  SimpleShape simpleShape(SimpleShape shape, [Shape? parent]) => shape;

  @override
  StructureShape structureShape(StructureShape shape, [Shape? parent]) => shape;

  @override
  UnionShape unionShape(UnionShape shape, [Shape? parent]) => shape;
}
