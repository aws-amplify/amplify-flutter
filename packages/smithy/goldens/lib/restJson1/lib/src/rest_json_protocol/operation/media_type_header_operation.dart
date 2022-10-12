// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.operation.media_type_header_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;
import 'dart:convert' as _i7;

import 'package:aws_common/aws_common.dart' as _i8;
import 'package:rest_json1_v1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_json1_v1/src/rest_json_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/model/media_type_header_input.dart'
    as _i2;
import 'package:rest_json1_v1/src/rest_json_protocol/model/media_type_header_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This example ensures that mediaType strings are base64 encoded in headers.
class MediaTypeHeaderOperation extends _i1.HttpOperation<
    _i2.MediaTypeHeaderInputPayload,
    _i2.MediaTypeHeaderInput,
    _i3.MediaTypeHeaderOutputPayload,
    _i3.MediaTypeHeaderOutput> {
  /// This example ensures that mediaType strings are base64 encoded in headers.
  MediaTypeHeaderOperation({
    required String region,
    Uri? baseUri,
  })  : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.MediaTypeHeaderInputPayload,
          _i2.MediaTypeHeaderInput,
          _i3.MediaTypeHeaderOutputPayload,
          _i3.MediaTypeHeaderOutput>> protocols = [
    _i4.RestJson1Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithNoHeader('Content-Length'),
        const _i1.WithNoHeader('Content-Type'),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i4.WithSdkInvocationId(),
        const _i4.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i6.endpointResolver.resolve(
    _i6.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.MediaTypeHeaderInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/MediaTypeHeader';
        if (input.json != null) {
          b.headers['X-Json'] = _i7
              .base64Encode(_i7.utf8.encode(_i7.jsonEncode(input.json!.value)));
        }
      });
  @override
  int successCode([_i3.MediaTypeHeaderOutput? output]) => 200;
  @override
  _i3.MediaTypeHeaderOutput buildOutput(
    _i3.MediaTypeHeaderOutputPayload payload,
    _i8.AWSBaseHttpResponse response,
  ) =>
      _i3.MediaTypeHeaderOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i9.Future<_i3.MediaTypeHeaderOutput> run(
    _i2.MediaTypeHeaderInput input, {
    _i1.HttpClient? client,
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
        ...{_i8.AWSHeaders.sdkInvocationId: _i8.uuid(secure: true)}
      },
    );
  }
}
