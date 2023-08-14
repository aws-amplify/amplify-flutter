// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.operation.describe_account_limits_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_limit.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_account_limits_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_account_limits_output.dart';

/// Retrieves your account's CloudFormation limits, such as the maximum number of stacks that you can create in your account. For more information about account limits, see [CloudFormation Quotas](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html) in the _CloudFormation User Guide_.
class DescribeAccountLimitsOperation extends _i1.PaginatedHttpOperation<
    DescribeAccountLimitsInput,
    DescribeAccountLimitsInput,
    DescribeAccountLimitsOutput,
    DescribeAccountLimitsOutput,
    String,
    void,
    _i2.BuiltList<AccountLimit>> {
  /// Retrieves your account's CloudFormation limits, such as the maximum number of stacks that you can create in your account. For more information about account limits, see [CloudFormation Quotas](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html) in the _CloudFormation User Guide_.
  DescribeAccountLimitsOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.defaultChain(),
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
          DescribeAccountLimitsInput,
          DescribeAccountLimitsInput,
          DescribeAccountLimitsOutput,
          DescribeAccountLimitsOutput>> protocols = [
    _i4.AwsQueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i4.WithSigV4(
              region: _region,
              service: _i5.AWSService.cloudFormation,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'DescribeAccountLimits',
      version: '2010-05-15',
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(DescribeAccountLimitsInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([DescribeAccountLimitsOutput? output]) => 200;
  @override
  DescribeAccountLimitsOutput buildOutput(
    DescribeAccountLimitsOutput payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      DescribeAccountLimitsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DescribeAccountLimits';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<DescribeAccountLimitsOutput> run(
    DescribeAccountLimitsInput input, {
    _i5.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i6.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i5.AWSHeaders.sdkInvocationId: _i5.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(DescribeAccountLimitsOutput output) => output.nextToken;
  @override
  _i2.BuiltList<AccountLimit> getItems(DescribeAccountLimitsOutput output) =>
      output.accountLimits ?? _i2.BuiltList();
  @override
  DescribeAccountLimitsInput rebuildInput(
    DescribeAccountLimitsInput input,
    String token,
    void pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
      });
}
