// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.operation.register_type_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/cfn_registry_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_type_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_type_output.dart';

/// Registers an extension with the CloudFormation service. Registering an extension makes it available for use in CloudFormation templates in your Amazon Web Services account, and includes:
///
/// *   Validating the extension schema.
///
/// *   Determining which handlers, if any, have been specified for the extension.
///
/// *   Making the extension available for use in your account.
///
///
/// For more information about how to develop extensions and ready them for registration, see [Creating Resource Providers](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-types.html) in the _CloudFormation CLI User Guide_.
///
/// You can have a maximum of 50 resource extension versions registered at a time. This maximum is per account and per Region. Use [DeregisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeregisterType.html) to deregister specific extension versions if necessary.
///
/// Once you have initiated a registration request using RegisterType, you can use DescribeTypeRegistration to monitor the progress of the registration request.
///
/// Once you have registered a private extension in your account and Region, use [SetTypeConfiguration](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html) to specify configuration properties for the extension. For more information, see [Configuring extensions at the account level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration) in the _CloudFormation User Guide_.
class RegisterTypeOperation extends _i1.HttpOperation<RegisterTypeInput,
    RegisterTypeInput, RegisterTypeOutput, RegisterTypeOutput> {
  /// Registers an extension with the CloudFormation service. Registering an extension makes it available for use in CloudFormation templates in your Amazon Web Services account, and includes:
  ///
  /// *   Validating the extension schema.
  ///
  /// *   Determining which handlers, if any, have been specified for the extension.
  ///
  /// *   Making the extension available for use in your account.
  ///
  ///
  /// For more information about how to develop extensions and ready them for registration, see [Creating Resource Providers](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-types.html) in the _CloudFormation CLI User Guide_.
  ///
  /// You can have a maximum of 50 resource extension versions registered at a time. This maximum is per account and per Region. Use [DeregisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeregisterType.html) to deregister specific extension versions if necessary.
  ///
  /// Once you have initiated a registration request using RegisterType, you can use DescribeTypeRegistration to monitor the progress of the registration request.
  ///
  /// Once you have registered a private extension in your account and Region, use [SetTypeConfiguration](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html) to specify configuration properties for the extension. For more information, see [Configuring extensions at the account level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration) in the _CloudFormation User Guide_.
  RegisterTypeOperation({
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
      _i1.HttpProtocol<RegisterTypeInput, RegisterTypeInput, RegisterTypeOutput,
          RegisterTypeOutput>> protocols = [
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
      action: 'RegisterType',
      version: '2010-05-15',
      awsQueryErrors: const [
        _i3.AwsQueryError(
          shape: 'CFNRegistryException',
          code: 'CFNRegistryException',
          httpResponseCode: 400,
        )
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
  _i1.HttpRequest buildRequest(RegisterTypeInput input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([RegisterTypeOutput? output]) => 200;
  @override
  RegisterTypeOutput buildOutput(
    RegisterTypeOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      RegisterTypeOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<CfnRegistryException, CfnRegistryException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'CFNRegistryException',
          ),
          _i1.ErrorKind.client,
          CfnRegistryException,
          statusCode: 400,
          builder: CfnRegistryException.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'RegisterType';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<RegisterTypeOutput> run(
    RegisterTypeInput input, {
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