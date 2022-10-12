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
import 'package:smithy/ast.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/serialization/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_config.dart';
import 'package:smithy_codegen/src/generator/serialization/structure_rest_xml_serializer_generator.dart';
import 'package:smithy_codegen/src/generator/serialization/structure_serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/model/route_style.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/version.dart';

extension ProtocolUtils on ProtocolDefinitionTrait {
  /// Whether this protocol supports [traitId].
  bool supportsTrait(ShapeId traitId) => traits.contains(traitId);

  /// The protocol class which can be instantiated.
  Reference get instantiableProtocolSymbol {
    switch (runtimeType) {
      case GenericJsonProtocolDefinitionTrait:
        return DartTypes.smithy.genericJsonProtocol;
      case AwsJson1_0Trait:
        return DartTypes.smithyAws.awsJson1_0Protocol;
      case AwsJson1_1Trait:
        return DartTypes.smithyAws.awsJson1_1Protocol;
      case RestJson1Trait:
        return DartTypes.smithyAws.restJson1Protocol;
      case RestXmlTrait:
        return DartTypes.smithyAws.restXmlProtocol;
      default:
        throw UnsupportedError(
          'No protocol found for $runtimeType ($shapeId).',
        );
    }
  }

  /// Returns the structure generator for this protocol.
  StructureSerializerGenerator structureGenerator(
    StructureShape shape,
    CodegenContext context,
  ) {
    if (this is RestXmlTrait) {
      return StructureRestXmlSerializerGenerator(
        shape,
        context,
        this as RestXmlTrait,
        config: serializerConfig,
      );
    }
    return StructureSerializerGenerator(
      shape,
      context,
      this,
      config: serializerConfig,
    );
  }

  SerializerConfig get serializerConfig {
    switch (runtimeType) {
      case GenericJsonProtocolDefinitionTrait:
        return const SerializerConfig.genericJson();
      case AwsJson1_0Trait:
      case AwsJson1_1Trait:
        return const SerializerConfig.awsJson();
      case RestJson1Trait:
        return const SerializerConfig.restJson1();
      default:
        return const SerializerConfig();
    }
  }

  Expression serializers(CodegenContext context) {
    final additionalSerializers = <Expression>[];
    return additionalSerializers.isNotEmpty
        ? literalConstList([
            context.serializersRef.spread,
            ...additionalSerializers,
          ])
        : context.serializersRef;
  }

  /// Request interceptors for the protocol.
  Iterable<Expression> requestInterceptors(
    OperationShape shape,
    CodegenContext context,
  ) sync* {
    yield DartTypes.smithy.withHost.constInstance([]);

    // HTTP checksum
    final checksumTrait = shape.getTrait<HttpChecksumTrait>();
    if (shape.hasTrait<HttpChecksumRequiredTrait>() &&
        (checksumTrait == null ||
            checksumTrait.requestAlgorithmMember == null)) {
      yield DartTypes.smithy.withChecksum.constInstance([]);
    }

    var needsContentLength = true;
    final inputShape = shape.inputShape(context);
    final inputPayload = inputShape.httpPayload(context);
    final payloadMember = inputPayload.member;
    if (payloadMember != null) {
      final targetShape = context.shapeFor(payloadMember.target);
      needsContentLength = targetShape is! BlobShape ||
          !targetShape.isStreaming ||
          targetShape.hasTrait<RequiresLengthTrait>();
    }
    // Empty payloads should not contain `Content-Length` and `Content-Type`
    // headers.
    if (inputShape.payloadMembers(context).isEmpty) {
      needsContentLength = false;
    }
    if (needsContentLength) {
      yield DartTypes.smithy.withContentLength.constInstance([]);
    }

    switch (runtimeType) {
      case AwsJson1_0Trait:
      case AwsJson1_1Trait:
        yield DartTypes.smithy.withHeader.constInstance([
          literalString('X-Amz-Target'),

          // The value of this header is the shape name of the service's Shape
          // ID joined to the shape name of the operation's Shape ID,
          // separated by a single period (.) character.
          //
          // For example, the value for the operation `ns.example#MyOp` of the
          // service `ns.example#MyService` is MyService.MyOp.
          literalString([
            context.service!.shapeId.shape,
            shape.shapeId.shape,
          ].join('.'))
        ]);
        break;
      case RestJson1Trait:
        // Empty payloads should not contain `Content-Length` and `Content-Type`
        // headers.
        if (inputShape.payloadMembers(context).isEmpty) {
          yield* [
            DartTypes.smithy.withNoHeader.constInstance([
              literalString('Content-Length'),
            ]),
            DartTypes.smithy.withNoHeader.constInstance([
              literalString('Content-Type'),
            ]),
          ];
        }
        break;
      case RestXmlTrait:
      default:
    }

    // https://awslabs.github.io/smithy/1.0/spec/core/auth-traits.html#optionalauth-trait
    final authTrait = shape.getTrait<AuthTrait>();
    final bool isOptionalAuth = shape.hasTrait<OptionalAuthTrait>() ||
        (authTrait != null && authTrait.values.isEmpty);

    // SigV4
    final sdkId = context.service?.getTrait<ServiceTrait>()?.sdkId;
    final sigV4 = context.service?.getTrait<SigV4Trait>()?.name;
    if (sdkId != null && sigV4 != null) {
      var serviceId = sdkId.camelCase;
      // There is a test which defines a non-existent AWS service, so swap it
      // out since it doesn't affect tests but will lead to compile errors.
      if (serviceId == 'jsonProtocol') {
        serviceId = 'iam';
      }

      yield DartTypes.smithyAws.withSigV4.newInstance([], {
        'region': refer('_region'),
        'service': DartTypes.awsCommon.awsService.property(serviceId),
        'credentialsProvider': refer('_credentialsProvider'),
        if (isOptionalAuth) 'isOptional': literalTrue,
        if (sigV4 == 's3')
          'serviceConfiguration': refer('_s3ClientConfig')
              .property('signerConfiguration')
              .ifNullThen(
                DartTypes.awsSigV4.s3ServiceConfiguration.newInstance([]),
              ),
      });
    }

    // AWS customizations
    final serviceId = context.serviceShapeId;
    final aws = context.service?.getTrait<ServiceTrait>();
    if (aws != null && serviceId != null) {
      // Common AWS interceptors
      yield DartTypes.smithy.withUserAgent.constInstance([
        literalString('aws-sdk-dart/$packageVersion'),
      ]);
      yield DartTypes.smithyAws.withSdkInvocationId.constInstance([]);
      yield DartTypes.smithyAws.withSdkRequest.constInstance([]);

      final trait = aws.resolve(serviceId);
      switch (trait.sdkId) {
        // A client for Amazon API Gateway MUST set the Accept header to the
        // string literal value of "application/json" for all requests.
        //
        // https://awslabs.github.io/smithy/1.0/spec/aws/customizations/apigateway-customizations.html
        case 'API Gateway':
          yield DartTypes.smithy.withHeader.constInstance([
            literalString('Accept'),
            literalString('application/json'),
          ]);
      }
    }
  }

