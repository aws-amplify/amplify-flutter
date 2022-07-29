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

import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/model/route_style.dart';
import 'package:smithy_codegen/src/util/protocol_ext.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// {@template smithy.generator.service_server_generator}
/// Generates a Smithy HTTP server for the given service [shape].
///
/// A Smithy server consists of three components:
/// - The private service class which extends [HttpServer].
/// - The public service abstract base class which must be implemented by
///   the developer.
/// {@endtemplate}
class ServiceServerGenerator extends LibraryGenerator<ServiceShape> {
  /// {@macro smithy.generator.service_server_generator}
  ServiceServerGenerator(
    ServiceShape shape,
    CodegenContext context, {
    SmithyLibrary? smithyLibrary,
  }) : super(
          shape,
          context: context,
          smithyLibrary: smithyLibrary,
        );

  late final List<OperationShape> _httpOperations = context.shapes.values
      .whereType<OperationShape>()
      .where((shape) => shape.httpTrait(context) != null)
      .toList();

  bool get isAwsService => shape.hasTrait<ServiceTrait>();

  ProtocolDefinitionTrait get protocol => context.serviceProtocols.single;

  @override
  String get className => context.serviceServerName;

  String get _baseClassName => '${className}Base';
  Reference get _baseClassRef => Reference(_baseClassName);

  @override
  Library generate() {
    if (_httpOperations.isNotEmpty) {
      builder
        ..name = context.serviceClientLibrary.libraryName
        ..body.addAll([
          _baseClass,
          _serviceClass,
        ]);
    }
    return builder.build();
  }

  Class get _serviceClass => Class(
        (c) => c
          ..name = '_$className'
          ..extend = DartTypes.smithy.httpServer(_baseClassRef)
          ..constructors.add(_serviceConstructor)
          ..methods.addAll(_serviceMethods)
          ..fields.addAll(_serviceFields),
      );

  Constructor get _serviceConstructor => Constructor(
        (ctor) => ctor
          ..requiredParameters.add(Parameter((p) => p
            ..name = 'service'
            ..toThis = true)),
      );

  Iterable<Method> get _serviceMethods sync* {
    for (final shape in _httpOperations) {
      final inputTraits = shape.inputLabels(context).toList()
        ..sort((a, b) {
          final uri = shape.httpTrait(context)!.uri;
          return uri.indexOf(a.memberName).compareTo(uri.indexOf(b.memberName));
        });
      yield Method((m) => m
        ..returns = DartTypes.async.future(DartTypes.shelf.response)
        ..name = shape.methodName
        ..requiredParameters.addAll([
          Parameter((p) => p
            ..name = 'request'
            ..type = DartTypes.shelf.request),
          for (final label in inputTraits)
            Parameter((p) => p
              ..name = label.memberName
              ..type = DartTypes.core.string)
        ])
        ..modifier = MethodModifier.async
        ..body = Block.of(_serviceMethodBody(shape)));
    }
  }

