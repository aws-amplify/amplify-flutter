// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.create_transit_gateway_peering_attachment_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_peering_attachment_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_peering_attachment_result.dart';

/// Requests a transit gateway peering attachment between the specified transit gateway (requester) and a peer transit gateway (accepter). The peer transit gateway can be in your account or a different Amazon Web Services account.
///
/// After you create the peering attachment, the owner of the accepter transit gateway must accept the attachment request.
class CreateTransitGatewayPeeringAttachmentOperation extends _i1.HttpOperation<
    CreateTransitGatewayPeeringAttachmentRequest,
    CreateTransitGatewayPeeringAttachmentRequest,
    CreateTransitGatewayPeeringAttachmentResult,
    CreateTransitGatewayPeeringAttachmentResult> {
  /// Requests a transit gateway peering attachment between the specified transit gateway (requester) and a peer transit gateway (accepter). The peer transit gateway can be in your account or a different Amazon Web Services account.
  ///
  /// After you create the peering attachment, the owner of the accepter transit gateway must accept the attachment request.
  CreateTransitGatewayPeeringAttachmentOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.defaultChain(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<
          CreateTransitGatewayPeeringAttachmentRequest,
          CreateTransitGatewayPeeringAttachmentRequest,
          CreateTransitGatewayPeeringAttachmentResult,
          CreateTransitGatewayPeeringAttachmentResult>> protocols = [
    _i3.Ec2QueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.ec2,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'CreateTransitGatewayPeeringAttachment',
      version: '2016-11-15',
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(
          CreateTransitGatewayPeeringAttachmentRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([CreateTransitGatewayPeeringAttachmentResult? output]) => 200;
  @override
  CreateTransitGatewayPeeringAttachmentResult buildOutput(
    CreateTransitGatewayPeeringAttachmentResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      CreateTransitGatewayPeeringAttachmentResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'CreateTransitGatewayPeeringAttachment';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<CreateTransitGatewayPeeringAttachmentResult> run(
    CreateTransitGatewayPeeringAttachmentRequest input, {
    _i4.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i5.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i4.AWSHeaders.sdkInvocationId: _i4.uuid(secure: true)},
      },
    );
  }
}
