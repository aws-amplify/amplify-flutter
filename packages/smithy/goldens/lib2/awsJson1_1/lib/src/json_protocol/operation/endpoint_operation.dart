// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library aws_json1_1_v2.json_protocol.operation.endpoint_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_json1_1_v2/src/json_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:aws_json1_1_v2/src/json_protocol/common/serializers.dart'
    as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class EndpointOperation
    extends _i1.HttpOperation<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit> {
  EndpointOperation(
      {required String region,
      Uri? baseUri,
      _i2.AWSCredentialsProvider credentialsProvider =
          const _i2.AWSCredentialsProvider.environment()})
      : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<_i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>>
      protocols = [
    _i3.AwsJson1_1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        requestInterceptors: [
          const _i1.WithHost(),
          const _i1.WithHeader(
              'X-Amz-Target', 'JsonProtocol.EndpointOperation'),
          _i3.WithSigV4(
              region: _region,
              service: _i5.AWSService.iam,
              credentialsProvider: _credentialsProvider),
          const _i1.WithUserAgent('aws-sdk-dart/0.1.0'),
          const _i3.WithSdkInvocationId(),
          const _i3.WithSdkRequest()
        ],
        responseInterceptors: [])
  ];

  late final _i3.AWSEndpoint _awsEndpoint =
      _i6.endpointResolver.resolve(_i6.sdkId, _region);

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
        b.hostPrefix = 'foo.';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i1.Unit> run(_i1.Unit input,
      {_i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i7.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: {
          ...?_awsEndpoint.credentialScope?.zoneValues,
          ...{_i5.AWSHeaders.sdkInvocationId: _i5.uuid(secure: true)}
        });
  }
}
