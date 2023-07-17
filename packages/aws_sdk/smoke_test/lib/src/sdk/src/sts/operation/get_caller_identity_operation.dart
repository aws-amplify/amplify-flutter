// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.sts.operation.get_caller_identity_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/sts/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/sts/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/sts/model/get_caller_identity_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/sts/model/get_caller_identity_response.dart'
    as _i3;

/// Returns details about the IAM user or role whose credentials are used to call the operation.
///
/// No permissions are required to perform this operation. If an administrator attaches a policy to your identity that explicitly denies access to the `sts:GetCallerIdentity` action, you can still perform this operation. Permissions are not required because the same information is returned when access is denied. To view an example response, see [I Am Not Authorized to Perform: iam:DeleteVirtualMFADevice](https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_access-denied-delete-mfa) in the _IAM User Guide_.
class GetCallerIdentityOperation extends _i1.HttpOperation<
    _i2.GetCallerIdentityRequest,
    _i2.GetCallerIdentityRequest,
    _i3.GetCallerIdentityResponse,
    _i3.GetCallerIdentityResponse> {
  /// Returns details about the IAM user or role whose credentials are used to call the operation.
  ///
  /// No permissions are required to perform this operation. If an administrator attaches a policy to your identity that explicitly denies access to the `sts:GetCallerIdentity` action, you can still perform this operation. Permissions are not required because the same information is returned when access is denied. To view an example response, see [I Am Not Authorized to Perform: iam:DeleteVirtualMFADevice](https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_access-denied-delete-mfa) in the _IAM User Guide_.
  GetCallerIdentityOperation({
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
          _i2.GetCallerIdentityRequest,
          _i2.GetCallerIdentityRequest,
          _i3.GetCallerIdentityResponse,
          _i3.GetCallerIdentityResponse>> protocols = [
    _i5.AwsQueryProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.sts,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'GetCallerIdentity',
      version: '2011-06-15',
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
  _i1.HttpRequest buildRequest(_i2.GetCallerIdentityRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.GetCallerIdentityResponse? output]) => 200;
  @override
  _i3.GetCallerIdentityResponse buildOutput(
    _i3.GetCallerIdentityResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.GetCallerIdentityResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'GetCallerIdentity';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.GetCallerIdentityResponse> run(
    _i2.GetCallerIdentityRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i9.runZoned(
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
