// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.operation.detect_stack_drift_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_drift_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_drift_output.dart'
    as _i3;

/// Detects whether a stack's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. For each resource in the stack that supports drift detection, CloudFormation compares the actual configuration of the resource with its expected template configuration. Only resource properties explicitly defined in the stack template are checked for drift. A stack is considered to have drifted if one or more of its resources differ from their expected template configurations. For more information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
///
/// Use `DetectStackDrift` to detect drift on all supported resources for a given stack, or DetectStackResourceDrift to detect drift on individual resources.
///
/// For a list of stack resources that currently support drift detection, see [Resources that Support Drift Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).
///
/// `DetectStackDrift` can take up to several minutes, depending on the number of resources contained within the stack. Use DescribeStackDriftDetectionStatus to monitor the progress of a detect stack drift operation. Once the drift detection operation has completed, use DescribeStackResourceDrifts to return drift information about the stack and its resources.
///
/// When detecting drift on a stack, CloudFormation doesn't detect drift on any nested stacks belonging to that stack. Perform `DetectStackDrift` directly on the nested stack itself.
class DetectStackDriftOperation extends _i1.HttpOperation<
    _i2.DetectStackDriftInput,
    _i2.DetectStackDriftInput,
    _i3.DetectStackDriftOutput,
    _i3.DetectStackDriftOutput> {
  /// Detects whether a stack's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. For each resource in the stack that supports drift detection, CloudFormation compares the actual configuration of the resource with its expected template configuration. Only resource properties explicitly defined in the stack template are checked for drift. A stack is considered to have drifted if one or more of its resources differ from their expected template configurations. For more information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
  ///
  /// Use `DetectStackDrift` to detect drift on all supported resources for a given stack, or DetectStackResourceDrift to detect drift on individual resources.
  ///
  /// For a list of stack resources that currently support drift detection, see [Resources that Support Drift Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).
  ///
  /// `DetectStackDrift` can take up to several minutes, depending on the number of resources contained within the stack. Use DescribeStackDriftDetectionStatus to monitor the progress of a detect stack drift operation. Once the drift detection operation has completed, use DescribeStackResourceDrifts to return drift information about the stack and its resources.
  ///
  /// When detecting drift on a stack, CloudFormation doesn't detect drift on any nested stacks belonging to that stack. Perform `DetectStackDrift` directly on the nested stack itself.
  DetectStackDriftOperation({
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
      _i1.HttpProtocol<_i2.DetectStackDriftInput, _i2.DetectStackDriftInput,
          _i3.DetectStackDriftOutput, _i3.DetectStackDriftOutput>> protocols = [
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
      action: 'DetectStackDrift',
      version: '2010-05-15',
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
  _i1.HttpRequest buildRequest(_i2.DetectStackDriftInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DetectStackDriftOutput? output]) => 200;
  @override
  _i3.DetectStackDriftOutput buildOutput(
    _i3.DetectStackDriftOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.DetectStackDriftOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DetectStackDrift';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DetectStackDriftOutput> run(
    _i2.DetectStackDriftInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i9.runZoned(
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