  Iterable<Code> _serviceMethodBody(OperationShape operation) sync* {
    yield refer('request')
        .property('awsRequest')
        .assignFinal('awsRequest')
        .statement;
    yield DartTypes.smithy.context
        .newInstance([refer('awsRequest')])
        .assignFinal('context')
        .statement;
    yield refer('context')
        .property('response')
        .property('headers')
        .index(literalString('Content-Type'))
        .assign(refer(operation.protocolField).property('contentType'))
        .statement;
    yield const Code('try {');

    final awsRequest = refer('awsRequest');
    final inputTraits = operation.inputShape(context).httpInputTraits(context);
    final outputTraits =
        operation.inputShape(context).httpOutputTraits(context);

    final payloadSymbol =
        operation.inputShape(context).httpPayload(context).symbol;
    final payload = refer(operation.protocolField)
        .property('deserialize')
        .call([
          awsRequest.property('split').call([]),
        ], {
          'specifiedType': payloadSymbol.fullType(),
        })
        .awaited
        .asA(payloadSymbol);
    yield payload.assignFinal('payload').statement;

    final inputLabels = inputTraits?.httpLabels ?? BuiltSet();
    final inputSymbol = operation.inputSymbol(context);
    final input = inputSymbol == DartTypes.smithy.unit
        ? refer('payload')
        : inputSymbol.newInstanceNamed('fromRequest', [
            refer('payload'),
            awsRequest,
          ], {
            'labels': literalMap({
              for (final label in inputLabels)
                label.memberName: refer(label.memberName)
            })
          });
    yield input.assignFinal('input').statement;

    final output = refer('service').property(operation.methodName).call([
      refer('input'),
      refer('context'),
    ]).awaited;
    yield output.assignFinal('output').statement;

    final httpHeaders = outputTraits?.httpHeaders ?? BuiltMap();
    for (final entry in httpHeaders.entries) {
      final property =
          refer('output').property(entry.value.dartName(ShapeType.structure));
      final isNullable =
          entry.value.isNullable(context, operation.inputShape(context));
      yield refer('context')
          .property('response')
          .property('headers')
          .index(literalString(entry.key))
          .assign(valueToString(
            isNullable ? property.nullChecked : property,
            entry.value,
            isHeader: true,
          ))
          .wrapWithBlockIf(
            property.notEqualTo(literalNull),
            isNullable,
          );
    }

    final outputResponseCode = outputTraits?.httpResponseCode;
    if (outputResponseCode != null) {
      yield refer(outputResponseCode.dartName(ShapeType.structure))
          .assignFinal('statusCode')
          .statement;
    } else {
      yield literalNum(operation.httpTrait(context)?.code ?? 200)
          .assignConst('statusCode')
          .statement;
    }

    yield refer(operation.protocolField)
        .property('serialize')
        .call([
          refer('output')
        ], {
          'specifiedType': operation.outputSymbol(context).fullType([
            operation.outputShape(context).httpPayload(context).symbol,
          ]),
        })
        .assignFinal('body')
        .statement;
    yield DartTypes.shelf.response
        .newInstance([
          refer('statusCode'),
        ], {
          'body': refer('body'),
          'headers': refer('context')
              .property('response')
              .property('build')
              .call([])
              .property('headers')
              .property('toMap')
              .call([]),
        })
        .returned
        .statement;

    yield const Code('}');

    for (final error in operation.errors) {
      final errorShape = context.shapeFor(error.target) as StructureShape;
      final errorTrait = errorShape.httpErrorTraits(context);
      if (errorTrait == null) continue;

      final errorSymbol = context.symbolFor(error.target);

      yield Code.scope((allocate) => 'on ${allocate(errorSymbol)} catch (e) {');

      final addError = protocol.addErrorTo(
        refer('context').property('response').property('headers'),
        errorTrait,
      );
      if (addError != null) {
        yield addError.statement;
      }
      yield refer(operation.protocolField)
          .property('serialize')
          .call([
            refer('e')
          ], {
            'specifiedType': errorSymbol.fullType([
              errorShape.httpPayload(context).symbol,
            ]),
          })
          .assignFinal('body')
          .statement;

      final statusCode =
          errorTrait.statusCode ?? errorTrait.kind.defaultStatusCode;
      yield literalNum(statusCode).assignConst('statusCode').statement;

      yield DartTypes.shelf.response
          .newInstance([
            refer('statusCode'),
          ], {
            'body': refer('body'),
            'headers': refer('context')
                .property('response')
                .property('build')
                .call([])
                .property('headers')
                .property('toMap')
                .call([]),
          })
          .returned
          .statement;

      yield const Code('}');
    }

    // Handle uncaught exception
    yield Code.scope(
      (allocate) => 'on ${allocate(DartTypes.core.object)} catch (e, st) {',
    );
    yield refer('service')
        .property('handleUncaughtError')
        .call([refer('e'), refer('st')])
        .returned
        .statement;
    yield const Code('}');

    // Create response
  }

  Iterable<Field> get _serviceFields sync* {
    yield Field((f) => f
      ..annotations.add(DartTypes.core.override)
      ..modifier = FieldModifier.final$
      ..type = Reference(_baseClassName)
      ..name = 'service');

    for (final shape in _httpOperations) {
      final inputShape = shape.inputShape(context);
      final inputSymbol = shape.inputSymbol(context);
      final inputPayload = inputShape.httpPayload(context);
      final outputShape = shape.outputShape(context);
      final outputSymbol = shape.outputSymbol(context);
      final outputPayload = outputShape.httpPayload(context);

      /// The `protocol` override
      yield Field(
        (f) => f
          ..late = true
          ..modifier = FieldModifier.final$
          ..name = shape.protocolField
          ..type = DartTypes.smithy.httpProtocol(
            inputPayload.symbol.unboxed,
            inputSymbol,
            outputPayload.symbol.unboxed,
            outputSymbol,
          )
          ..assignment = protocol.instantiableProtocolSymbol.newInstance([], {
            'serializers': protocol.serializers(context),
            'builderFactories': context.builderFactoriesRef,
            ...protocol.extraParameters(shape, context),
          }).code,
      );
    }
  }

