// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.operation.detect_stack_set_drift_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_set_drift_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_set_drift_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/invalid_operation_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_in_progress_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_not_found_exception.dart'
    as _i11;

/// Detect drift on a stack set. When CloudFormation performs drift detection on a stack set, it performs drift detection on the stack associated with each stack instance in the stack set. For more information, see [How CloudFormation performs drift detection on a stack set](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html).
///
/// `DetectStackSetDrift` returns the `OperationId` of the stack set drift detection operation. Use this operation id with DescribeStackSetOperation to monitor the progress of the drift detection operation. The drift detection operation may take some time, depending on the number of stack instances included in the stack set, in addition to the number of resources included in each stack.
///
/// Once the operation has completed, use the following actions to return drift information:
///
/// *   Use DescribeStackSet to return detailed information about the stack set, including detailed information about the last _completed_ drift operation performed on the stack set. (Information about drift operations that are in progress isn't included.)
///
/// *   Use ListStackInstances to return a list of stack instances belonging to the stack set, including the drift status and last drift time checked of each instance.
///
/// *   Use DescribeStackInstance to return detailed information about a specific stack instance, including its drift status and last drift time checked.
///
///
/// For more information about performing a drift detection operation on a stack set, see [Detecting unmanaged changes in stack sets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html).
///
/// You can only run a single drift detection operation on a given stack set at one time.
///
/// To stop a drift detection stack set operation, use StopStackSetOperation.
class DetectStackSetDriftOperation extends _i1.HttpOperation<
    _i2.DetectStackSetDriftInput,
    _i2.DetectStackSetDriftInput,
    _i3.DetectStackSetDriftOutput,
    _i3.DetectStackSetDriftOutput> {
  /// Detect drift on a stack set. When CloudFormation performs drift detection on a stack set, it performs drift detection on the stack associated with each stack instance in the stack set. For more information, see [How CloudFormation performs drift detection on a stack set](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html).
  ///
  /// `DetectStackSetDrift` returns the `OperationId` of the stack set drift detection operation. Use this operation id with DescribeStackSetOperation to monitor the progress of the drift detection operation. The drift detection operation may take some time, depending on the number of stack instances included in the stack set, in addition to the number of resources included in each stack.
  ///
  /// Once the operation has completed, use the following actions to return drift information:
  ///
  /// *   Use DescribeStackSet to return detailed information about the stack set, including detailed information about the last _completed_ drift operation performed on the stack set. (Information about drift operations that are in progress isn't included.)
  ///
  /// *   Use ListStackInstances to return a list of stack instances belonging to the stack set, including the drift status and last drift time checked of each instance.
  ///
  /// *   Use DescribeStackInstance to return detailed information about a specific stack instance, including its drift status and last drift time checked.
  ///
  ///
  /// For more information about performing a drift detection operation on a stack set, see [Detecting unmanaged changes in stack sets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html).
  ///
  /// You can only run a single drift detection operation on a given stack set at one time.
  ///
  /// To stop a drift detection stack set operation, use StopStackSetOperation.
  DetectStackSetDriftOperation({
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
          _i2.DetectStackSetDriftInput,
          _i2.DetectStackSetDriftInput,
          _i3.DetectStackSetDriftOutput,
          _i3.DetectStackSetDriftOutput>> protocols = [
    _i5.AwsQueryProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.cloudFormation,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'DetectStackSetDrift',
      version: '2010-05-15',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'InvalidOperationException',
          code: 'InvalidOperationException',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'OperationInProgressException',
          code: 'OperationInProgressException',
          httpResponseCode: 409,
        ),
        _i5.AwsQueryError(
          shape: 'StackSetNotFoundException',
          code: 'StackSetNotFoundException',
          httpResponseCode: 404,
        ),
      ],
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
  _i1.HttpRequest buildRequest(_i2.DetectStackSetDriftInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DetectStackSetDriftOutput? output]) => 200;
  @override
  _i3.DetectStackSetDriftOutput buildOutput(
    _i3.DetectStackSetDriftOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.DetectStackSetDriftOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.InvalidOperationException,
            _i9.InvalidOperationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'InvalidOperationException',
          ),
          _i1.ErrorKind.client,
          _i9.InvalidOperationException,
          statusCode: 400,
          builder: _i9.InvalidOperationException.fromResponse,
        ),
        _i1.SmithyError<_i10.OperationInProgressException,
            _i10.OperationInProgressException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'OperationInProgressException',
          ),
          _i1.ErrorKind.client,
          _i10.OperationInProgressException,
          statusCode: 409,
          builder: _i10.OperationInProgressException.fromResponse,
        ),
        _i1.SmithyError<_i11.StackSetNotFoundException,
            _i11.StackSetNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'StackSetNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i11.StackSetNotFoundException,
          statusCode: 404,
          builder: _i11.StackSetNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DetectStackSetDrift';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DetectStackSetDriftOutput> run(
    _i2.DetectStackSetDriftInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i12.runZoned(
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
