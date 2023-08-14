// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.describe_instance_credit_specifications_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_credit_specifications_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_credit_specifications_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_credit_specification.dart';

/// Describes the credit option for CPU usage of the specified burstable performance instances. The credit options are `standard` and `unlimited`.
///
/// If you do not specify an instance ID, Amazon EC2 returns burstable performance instances with the `unlimited` credit option, as well as instances that were previously configured as T2, T3, and T3a with the `unlimited` credit option. For example, if you resize a T2 instance, while it is configured as `unlimited`, to an M4 instance, Amazon EC2 returns the M4 instance.
///
/// If you specify one or more instance IDs, Amazon EC2 returns the credit option (`standard` or `unlimited`) of those instances. If you specify an instance ID that is not valid, such as an instance that is not a burstable performance instance, an error is returned.
///
/// Recently terminated instances might appear in the returned results. This interval is usually less than one hour.
///
/// If an Availability Zone is experiencing a service disruption and you specify instance IDs in the affected zone, or do not specify any instance IDs at all, the call fails. If you specify only instance IDs in an unaffected zone, the call works normally.
///
/// For more information, see [Burstable performance instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html) in the _Amazon EC2 User Guide_.
class DescribeInstanceCreditSpecificationsOperation
    extends _i1.PaginatedHttpOperation<
        DescribeInstanceCreditSpecificationsRequest,
        DescribeInstanceCreditSpecificationsRequest,
        DescribeInstanceCreditSpecificationsResult,
        DescribeInstanceCreditSpecificationsResult,
        String,
        int,
        _i2.BuiltList<InstanceCreditSpecification>> {
  /// Describes the credit option for CPU usage of the specified burstable performance instances. The credit options are `standard` and `unlimited`.
  ///
  /// If you do not specify an instance ID, Amazon EC2 returns burstable performance instances with the `unlimited` credit option, as well as instances that were previously configured as T2, T3, and T3a with the `unlimited` credit option. For example, if you resize a T2 instance, while it is configured as `unlimited`, to an M4 instance, Amazon EC2 returns the M4 instance.
  ///
  /// If you specify one or more instance IDs, Amazon EC2 returns the credit option (`standard` or `unlimited`) of those instances. If you specify an instance ID that is not valid, such as an instance that is not a burstable performance instance, an error is returned.
  ///
  /// Recently terminated instances might appear in the returned results. This interval is usually less than one hour.
  ///
  /// If an Availability Zone is experiencing a service disruption and you specify instance IDs in the affected zone, or do not specify any instance IDs at all, the call fails. If you specify only instance IDs in an unaffected zone, the call works normally.
  ///
  /// For more information, see [Burstable performance instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html) in the _Amazon EC2 User Guide_.
  DescribeInstanceCreditSpecificationsOperation({
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
          DescribeInstanceCreditSpecificationsRequest,
          DescribeInstanceCreditSpecificationsRequest,
          DescribeInstanceCreditSpecificationsResult,
          DescribeInstanceCreditSpecificationsResult>> protocols = [
    _i4.Ec2QueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i4.WithSigV4(
              region: _region,
              service: _i5.AWSService.ec2,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'DescribeInstanceCreditSpecifications',
      version: '2016-11-15',
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
  _i1.HttpRequest buildRequest(
          DescribeInstanceCreditSpecificationsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([DescribeInstanceCreditSpecificationsResult? output]) => 200;
  @override
  DescribeInstanceCreditSpecificationsResult buildOutput(
    DescribeInstanceCreditSpecificationsResult payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      DescribeInstanceCreditSpecificationsResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DescribeInstanceCreditSpecifications';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<DescribeInstanceCreditSpecificationsResult> run(
    DescribeInstanceCreditSpecificationsRequest input, {
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
  String? getToken(DescribeInstanceCreditSpecificationsResult output) =>
      output.nextToken;
  @override
  _i2.BuiltList<InstanceCreditSpecification> getItems(
          DescribeInstanceCreditSpecificationsResult output) =>
      output.instanceCreditSpecifications ?? _i2.BuiltList();
  @override
  DescribeInstanceCreditSpecificationsRequest rebuildInput(
    DescribeInstanceCreditSpecificationsRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        b.maxResults = pageSize;
      });
}