  /// Response interceptors for the protocol.
  Iterable<Expression> responseInterceptors(
    OperationShape shape,
    CodegenContext context,
  ) sync* {
    // HTTP checksum
    final checksumTrait = shape.getTrait<HttpChecksumTrait>();
    if (shape.hasTrait<HttpChecksumRequiredTrait>() &&
        (checksumTrait == null ||
            checksumTrait.requestChecksumRequired != false)) {
      yield DartTypes.smithy.validateChecksum.constInstance([]);
    }

    // AWS customizations
    final serviceId = context.serviceShapeId;
    final aws = context.service?.getTrait<ServiceTrait>();
    if (aws != null && serviceId != null) {
      final trait = aws.resolve(serviceId);
      final operationName = shape.shapeId.shape;
      switch (trait.sdkId) {
        case 'S3':
          if (operationName == 'GetObject') {
            yield DartTypes.smithyAws.checkPartialResponse.constInstance([]);
          }
      }
    }
  }

  Map<String, Expression> extraParameters(
    OperationShape shape,
    CodegenContext context,
  ) {
    final inputShape = shape.inputShape(context);
    final inputPayload = inputShape.httpPayload(context);
    final parameters = <String, Expression>{};
    switch (runtimeType) {
      case RestJson1Trait:
      case RestXmlTrait:
        String? mediaType;
        final payloadShape = inputPayload.member;
        if (payloadShape != null) {
          final targetShape = context.shapeFor(payloadShape.target);
          mediaType = (payloadShape.getTrait<MediaTypeTrait>() ??
                  targetShape.getTrait<MediaTypeTrait>())
              ?.value;
        }
        if (mediaType != null) {
          parameters['mediaType'] = literalString(mediaType);
        }
        break;
    }

    final this_ = this;
    if (this_ is RestXmlTrait) {
      parameters['noErrorWrapping'] = literalBool(this_.noErrorWrapping);
    }

    return parameters;
  }

  RouteConfiguration get routeConfiguration {
    switch (runtimeType) {
      case RestJson1Trait:
      case RestXmlTrait:
      case GenericJsonProtocolDefinitionTrait:
        return RouteConfiguration.rest;
      case AwsJson1_0Trait:
      case AwsJson1_1Trait:
        return RouteConfiguration.rpc;
    }
    throw StateError('Unknown type: $runtimeType');
  }

  Expression? addErrorTo(
    Expression headersMap,
    HttpErrorTraits error,
  ) {
    switch (runtimeType) {
      case RestJson1Trait:
      case RestXmlTrait:
      case GenericJsonProtocolDefinitionTrait:
        return headersMap.index(literalString('X-Amzn-Errortype')).assign(
              literalString(error.shapeId.shape),
            );
      default:
        return null;
    }
  }
}
