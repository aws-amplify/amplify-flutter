// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.put_conformance_pack_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_template_validation_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/insufficient_permissions_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_conformance_packs_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_conformance_pack_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_conformance_pack_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_in_use_exception.dart';

/// Creates or updates a conformance pack. A conformance pack is a collection of Config rules that can be easily deployed in an account and a region and across an organization. For information on how many conformance packs you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
///
/// This API creates a service-linked role `AWSServiceRoleForConfigConforms` in your account. The service-linked role is created only when the role does not exist in your account.
///
/// You must specify only one of the follow parameters: `TemplateS3Uri`, `TemplateBody` or `TemplateSSMDocumentDetails`.
class PutConformancePackOperation extends _i1.HttpOperation<
    PutConformancePackRequest,
    PutConformancePackRequest,
    PutConformancePackResponse,
    PutConformancePackResponse> {
  /// Creates or updates a conformance pack. A conformance pack is a collection of Config rules that can be easily deployed in an account and a region and across an organization. For information on how many conformance packs you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
  ///
  /// This API creates a service-linked role `AWSServiceRoleForConfigConforms` in your account. The service-linked role is created only when the role does not exist in your account.
  ///
  /// You must specify only one of the follow parameters: `TemplateS3Uri`, `TemplateBody` or `TemplateSSMDocumentDetails`.
  PutConformancePackOperation({
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
      _i1.HttpProtocol<PutConformancePackRequest, PutConformancePackRequest,
          PutConformancePackResponse, PutConformancePackResponse>> protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.PutConformancePack',
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
  _i1.HttpRequest buildRequest(PutConformancePackRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([PutConformancePackResponse? output]) => 200;
  @override
  PutConformancePackResponse buildOutput(
    PutConformancePackResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      PutConformancePackResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<ConformancePackTemplateValidationException,
            ConformancePackTemplateValidationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ConformancePackTemplateValidationException',
          ),
          _i1.ErrorKind.client,
          ConformancePackTemplateValidationException,
          builder: ConformancePackTemplateValidationException.fromResponse,
        ),
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
        _i1.SmithyError<MaxNumberOfConformancePacksExceededException,
            MaxNumberOfConformancePacksExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'MaxNumberOfConformancePacksExceededException',
          ),
          _i1.ErrorKind.client,
          MaxNumberOfConformancePacksExceededException,
          builder: MaxNumberOfConformancePacksExceededException.fromResponse,
        ),
        _i1.SmithyError<ResourceInUseException, ResourceInUseException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ResourceInUseException',
          ),
          _i1.ErrorKind.client,
          ResourceInUseException,
          builder: ResourceInUseException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutConformancePack';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<PutConformancePackResponse> run(
    PutConformancePackRequest input, {
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
