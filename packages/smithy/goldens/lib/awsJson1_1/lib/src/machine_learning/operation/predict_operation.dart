// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library aws_json1_1_v1.machine_learning.operation.predict_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i14;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_json1_1_v1/src/machine_learning/common/endpoint_resolver.dart'
    as _i8;
import 'package:aws_json1_1_v1/src/machine_learning/common/serializers.dart'
    as _i6;
import 'package:aws_json1_1_v1/src/machine_learning/model/internal_server_exception.dart'
    as _i9;
import 'package:aws_json1_1_v1/src/machine_learning/model/invalid_input_exception.dart'
    as _i10;
import 'package:aws_json1_1_v1/src/machine_learning/model/limit_exceeded_exception.dart'
    as _i11;
import 'package:aws_json1_1_v1/src/machine_learning/model/predict_input.dart'
    as _i2;
import 'package:aws_json1_1_v1/src/machine_learning/model/predict_output.dart'
    as _i3;
import 'package:aws_json1_1_v1/src/machine_learning/model/predictor_not_mounted_exception.dart'
    as _i12;
import 'package:aws_json1_1_v1/src/machine_learning/model/resource_not_found_exception.dart'
    as _i13;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

class PredictOperation extends _i1.HttpOperation<_i2.PredictInput,
    _i2.PredictInput, _i3.PredictOutput, _i3.PredictOutput> {
  PredictOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.PredictInput, _i2.PredictInput, _i3.PredictOutput,
          _i3.PredictOutput>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'AmazonML_20141212.Predict',
        ),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.machineLearning,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.3.0'),
        const _i5.WithSdkInvocationId(),
        const _i5.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.PredictInput input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.PredictOutput? output]) => 200;
  @override
  _i3.PredictOutput buildOutput(
    _i3.PredictOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.PredictOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.machinelearning',
            shape: 'InternalServerException',
          ),
          _i1.ErrorKind.server,
          _i9.InternalServerException,
          statusCode: 500,
          builder: _i9.InternalServerException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.machinelearning',
            shape: 'InvalidInputException',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidInputException,
          statusCode: 400,
          builder: _i10.InvalidInputException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.machinelearning',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i11.LimitExceededException,
          statusCode: 417,
          builder: _i11.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.machinelearning',
            shape: 'PredictorNotMountedException',
          ),
          _i1.ErrorKind.client,
          _i12.PredictorNotMountedException,
          statusCode: 400,
          builder: _i12.PredictorNotMountedException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.machinelearning',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i13.ResourceNotFoundException,
          statusCode: 404,
          builder: _i13.ResourceNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'Predict';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.PredictOutput> run(
    _i2.PredictInput input, {
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
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
