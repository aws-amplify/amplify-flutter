// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.operation.detect_stack_set_drift_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_set_drift_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_set_drift_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/invalid_operation_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_in_progress_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_not_found_exception.dart';

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
    DetectStackSetDriftInput,
    DetectStackSetDriftInput,
    DetectStackSetDriftOutput,
    DetectStackSetDriftOutput> {
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
      _i1.HttpProtocol<DetectStackSetDriftInput, DetectStackSetDriftInput,
          DetectStackSetDriftOutput, DetectStackSetDriftOutput>> protocols = [
    _i3.AwsQueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.cloudFormation,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'DetectStackSetDrift',
      version: '2010-05-15',
      awsQueryErrors: const [
        _i3.AwsQueryError(
          shape: 'InvalidOperationException',
          code: 'InvalidOperationException',
          httpResponseCode: 400,
        ),
        _i3.AwsQueryError(
          shape: 'OperationInProgressException',
          code: 'OperationInProgressException',
          httpResponseCode: 409,
        ),
        _i3.AwsQueryError(
          shape: 'StackSetNotFoundException',
          code: 'StackSetNotFoundException',
          httpResponseCode: 404,
        ),
      ],
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
  _i1.HttpRequest buildRequest(DetectStackSetDriftInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([DetectStackSetDriftOutput? output]) => 200;
  @override
  DetectStackSetDriftOutput buildOutput(
    DetectStackSetDriftOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      DetectStackSetDriftOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<InvalidOperationException, InvalidOperationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'InvalidOperationException',
          ),
          _i1.ErrorKind.client,
          InvalidOperationException,
          statusCode: 400,
          builder: InvalidOperationException.fromResponse,
        ),
        _i1.SmithyError<OperationInProgressException,
            OperationInProgressException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'OperationInProgressException',
          ),
          _i1.ErrorKind.client,
          OperationInProgressException,
          statusCode: 409,
          builder: OperationInProgressException.fromResponse,
        ),
        _i1.SmithyError<StackSetNotFoundException, StackSetNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'StackSetNotFoundException',
          ),
          _i1.ErrorKind.client,
          StackSetNotFoundException,
          statusCode: 404,
          builder: StackSetNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DetectStackSetDrift';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<DetectStackSetDriftOutput> run(
    DetectStackSetDriftInput input, {
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
