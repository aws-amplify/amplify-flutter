// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.operation.tag_resource_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_not_found_exception.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/model/tag_resource_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/too_many_tags_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart'
    as _i10;

/// Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. If existing tags are specified, however, then their values will be updated. When a resource is deleted, the tags associated with that resource are deleted as well.
class TagResourceOperation extends _i1.HttpOperation<_i2.TagResourceRequest,
    _i2.TagResourceRequest, _i1.Unit, _i1.Unit> {
  /// Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. If existing tags are specified, however, then their values will be updated. When a resource is deleted, the tags associated with that resource are deleted as well.
  TagResourceOperation({
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
      _i1.HttpProtocol<_i2.TagResourceRequest, _i2.TagResourceRequest, _i1.Unit,
          _i1.Unit>> protocols = [
    _i4.AwsJson1_1Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.TagResource',
            ),
            _i4.WithSigV4(
              region: _region,
              service: _i6.AWSService.configService,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
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
  _i1.HttpRequest buildRequest(_i2.TagResourceRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i8.ResourceNotFoundException,
            _i8.ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i8.ResourceNotFoundException,
          builder: _i8.ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<_i9.TooManyTagsException, _i9.TooManyTagsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'TooManyTagsException',
          ),
          _i1.ErrorKind.client,
          _i9.TooManyTagsException,
          builder: _i9.TooManyTagsException.fromResponse,
        ),
        _i1.SmithyError<_i10.ValidationException, _i10.ValidationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          _i10.ValidationException,
          builder: _i10.ValidationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'TagResource';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    _i2.TagResourceRequest input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i11.runZoned(
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
