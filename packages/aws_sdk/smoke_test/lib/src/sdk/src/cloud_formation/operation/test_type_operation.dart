// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.operation.test_type_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/cfn_registry_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/test_type_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/test_type_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_not_found_exception.dart'
    as _i10;

/// Tests a registered extension to make sure it meets all necessary requirements for being published in the CloudFormation registry.
///
/// *   For resource types, this includes passing all contracts tests defined for the type.
///
/// *   For modules, this includes determining if the module's model meets all necessary requirements.
///
///
/// For more information, see [Testing your public extension prior to publishing](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-testing) in the _CloudFormation CLI User Guide_.
///
/// If you don't specify a version, CloudFormation uses the default version of the extension in your account and Region for testing.
///
/// To perform testing, CloudFormation assumes the execution role specified when the type was registered. For more information, see [RegisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html).
///
/// Once you've initiated testing on an extension using `TestType`, you can pass the returned `TypeVersionArn` into [DescribeType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html) to monitor the current test status and test status description for the extension.
///
/// An extension must have a test status of `PASSED` before it can be published. For more information, see [Publishing extensions to make them available for public use](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-publish.html) in the _CloudFormation CLI User Guide_.
class TestTypeOperation extends _i1.HttpOperation<_i2.TestTypeInput,
    _i2.TestTypeInput, _i3.TestTypeOutput, _i3.TestTypeOutput> {
  /// Tests a registered extension to make sure it meets all necessary requirements for being published in the CloudFormation registry.
  ///
  /// *   For resource types, this includes passing all contracts tests defined for the type.
  ///
  /// *   For modules, this includes determining if the module's model meets all necessary requirements.
  ///
  ///
  /// For more information, see [Testing your public extension prior to publishing](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-testing) in the _CloudFormation CLI User Guide_.
  ///
  /// If you don't specify a version, CloudFormation uses the default version of the extension in your account and Region for testing.
  ///
  /// To perform testing, CloudFormation assumes the execution role specified when the type was registered. For more information, see [RegisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html).
  ///
  /// Once you've initiated testing on an extension using `TestType`, you can pass the returned `TypeVersionArn` into [DescribeType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html) to monitor the current test status and test status description for the extension.
  ///
  /// An extension must have a test status of `PASSED` before it can be published. For more information, see [Publishing extensions to make them available for public use](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-publish.html) in the _CloudFormation CLI User Guide_.
  TestTypeOperation({
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
      _i1.HttpProtocol<_i2.TestTypeInput, _i2.TestTypeInput, _i3.TestTypeOutput,
          _i3.TestTypeOutput>> protocols = [
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
      action: 'TestType',
      version: '2010-05-15',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'CFNRegistryException',
          code: 'CFNRegistryException',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'TypeNotFoundException',
          code: 'TypeNotFoundException',
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
  _i1.HttpRequest buildRequest(_i2.TestTypeInput input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.TestTypeOutput? output]) => 200;
  @override
  _i3.TestTypeOutput buildOutput(
    _i3.TestTypeOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.TestTypeOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.CfnRegistryException, _i9.CfnRegistryException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'CFNRegistryException',
          ),
          _i1.ErrorKind.client,
          _i9.CfnRegistryException,
          statusCode: 400,
          builder: _i9.CfnRegistryException.fromResponse,
        ),
        _i1.SmithyError<_i10.TypeNotFoundException, _i10.TypeNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'TypeNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i10.TypeNotFoundException,
          statusCode: 404,
          builder: _i10.TypeNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'TestType';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.TestTypeOutput> run(
    _i2.TestTypeInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i11.runZoned(
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
