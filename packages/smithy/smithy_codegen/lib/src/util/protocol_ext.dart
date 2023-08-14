// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/serialization/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_config.dart';
import 'package:smithy_codegen/src/generator/serialization/structure_serializer_generator.dart';
import 'package:smithy_codegen/src/generator/serialization/structure_xml_serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/model/route_style.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/version.dart';

extension ProtocolUtils on ProtocolDefinitionTrait {
  /// Whether this protocol supports [traitId].
  bool supportsTrait(ShapeId traitId) => traits.contains(traitId);

  /// The protocol class which can be instantiated.
  Reference get instantiableProtocolSymbol => switch (this) {
        GenericJsonProtocolDefinitionTrait _ =>
          DartTypes.smithy.genericJsonProtocol,
        AwsJson1_0Trait _ => DartTypes.smithyAws.awsJson1_0Protocol,
        AwsJson1_1Trait _ => DartTypes.smithyAws.awsJson1_1Protocol,
        RestJson1Trait _ => DartTypes.smithyAws.restJson1Protocol,
        RestXmlTrait _ => DartTypes.smithyAws.restXmlProtocol,
        AwsQueryTrait _ => DartTypes.smithyAws.awsQueryProtocol,
        Ec2QueryTrait _ => DartTypes.smithyAws.ec2QueryProtocol,
        _ => throw UnsupportedError(
            'No protocol found for $runtimeType ($shapeId)',
          ),
      };

