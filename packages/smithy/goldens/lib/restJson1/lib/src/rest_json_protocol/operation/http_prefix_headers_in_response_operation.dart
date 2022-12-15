// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.operation.http_prefix_headers_in_response_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:rest_json1_v1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_json1_v1/src/rest_json_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_prefix_headers_in_response_input.dart'
    as _i2;
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_prefix_headers_in_response_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// Clients that perform this test extract all headers from the response.
class HttpPrefixHeadersInResponseOperation extends _i1.HttpOperation<
    _i2.HttpPrefixHeadersInResponseInput,
    _i2.HttpPrefixHeadersInResponseInput,
    _i3.HttpPrefixHeadersInResponseOutputPayload,
    _i3.HttpPrefixHeadersInResponseOutput> {
  /// Clients that perform this test extract all headers from the response.
  HttpPrefixHeadersInResponseOperation({
    required String region,
    Uri? baseUri,
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.HttpPrefixHeadersInResponseInput,
          _i2.HttpPrefixHeadersInResponseInput,
          _i3.HttpPrefixHeadersInResponseOutputPayload,
          _i3.HttpPrefixHeadersInResponseOutput>> protocols = [
    _i4.RestJson1Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithNoHeader('Content-Length'),
            const _i1.WithNoHeader('Content-Type'),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i6.endpointResolver.resolve(
    _i6.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.HttpPrefixHeadersInResponseInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/HttpPrefixHeadersResponse';
      });
  @override
  int successCode([_i3.HttpPrefixHeadersInResponseOutput? output]) => 200;
  @override
  _i3.HttpPrefixHeadersInResponseOutput buildOutput(
    _i3.HttpPrefixHeadersInResponseOutputPayload payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.HttpPrefixHeadersInResponseOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'HttpPrefixHeadersInResponse';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.HttpPrefixHeadersInResponseOutput> run(
    _i2.HttpPrefixHeadersInResponseInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i8.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
