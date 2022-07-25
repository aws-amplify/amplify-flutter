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

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/src/protocol/generic_json_protocol.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_config.dart';
import 'package:smithy_codegen/src/generator/serialization/structure_serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

enum TestType { request, response, error }

/// Generates test classes for shapes with HTTP tests.
class OperationTestGenerator extends LibraryGenerator<OperationShape>
    with OperationGenerationContext {
  OperationTestGenerator(
    OperationShape shape,
    CodegenContext context, {
    SmithyLibrary? smithyLibrary,
  }) : super(
          shape,
          context: context,
          smithyLibrary: smithyLibrary,
        );

  /// Test cases which should be skipped right now and the reasons why.
  static const Map<String, String> _skip = {
    'RestJsonQueryIdempotencyTokenAutoFill':
        'bool.fromEnvironment is not working in tests for some reason',
    'QueryIdempotencyTokenAutoFill':
        'bool.fromEnvironment is not working in tests for some reason',
    'RestJsonSerializesSparseSetMap':
        'Cannot handle this at the moment (empty vs. null).',
    'RestJsonSerializesDenseSetMap':
        'Cannot handle this at the moment (empty vs. null).',
    'RestJsonSerializesSparseSetMapAndRetainsNull':
        'Cannot handle this at the moment (empty vs. null).',
    'GlacierChecksums': 'Glacier is not supported yet',
    'GlacierVersionHeader': 'Glacier is not supported yet',
    'GlacierMultipartChecksums': 'Glacier is not supported yet',
    'GlacierAccountId': 'Glacier is not supported yet',
    'MachinelearningPredictEndpoint': 'ML Predict is not supported yet',
  };

  /// Test values for required operation inputs.
  late final Map<String, Expression> _testValues = {
    'region':
        (context.service?.isAwsService ?? false) && vendorSerializers.isNotEmpty
            ? refer('config')
                .property('scopedConfig')
                .nullSafeProperty('client')
                .nullSafeProperty('region')
                .ifNullThen(literalString('us-east-1'))
            : literalString('us-east-1'),
    'credentialsProvider':
        DartTypes.awsSigV4.awsCredentialsProvider.constInstance([
      DartTypes.awsSigV4.awsCredentials.constInstance([
        literalString('DUMMY-ACCESS-KEY-ID'),
        literalString('DUMMY-SECRET-ACCESS-KEY'),
      ]),
    ]),
    'baseUri': DartTypes.core.uri.newInstanceNamed('parse', [
      literalString('https://example.com'),
    ]),
    's3ClientConfig': refer('s3ClientConfig'),
  };

  /// A constructed instance of the operation.
  Expression _operationInstance(HttpMessageTestCase testCase) =>
      symbol.newInstance([], {
        for (final param in shape.constructorParameters(context))
          if (testCase is HttpRequestTestCase && param.name == 'baseUri')
            param.name: DartTypes.core.uri.newInstanceNamed('parse', [
              literalString('https://${testCase.host ?? 'example.com'}'),
            ])
          else if (_testValues.containsKey(param.name))
            param.name: _testValues[param.name]!
      });

  /// Tests to skip on Web. To be filled in during codegen since it depends
  /// on the contents of the test case.
  final Set<String> _skipOnWeb = {};

  late final httpRequestTestCases = shape
          .getTrait<HttpRequestTestsTrait>()
          ?.testCases
          .where((t) => t.appliesTo != AppliesTo.server) ??
      const [];
  late final httpResponseTestCases = shape
          .getTrait<HttpResponseTestsTrait>()
          ?.testCases
          .where((t) => t.appliesTo != AppliesTo.server) ??
      const [];
  late final errorShapes = shape.errors
      .map((err) => context.shapeFor(err.target))
      .cast<StructureShape>()
      .toList();
  late final httpErrorResponseTestCases = {
    for (final shape in errorShapes)
      shape: shape
              .getTrait<HttpResponseTestsTrait>()
              ?.testCases
              .where((t) => t.appliesTo != AppliesTo.server) ??
          const [],
  };

  late final testProtocols = {
    ...httpRequestTestCases.map((t) => t.protocol),
    ...httpResponseTestCases.map((t) => t.protocol),
    ...httpErrorResponseTestCases.values
        .expand((el) => el)
        .map((t) => t.protocol),
  }
      .map((protocol) =>
          context.serviceProtocols.firstWhere((p) => p.shapeId == protocol))
      .toList();

  /// When deserializing the `params` of a test case, we need to consider not
  /// only the input type but also any generated types it references, either in
  /// lists, maps, sets, or direct children.
  Iterable<Class?> _collectSerializers(
    StructureShape shape,
    ProtocolDefinitionTrait protocol, [
    Set<ShapeId>? seen,
  ]) sync* {
    (seen ??= {}).add(shape.shapeId);
    for (final member in shape.members.values) {
      var targetShape = context.shapeFor(member.target);
      var targetType = targetShape.getType();
      const collectionTypes = [
        ShapeType.map,
        ShapeType.list,
        ShapeType.set,
      ];
      while (collectionTypes.contains(targetType)) {
        if (targetShape is CollectionShape) {
          targetShape = context.shapeFor(targetShape.member.target);
        } else if (targetShape is MapShape) {
          targetShape = context.shapeFor(targetShape.value.target);
        }
        targetType = targetShape.getType();
      }
      if (targetShape is StructureShape &&
          !seen.contains(targetShape.shapeId)) {
        yield StructureSerializerGenerator(
          targetShape,
          context,
          protocol,
          config: const SerializerConfig.test(),
        ).generate();
        yield* _collectSerializers(targetShape, protocol, seen);
      } else if (targetShape.isEnum) {
        _vendorEnums.add(context.symbolFor(targetShape.shapeId));
      }
    }
  }

  late final inputSerializers = {
    for (final protocol in testProtocols)
      protocol.shapeId: [
        StructureSerializerGenerator(
          inputShape,
          context,
          protocol,
          config: const SerializerConfig.test(),
        ).generate(),
        ..._collectSerializers(inputShape, protocol),
      ],
  };
  late final outputSerializers = {
    for (final protocol in testProtocols)
      protocol.shapeId: [
        StructureSerializerGenerator(
          outputShape,
          context,
          protocol,
          config: const SerializerConfig.test(),
        ).generate(),
        ..._collectSerializers(outputShape, protocol),
      ],
  };
  late final errorSerializers = {
    for (final errorShape in errorShapes)
      errorShape: {
        for (final protocol in testProtocols)
          protocol.shapeId: [
            StructureSerializerGenerator(
              errorShape,
              context,
              protocol,
              config: const SerializerConfig.test(),
            ).generate(),
            ..._collectSerializers(errorShape, protocol),
          ],
      }
  };

  static const _vendorProtocol = GenericJsonProtocolDefinitionTrait();
  final Set<Reference> _vendorEnums = LinkedHashSet(
    equals: (a, b) => a.symbol == b.symbol,
    hashCode: (key) => key.symbol!.hashCode,
  );
  late final vendorSerializers =
      <HttpMessageTestCase>[...httpRequestTestCases, ...httpResponseTestCases]
          .map((testCase) => testCase.vendorParamsShape)
          .whereType<ShapeId>()
          .map(context.shapeFor)
          .cast<StructureShape>()
          .expand((shape) => [
                StructureSerializerGenerator(
                  shape,
                  context,
                  _vendorProtocol,
                  config: const SerializerConfig.test(),
                ).generate(),
                ..._collectSerializers(shape, _vendorProtocol),
              ])
          .whereType<Class>()
          .toList();

  Iterable<Class> _uniqueSerializers(Iterable<Class?> serializers) {
    return LinkedHashSet<Class>(
      equals: (a, b) => a.name == b.name,
      hashCode: (key) => key.name.hashCode,
    )..addAll(serializers.whereType());
  }

  @override
  Library? generate() {
    builder.name = '${builder.name!}_test';

    final allTests = [
      ..._httpRequestTests,
      ..._httpResponseTests,
      ..._httpErrorResponseTests,
    ];

    if (allTests.isEmpty) {
      return null;
    }

    // Generic JSON serializer for deserializing the input params
    builder.body.addAll([
      Method.returnsVoid(
        (b) => b
          ..name = 'main'
          ..body = Block.of([
            if (vendorSerializers.isNotEmpty) Code.scope((allocate) => '''
  final vendorSerializers = (${allocate(DartTypes.smithyTest.testSerializers)}.toBuilder()..addAll(const [
    ${_uniqueSerializers(vendorSerializers).map((serializer) => '${serializer.name}(),').join()}
    ${_vendorEnums.map((e) => '...${allocate(e)}.serializers,').join()}
  ])).build();
            '''),
            Block.of(allTests),
          ]),
      ),
      ..._uniqueSerializers([
        ...inputSerializers.values.expand((el) => el),
        ...outputSerializers.values.expand((el) => el),
        ...errorSerializers.values.expand((el) => el.values).expand((el) => el),
        ...vendorSerializers,
      ]),
    ]);

    return builder.build();
  }

  /// HTTP request tests.
  Iterable<Code> get _httpRequestTests sync* {
    for (var testCase in httpRequestTestCases) {
      final serializers = inputSerializers[testCase.protocol] ?? const [];
      final testCall = DartTypes.smithyTest.httpRequestTest.call([], {
        'operation': _operationInstance(testCase),
        'testCase': DartTypes.smithyTest.httpRequestTestCase.constInstance([], {
          'id': literal(testCase.id),
          'documentation': literal(testCase.documentation),
          'protocol': testCase.protocol.constructed,
          'authScheme': literal(testCase.authScheme),
          'body': testCase.body == null
              ? literalNull
              : literalString(_escapeBody(testCase.body!)),
          'bodyMediaType': literal(testCase.bodyMediaType),
          'params': literal(_escapeParams(testCase, testCase.params)),
          'vendorParamsShape':
              testCase.vendorParamsShape?.constructed ?? literalNull,
          'vendorParams': literal(testCase.vendorParams),
          'headers': literal(
              _escapeParams(testCase, testCase.headers).cast<String, String>()),
          'forbidHeaders': literal(testCase.forbidHeaders),
          'requireHeaders': literal(testCase.requireHeaders),
          'tags': literal(testCase.tags),
          'appliesTo': testCase.appliesTo == null
              ? literalNull
              : DartTypes.smithyTest.appliesTo
                  .property(testCase.appliesTo!.name),
          'method': literal(testCase.method),
          'uri': literal(testCase.uri),
          'host': literal(testCase.host),
          'resolvedHost': literal(testCase.resolvedHost),
          'queryParams': literal(testCase.queryParams),
          'forbidQueryParams': literal(testCase.forbidQueryParams),
          'requireQueryParams': literal(testCase.requireQueryParams),
        }),
        'inputSerializers': literalConstList([
          for (final serializer in _uniqueSerializers(serializers))
            refer(serializer.name).constInstance([])
        ]),
      });
      yield _buildTest(testCase, testCall, type: TestType.request);
    }
  }

  /// HTTP response tests.
  ///
  /// https://awslabs.github.io/smithy/1.0/spec/http-protocol-compliance-tests.html#httpresponsetests
  Iterable<Code> get _httpResponseTests sync* {
    for (var testCase in httpResponseTestCases) {
      final serializers = outputSerializers[testCase.protocol] ?? const [];
      final testCall = DartTypes.smithyTest.httpResponseTest.call([], {
        'operation': _operationInstance(testCase),
        'testCase': _buildResponseTestCase(testCase),
        'outputSerializers': literalConstList([
          for (final serializer in _uniqueSerializers(serializers))
            refer(serializer.name).constInstance([])
        ]),
      });
      yield _buildTest(testCase, testCall, type: TestType.response);
    }
  }

  /// HTTP error response tests.
  ///
  /// https://awslabs.github.io/smithy/1.0/spec/http-protocol-compliance-tests.html#httpresponsetests
  Iterable<Code> get _httpErrorResponseTests sync* {
    for (final errorShape in errorShapes) {
      final testCases = httpErrorResponseTestCases[errorShape]!;
      for (var testCase in testCases) {
        final serializers =
            errorSerializers[errorShape]![testCase.protocol] ?? const [];
        final testCall = DartTypes.smithyTest.httpErrorResponseTest.call([], {
          'operation': _operationInstance(testCase),
          'testCase': _buildResponseTestCase(testCase),
          'errorSerializers': literalConstList([
            for (final serializer in _uniqueSerializers(serializers))
              refer(serializer.name).constInstance([])
          ]),
        }, [
          inputPayload.symbol,
          inputSymbol,
          outputPayload.symbol,
          outputSymbol,
          context.symbolFor(errorShape.shapeId),
        ]);
        yield _buildTest(testCase, testCall, type: TestType.error);
      }
    }
  }

  /// Creates the call to `package:test`.
  Code _buildTest(
    HttpMessageTestCase testCase,
    Expression testCall, {
    required TestType type,
  }) {
    final skipReason = _skip[testCase.id];
    final skipOnWeb = _skipOnWeb.contains(testCase.id);
    final initBlock = BlockBuilder();
    if (testCase.vendorParamsShape != null) {
      final vendorParamsSymbol = context.symbolFor(testCase.vendorParamsShape!);
      initBlock.addExpression(
        refer('vendorSerializers')
            .property('deserialize')
            .call([
              literalMap(testCase.vendorParams)
            ], {
              'specifiedType': vendorParamsSymbol.fullType(),
            })
            .asA(vendorParamsSymbol)
            .assignFinal('config'),
      );
    }
    if (context.service?.resolvedService?.sdkId == 'S3') {
      if (testCase.vendorParamsShape != null) {
        initBlock.addExpression(
          DartTypes.smithyAws.s3ClientConfig.newInstance([], {
            'useAcceleration': refer('config')
                .property('scopedConfig')
                .nullSafeProperty('operation')
                .nullSafeProperty('s3')
                .nullSafeProperty('useAccelerateEndpoint')
                .ifNullThen(refer('config')
                    .property('scopedConfig')
                    .nullSafeProperty('client')
                    .nullSafeProperty('s3')
                    .nullSafeProperty('useAccelerateEndpoint'))
                .ifNullThen(literalFalse),
            'useDualStack': refer('config')
                .property('scopedConfig')
                .nullSafeProperty('operation')
                .nullSafeProperty('s3')
                .nullSafeProperty('useDualstackEndpoint')
                .ifNullThen(refer('config')
                    .property('scopedConfig')
                    .nullSafeProperty('client')
                    .nullSafeProperty('s3')
                    .nullSafeProperty('useDualstackEndpoint'))
                .ifNullThen(literalFalse),
            'usePathStyle': CodeExpression(Block.of([
              const Code('('),
              refer('config')
                  .property('scopedConfig')
                  .nullSafeProperty('operation')
                  .nullSafeProperty('s3')
                  .nullSafeProperty('addressingStyle')
                  .ifNullThen(refer('config')
                      .property('scopedConfig')
                      .nullSafeProperty('client')
                      .nullSafeProperty('s3')
                      .nullSafeProperty('addressingStyle'))
                  .code,
              const Code(')'),
            ])).equalTo(context
                .symbolFor(const ShapeId(
                    namespace: 'aws.protocoltests.config',
                    shape: 'S3AddressingStyle'))
                .property('path')),
            'signerConfiguration':
                DartTypes.awsSigV4.s3ServiceConfiguration.newInstance([], {
              'signPayload': literalFalse,
              'chunked': literalFalse,
            })
          }).assignFinal('s3ClientConfig'),
        );
      } else {
        initBlock.addExpression(
          DartTypes.smithyAws.s3ClientConfig
              .constInstance([]).assignConst('s3ClientConfig'),
        );
      }
    }
    return Block.of([
      Code.scope((allocate) => '${allocate(DartTypes.test.test)}'
          "('${testCase.id} (${type.name})', () async {"),
      initBlock.build(),
      testCall.awaited.statement,
      const Code('},'),
      if (skipOnWeb) const Code("testOn:'vm',"),
      if (skipReason != null) ...[
        const Code('skip: '),
        literalString(skipReason).code,
      ],
      const Code(');'),
    ]);
  }

  /// Builds a call to instantiate an [HttpResponseTestCase], shared between
  /// response and error tests.
  Expression _buildResponseTestCase(HttpResponseTestCase testCase) =>
      DartTypes.smithyTest.httpResponseTestCase.constInstance([], {
        'id': literal(testCase.id),
        'documentation': literal(testCase.documentation),
        'protocol': testCase.protocol.constructed,
        'authScheme': literal(testCase.authScheme),
        'body': testCase.body == null
            ? literalNull
            : literalString(_escapeBody(testCase.body!)),
        'bodyMediaType': literal(testCase.bodyMediaType),
        'params': literal(_escapeParams(testCase, testCase.params)),
        'vendorParamsShape':
            testCase.vendorParamsShape?.constructed ?? literalNull,
        'vendorParams': literal(testCase.vendorParams),
        'headers': literal(
            _escapeParams(testCase, testCase.headers).cast<String, String>()),
        'forbidHeaders': literal(testCase.forbidHeaders),
        'requireHeaders': literal(testCase.requireHeaders),
        'tags': literal(testCase.tags),
        'appliesTo': testCase.appliesTo == null
            ? literalNull
            : DartTypes.smithyTest.appliesTo.property(testCase.appliesTo!.name),
        'code': literal(testCase.code),
      });

  /// Create strings which are safe for printing in Dart code.
  String _escapeBody(String body) => body
      .replaceAll('\\', '\\\\')
      .replaceAll('\$', '\\\$')
      .replaceAll('\r', '\\r')
      .replaceAll('\n', '\\n');

  /// Recursively checks parameters for:
  /// 1. Escapes string since the translation from IDL creates non-Dart-y strings.
  /// 2. Long ints so we know to skip the test on Web. We also call toString
  /// because the file will not even compile for Web otherwise.
  Map<String, Object?> _escapeParams(
          HttpMessageTestCase testCase, Map<String, Object?> params) =>
      {...params}..updateAll((key, value) {
          // Use String values for Longs which cannot be represented in JS, so
          // that we can test their values properly in the Web.
          if (value is int && value > _maxSafeJsInt) {
            _skipOnWeb.add(testCase.id);
            return value.toString();
          }
          if (value is String) {
            return _escapeBody(value);
          }
          if (value is Map) {
            return _escapeParams(testCase, value.cast());
          }
          return value;
        });

  /// JS can handle int values up to 2^53 - 1.
  static const int _maxSafeJsInt = (1 << 53) - 1;
}
