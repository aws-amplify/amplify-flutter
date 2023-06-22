// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.operation.decode_authorization_message_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i10;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/sts/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/sts/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/sts/model/decode_authorization_message_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/sts/model/decode_authorization_message_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/sts/model/invalid_authorization_message_exception.dart'
    as _i9;

/// Decodes additional information about the authorization status of a request from an encoded message returned in response to an Amazon Web Services request.
///
/// For example, if a user is not authorized to perform an operation that he or she has requested, the request returns a `Client.UnauthorizedOperation` response (an HTTP 403 response). Some Amazon Web Services operations additionally return an encoded message that can provide details about this authorization failure.
///
/// Only certain Amazon Web Services operations return an encoded authorization message. The documentation for an individual operation indicates whether that operation returns an encoded message in addition to returning an HTTP code.
///
/// The message is encoded because the details of the authorization status can contain privileged information that the user who requested the operation should not see. To decode an authorization status message, a user must be granted permissions through an IAM [policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html) to request the `DecodeAuthorizationMessage` (`sts:DecodeAuthorizationMessage`) action.
///
/// The decoded message includes the following type of information:
///
/// *   Whether the request was denied due to an explicit deny or due to the absence of an explicit allow. For more information, see [Determining Whether a Request is Allowed or Denied](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-denyallow) in the _IAM User Guide_.
///
/// *   The principal who made the request.
///
/// *   The requested action.
///
/// *   The requested resource.
///
/// *   The values of condition keys in the context of the user's request.
class DecodeAuthorizationMessageOperation extends _i1.HttpOperation<
    _i2.DecodeAuthorizationMessageRequest,
    _i2.DecodeAuthorizationMessageRequest,
    _i3.DecodeAuthorizationMessageResponse,
    _i3.DecodeAuthorizationMessageResponse> {
  /// Decodes additional information about the authorization status of a request from an encoded message returned in response to an Amazon Web Services request.
  ///
  /// For example, if a user is not authorized to perform an operation that he or she has requested, the request returns a `Client.UnauthorizedOperation` response (an HTTP 403 response). Some Amazon Web Services operations additionally return an encoded message that can provide details about this authorization failure.
  ///
  /// Only certain Amazon Web Services operations return an encoded authorization message. The documentation for an individual operation indicates whether that operation returns an encoded message in addition to returning an HTTP code.
  ///
  /// The message is encoded because the details of the authorization status can contain privileged information that the user who requested the operation should not see. To decode an authorization status message, a user must be granted permissions through an IAM [policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html) to request the `DecodeAuthorizationMessage` (`sts:DecodeAuthorizationMessage`) action.
  ///
  /// The decoded message includes the following type of information:
  ///
  /// *   Whether the request was denied due to an explicit deny or due to the absence of an explicit allow. For more information, see [Determining Whether a Request is Allowed or Denied](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-denyallow) in the _IAM User Guide_.
  ///
  /// *   The principal who made the request.
  ///
  /// *   The requested action.
  ///
  /// *   The requested resource.
  ///
  /// *   The values of condition keys in the context of the user's request.
  DecodeAuthorizationMessageOperation({
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
          _i2.DecodeAuthorizationMessageRequest,
          _i2.DecodeAuthorizationMessageRequest,
          _i3.DecodeAuthorizationMessageResponse,
          _i3.DecodeAuthorizationMessageResponse>> protocols = [
    _i5.AwsQueryProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
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
      action: 'DecodeAuthorizationMessage',
      version: '2011-06-15',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'InvalidAuthorizationMessageException',
          code: 'InvalidAuthorizationMessageException',
          httpResponseCode: 400,
        )
      ],
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
  _i1.HttpRequest buildRequest(_i2.DecodeAuthorizationMessageRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DecodeAuthorizationMessageResponse? output]) => 200;
  @override
  _i3.DecodeAuthorizationMessageResponse buildOutput(
    _i3.DecodeAuthorizationMessageResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.DecodeAuthorizationMessageResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.InvalidAuthorizationMessageException,
            _i9.InvalidAuthorizationMessageException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'InvalidAuthorizationMessageException',
          ),
          _i1.ErrorKind.client,
          _i9.InvalidAuthorizationMessageException,
          statusCode: 400,
          builder: _i9.InvalidAuthorizationMessageException.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'DecodeAuthorizationMessage';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DecodeAuthorizationMessageResponse> run(
    _i2.DecodeAuthorizationMessageRequest input, {
    _i7.AWSHttpClient? client,
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
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)},
      },
    );
  }
}
