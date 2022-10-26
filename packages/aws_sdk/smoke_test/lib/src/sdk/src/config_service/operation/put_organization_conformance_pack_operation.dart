// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.operation.put_organization_conformance_pack_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i17;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/insufficient_permissions_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_organization_conformance_packs_exceeded_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_organization_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_access_denied_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_all_features_not_enabled_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack_template_validation_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_conformance_pack_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_conformance_pack_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_in_use_exception.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart'
    as _i16;

/// Deploys conformance packs across member accounts in an Amazon Web Services Organization. For information on how many organization conformance packs and how many Config rules you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the Config Developer Guide.
///
/// Only a master account and a delegated administrator can call this API. When calling this API with a delegated administrator, you must ensure Organizations `ListDelegatedAdministrator` permissions are added. An organization can have up to 3 delegated administrators.
///
/// This API enables organization service access for `config-multiaccountsetup.amazonaws.com` through the `EnableAWSServiceAccess` action and creates a service-linked role `AWSServiceRoleForConfigMultiAccountSetup` in the master or delegated administrator account of your organization. The service-linked role is created only when the role does not exist in the caller account. To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization `register-delegate-admin` for `config-multiaccountsetup.amazonaws.com`.
///
/// Prerequisite: Ensure you call `EnableAllFeatures` API to enable all features in an organization.
///
/// You must specify either the `TemplateS3Uri` or the `TemplateBody` parameter, but not both. If you provide both Config uses the `TemplateS3Uri` parameter and ignores the `TemplateBody` parameter.
///
/// Config sets the state of a conformance pack to CREATE\_IN\_PROGRESS and UPDATE\_IN\_PROGRESS until the conformance pack is created or updated. You cannot update a conformance pack while it is in this state.
class PutOrganizationConformancePackOperation extends _i1.HttpOperation<
    _i2.PutOrganizationConformancePackRequest,
    _i2.PutOrganizationConformancePackRequest,
    _i3.PutOrganizationConformancePackResponse,
    _i3.PutOrganizationConformancePackResponse> {
  /// Deploys conformance packs across member accounts in an Amazon Web Services Organization. For information on how many organization conformance packs and how many Config rules you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the Config Developer Guide.
  ///
  /// Only a master account and a delegated administrator can call this API. When calling this API with a delegated administrator, you must ensure Organizations `ListDelegatedAdministrator` permissions are added. An organization can have up to 3 delegated administrators.
  ///
  /// This API enables organization service access for `config-multiaccountsetup.amazonaws.com` through the `EnableAWSServiceAccess` action and creates a service-linked role `AWSServiceRoleForConfigMultiAccountSetup` in the master or delegated administrator account of your organization. The service-linked role is created only when the role does not exist in the caller account. To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization `register-delegate-admin` for `config-multiaccountsetup.amazonaws.com`.
  ///
  /// Prerequisite: Ensure you call `EnableAllFeatures` API to enable all features in an organization.
  ///
  /// You must specify either the `TemplateS3Uri` or the `TemplateBody` parameter, but not both. If you provide both Config uses the `TemplateS3Uri` parameter and ignores the `TemplateBody` parameter.
  ///
  /// Config sets the state of a conformance pack to CREATE\_IN\_PROGRESS and UPDATE\_IN\_PROGRESS until the conformance pack is created or updated. You cannot update a conformance pack while it is in this state.
  PutOrganizationConformancePackOperation({
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
          _i2.PutOrganizationConformancePackRequest,
          _i2.PutOrganizationConformancePackRequest,
          _i3.PutOrganizationConformancePackResponse,
          _i3.PutOrganizationConformancePackResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.PutOrganizationConformancePack',
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
  _i1.HttpRequest buildRequest(
          _i2.PutOrganizationConformancePackRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.PutOrganizationConformancePackResponse? output]) => 200;
  @override
  _i3.PutOrganizationConformancePackResponse buildOutput(
    _i3.PutOrganizationConformancePackResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.PutOrganizationConformancePackResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InsufficientPermissionsException',
          ),
          _i1.ErrorKind.client,
          _i9.InsufficientPermissionsException,
          builder: _i9.InsufficientPermissionsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'MaxNumberOfOrganizationConformancePacksExceededException',
          ),
          _i1.ErrorKind.client,
          _i10.MaxNumberOfOrganizationConformancePacksExceededException,
          builder: _i10.MaxNumberOfOrganizationConformancePacksExceededException
              .fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoAvailableOrganizationException',
          ),
          _i1.ErrorKind.client,
          _i11.NoAvailableOrganizationException,
          builder: _i11.NoAvailableOrganizationException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'OrganizationAccessDeniedException',
          ),
          _i1.ErrorKind.client,
          _i12.OrganizationAccessDeniedException,
          builder: _i12.OrganizationAccessDeniedException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'OrganizationAllFeaturesNotEnabledException',
          ),
          _i1.ErrorKind.client,
          _i13.OrganizationAllFeaturesNotEnabledException,
          builder: _i13.OrganizationAllFeaturesNotEnabledException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'OrganizationConformancePackTemplateValidationException',
          ),
          _i1.ErrorKind.client,
          _i14.OrganizationConformancePackTemplateValidationException,
          builder: _i14.OrganizationConformancePackTemplateValidationException
              .fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ResourceInUseException',
          ),
          _i1.ErrorKind.client,
          _i15.ResourceInUseException,
          builder: _i15.ResourceInUseException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          _i16.ValidationException,
          builder: _i16.ValidationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutOrganizationConformancePack';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.PutOrganizationConformancePackResponse> run(
    _i2.PutOrganizationConformancePackRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i17.runZoned(
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
