// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.get_context_keys_for_custom_policy_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i10;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/get_context_keys_for_custom_policy_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/get_context_keys_for_policy_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_input_exception.dart'
    as _i9;

/// Gets a list of all of the context keys referenced in the input policies. The policies are supplied as a list of one or more strings. To get the context keys from policies associated with an IAM user, group, or role, use GetContextKeysForPrincipalPolicy.
///
/// Context keys are variables maintained by Amazon Web Services and its services that provide details about the context of an API query request. Context keys can be evaluated by testing against a value specified in an IAM policy. Use `GetContextKeysForCustomPolicy` to understand what key names and values you must supply when you call SimulateCustomPolicy. Note that all parameters are shown in unencoded form here for clarity but must be URL encoded to be included as a part of a real HTML request.
class GetContextKeysForCustomPolicyOperation extends _i1.HttpOperation<
    _i2.GetContextKeysForCustomPolicyRequest,
    _i2.GetContextKeysForCustomPolicyRequest,
    _i3.GetContextKeysForPolicyResponse,
    _i3.GetContextKeysForPolicyResponse> {
  /// Gets a list of all of the context keys referenced in the input policies. The policies are supplied as a list of one or more strings. To get the context keys from policies associated with an IAM user, group, or role, use GetContextKeysForPrincipalPolicy.
  ///
  /// Context keys are variables maintained by Amazon Web Services and its services that provide details about the context of an API query request. Context keys can be evaluated by testing against a value specified in an IAM policy. Use `GetContextKeysForCustomPolicy` to understand what key names and values you must supply when you call SimulateCustomPolicy. Note that all parameters are shown in unencoded form here for clarity but must be URL encoded to be included as a part of a real HTML request.
  GetContextKeysForCustomPolicyOperation({
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
          _i2.GetContextKeysForCustomPolicyRequest,
          _i2.GetContextKeysForCustomPolicyRequest,
          _i3.GetContextKeysForPolicyResponse,
          _i3.GetContextKeysForPolicyResponse>> protocols = [
    _i5.AwsQueryProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'GetContextKeysForCustomPolicy',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'InvalidInputException',
          code: 'InvalidInput',
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
  _i1.HttpRequest buildRequest(
          _i2.GetContextKeysForCustomPolicyRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.GetContextKeysForPolicyResponse? output]) => 200;
  @override
  _i3.GetContextKeysForPolicyResponse buildOutput(
    _i3.GetContextKeysForPolicyResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.GetContextKeysForPolicyResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.InvalidInputException, _i9.InvalidInputException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'InvalidInputException',
          ),
          _i1.ErrorKind.client,
          _i9.InvalidInputException,
          statusCode: 400,
          builder: _i9.InvalidInputException.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'GetContextKeysForCustomPolicy';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.GetContextKeysForPolicyResponse> run(
    _i2.GetContextKeysForCustomPolicyRequest input, {
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
