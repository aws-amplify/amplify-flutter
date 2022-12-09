// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.operation.put_configuration_aggregator_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i15;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_role_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/limit_exceeded_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_organization_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_access_denied_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_all_features_not_enabled_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/config_service/model/put_configuration_aggregator_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/put_configuration_aggregator_response.dart'
    as _i3;

/// Creates and updates the configuration aggregator with the selected source accounts and regions. The source account can be individual account(s) or an organization.
///
/// `accountIds` that are passed will be replaced with existing accounts. If you want to add additional accounts into the aggregator, call `DescribeConfigurationAggregators` to get the previous accounts and then append new ones.
///
/// Config should be enabled in source accounts and regions you want to aggregate.
///
/// If your source type is an organization, you must be signed in to the management account or a registered delegated administrator and all the features must be enabled in your organization. If the caller is a management account, Config calls `EnableAwsServiceAccess` API to enable integration between Config and Organizations. If the caller is a registered delegated administrator, Config calls `ListDelegatedAdministrators` API to verify whether the caller is a valid delegated administrator.
///
/// To register a delegated administrator, see [Register a Delegated Administrator](https://docs.aws.amazon.com/config/latest/developerguide/set-up-aggregator-cli.html#register-a-delegated-administrator-cli) in the _Config developer guide_.
class PutConfigurationAggregatorOperation extends _i1.HttpOperation<
    _i2.PutConfigurationAggregatorRequest,
    _i2.PutConfigurationAggregatorRequest,
    _i3.PutConfigurationAggregatorResponse,
    _i3.PutConfigurationAggregatorResponse> {
  /// Creates and updates the configuration aggregator with the selected source accounts and regions. The source account can be individual account(s) or an organization.
  ///
  /// `accountIds` that are passed will be replaced with existing accounts. If you want to add additional accounts into the aggregator, call `DescribeConfigurationAggregators` to get the previous accounts and then append new ones.
  ///
  /// Config should be enabled in source accounts and regions you want to aggregate.
  ///
  /// If your source type is an organization, you must be signed in to the management account or a registered delegated administrator and all the features must be enabled in your organization. If the caller is a management account, Config calls `EnableAwsServiceAccess` API to enable integration between Config and Organizations. If the caller is a registered delegated administrator, Config calls `ListDelegatedAdministrators` API to verify whether the caller is a valid delegated administrator.
  ///
  /// To register a delegated administrator, see [Register a Delegated Administrator](https://docs.aws.amazon.com/config/latest/developerguide/set-up-aggregator-cli.html#register-a-delegated-administrator-cli) in the _Config developer guide_.
  PutConfigurationAggregatorOperation({
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
          _i2.PutConfigurationAggregatorRequest,
          _i2.PutConfigurationAggregatorRequest,
          _i3.PutConfigurationAggregatorResponse,
          _i3.PutConfigurationAggregatorResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.PutConfigurationAggregator',
        ),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.configService,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.3.0'),
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
  _i1.HttpRequest buildRequest(_i2.PutConfigurationAggregatorRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.PutConfigurationAggregatorResponse? output]) => 200;
  @override
  _i3.PutConfigurationAggregatorResponse buildOutput(
    _i3.PutConfigurationAggregatorResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.PutConfigurationAggregatorResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidParameterValueException',
          ),
          _i1.ErrorKind.client,
          _i9.InvalidParameterValueException,
          builder: _i9.InvalidParameterValueException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidRoleException',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidRoleException,
          builder: _i10.InvalidRoleException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i11.LimitExceededException,
          builder: _i11.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoAvailableOrganizationException',
          ),
          _i1.ErrorKind.client,
          _i12.NoAvailableOrganizationException,
          builder: _i12.NoAvailableOrganizationException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'OrganizationAccessDeniedException',
          ),
          _i1.ErrorKind.client,
          _i13.OrganizationAccessDeniedException,
          builder: _i13.OrganizationAccessDeniedException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'OrganizationAllFeaturesNotEnabledException',
          ),
          _i1.ErrorKind.client,
          _i14.OrganizationAllFeaturesNotEnabledException,
          builder: _i14.OrganizationAllFeaturesNotEnabledException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutConfigurationAggregator';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.PutConfigurationAggregatorResponse> run(
    _i2.PutConfigurationAggregatorRequest input, {
    _i7.AWSHttpClient? client,
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
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
