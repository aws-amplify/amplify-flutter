// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v1.rest_json_protocol.operation.streaming_traits_with_media_type_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:rest_json1_v1/src/rest_json_protocol/common/endpoint_resolver.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/common/serializers.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/streaming_traits_with_media_type_input_output.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This examples serializes a streaming media-typed blob shape in the request body. This examples uses a `@mediaType` trait on the payload to force a custom content-type to be serialized.
class StreamingTraitsWithMediaTypeOperation extends _i1.HttpOperation<
    _i2.Stream<List<int>>,
    StreamingTraitsWithMediaTypeInputOutput,
    _i2.Stream<List<int>>,
    StreamingTraitsWithMediaTypeInputOutput> {
  /// This examples serializes a streaming media-typed blob shape in the request body. This examples uses a `@mediaType` trait on the payload to force a custom content-type to be serialized.
  StreamingTraitsWithMediaTypeOperation({
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
          _i2.Stream<List<int>>,
          StreamingTraitsWithMediaTypeInputOutput,
          _i2.Stream<List<int>>,
          StreamingTraitsWithMediaTypeInputOutput>> protocols = [
    _i3.RestJson1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      mediaType: 'text/plain',
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(StreamingTraitsWithMediaTypeInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/StreamingTraitsWithMediaType';
        if (input.foo != null) {
          if (input.foo!.isNotEmpty) {
            b.headers['X-Foo'] = input.foo!;
          }
        }
      });

  @override
  int successCode([StreamingTraitsWithMediaTypeInputOutput? output]) => 200;

  @override
  StreamingTraitsWithMediaTypeInputOutput buildOutput(
    _i2.Stream<List<int>>? payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      StreamingTraitsWithMediaTypeInputOutput.fromResponse(
        payload,
        response,
      );

  @override
  List<_i1.SmithyError> get errorTypes => const [];

  @override
  String get runtimeTypeName => 'StreamingTraitsWithMediaType';

  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<StreamingTraitsWithMediaTypeInputOutput> run(
    StreamingTraitsWithMediaTypeInputOutput input, {
    _i4.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i2.runZoned(
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