  Class get _baseClass => Class((c) => c
    ..name = _baseClassName
    ..abstract = true
    ..extend = DartTypes.smithy.httpServerBase
    ..methods.addAll(_baseMethods)
    ..fields.addAll([_baseProtocol, _router]));

  Iterable<Method> get _baseMethods sync* {
    for (final operation in _httpOperations) {
      yield Method((m) => m
        ..returns = DartTypes.async.future(operation.outputSymbol(context))
        ..name = operation.methodName
        ..requiredParameters.addAll([
          Parameter(
            (p) => p
              ..name = 'input'
              ..type = operation.inputSymbol(context),
          ),
          Parameter(
            (p) => p
              ..name = 'context'
              ..type = DartTypes.smithy.context,
          ),
        ]));
    }

    // Conformance to shelf.Handler
    yield Method((m) => m
      ..returns = DartTypes.async.future(DartTypes.shelf.response)
      ..name = 'call'
      ..requiredParameters.add(Parameter((p) => p
        ..type = DartTypes.shelf.request
        ..name = 'request'))
      ..body = refer('_router').call([refer('request')]).code);
  }

  /// Builds the router for integration with shelf.
  Field get _router {
    final buildRouter = BlockBuilder();

    buildRouter.addExpression(
      refer('_$className').newInstance([refer('this')]).assignFinal('service'),
    );
    final service = refer('service');

    buildRouter.addExpression(
      DartTypes.shelfRouter.router.newInstance([]).assignFinal('router'),
    );
    final router = refer('router');

    switch (protocol.routeConfiguration) {
      case RouteConfiguration.rest:
        for (final operation in _httpOperations) {
          final parameters = operation.shelfParameters(context);
          buildRouter.addExpression(
            router.property('add').call([
              literalString(parameters.method),
              literalString(parameters.path, raw: true),
              service.property(operation.methodName),
            ]),
          );
        }
        break;
      case RouteConfiguration.rpc:
        final Map<Expression, Expression> routes = {};
        for (final operation in _httpOperations) {
          final rpcEndpoint = literalString([
            shape.shapeId.shape,
            operation.shapeId.shape,
          ].join('.'));
          routes[rpcEndpoint] = service.property(operation.methodName);
        }
        buildRouter.addExpression(
          router.property('add').call([
            literalString('POST'),
            literalString('/'),
            DartTypes.smithy.rpcRouter.newInstance([
              literalString('X-Amz-Target'),
              literalMap(routes),
            ]),
          ]),
        );
        break;
    }

    buildRouter.addExpression(router.returned);

    return Field(
      (f) => f
        ..late = true
        ..modifier = FieldModifier.final$
        ..type = DartTypes.shelfRouter.router
        ..name = '_router'
        ..assignment =
            Method((m) => m..body = buildRouter.build()).closure.call([]).code,
    );
  }

  /// The `protocol` override
  Field get _baseProtocol => Field(
        (f) => f
          ..annotations.add(DartTypes.core.override)
          ..late = true
          ..modifier = FieldModifier.final$
          ..name = 'protocol'
          ..type = DartTypes.smithy.httpProtocol()
          ..assignment = protocol.instantiableProtocolSymbol.newInstance([], {
            'serializers': protocol.serializers(context),
            'builderFactories': context.builderFactoriesRef,
          }).code,
      );
}

class _ShelfParameters {
  const _ShelfParameters(this.method, this.path);

  final String method;
  final String path;
}

extension on OperationShape {
  String get methodName => shapeId.shape.camelCase;

  String get protocolField => '_${methodName}Protocol';

  BuiltSet<MemberShape> inputLabels(CodegenContext context) =>
      inputShape(context).httpInputTraits(context)?.httpLabels ?? BuiltSet();

  _ShelfParameters shelfParameters(CodegenContext context) {
    final httpTrait = this.httpTrait(context)!;
    final method = httpTrait.method.toUpperCase();
    final path = httpTrait.uri
        .replaceAll('{', '<')
        .replaceAll('+}', '>')
        .replaceAll('}', '>');
    return _ShelfParameters(method, path);
  }
}
