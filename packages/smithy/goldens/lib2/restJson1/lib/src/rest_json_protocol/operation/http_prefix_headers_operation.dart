// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.operation.http_prefix_headers_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:rest_json1_v2/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_json1_v2/src/rest_json_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_input.dart'
    as _i2;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This examples adds headers to the input of a request and response by prefix.///
/// See also:
/// - [httpPrefixHeaders Trait](https://awslabs.github.io/smithy/1.0/spec/http.html#httpprefixheaders-trait)

class HttpPrefixHeadersOperation extends _i1.HttpOperation<
    _i2.HttpPrefixHeadersInputPayload,
    _i2.HttpPrefixHeadersInput,
    _i3.HttpPrefixHeadersOutputPayload,
    _i3.HttpPrefixHeadersOutput> {
  /// This examples adds headers to the input of a request and response by prefix.///
  /// See also:
  /// - [httpPrefixHeaders Trait](https://awslabs.github.io/smithy/1.0/spec/http.html#httpprefixheaders-trait)

  HttpPrefixHeadersOperation({
    required String region,
    Uri? baseUri,
  })  : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.HttpPrefixHeadersInputPayload,
          _i2.HttpPrefixHeadersInput,
          _i3.HttpPrefixHeadersOutputPayload,
          _i3.HttpPrefixHeadersOutput>> protocols = [
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
  _i1.HttpRequest buildRequest(_i2.HttpPrefixHeadersInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/HttpPrefixHeaders';
        if (input.foo != null) {
          if (input.foo!.isNotEmpty) {
            b.headers['X-Foo'] = input.foo!;
          }
        }
        if (input.fooMap != null) {
          for (var entry in input.fooMap!.toMap().entries) {
            if (entry.value.isNotEmpty) {
              b.headers['X-Foo-' + entry.key] = entry.value;
            }
          }
        }
      });
  @override
  int successCode([_i3.HttpPrefixHeadersOutput? output]) => 200;
  @override
  _i3.HttpPrefixHeadersOutput buildOutput(
    _i3.HttpPrefixHeadersOutputPayload payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.HttpPrefixHeadersOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'HttpPrefixHeaders';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.HttpPrefixHeadersOutput> run(
    _i2.HttpPrefixHeadersInput input, {
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
