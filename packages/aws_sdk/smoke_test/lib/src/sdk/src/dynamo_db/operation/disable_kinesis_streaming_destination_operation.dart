// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.operation.disable_kinesis_streaming_destination_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i14;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/kinesis_streaming_destination_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/kinesis_streaming_destination_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/limit_exceeded_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_in_use_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_not_found_exception.dart'
    as _i13;

/// Stops replication from the DynamoDB table to the Kinesis data stream. This is done without deleting either of the resources.
class DisableKinesisStreamingDestinationOperation extends _i1.HttpOperation<
    _i2.KinesisStreamingDestinationInput,
    _i2.KinesisStreamingDestinationInput,
    _i3.KinesisStreamingDestinationOutput,
    _i3.KinesisStreamingDestinationOutput> {
  /// Stops replication from the DynamoDB table to the Kinesis data stream. This is done without deleting either of the resources.
  DisableKinesisStreamingDestinationOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
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
          _i2.KinesisStreamingDestinationInput,
          _i2.KinesisStreamingDestinationInput,
          _i3.KinesisStreamingDestinationOutput,
          _i3.KinesisStreamingDestinationOutput>> protocols = [
    _i5.AwsJson1_0Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.DisableKinesisStreamingDestination',
            ),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.dynamoDb,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.KinesisStreamingDestinationInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.KinesisStreamingDestinationOutput? output]) => 200;
  @override
  _i3.KinesisStreamingDestinationOutput buildOutput(
    _i3.KinesisStreamingDestinationOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.KinesisStreamingDestinationOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.InternalServerError, _i9.InternalServerError>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          _i9.InternalServerError,
          builder: _i9.InternalServerError.fromResponse,
        ),
        _i1.SmithyError<_i10.InvalidEndpointException,
            _i10.InvalidEndpointException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InvalidEndpointException',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidEndpointException,
          statusCode: 421,
          builder: _i10.InvalidEndpointException.fromResponse,
        ),
        _i1.SmithyError<_i11.LimitExceededException,
            _i11.LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i11.LimitExceededException,
          builder: _i11.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError<_i12.ResourceInUseException,
            _i12.ResourceInUseException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ResourceInUseException',
          ),
          _i1.ErrorKind.client,
          _i12.ResourceInUseException,
          builder: _i12.ResourceInUseException.fromResponse,
        ),
        _i1.SmithyError<_i13.ResourceNotFoundException,
            _i13.ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i13.ResourceNotFoundException,
          builder: _i13.ResourceNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DisableKinesisStreamingDestination';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.KinesisStreamingDestinationOutput> run(
    _i2.KinesisStreamingDestinationInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i14.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)},
      },
    );
  }
}
