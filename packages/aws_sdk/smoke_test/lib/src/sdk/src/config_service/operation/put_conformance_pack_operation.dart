// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.operation.put_conformance_pack_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i14;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_template_validation_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/insufficient_permissions_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_conformance_packs_exceeded_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/put_conformance_pack_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/put_conformance_pack_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_in_use_exception.dart'
    as _i13;

/// Creates or updates a conformance pack. A conformance pack is a collection of Config rules that can be easily deployed in an account and a region and across Amazon Web Services Organization. For information on how many conformance packs you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the Config Developer Guide.
///
/// This API creates a service-linked role `AWSServiceRoleForConfigConforms` in your account. The service-linked role is created only when the role does not exist in your account.
///
/// You must specify one and only one of the`TemplateS3Uri`, `TemplateBody` or `TemplateSSMDocumentDetails` parameters.
class PutConformancePackOperation extends _i1.HttpOperation<
    _i2.PutConformancePackRequest,
    _i2.PutConformancePackRequest,
    _i3.PutConformancePackResponse,
    _i3.PutConformancePackResponse> {
  /// Creates or updates a conformance pack. A conformance pack is a collection of Config rules that can be easily deployed in an account and a region and across Amazon Web Services Organization. For information on how many conformance packs you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the Config Developer Guide.
  ///
  /// This API creates a service-linked role `AWSServiceRoleForConfigConforms` in your account. The service-linked role is created only when the role does not exist in your account.
  ///
  /// You must specify one and only one of the`TemplateS3Uri`, `TemplateBody` or `TemplateSSMDocumentDetails` parameters.
  PutConformancePackOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.PutConformancePackRequest,
          _i2.PutConformancePackRequest,
          _i3.PutConformancePackResponse,
          _i3.PutConformancePackResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.PutConformancePack',
        ),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.configService,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
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
  _i1.HttpRequest buildRequest(_i2.PutConformancePackRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.PutConformancePackResponse? output]) => 200;
  @override
  _i3.PutConformancePackResponse buildOutput(
    _i3.PutConformancePackResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.PutConformancePackResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ConformancePackTemplateValidationException',
          ),
          _i1.ErrorKind.client,
          _i9.ConformancePackTemplateValidationException,
          builder: _i9.ConformancePackTemplateValidationException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InsufficientPermissionsException',
          ),
          _i1.ErrorKind.client,
          _i10.InsufficientPermissionsException,
          builder: _i10.InsufficientPermissionsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidParameterValueException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidParameterValueException,
          builder: _i11.InvalidParameterValueException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'MaxNumberOfConformancePacksExceededException',
          ),
          _i1.ErrorKind.client,
          _i12.MaxNumberOfConformancePacksExceededException,
          builder:
              _i12.MaxNumberOfConformancePacksExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ResourceInUseException',
          ),
          _i1.ErrorKind.client,
          _i13.ResourceInUseException,
          builder: _i13.ResourceInUseException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutConformancePack';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.PutConformancePackResponse> run(
    _i2.PutConformancePackRequest input, {
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
