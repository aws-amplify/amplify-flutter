// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_1_v1.machine_learning.operation.predict_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_json1_1_v1/src/machine_learning/common/endpoint_resolver.dart';
import 'package:aws_json1_1_v1/src/machine_learning/common/serializers.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/internal_server_exception.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/invalid_input_exception.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/limit_exceeded_exception.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/predict_input.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/predict_output.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/predictor_not_mounted_exception.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/resource_not_found_exception.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class PredictOperation extends _i1
    .HttpOperation<PredictInput, PredictInput, PredictOutput, PredictOutput> {
  PredictOperation({
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
      _i1.HttpProtocol<PredictInput, PredictInput, PredictOutput,
          PredictOutput>> protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'AmazonML_20141212.Predict',
            ),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.machineLearning,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
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
  _i1.HttpRequest buildRequest(PredictInput input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });

  @override
  int successCode([PredictOutput? output]) => 200;

  @override
  PredictOutput buildOutput(
    PredictOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      PredictOutput.fromResponse(
        payload,
        response,
      );

  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<InternalServerException, InternalServerException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.machinelearning',
            shape: 'InternalServerException',
          ),
          _i1.ErrorKind.server,
          InternalServerException,
          statusCode: 500,
          builder: InternalServerException.fromResponse,
        ),
        _i1.SmithyError<InvalidInputException, InvalidInputException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.machinelearning',
            shape: 'InvalidInputException',
          ),
          _i1.ErrorKind.client,
          InvalidInputException,
          statusCode: 400,
          builder: InvalidInputException.fromResponse,
        ),
        _i1.SmithyError<LimitExceededException, LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.machinelearning',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          LimitExceededException,
          statusCode: 417,
          builder: LimitExceededException.fromResponse,
        ),
        _i1.SmithyError<PredictorNotMountedException,
            PredictorNotMountedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.machinelearning',
            shape: 'PredictorNotMountedException',
          ),
          _i1.ErrorKind.client,
          PredictorNotMountedException,
          statusCode: 400,
          builder: PredictorNotMountedException.fromResponse,
        ),
        _i1.SmithyError<ResourceNotFoundException, ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.machinelearning',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          ResourceNotFoundException,
          statusCode: 404,
          builder: ResourceNotFoundException.fromResponse,
        ),
      ];

  @override
  String get runtimeTypeName => 'Predict';

  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<PredictOutput> run(
    PredictInput input, {
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
