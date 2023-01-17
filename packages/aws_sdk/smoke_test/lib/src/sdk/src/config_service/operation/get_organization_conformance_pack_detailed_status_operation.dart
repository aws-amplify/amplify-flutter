// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.operation.get_organization_conformance_pack_detailed_status_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i15;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_conformance_pack_detailed_status_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_conformance_pack_detailed_status_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_limit_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_organization_conformance_pack_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_access_denied_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack_detailed_status.dart'
    as _i5;

/// Returns detailed status for each member account within an organization for a given organization conformance pack.
class GetOrganizationConformancePackDetailedStatusOperation
    extends _i1.PaginatedHttpOperation<
        _i2.GetOrganizationConformancePackDetailedStatusRequest,
        _i2.GetOrganizationConformancePackDetailedStatusRequest,
        _i3.GetOrganizationConformancePackDetailedStatusResponse,
        _i3.GetOrganizationConformancePackDetailedStatusResponse,
        String,
        int,
        _i4.BuiltList<_i5.OrganizationConformancePackDetailedStatus>> {
  /// Returns detailed status for each member account within an organization for a given organization conformance pack.
  GetOrganizationConformancePackDetailedStatusOperation({
    required String region,
    Uri? baseUri,
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
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
              _i2.GetOrganizationConformancePackDetailedStatusRequest,
              _i2.GetOrganizationConformancePackDetailedStatusRequest,
              _i3.GetOrganizationConformancePackDetailedStatusResponse,
              _i3.GetOrganizationConformancePackDetailedStatusResponse>>
      protocols = [
    _i7.AwsJson1_1Protocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.GetOrganizationConformancePackDetailedStatus',
            ),
            _i7.WithSigV4(
              region: _region,
              service: _i9.AWSService.configService,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i7.WithSdkInvocationId(),
            const _i7.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i7.AWSEndpoint _awsEndpoint = _i10.endpointResolver.resolve(
    _i10.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i6.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(
          _i2.GetOrganizationConformancePackDetailedStatusRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode(
          [_i3.GetOrganizationConformancePackDetailedStatusResponse? output]) =>
      200;
  @override
  _i3.GetOrganizationConformancePackDetailedStatusResponse buildOutput(
    _i3.GetOrganizationConformancePackDetailedStatusResponse payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.GetOrganizationConformancePackDetailedStatusResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidLimitException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidLimitException,
          builder: _i11.InvalidLimitException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidNextTokenException',
          ),
          _i1.ErrorKind.client,
          _i12.InvalidNextTokenException,
          builder: _i12.InvalidNextTokenException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchOrganizationConformancePackException',
          ),
          _i1.ErrorKind.client,
          _i13.NoSuchOrganizationConformancePackException,
          builder: _i13.NoSuchOrganizationConformancePackException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'OrganizationAccessDeniedException',
          ),
          _i1.ErrorKind.client,
          _i14.OrganizationAccessDeniedException,
          builder: _i14.OrganizationAccessDeniedException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GetOrganizationConformancePackDetailedStatus';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.GetOrganizationConformancePackDetailedStatusResponse>
      run(
    _i2.GetOrganizationConformancePackDetailedStatusRequest input, {
    _i9.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i15.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i9.AWSHeaders.sdkInvocationId: _i9.uuid(secure: true)}
      },
    );
  }

  @override
  String? getToken(
          _i3.GetOrganizationConformancePackDetailedStatusResponse output) =>
      output.nextToken;
  @override
  _i4.BuiltList<_i5.OrganizationConformancePackDetailedStatus> getItems(
          _i3.GetOrganizationConformancePackDetailedStatusResponse output) =>
      output.organizationConformancePackDetailedStatuses ?? _i4.BuiltList();
  @override
  _i2.GetOrganizationConformancePackDetailedStatusRequest rebuildInput(
    _i2.GetOrganizationConformancePackDetailedStatusRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        if (pageSize != null) {
          b.limit = pageSize;
        }
      });
}
