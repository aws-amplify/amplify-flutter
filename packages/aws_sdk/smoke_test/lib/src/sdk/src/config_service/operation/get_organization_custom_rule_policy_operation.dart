// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.operation.get_organization_custom_rule_policy_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_custom_rule_policy_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_custom_rule_policy_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_organization_config_rule_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_access_denied_exception.dart'
    as _i10;

/// Returns the policy definition containing the logic for your organization Config Custom Policy rule.
class GetOrganizationCustomRulePolicyOperation extends _i1.HttpOperation<
    _i2.GetOrganizationCustomRulePolicyRequest,
    _i2.GetOrganizationCustomRulePolicyRequest,
    _i3.GetOrganizationCustomRulePolicyResponse,
    _i3.GetOrganizationCustomRulePolicyResponse> {
  /// Returns the policy definition containing the logic for your organization Config Custom Policy rule.
  GetOrganizationCustomRulePolicyOperation({
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
      _i1.HttpProtocol<
          _i2.GetOrganizationCustomRulePolicyRequest,
          _i2.GetOrganizationCustomRulePolicyRequest,
          _i3.GetOrganizationCustomRulePolicyResponse,
          _i3.GetOrganizationCustomRulePolicyResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.GetOrganizationCustomRulePolicy',
            ),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.configService,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
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
  _i1.HttpRequest buildRequest(
          _i2.GetOrganizationCustomRulePolicyRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.GetOrganizationCustomRulePolicyResponse? output]) => 200;
  @override
  _i3.GetOrganizationCustomRulePolicyResponse buildOutput(
    _i3.GetOrganizationCustomRulePolicyResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.GetOrganizationCustomRulePolicyResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.NoSuchOrganizationConfigRuleException,
            _i9.NoSuchOrganizationConfigRuleException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchOrganizationConfigRuleException',
          ),
          _i1.ErrorKind.client,
          _i9.NoSuchOrganizationConfigRuleException,
          builder: _i9.NoSuchOrganizationConfigRuleException.fromResponse,
        ),
        _i1.SmithyError<_i10.OrganizationAccessDeniedException,
            _i10.OrganizationAccessDeniedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'OrganizationAccessDeniedException',
          ),
          _i1.ErrorKind.client,
          _i10.OrganizationAccessDeniedException,
          builder: _i10.OrganizationAccessDeniedException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GetOrganizationCustomRulePolicy';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.GetOrganizationCustomRulePolicyResponse> run(
    _i2.GetOrganizationCustomRulePolicyRequest input, {
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
