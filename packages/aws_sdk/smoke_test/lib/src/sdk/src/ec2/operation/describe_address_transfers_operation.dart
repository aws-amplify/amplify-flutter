// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.describe_address_transfers_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/address_transfer.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_address_transfers_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_address_transfers_result.dart';

/// Describes an Elastic IP address transfer. For more information, see [Transfer Elastic IP addresses](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro) in the _Amazon Virtual Private Cloud User Guide_.
///
/// When you transfer an Elastic IP address, there is a two-step handshake between the source and transfer Amazon Web Services accounts. When the source account starts the transfer, the transfer account has seven days to accept the Elastic IP address transfer. During those seven days, the source account can view the pending transfer by using this action. After seven days, the transfer expires and ownership of the Elastic IP address returns to the source account. Accepted transfers are visible to the source account for three days after the transfers have been accepted.
class DescribeAddressTransfersOperation extends _i1.PaginatedHttpOperation<
    DescribeAddressTransfersRequest,
    DescribeAddressTransfersRequest,
    DescribeAddressTransfersResult,
    DescribeAddressTransfersResult,
    String,
    int,
    _i2.BuiltList<AddressTransfer>> {
  /// Describes an Elastic IP address transfer. For more information, see [Transfer Elastic IP addresses](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro) in the _Amazon Virtual Private Cloud User Guide_.
  ///
  /// When you transfer an Elastic IP address, there is a two-step handshake between the source and transfer Amazon Web Services accounts. When the source account starts the transfer, the transfer account has seven days to accept the Elastic IP address transfer. During those seven days, the source account can view the pending transfer by using this action. After seven days, the transfer expires and ownership of the Elastic IP address returns to the source account. Accepted transfers are visible to the source account for three days after the transfers have been accepted.
  DescribeAddressTransfersOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.defaultChain(),
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
          DescribeAddressTransfersRequest,
          DescribeAddressTransfersRequest,
          DescribeAddressTransfersResult,
          DescribeAddressTransfersResult>> protocols = [
    _i4.Ec2QueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i4.WithSigV4(
              region: _region,
              service: _i5.AWSService.ec2,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'DescribeAddressTransfers',
      version: '2016-11-15',
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(DescribeAddressTransfersRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([DescribeAddressTransfersResult? output]) => 200;
  @override
  DescribeAddressTransfersResult buildOutput(
    DescribeAddressTransfersResult payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      DescribeAddressTransfersResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DescribeAddressTransfers';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<DescribeAddressTransfersResult> run(
    DescribeAddressTransfersRequest input, {
    _i5.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i6.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i5.AWSHeaders.sdkInvocationId: _i5.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(DescribeAddressTransfersResult output) => output.nextToken;
  @override
  _i2.BuiltList<AddressTransfer> getItems(
          DescribeAddressTransfersResult output) =>
      output.addressTransfers ?? _i2.BuiltList();
  @override
  DescribeAddressTransfersRequest rebuildInput(
    DescribeAddressTransfersRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        b.maxResults = pageSize;
      });
}
