// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.put_organization_conformance_pack_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/insufficient_permissions_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_organization_conformance_packs_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_organization_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_access_denied_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_all_features_not_enabled_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack_template_validation_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_conformance_pack_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_conformance_pack_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_in_use_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart';

/// Deploys conformance packs across member accounts in an Amazon Web Services Organization. For information on how many organization conformance packs and how many Config rules you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
///
/// Only a management account and a delegated administrator can call this API. When calling this API with a delegated administrator, you must ensure Organizations `ListDelegatedAdministrator` permissions are added. An organization can have up to 3 delegated administrators.
///
/// This API enables organization service access for `config-multiaccountsetup.amazonaws.com` through the `EnableAWSServiceAccess` action and creates a service-linked role `AWSServiceRoleForConfigMultiAccountSetup` in the management or delegated administrator account of your organization. The service-linked role is created only when the role does not exist in the caller account. To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization `register-delegate-admin` for `config-multiaccountsetup.amazonaws.com`.
///
/// Prerequisite: Ensure you call `EnableAllFeatures` API to enable all features in an organization.
///
/// You must specify either the `TemplateS3Uri` or the `TemplateBody` parameter, but not both. If you provide both Config uses the `TemplateS3Uri` parameter and ignores the `TemplateBody` parameter.
///
/// Config sets the state of a conformance pack to CREATE\_IN\_PROGRESS and UPDATE\_IN\_PROGRESS until the conformance pack is created or updated. You cannot update a conformance pack while it is in this state.
class PutOrganizationConformancePackOperation extends _i1.HttpOperation<
    PutOrganizationConformancePackRequest,
    PutOrganizationConformancePackRequest,
    PutOrganizationConformancePackResponse,
    PutOrganizationConformancePackResponse> {
  /// Deploys conformance packs across member accounts in an Amazon Web Services Organization. For information on how many organization conformance packs and how many Config rules you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
  ///
  /// Only a management account and a delegated administrator can call this API. When calling this API with a delegated administrator, you must ensure Organizations `ListDelegatedAdministrator` permissions are added. An organization can have up to 3 delegated administrators.
  ///
  /// This API enables organization service access for `config-multiaccountsetup.amazonaws.com` through the `EnableAWSServiceAccess` action and creates a service-linked role `AWSServiceRoleForConfigMultiAccountSetup` in the management or delegated administrator account of your organization. The service-linked role is created only when the role does not exist in the caller account. To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization `register-delegate-admin` for `config-multiaccountsetup.amazonaws.com`.
  ///
  /// Prerequisite: Ensure you call `EnableAllFeatures` API to enable all features in an organization.
  ///
  /// You must specify either the `TemplateS3Uri` or the `TemplateBody` parameter, but not both. If you provide both Config uses the `TemplateS3Uri` parameter and ignores the `TemplateBody` parameter.
  ///
  /// Config sets the state of a conformance pack to CREATE\_IN\_PROGRESS and UPDATE\_IN\_PROGRESS until the conformance pack is created or updated. You cannot update a conformance pack while it is in this state.
  PutOrganizationConformancePackOperation({
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
          PutOrganizationConformancePackRequest,
          PutOrganizationConformancePackRequest,
          PutOrganizationConformancePackResponse,
          PutOrganizationConformancePackResponse>> protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.PutOrganizationConformancePack',
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
  _i1.HttpRequest buildRequest(PutOrganizationConformancePackRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([PutOrganizationConformancePackResponse? output]) => 200;
  @override
  PutOrganizationConformancePackResponse buildOutput(
    PutOrganizationConformancePackResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      PutOrganizationConformancePackResponse.fromResponse(
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
        _i1.SmithyError<
            MaxNumberOfOrganizationConformancePacksExceededException,
            MaxNumberOfOrganizationConformancePacksExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'MaxNumberOfOrganizationConformancePacksExceededException',
          ),
          _i1.ErrorKind.client,
          MaxNumberOfOrganizationConformancePacksExceededException,
          builder: MaxNumberOfOrganizationConformancePacksExceededException
              .fromResponse,
        ),
        _i1.SmithyError<NoAvailableOrganizationException,
            NoAvailableOrganizationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoAvailableOrganizationException',
          ),
          _i1.ErrorKind.client,
          NoAvailableOrganizationException,
          builder: NoAvailableOrganizationException.fromResponse,
        ),
        _i1.SmithyError<OrganizationAccessDeniedException,
            OrganizationAccessDeniedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'OrganizationAccessDeniedException',
          ),
          _i1.ErrorKind.client,
          OrganizationAccessDeniedException,
          builder: OrganizationAccessDeniedException.fromResponse,
        ),
        _i1.SmithyError<OrganizationAllFeaturesNotEnabledException,
            OrganizationAllFeaturesNotEnabledException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'OrganizationAllFeaturesNotEnabledException',
          ),
          _i1.ErrorKind.client,
          OrganizationAllFeaturesNotEnabledException,
          builder: OrganizationAllFeaturesNotEnabledException.fromResponse,
        ),
        _i1.SmithyError<OrganizationConformancePackTemplateValidationException,
            OrganizationConformancePackTemplateValidationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'OrganizationConformancePackTemplateValidationException',
          ),
          _i1.ErrorKind.client,
          OrganizationConformancePackTemplateValidationException,
          builder: OrganizationConformancePackTemplateValidationException
              .fromResponse,
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
        _i1.SmithyError<ValidationException, ValidationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          ValidationException,
          builder: ValidationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutOrganizationConformancePack';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<PutOrganizationConformancePackResponse> run(
    PutOrganizationConformancePackRequest input, {
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