  /// Returns the structure generator for this protocol.
  StructureSerializerGenerator structureGenerator(
    StructureShape shape,
    CodegenContext context,
  ) {
    if (this case RestXmlTrait _ || AwsQueryTrait _ || Ec2QueryTrait _) {
      return StructureXmlSerializerGenerator(
        shape,
        context,
        this,
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

  SerializerConfig get serializerConfig => switch (this) {
        GenericJsonProtocolDefinitionTrait _ =>
          const SerializerConfig.genericJson(),
        AwsJson1_0Trait _ ||
        AwsJson1_1Trait _ =>
          const SerializerConfig.awsJson(),
        RestJson1Trait _ => const SerializerConfig.restJson1(),
        AwsQueryTrait _ => const SerializerConfig.awsQuery(),
        Ec2QueryTrait _ => const SerializerConfig.ec2Query(),
        _ => const SerializerConfig(),
      };

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
    final inputPayload = inputShape.httpPayload;
    final payloadMember = inputPayload.member;
    if (payloadMember != null) {
      final targetShape = context.shapeFor(payloadMember.target);
      needsContentLength = targetShape is! BlobShape ||
          !targetShape.isStreaming ||
          targetShape.hasTrait<RequiresLengthTrait>();
    }
    // Empty payloads should not contain `Content-Length` and `Content-Type`
    // headers.
    if (inputShape.payloadMembers.isEmpty) {
      needsContentLength = false;
    }
    if (needsContentLength) {
      yield DartTypes.smithy.withContentLength.constInstance([]);
    }

    switch (this) {
      case AwsJson1_0Trait _ || AwsJson1_1Trait _:
        yield DartTypes.smithy.withHeader.constInstance([
          literalString('X-Amz-Target'),

          // The value of this header is the shape name of the service's Shape
          // ID joined to the shape name of the operation's Shape ID,
          // separated by a single period (.) character.
          //
          // For example, the value for the operation `ns.example#MyOp` of the
          // service `ns.example#MyService` is MyService.MyOp.
          literalString(
            [
              context.service!.shapeId.shape,
              shape.shapeId.shape,
            ].join('.'),
          ),
        ]);
      case RestJson1Trait _:
        // Empty payloads should not contain `Content-Length` and `Content-Type`
        // headers.
        if (inputShape.payloadMembers.isEmpty) {
          yield* [
            DartTypes.smithy.withNoHeader.constInstance([
              literalString('Content-Length'),
            ]),
            DartTypes.smithy.withNoHeader.constInstance([
              literalString('Content-Type'),
            ]),
          ];
        }
      case RestXmlTrait _ || AwsQueryTrait _ || Ec2QueryTrait _:
      default:
    }

    // https://awslabs.github.io/smithy/1.0/spec/core/auth-traits.html#optionalauth-trait
    final authTrait = shape.getTrait<AuthTrait>();
    final isOptionalAuth = shape.hasTrait<OptionalAuthTrait>() ||
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
    if (checksumTrait
        case == null || HttpChecksumTrait(requestChecksumRequired: null || true)
        when shape.hasTrait<HttpChecksumRequiredTrait>()) {
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
          switch (operationName) {
            case 'GetObject':
              yield DartTypes.smithyAws.checkPartialResponse.constInstance([]);

            // These S3 operations require checking for errors on 2xx responses:
            // https://aws.amazon.com/premiumsupport/knowledge-center/s3-resolve-200-internalerror/
            case 'CopyObject' || 'CompleteMultipartUpload' || 'UploadPartCopy':
              yield DartTypes.smithyAws.checkErrorOnSuccess.constInstance([]);
          }
      }
    }
  }

  Map<String, Expression> extraParameters(
    OperationShape shape,
    CodegenContext context,
  ) {
    final inputShape = shape.inputShape(context);
    final inputPayload = inputShape.httpPayload;
    final parameters = <String, Expression>{};
    switch (this) {
      case RestJson1Trait _ || RestXmlTrait _:
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
    }

    if (this case final RestXmlTrait trait) {
      parameters['noErrorWrapping'] = literalBool(trait.noErrorWrapping);
    }
    if (this case AwsQueryTrait _ || Ec2QueryTrait _) {
      // Values must be included for AWS Query
      // https://smithy.io/2.0/aws/protocols/aws-query-protocol.html#request-serialization
      parameters['action'] = literalString(shape.shapeId.shape);
      parameters['version'] = literalString(context.service!.version!);
    }
    if (this case AwsQueryTrait _) {
      final awsQueryErrors = <ShapeId, AwsQueryErrorTrait>{};
      for (final error in shape.errors) {
        final errorShape = context.shapeFor(error.target);
        final errorTrait = errorShape.getTrait<AwsQueryErrorTrait>();
        if (errorTrait != null) {
          awsQueryErrors[error.target] = errorTrait;
        }
      }
      if (awsQueryErrors.isNotEmpty) {
        parameters['awsQueryErrors'] = literalConstList(
          awsQueryErrors.entries
              .map((e) => e.value.instantiatedFor(e.key))
              .toList(),
        );
      }
    }

    return parameters;
  }

  RouteConfiguration get routeConfiguration => switch (this) {
        RestJson1Trait _ ||
        RestXmlTrait _ ||
        GenericJsonProtocolDefinitionTrait _ =>
          RouteConfiguration.rest,
        AwsJson1_0Trait _ ||
        AwsJson1_1Trait _ ||
        AwsQueryTrait _ ||
        Ec2QueryTrait _ =>
          RouteConfiguration.rpc,
        _ => throw StateError('Unknown type: $runtimeType'),
      };

  Expression? addErrorTo(
    Expression headersMap,
    HttpErrorTraits error,
  ) {
    switch (this) {
      case RestJson1Trait _ ||
            RestXmlTrait _ ||
            GenericJsonProtocolDefinitionTrait _:
        return headersMap.index(literalString('X-Amzn-Errortype')).assign(
              literalString(error.shapeId.shape),
            );
      default:
        return null;
    }
  }
}

extension on AwsQueryErrorTrait {
  Expression instantiatedFor(ShapeId error) =>
      DartTypes.smithyAws.awsQueryError.newInstance([], {
        'shape': literalString(error.shape),
        'code': literalString(code),
        'httpResponseCode': literalNum(httpResponseCode),
      });
}
