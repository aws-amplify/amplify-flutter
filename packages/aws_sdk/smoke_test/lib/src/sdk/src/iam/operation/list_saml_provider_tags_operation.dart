// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.list_saml_provider_tags_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i14;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i8;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_input_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/iam/model/list_saml_provider_tags_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/list_saml_provider_tags_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i5;

/// Lists the tags that are attached to the specified Security Assertion Markup Language (SAML) identity provider. The returned list of tags is sorted by tag key. For more information, see [About SAML 2.0-based federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html).
///
/// For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
class ListSamlProviderTagsOperation extends _i1.PaginatedHttpOperation<
    _i2.ListSamlProviderTagsRequest,
    _i2.ListSamlProviderTagsRequest,
    _i3.ListSamlProviderTagsResponse,
    _i3.ListSamlProviderTagsResponse,
    String,
    int,
    _i4.BuiltList<_i5.Tag>> {
  /// Lists the tags that are attached to the specified Security Assertion Markup Language (SAML) identity provider. The returned list of tags is sorted by tag key. For more information, see [About SAML 2.0-based federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html).
  ///
  /// For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ListSamlProviderTagsOperation({
    required String region,
    Uri? baseUri,
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
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
          _i2.ListSamlProviderTagsRequest,
          _i2.ListSamlProviderTagsRequest,
          _i3.ListSamlProviderTagsResponse,
          _i3.ListSamlProviderTagsResponse>> protocols = [
    _i7.AwsQueryProtocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i7.WithSigV4(
              region: _region,
              service: _i9.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i7.WithSdkInvocationId(),
            const _i7.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'ListSAMLProviderTags',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i7.AwsQueryError(
          shape: 'InvalidInputException',
          code: 'InvalidInput',
          httpResponseCode: 400,
        ),
        _i7.AwsQueryError(
          shape: 'NoSuchEntityException',
          code: 'NoSuchEntity',
          httpResponseCode: 404,
        ),
        _i7.AwsQueryError(
          shape: 'ServiceFailureException',
          code: 'ServiceFailure',
          httpResponseCode: 500,
        ),
      ],
    )
  ];

  late final _i7.AWSEndpoint _awsEndpoint = _i10.endpointResolver.resolve(
    _i10.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i6.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.ListSamlProviderTagsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ListSamlProviderTagsResponse? output]) => 200;
  @override
  _i3.ListSamlProviderTagsResponse buildOutput(
    _i3.ListSamlProviderTagsResponse payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.ListSamlProviderTagsResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i11.InvalidInputException, _i11.InvalidInputException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'InvalidInputException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidInputException,
          statusCode: 400,
          builder: _i11.InvalidInputException.fromResponse,
        ),
        _i1.SmithyError<_i12.NoSuchEntityException, _i12.NoSuchEntityException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'NoSuchEntityException',
          ),
          _i1.ErrorKind.client,
          _i12.NoSuchEntityException,
          statusCode: 404,
          builder: _i12.NoSuchEntityException.fromResponse,
        ),
        _i1.SmithyError<_i13.ServiceFailureException,
            _i13.ServiceFailureException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ServiceFailureException',
          ),
          _i1.ErrorKind.server,
          _i13.ServiceFailureException,
          statusCode: 500,
          builder: _i13.ServiceFailureException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'ListSAMLProviderTags';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ListSamlProviderTagsResponse> run(
    _i2.ListSamlProviderTagsRequest input, {
    _i9.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i14.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i9.AWSHeaders.sdkInvocationId: _i9.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(_i3.ListSamlProviderTagsResponse output) => output.marker;
  @override
  _i4.BuiltList<_i5.Tag> getItems(_i3.ListSamlProviderTagsResponse output) =>
      output.tags;
  @override
  _i2.ListSamlProviderTagsRequest rebuildInput(
    _i2.ListSamlProviderTagsRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.marker = token;
        if (pageSize != null) {
          b.maxItems = pageSize;
        }
      });
}
