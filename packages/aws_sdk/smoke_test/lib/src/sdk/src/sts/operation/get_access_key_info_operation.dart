// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.sts.operation.get_access_key_info_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/sts/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/sts/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/sts/model/get_access_key_info_request.dart';
import 'package:smoke_test/src/sdk/src/sts/model/get_access_key_info_response.dart';

/// Returns the account identifier for the specified access key ID.
///
/// Access keys consist of two parts: an access key ID (for example, `AKIAIOSFODNN7EXAMPLE`) and a secret access key (for example, `wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY`). For more information about access keys, see [Managing Access Keys for IAM Users](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html) in the _IAM User Guide_.
///
/// When you pass an access key ID to this operation, it returns the ID of the Amazon Web Services account to which the keys belong. Access key IDs beginning with `AKIA` are long-term credentials for an IAM user or the Amazon Web Services account root user. Access key IDs beginning with `ASIA` are temporary credentials that are created using STS operations. If the account in the response belongs to you, you can sign in as the root user and review your root user access keys. Then, you can pull a [credentials report](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html) to learn which IAM user owns the keys. To learn who requested the temporary credentials for an `ASIA` access key, view the STS events in your [CloudTrail logs](https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html) in the _IAM User Guide_.
///
/// This operation does not indicate the state of the access key. The key might be active, inactive, or deleted. Active keys might not have permissions to perform an operation. Providing a deleted access key might return an error that the key doesn't exist.
class GetAccessKeyInfoOperation extends _i1.HttpOperation<
    GetAccessKeyInfoRequest,
    GetAccessKeyInfoRequest,
    GetAccessKeyInfoResponse,
    GetAccessKeyInfoResponse> {
  /// Returns the account identifier for the specified access key ID.
  ///
  /// Access keys consist of two parts: an access key ID (for example, `AKIAIOSFODNN7EXAMPLE`) and a secret access key (for example, `wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY`). For more information about access keys, see [Managing Access Keys for IAM Users](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html) in the _IAM User Guide_.
  ///
  /// When you pass an access key ID to this operation, it returns the ID of the Amazon Web Services account to which the keys belong. Access key IDs beginning with `AKIA` are long-term credentials for an IAM user or the Amazon Web Services account root user. Access key IDs beginning with `ASIA` are temporary credentials that are created using STS operations. If the account in the response belongs to you, you can sign in as the root user and review your root user access keys. Then, you can pull a [credentials report](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html) to learn which IAM user owns the keys. To learn who requested the temporary credentials for an `ASIA` access key, view the STS events in your [CloudTrail logs](https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html) in the _IAM User Guide_.
  ///
  /// This operation does not indicate the state of the access key. The key might be active, inactive, or deleted. Active keys might not have permissions to perform an operation. Providing a deleted access key might return an error that the key doesn't exist.
  GetAccessKeyInfoOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<GetAccessKeyInfoRequest, GetAccessKeyInfoRequest,
          GetAccessKeyInfoResponse, GetAccessKeyInfoResponse>> protocols = [
    _i3.AwsQueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.sts,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'GetAccessKeyInfo',
      version: '2011-06-15',
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
  _i1.HttpRequest buildRequest(GetAccessKeyInfoRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([GetAccessKeyInfoResponse? output]) => 200;
  @override
  GetAccessKeyInfoResponse buildOutput(
    GetAccessKeyInfoResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      GetAccessKeyInfoResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'GetAccessKeyInfo';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<GetAccessKeyInfoResponse> run(
    GetAccessKeyInfoRequest input, {
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
