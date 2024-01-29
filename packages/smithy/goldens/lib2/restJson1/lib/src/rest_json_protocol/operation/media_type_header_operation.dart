// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.rest_json_protocol.operation.media_type_header_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;
import 'dart:convert' as _i3;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:rest_json1_v2/src/rest_json_protocol/common/endpoint_resolver.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/common/serializers.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/media_type_header_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/media_type_header_output.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

/// This example ensures that mediaType strings are base64 encoded in headers.
class MediaTypeHeaderOperation extends _i1.HttpOperation<
    MediaTypeHeaderInputPayload,
    MediaTypeHeaderInput,
    MediaTypeHeaderOutputPayload,
    MediaTypeHeaderOutput> {
  /// This example ensures that mediaType strings are base64 encoded in headers.
  MediaTypeHeaderOperation({
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
      _i1.HttpProtocol<MediaTypeHeaderInputPayload, MediaTypeHeaderInput,
          MediaTypeHeaderOutputPayload, MediaTypeHeaderOutput>> protocols = [
    _i2.RestJson1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithNoHeader('Content-Length'),
            const _i1.WithNoHeader('Content-Type'),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i2.WithSdkInvocationId(),
            const _i2.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i2.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(MediaTypeHeaderInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/MediaTypeHeader';
        if (input.json != null) {
          b.headers['X-Json'] = _i3
              .base64Encode(_i3.utf8.encode(_i3.jsonEncode(input.json!.value)));
        }
      });

  @override
  int successCode([MediaTypeHeaderOutput? output]) => 200;

  @override
  MediaTypeHeaderOutput buildOutput(
    MediaTypeHeaderOutputPayload payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      MediaTypeHeaderOutput.fromResponse(
        payload,
        response,
      );

  @override
  List<_i1.SmithyError> get errorTypes => const [];

  @override
  String get runtimeTypeName => 'MediaTypeHeader';

  @override
  _i2.AWSRetryer get retryer => _i2.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<MediaTypeHeaderOutput> run(
    MediaTypeHeaderInput input, {
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
