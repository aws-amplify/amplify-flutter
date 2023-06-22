// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.operation.put_organization_config_rule_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_organization_config_rules_exceeded_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_organization_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_access_denied_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_all_features_not_enabled_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_config_rule_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_config_rule_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_in_use_exception.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart'
    as _i16;

/// Adds or updates an Config rule for your entire organization to evaluate if your Amazon Web Services resources comply with your desired configurations. For information on how many organization Config rules you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
///
/// Only a management account and a delegated administrator can create or update an organization Config rule. When calling this API with a delegated administrator, you must ensure Organizations `ListDelegatedAdministrator` permissions are added. An organization can have up to 3 delegated administrators.
///
/// This API enables organization service access through the `EnableAWSServiceAccess` action and creates a service-linked role `AWSServiceRoleForConfigMultiAccountSetup` in the management or delegated administrator account of your organization. The service-linked role is created only when the role does not exist in the caller account. Config verifies the existence of role with `GetRole` action.
///
/// To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization `register-delegated-administrator` for `config-multiaccountsetup.amazonaws.com`.
///
/// There are two types of rules: _Config Managed Rules_ and _Config Custom Rules_. You can use `PutOrganizationConfigRule` to create both Config Managed Rules and Config Custom Rules.
///
/// Config Managed Rules are predefined, customizable rules created by Config. For a list of managed rules, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html). If you are adding an Config managed rule, you must specify the rule's identifier for the `RuleIdentifier` key.
///
/// Config Custom Rules are rules that you create from scratch. There are two ways to create Config custom rules: with Lambda functions ( [Lambda Developer Guide](https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function)) and with Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)), a policy-as-code language. Config custom rules created with Lambda are called _Config Custom Lambda Rules_ and Config custom rules created with Guard are called _Config Custom Policy Rules_.
///
/// If you are adding a new Config Custom Lambda rule, you first need to create an Lambda function in the management account or a delegated administrator that the rule invokes to evaluate your resources. You also need to create an IAM role in the managed account that can be assumed by the Lambda function. When you use `PutOrganizationConfigRule` to add a Custom Lambda rule to Config, you must specify the Amazon Resource Name (ARN) that Lambda assigns to the function.
///
/// Prerequisite: Ensure you call `EnableAllFeatures` API to enable all features in an organization.
///
/// Make sure to specify one of either `OrganizationCustomPolicyRuleMetadata` for Custom Policy rules, `OrganizationCustomRuleMetadata` for Custom Lambda rules, or `OrganizationManagedRuleMetadata` for managed rules.
class PutOrganizationConfigRuleOperation extends _i1.HttpOperation<
    _i2.PutOrganizationConfigRuleRequest,
    _i2.PutOrganizationConfigRuleRequest,
    _i3.PutOrganizationConfigRuleResponse,
    _i3.PutOrganizationConfigRuleResponse> {
  /// Adds or updates an Config rule for your entire organization to evaluate if your Amazon Web Services resources comply with your desired configurations. For information on how many organization Config rules you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
  ///
  /// Only a management account and a delegated administrator can create or update an organization Config rule. When calling this API with a delegated administrator, you must ensure Organizations `ListDelegatedAdministrator` permissions are added. An organization can have up to 3 delegated administrators.
  ///
  /// This API enables organization service access through the `EnableAWSServiceAccess` action and creates a service-linked role `AWSServiceRoleForConfigMultiAccountSetup` in the management or delegated administrator account of your organization. The service-linked role is created only when the role does not exist in the caller account. Config verifies the existence of role with `GetRole` action.
  ///
  /// To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization `register-delegated-administrator` for `config-multiaccountsetup.amazonaws.com`.
  ///
  /// There are two types of rules: _Config Managed Rules_ and _Config Custom Rules_. You can use `PutOrganizationConfigRule` to create both Config Managed Rules and Config Custom Rules.
  ///
  /// Config Managed Rules are predefined, customizable rules created by Config. For a list of managed rules, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html). If you are adding an Config managed rule, you must specify the rule's identifier for the `RuleIdentifier` key.
  ///
  /// Config Custom Rules are rules that you create from scratch. There are two ways to create Config custom rules: with Lambda functions ( [Lambda Developer Guide](https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function)) and with Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)), a policy-as-code language. Config custom rules created with Lambda are called _Config Custom Lambda Rules_ and Config custom rules created with Guard are called _Config Custom Policy Rules_.
  ///
  /// If you are adding a new Config Custom Lambda rule, you first need to create an Lambda function in the management account or a delegated administrator that the rule invokes to evaluate your resources. You also need to create an IAM role in the managed account that can be assumed by the Lambda function. When you use `PutOrganizationConfigRule` to add a Custom Lambda rule to Config, you must specify the Amazon Resource Name (ARN) that Lambda assigns to the function.
  ///
  /// Prerequisite: Ensure you call `EnableAllFeatures` API to enable all features in an organization.
  ///
  /// Make sure to specify one of either `OrganizationCustomPolicyRuleMetadata` for Custom Policy rules, `OrganizationCustomRuleMetadata` for Custom Lambda rules, or `OrganizationManagedRuleMetadata` for managed rules.
  PutOrganizationConfigRuleOperation({
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
          _i2.PutOrganizationConfigRuleRequest,
          _i2.PutOrganizationConfigRuleRequest,
          _i3.PutOrganizationConfigRuleResponse,
          _i3.PutOrganizationConfigRuleResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.PutOrganizationConfigRule',
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
  _i1.HttpRequest buildRequest(_i2.PutOrganizationConfigRuleRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.PutOrganizationConfigRuleResponse? output]) => 200;
  @override
  _i3.PutOrganizationConfigRuleResponse buildOutput(
    _i3.PutOrganizationConfigRuleResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.PutOrganizationConfigRuleResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.InsufficientPermissionsException,
            _i9.InsufficientPermissionsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InsufficientPermissionsException',
          ),
          _i1.ErrorKind.client,
          _i9.InsufficientPermissionsException,
          builder: _i9.InsufficientPermissionsException.fromResponse,
        ),
        _i1.SmithyError<_i10.InvalidParameterValueException,
            _i10.InvalidParameterValueException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidParameterValueException',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidParameterValueException,
          builder: _i10.InvalidParameterValueException.fromResponse,
        ),
        _i1.SmithyError<
            _i11.MaxNumberOfOrganizationConfigRulesExceededException,
            _i11.MaxNumberOfOrganizationConfigRulesExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'MaxNumberOfOrganizationConfigRulesExceededException',
          ),
          _i1.ErrorKind.client,
          _i11.MaxNumberOfOrganizationConfigRulesExceededException,
          builder: _i11
              .MaxNumberOfOrganizationConfigRulesExceededException.fromResponse,
        ),
        _i1.SmithyError<_i12.NoAvailableOrganizationException,
            _i12.NoAvailableOrganizationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoAvailableOrganizationException',
          ),
          _i1.ErrorKind.client,
          _i12.NoAvailableOrganizationException,
          builder: _i12.NoAvailableOrganizationException.fromResponse,
        ),
        _i1.SmithyError<_i13.OrganizationAccessDeniedException,
            _i13.OrganizationAccessDeniedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'OrganizationAccessDeniedException',
          ),
          _i1.ErrorKind.client,
          _i13.OrganizationAccessDeniedException,
          builder: _i13.OrganizationAccessDeniedException.fromResponse,
        ),
        _i1.SmithyError<_i14.OrganizationAllFeaturesNotEnabledException,
            _i14.OrganizationAllFeaturesNotEnabledException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'OrganizationAllFeaturesNotEnabledException',
          ),
          _i1.ErrorKind.client,
          _i14.OrganizationAllFeaturesNotEnabledException,
          builder: _i14.OrganizationAllFeaturesNotEnabledException.fromResponse,
        ),
        _i1.SmithyError<_i15.ResourceInUseException,
            _i15.ResourceInUseException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ResourceInUseException',
          ),
          _i1.ErrorKind.client,
          _i15.ResourceInUseException,
          builder: _i15.ResourceInUseException.fromResponse,
        ),
        _i1.SmithyError<_i16.ValidationException, _i16.ValidationException>(
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
  String get runtimeTypeName => 'PutOrganizationConfigRule';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.PutOrganizationConfigRuleResponse> run(
    _i2.PutOrganizationConfigRuleRequest input, {
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
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)},
      },
    );
  }
}
