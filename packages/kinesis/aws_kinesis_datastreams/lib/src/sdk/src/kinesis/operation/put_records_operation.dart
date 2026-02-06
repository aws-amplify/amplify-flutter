// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_kinesis_datastreams.kinesis.operation.put_records_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/common/endpoint_resolver.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/common/serializers.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/invalid_argument_exception.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/kms_exception.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/provisioned_throughput_exceeded_exception.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/put_records_request.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/put_records_response.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/resource_not_found_exception.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Writes multiple data records into a Kinesis data stream in a single call.
class PutRecordsOperation extends _i1.HttpOperation<PutRecordsRequest,
    PutRecordsRequest, PutRecordsResponse, PutRecordsResponse> {
  /// Writes multiple data records into a Kinesis data stream in a single call.
  PutRecordsOperation({
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
          _i1.HttpProtocol<PutRecordsRequest, PutRecordsRequest,
              PutRecordsResponse, PutRecordsResponse>>
      protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'Kinesis_20131202.PutRecords',
            ),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.kinesis,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.2'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    ),
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
  _i1.HttpRequest buildRequest(PutRecordsRequest input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });

  @override
  int successCode([PutRecordsResponse? output]) => 200;

  @override
  PutRecordsResponse buildOutput(
    PutRecordsResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      PutRecordsResponse.fromResponse(payload, response);

  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<InvalidArgumentException, InvalidArgumentException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.kinesis',
            shape: 'InvalidArgumentException',
          ),
          _i1.ErrorKind.client,
          InvalidArgumentException,
          statusCode: 400,
          builder: InvalidArgumentException.fromResponse,
        ),
        _i1.SmithyError<ProvisionedThroughputExceededException,
            ProvisionedThroughputExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.kinesis',
            shape: 'ProvisionedThroughputExceededException',
          ),
          _i1.ErrorKind.client,
          ProvisionedThroughputExceededException,
          statusCode: 400,
          builder: ProvisionedThroughputExceededException.fromResponse,
        ),
        _i1.SmithyError<ResourceNotFoundException, ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.kinesis',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          ResourceNotFoundException,
          statusCode: 400,
          builder: ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<KmsException, KmsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.kinesis',
            shape: 'KMSException',
          ),
          _i1.ErrorKind.client,
          KmsException,
          statusCode: 400,
          builder: KmsException.fromResponse,
        ),
      ];

  @override
  String get runtimeTypeName => 'PutRecords';

  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<PutRecordsResponse> run(
    PutRecordsRequest input, {
    _i4.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i5.runZoned(
      () => super.run(input, client: client, useProtocol: useProtocol),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i4.AWSHeaders.sdkInvocationId: _i4.uuid(secure: true)},
      },
    );
  }
}
