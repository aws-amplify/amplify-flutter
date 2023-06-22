// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.get_account_password_policy_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i10;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/model/get_account_password_policy_response.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart'
    as _i9;

/// Retrieves the password policy for the Amazon Web Services account. This tells you the complexity requirements and mandatory rotation periods for the IAM user passwords in your account. For more information about using a password policy, see [Managing an IAM password policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html).
class GetAccountPasswordPolicyOperation extends _i1.HttpOperation<
    _i1.Unit,
    _i1.Unit,
    _i2.GetAccountPasswordPolicyResponse,
    _i2.GetAccountPasswordPolicyResponse> {
  /// Retrieves the password policy for the Amazon Web Services account. This tells you the complexity requirements and mandatory rotation periods for the IAM user passwords in your account. For more information about using a password policy, see [Managing an IAM password policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html).
  GetAccountPasswordPolicyOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i2.GetAccountPasswordPolicyResponse,
          _i2.GetAccountPasswordPolicyResponse>> protocols = [
    _i4.AwsQueryProtocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            _i4.WithSigV4(
              region: _region,
              service: _i6.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'GetAccountPasswordPolicy',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i4.AwsQueryError(
          shape: 'NoSuchEntityException',
          code: 'NoSuchEntity',
          httpResponseCode: 404,
        ),
        _i4.AwsQueryError(
          shape: 'ServiceFailureException',
          code: 'ServiceFailure',
          httpResponseCode: 500,
        ),
      ],
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i7.endpointResolver.resolve(
    _i7.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i2.GetAccountPasswordPolicyResponse? output]) => 200;
  @override
  _i2.GetAccountPasswordPolicyResponse buildOutput(
    _i2.GetAccountPasswordPolicyResponse payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      _i2.GetAccountPasswordPolicyResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i8.NoSuchEntityException, _i8.NoSuchEntityException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'NoSuchEntityException',
          ),
          _i1.ErrorKind.client,
          _i8.NoSuchEntityException,
          statusCode: 404,
          builder: _i8.NoSuchEntityException.fromResponse,
        ),
        _i1.SmithyError<_i9.ServiceFailureException,
            _i9.ServiceFailureException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ServiceFailureException',
          ),
          _i1.ErrorKind.server,
          _i9.ServiceFailureException,
          statusCode: 500,
          builder: _i9.ServiceFailureException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GetAccountPasswordPolicy';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i2.GetAccountPasswordPolicyResponse> run(
    _i1.Unit input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i10.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)},
      },
    );
  }
}
