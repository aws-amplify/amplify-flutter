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
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/serialization/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/protocol_ext.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

class OperationGenerator extends LibraryGenerator<OperationShape>
    with OperationGenerationContext {
  OperationGenerator(
    OperationShape shape,
    CodegenContext context, {
    SmithyLibrary? smithyLibrary,
  }) : super(shape, context: context, smithyLibrary: smithyLibrary);

  @override
  String get className => shape.dartName;

  @override
  Library generate() {
    if (httpTrait != null) {
      builder.body.add(_operationClass);
    }

    return builder.build();
  }

  /// The operation's implementation class.
  Class get _operationClass => Class(
        (c) => c
          ..docs.addAll([
            if (shape.hasDocs(context)) shape.formattedDocs(context),
          ])
          ..name = className
          ..extend = paginatedTraits == null
              ? DartTypes.smithy.httpOperation(
                  inputPayload.symbol.unboxed,
                  inputSymbol,
                  outputPayload.symbol.unboxed,
                  outputSymbol,
                )
              : DartTypes.smithy.paginatedHttpOperation(
                  inputPayload.symbol.unboxed,
                  inputSymbol,
                  outputPayload.symbol.unboxed,
                  outputSymbol,
                  paginatedTraits!.inputToken?.symbol.unboxed ??
                      DartTypes.core.void$,
                  paginatedTraits!.pageSize?.symbol.unboxed ??
                      DartTypes.core.void$,
                  paginatedTraits!.items?.symbol.unboxed ?? outputSymbol,
                )
          ..constructors.add(_constructor)
          ..fields.addAll([
            _protocolsGetter,
            ..._httpOverrides.whereType<Field>(),
            ...shape.protocolFields(context),
          ])
          ..methods.addAll([
            ..._httpOverrides.whereType<Method>(),
            ..._paginatedMethods,
          ]),
      );

  Constructor get _constructor => Constructor(
        (ctor) => ctor
          ..docs.addAll([
            if (shape.hasDocs(context)) shape.formattedDocs(context),
          ])
          ..optionalParameters.addAll(shape.constructorParameters(context))
          ..initializers.addAll(shape
              .constructorParameters(context)
              .where((p) => p.toThis == false)
              .map(
                (field) =>
                    refer('_${field.name}').assign(refer(field.name)).code,
              )),
      );

  /// The statements of the HTTP request builder.
  Iterable<Code> get _httpRequestBuilder sync* {
    final builder = refer('b');
    final input = refer('input');

    yield builder
        .property('method')
        .assign(literalString(httpTrait!.method))
        .statement;

    final uri = httpTrait!.uri;
    // S3 requires special treatment of the path
    // https://awslabs.github.io/smithy/1.0/spec/aws/customizations/s3-customizations.html
    final isS3 = context.service?.resolvedService?.sdkId == 'S3';
    if (isS3 && uri.contains(RegExp('^/{Bucket}'))) {
      yield builder
          .property('path')
          .assign(refer('_s3ClientConfig').property('usePathStyle').conditional(
                // `raw` because some AWS paths use the '$' char.
                literalString(uri, raw: true),

                // Change `/{Bucket}/{Key+}?param` to `/{Key+}?param` and
                // `/{Bucket}` to `/`
                literalString(
                  uri.replaceFirst(RegExp('^/{Bucket}/?'), '/'),
                  raw: true,
                ),
              ))
          .statement;
    } else {
      yield builder
          .property('path')

          // `raw` because some AWS paths use the '$' char.
          .assign(literalString(uri, raw: true))
          .statement;
    }

    final hostPrefix = shape.getTrait<EndpointTrait>()?.hostPrefix;
    if (isS3 && uri.contains(RegExp('^/{Bucket}'))) {
      yield builder
          .property('hostPrefix')
          .assign(
            refer('_s3ClientConfig').property('usePathStyle').conditional(
                  literal(hostPrefix),
                  literalString('{Bucket}.${hostPrefix ?? ''}'),
                ),
          )
          .statement;
    } else if (hostPrefix != null) {
      yield builder
          .property('hostPrefix')
          .assign(literalString(hostPrefix))
          .statement;
    }

    for (var entry in httpInputTraits.httpHeaders.entries) {
      yield _inputHttpHeader(
        literalString(entry.key),
        entry.value,
        input.property(entry.value.dartName(ShapeType.structure)),
        isNullable: entry.value.isNullable(context, inputShape),
      );
    }

    if (httpInputTraits.httpPrefixHeaders != null) {
      yield _httpPrefixedHeaders(httpInputTraits.httpPrefixHeaders!);
    }

    for (var entry in httpInputTraits.httpQuery.entries) {
      yield _httpQuery(
        literalString(entry.key),
        entry.value,
        input.property(entry.value.dartName(ShapeType.structure)),
        isNullable: entry.value.isNullable(context, inputShape),
      );
    }

    if (httpInputTraits.httpQueryParams != null) {
      yield _httpQueryParameters(httpInputTraits.httpQueryParams!);
    }

    // HTTP checksums (dependent on input)
    final checksumTrait = shape.getTrait<HttpChecksumTrait>();
    if (checksumTrait != null) {
      final checksumRequired = checksumTrait.requestChecksumRequired ?? false;
      final requestMemberName = checksumTrait.requestAlgorithmMember;
      if (requestMemberName == null) {
        if (checksumRequired) {
          yield builder.property('requestInterceptors').property('add').call([
            DartTypes.smithyAws.withChecksum.constInstance([]),
          ]).statement;
        }
      } else {
        final requestMember = inputShape.members[requestMemberName]!;
        final memberIsNullable = requestMember.isNullable(context, inputShape);
        final inputProperty = input.property(
          requestMember.dartName(ShapeType.structure),
        );
        if (checksumRequired) {
          yield builder.property('requestInterceptors').property('add').call([
            DartTypes.smithyAws.withChecksum.newInstance([
              inputProperty.nullableProperty('value', memberIsNullable),
            ]),
          ]).statement;
        } else {
          yield builder.property('requestInterceptors').property('add').call([
            DartTypes.smithyAws.withChecksum.newInstance([
              (memberIsNullable ? inputProperty.nullChecked : inputProperty)
                  .property('value'),
            ])
          ]).wrapWithBlockIf(
            inputProperty.notEqualTo(literalNull),
            memberIsNullable,
          );
        }
      }
    }
  }

  /// Adds the header to the request's headers map.
  Code _inputHttpHeader(
    Expression key,
    Shape value,
    Expression valueRef, {
    required bool isNullable,
  }) {
    final builder = refer('b');

    final toStringExp = valueToString(
      (isNullable ? valueRef.nullChecked : valueRef),
      value,
      isHeader: true,
    );
    final addHeader =
        builder.property('headers').index(key).assign(toStringExp).statement;
    final targetShape =
        value is MemberShape ? context.shapeFor(value.target) : value;
    return addHeader
        // From restJson1 test suite:
        // "Do not send null values, empty strings, or empty lists over the wire in headers"
        .wrapWithBlockIf(
            (isNullable ? valueRef.nullChecked : valueRef)
                .property('isNotEmpty'),
            const [ShapeType.list, ShapeType.set, ShapeType.string]
                    .contains(targetShape.getType()) &&
                !targetShape.hasTrait<MediaTypeTrait>() &&
                !targetShape.isEnum)
        .wrapWithBlockIf(
          valueRef.notEqualTo(literalNull),
          isNullable,
        );
  }

  /// Adds the prefixed headers to the request's headers map.
  Code _httpPrefixedHeaders(HttpPrefixHeaders headers) {
    final mapShape = context.shapeFor(headers.member.target) as MapShape;
    final mapRef =
        refer('input').property(headers.member.dartName(ShapeType.structure));
    final isNullableMap = headers.member.isNullable(context, inputShape);
    final valueTarget = context.shapeFor(mapShape.value.target);
    return Block.of([
      const Code('for (var entry in '),
      (isNullableMap ? mapRef.nullChecked : mapRef)
          .property('toMap')
          .call([])
          .property('entries')
          .code,
      const Code(') {'),
      _inputHttpHeader(
        literalString(headers.trait.value)
            .operatorAdd(refer('entry').property('key')),
        valueTarget,
        refer('entry').property('value'),
        isNullable: valueTarget.isNullable(context, mapShape),
      ),
      const Code('}'),
    ]).wrapWithBlockIf(mapRef.notEqualTo(literalNull), isNullableMap);
  }

  /// Adds the shape to the request's query parameters.
  Code _httpQuery(
    Expression key,
    Shape value,
    Expression valueRef, {
    required bool isNullable,
  }) {
    final builder = refer('b');

    final targetShape =
        value is MemberShape ? context.shapeFor(value.target) : value;
    if (targetShape is CollectionShape) {
      final isNullableMember =
          targetShape.member.isNullable(context, targetShape);
      Expression memberRef = refer('value');
      if (isNullableMember) {
        memberRef = memberRef.nullChecked;
      }
      return Block.of([
        const Code('for (var value in '),
        (isNullable ? valueRef.nullChecked : valueRef).code,
        const Code(') {'),
        _httpQuery(
          key,
          targetShape.member,
          memberRef,
          isNullable: isNullableMember,
        ),
        const Code('}'),
      ]).wrapWithBlockIf(valueRef.notEqualTo(literalNull), isNullable);
    }

    final toStringExp = valueToString(
      (isNullable ? valueRef.nullChecked : valueRef),
      targetShape,
      isHeader: false,
    );
    final addParam = builder
        .property('queryParameters')
        .property('add')
        .call([key, toStringExp]).statement;
    return addParam.wrapWithBlockIf(
      valueRef.notEqualTo(literalNull),
      isNullable,
    );
  }

  /// Adds all query parameters in a map to the request's query parameters.
  Code _httpQueryParameters(MemberShape queryParameters) {
    final targetShape = context.shapeFor(queryParameters.target) as MapShape;
    final valueShape = context.shapeFor(targetShape.value.target);
    final isNullable = queryParameters.isNullable(context, inputShape);
    final mapRef =
        refer('input').property(queryParameters.dartName(ShapeType.structure));
    var entriesRef = mapRef;
    if (isNullable) {
      entriesRef = entriesRef.nullChecked;
    }
    entriesRef = entriesRef.property('toMap').call([]).property('entries');
    final valueRef = refer('entry').property('value');
    return Block.of([
      const Code('for (var entry in '),
      entriesRef.code,
      const Code(') {'),
      _httpQuery(
        refer('entry').property('key'),
        valueShape,
        valueRef,
        isNullable: valueShape.isNullable(context, targetShape),
      ),
      const Code('}'),
    ]).wrapWithBlockIf(mapRef.notEqualTo(literalNull), isNullable);
  }

  /// The required HTTP operation overrides.
  Iterable<Spec> get _httpOverrides sync* {
    // The `buildRequest` method
    final request = DartTypes.smithy.httpRequest.newInstance([
      Method(
        (m) => m
          ..requiredParameters.add(Parameter((p) => p..name = 'b'))
          ..lambda = false
          ..body = Block.of(_httpRequestBuilder),
      ).closure,
    ]);
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.smithy.httpRequest
        ..name = 'buildRequest'
        ..requiredParameters.add(Parameter((p) => p
          ..name = 'input'
          ..type = inputSymbol))
        ..body = request.code,
    );

    // The `successCode` method
    var successCode = literalNum(httpTrait!.code);
    final responseCodeMember = httpOutputTraits.httpResponseCode;
    if (responseCodeMember != null) {
      successCode = refer('output')
          .nullSafeProperty(responseCodeMember.dartName(ShapeType.structure))
          .ifNullThen(successCode);
    }
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.core.int
        ..name = 'successCode'
        ..lambda = true
        ..optionalParameters.add(Parameter((p) => p
          ..name = 'output'
          ..type = outputSymbol.boxed))
        ..body = successCode.code,
    );

    // The `buildOutput` method
    final output = outputPayload.symbol == DartTypes.smithy.unit
        ? refer('payload')
        : outputSymbol.newInstanceNamed('fromResponse', [
            refer('payload'),
            refer('response'),
          ]);
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = outputSymbol
        ..name = 'buildOutput'
        ..requiredParameters.addAll([
          Parameter((p) => p
            ..name = 'payload'
            ..type = outputPayload.symbol),
          Parameter((p) => p
            ..name = 'response'
            ..type = DartTypes.awsCommon.awsBaseHttpResponse),
        ])
        ..body = output.code,
    );

    // The `errorTypes` getter
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.core.list(DartTypes.smithy.smithyError)
        ..type = MethodType.getter
        ..name = 'errorTypes'
        ..lambda = true
        ..body = literalConstList([
          for (var error in errorSymbols) error.constInstance,
        ]).code,
    );

    // The `runtimeTypeName` getter
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.core.string
        ..type = MethodType.getter
        ..name = 'runtimeTypeName'
        ..lambda = true
        ..body = literalString(shape.shapeId.shape).code,
    );

    final resolvedService = context.service?.resolvedService;
    final isAwsService = resolvedService != null;
    if (isAwsService) {
      // The standard AWS retryer
      yield Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.smithyAws.awsRetryer
          ..name = 'retryer'
          ..type = MethodType.getter
          ..body = DartTypes.smithyAws.awsRetryer.newInstance([]).code,
      );

      // S3 requires a special baseUri to consider customizations
      if (resolvedService.sdkId == 'S3') {
        yield Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.uri
            ..name = 'baseUri'
            ..type = MethodType.getter
            ..body = Code.scope((allocate) => '''
  var baseUri = _baseUri ?? endpoint.uri;
  if (_s3ClientConfig.useDualStack) {
    baseUri = baseUri.replace(
      host: baseUri.host.replaceFirst(${allocate(DartTypes.core.regExp)}(r'^s3\\.'), 's3.dualstack.'),
    );
  }
  if (_s3ClientConfig.useAcceleration) {
    baseUri = baseUri.replace(
      host: baseUri.host
        .replaceFirst(${allocate(DartTypes.core.regExp)}('\$_region\\\\.'), '')
        .replaceFirst(${allocate(DartTypes.core.regExp)}(r'^s3\\.'), 's3-accelerate.'),
    );
  }
  return baseUri;'''),
        );
      } else {
        yield Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.uri
            ..name = 'baseUri'
            ..type = MethodType.getter
            ..body = refer('_baseUri')
                .ifNullThen(refer('endpoint').property('uri'))
                .code,
        );
      }

      // Create an awsEndpoint field we can reuse
      final endpointResolverLib = context.endpointResolverLibrary.libraryUrl;
      final endpointResolver = refer('endpointResolver', endpointResolverLib);
      final sdkId = refer('sdkId', endpointResolverLib);
      yield Field(
        (m) => m
          ..late = true
          ..modifier = FieldModifier.final$
          ..type = DartTypes.smithyAws.awsEndpoint
          ..name = '_awsEndpoint'
          ..assignment = endpointResolver.property('resolve').call([
            sdkId,
            refer('_region'),
          ]).code,
      );

      yield Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.smithy.endpoint
          ..name = 'endpoint'
          ..type = MethodType.getter
          ..body = refer('_awsEndpoint').property('endpoint').code,
      );

      // Override `run` to use zone values
      yield Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.smithy.smithyOperation(outputSymbol)
          ..name = 'run'
          ..requiredParameters.add(Parameter((p) => p
            ..type = inputSymbol
            ..name = 'input'))
          ..optionalParameters.addAll([
            Parameter((p) => p
              ..type = DartTypes.awsCommon.awsHttpClient.boxed
              ..name = 'client'
              ..named = true),
            Parameter((p) => p
              ..type = DartTypes.smithy.shapeId.boxed
              ..name = 'useProtocol'
              ..named = true),
          ])
          ..body = DartTypes.async.runZoned
              .call([
                Method(
                  (m) => m
                    ..body = refer('super').property('run').call([
                      refer('input')
                    ], {
                      'client': refer('client'),
                      'useProtocol': refer('useProtocol')
                    }).code,
                ).closure,
              ], {
                // Create a map with spread and new values. Cannot be done
                // via [literalMap].
                'zoneValues': CodeExpression(Block.of([
                  const Code('{'),
                  refer('_awsEndpoint')
                      .property('credentialScope')
                      .nullSafeProperty('zoneValues')
                      .nullSafeSpread
                      .code,
                  const Code(','),
                  literalMap({
                    DartTypes.awsCommon.awsHeaders.property('sdkInvocationId'):
                        DartTypes.awsCommon.uuid(),
                  }).spread.code,
                  const Code('}'),
                ])),
              })
              .returned
              .statement,
      );
    }
  }

  /// The `protocols` override getter.
  Field get _protocolsGetter => Field(
        (f) => f
          ..annotations.add(DartTypes.core.override)
          ..late = true
          ..modifier = FieldModifier.final$
          ..type = DartTypes.core.list(
            DartTypes.smithy.httpProtocol(
              inputPayload.symbol.unboxed,
              inputSymbol,
              outputPayload.symbol.unboxed,
              outputSymbol,
            ),
          )
          ..name = 'protocols'
          ..assignment = literalList([
            for (var protocol in context.serviceProtocols)
              protocol.instantiableProtocolSymbol.newInstance([], {
                'serializers': protocol.serializers(context),
                'builderFactories': context.builderFactoriesRef,
                'requestInterceptors':
                    literalList(protocol.requestInterceptors(shape, context)),
                'responseInterceptors':
                    literalList(protocol.responseInterceptors(shape, context)),
                ...protocol.extraParameters(shape, context),
              }),
          ]).code,
      );

  Iterable<Method> get _paginatedMethods sync* {
    final paginatedTraits = this.paginatedTraits;
    if (paginatedTraits == null) {
      return;
    }

    const emptyBody = Code('');

    // The `getToken` method.
    final outputToken = paginatedTraits.outputToken;
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = outputToken?.symbol.boxed ?? DartTypes.core.void$
        ..name = 'getToken'
        ..requiredParameters.add(Parameter((p) => p
          ..type = outputSymbol
          ..name = 'output'))
        ..lambda = outputToken != null
        ..body = outputToken?.buildExpression.call(refer('output')).code ??
            emptyBody,
    );

    // The `getItems` method.
    Expression? defaultValue;
    final items = paginatedTraits.items;
    if (items != null && items.isNullable) {
      final symbol = items.symbol.typeRef.rebuild((t) => t
        ..isNullable = false
        ..types.clear());
      defaultValue = symbol.newInstance([]);
    }
    var itemsBody =
        items?.buildExpression.call(refer('output')) ?? refer('output');
    if (defaultValue != null) {
      itemsBody = itemsBody.ifNullThen(defaultValue);
    }
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = items?.symbol.unboxed ?? outputSymbol
        ..name = 'getItems'
        ..requiredParameters.add(Parameter((p) => p
          ..type = outputSymbol
          ..name = 'output'))
        ..lambda = true
        ..body = itemsBody.code,
    );

    // The `rebuildInput` method.
    final inputToken = paginatedTraits.inputToken;
    final pageSize = paginatedTraits.pageSize;
    var inputTokenBuilder = inputToken?.buildExpression(refer('b'));
    if (inputTokenBuilder != null) {
      final inputTokenTarget = context.shapeFor(inputToken!.member.target);
      const builderTypes = [
        ShapeType.set,
        ShapeType.list,
        ShapeType.map,
        ShapeType.structure,
      ];
      final needsBuilder = builderTypes.contains(inputTokenTarget.getType());
      final token = refer('token');
      if (needsBuilder) {
        inputTokenBuilder = inputTokenBuilder.property('replace').call([token]);
      } else {
        inputTokenBuilder = inputTokenBuilder.assign(token);
      }
    }
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = inputSymbol
        ..name = 'rebuildInput'
        ..requiredParameters.addAll([
          Parameter((p) => p
            ..type = inputSymbol
            ..name = 'input'),
          Parameter((p) => p
            ..type = inputToken?.symbol.unboxed ?? DartTypes.core.void$
            ..name = 'token'),
          Parameter((p) => p
            ..type = pageSize?.symbol.boxed ?? DartTypes.core.void$
            ..name = 'pageSize')
        ])
        ..lambda = true
        ..body = refer('input').property('rebuild').call([
          Method(
            (m) => m
              ..requiredParameters.add(Parameter((p) => p..name = 'b'))
              ..body = Block.of([
                if (inputToken != null && outputToken != null)
                  inputTokenBuilder!.statement,
                if (pageSize != null)
                  pageSize
                      .buildExpression(refer('b'))
                      .assign(refer('pageSize'))
                      .statement
                      .wrapWithBlockIf(
                        refer('pageSize').notEqualTo(literalNull),
                        pageSize.isNullable,
                      ),
              ]),
          ).closure
        ]).code,
    );
  }
}
