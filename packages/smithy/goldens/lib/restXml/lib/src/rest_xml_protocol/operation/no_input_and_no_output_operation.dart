// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.operation.no_input_and_no_output_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i4;
import 'package:rest_xml_v1/src/rest_xml_protocol/common/serializers.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

/// The example tests how requests and responses are serialized when there's no request or response payload because the operation has no input or output. While this should be rare, code generators must support this.
class NoInputAndNoOutputOperation
    extends _i1.HttpOperation<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit> {
  /// The example tests how requests and responses are serialized when there's no request or response payload because the operation has no input or output. While this should be rare, code generators must support this.
  NoInputAndNoOutputOperation({
    required String region,
    Uri? baseUri,
  })  : _region = region,
        _baseUri = baseUri;

  @override
  late final List<_i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>>
      protocols = [
    _i2.RestXmlProtocol(
      serializers: _i3.serializers,
      builderFactories: _i3.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i2.WithSdkInvocationId(),
        const _i2.WithSdkRequest(),
      ],
      responseInterceptors: [],
      noErrorWrapping: false,
    )
  ];

  late final _i2.AWSEndpoint _awsEndpoint = _i4.endpointResolver.resolve(
    _i4.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/NoInputAndNoOutput';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i5.AWSStreamedHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i2.AWSRetryer get retryer => _i2.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i6.Future<_i1.Unit> run(
    _i1.Unit input, {
    _i1.HttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i6.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i5.AWSHeaders.sdkInvocationId: _i5.uuid(secure: true)}
      },
    );
  }
}
