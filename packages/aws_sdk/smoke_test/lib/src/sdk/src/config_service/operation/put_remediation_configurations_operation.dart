// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.put_remediation_configurations_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/insufficient_permissions_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_configurations_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_configurations_response.dart';

/// Adds or updates the remediation configuration with a specific Config rule with the selected target or action. The API creates the `RemediationConfiguration` object for the Config rule. The Config rule must already exist for you to add a remediation configuration. The target (SSM document) must exist and have permissions to use the target.
///
/// If you make backward incompatible changes to the SSM document, you must call this again to ensure the remediations can run.
///
/// This API does not support adding remediation configurations for service-linked Config Rules such as Organization Config rules, the rules deployed by conformance packs, and rules deployed by Amazon Web Services Security Hub.
///
/// For manual remediation configuration, you need to provide a value for `automationAssumeRole` or use a value in the `assumeRole`field to remediate your resources. The SSM automation document can use either as long as it maps to a valid parameter.
///
/// However, for automatic remediation configuration, the only valid `assumeRole` field value is `AutomationAssumeRole` and you need to provide a value for `AutomationAssumeRole` to remediate your resources.
class PutRemediationConfigurationsOperation extends _i1.HttpOperation<
    PutRemediationConfigurationsRequest,
    PutRemediationConfigurationsRequest,
    PutRemediationConfigurationsResponse,
    PutRemediationConfigurationsResponse> {
  /// Adds or updates the remediation configuration with a specific Config rule with the selected target or action. The API creates the `RemediationConfiguration` object for the Config rule. The Config rule must already exist for you to add a remediation configuration. The target (SSM document) must exist and have permissions to use the target.
  ///
  /// If you make backward incompatible changes to the SSM document, you must call this again to ensure the remediations can run.
  ///
  /// This API does not support adding remediation configurations for service-linked Config Rules such as Organization Config rules, the rules deployed by conformance packs, and rules deployed by Amazon Web Services Security Hub.
  ///
  /// For manual remediation configuration, you need to provide a value for `automationAssumeRole` or use a value in the `assumeRole`field to remediate your resources. The SSM automation document can use either as long as it maps to a valid parameter.
  ///
  /// However, for automatic remediation configuration, the only valid `assumeRole` field value is `AutomationAssumeRole` and you need to provide a value for `AutomationAssumeRole` to remediate your resources.
  PutRemediationConfigurationsOperation({
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
      _i1.HttpProtocol<
          PutRemediationConfigurationsRequest,
          PutRemediationConfigurationsRequest,
          PutRemediationConfigurationsResponse,
          PutRemediationConfigurationsResponse>> protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.PutRemediationConfigurations',
            ),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.configService,
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
  _i1.HttpRequest buildRequest(PutRemediationConfigurationsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([PutRemediationConfigurationsResponse? output]) => 200;
  @override
  PutRemediationConfigurationsResponse buildOutput(
    PutRemediationConfigurationsResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      PutRemediationConfigurationsResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<InsufficientPermissionsException,
            InsufficientPermissionsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InsufficientPermissionsException',
          ),
          _i1.ErrorKind.client,
          InsufficientPermissionsException,
          builder: InsufficientPermissionsException.fromResponse,
        ),
        _i1.SmithyError<InvalidParameterValueException,
            InvalidParameterValueException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidParameterValueException',
          ),
          _i1.ErrorKind.client,
          InvalidParameterValueException,
          builder: InvalidParameterValueException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutRemediationConfigurations';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<PutRemediationConfigurationsResponse> run(
    PutRemediationConfigurationsRequest input, {
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
