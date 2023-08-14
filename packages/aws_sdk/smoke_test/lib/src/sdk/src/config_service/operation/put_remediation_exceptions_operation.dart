// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.put_remediation_exceptions_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/insufficient_permissions_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_exceptions_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_exceptions_response.dart';

/// A remediation exception is when a specified resource is no longer considered for auto-remediation. This API adds a new exception or updates an existing exception for a specified resource with a specified Config rule.
///
/// Config generates a remediation exception when a problem occurs running a remediation action for a specified resource. Remediation exceptions blocks auto-remediation until the exception is cleared.
///
/// When placing an exception on an Amazon Web Services resource, it is recommended that remediation is set as manual remediation until the given Config rule for the specified resource evaluates the resource as `NON_COMPLIANT`. Once the resource has been evaluated as `NON_COMPLIANT`, you can add remediation exceptions and change the remediation type back from Manual to Auto if you want to use auto-remediation. Otherwise, using auto-remediation before a `NON_COMPLIANT` evaluation result can delete resources before the exception is applied.
///
/// Placing an exception can only be performed on resources that are `NON_COMPLIANT`. If you use this API for `COMPLIANT` resources or resources that are `NOT_APPLICABLE`, a remediation exception will not be generated. For more information on the conditions that initiate the possible Config evaluation results, see [Concepts | Config Rules](https://docs.aws.amazon.com/config/latest/developerguide/config-concepts.html#aws-config-rules) in the _Config Developer Guide_.
class PutRemediationExceptionsOperation extends _i1.HttpOperation<
    PutRemediationExceptionsRequest,
    PutRemediationExceptionsRequest,
    PutRemediationExceptionsResponse,
    PutRemediationExceptionsResponse> {
  /// A remediation exception is when a specified resource is no longer considered for auto-remediation. This API adds a new exception or updates an existing exception for a specified resource with a specified Config rule.
  ///
  /// Config generates a remediation exception when a problem occurs running a remediation action for a specified resource. Remediation exceptions blocks auto-remediation until the exception is cleared.
  ///
  /// When placing an exception on an Amazon Web Services resource, it is recommended that remediation is set as manual remediation until the given Config rule for the specified resource evaluates the resource as `NON_COMPLIANT`. Once the resource has been evaluated as `NON_COMPLIANT`, you can add remediation exceptions and change the remediation type back from Manual to Auto if you want to use auto-remediation. Otherwise, using auto-remediation before a `NON_COMPLIANT` evaluation result can delete resources before the exception is applied.
  ///
  /// Placing an exception can only be performed on resources that are `NON_COMPLIANT`. If you use this API for `COMPLIANT` resources or resources that are `NOT_APPLICABLE`, a remediation exception will not be generated. For more information on the conditions that initiate the possible Config evaluation results, see [Concepts | Config Rules](https://docs.aws.amazon.com/config/latest/developerguide/config-concepts.html#aws-config-rules) in the _Config Developer Guide_.
  PutRemediationExceptionsOperation({
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
          PutRemediationExceptionsRequest,
          PutRemediationExceptionsRequest,
          PutRemediationExceptionsResponse,
          PutRemediationExceptionsResponse>> protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.PutRemediationExceptions',
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
  _i1.HttpRequest buildRequest(PutRemediationExceptionsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([PutRemediationExceptionsResponse? output]) => 200;
  @override
  PutRemediationExceptionsResponse buildOutput(
    PutRemediationExceptionsResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      PutRemediationExceptionsResponse.fromResponse(
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
  String get runtimeTypeName => 'PutRemediationExceptions';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<PutRemediationExceptionsResponse> run(
    PutRemediationExceptionsRequest input, {
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
