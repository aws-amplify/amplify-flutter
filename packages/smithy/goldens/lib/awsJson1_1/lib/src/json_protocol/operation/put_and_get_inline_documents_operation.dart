// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library aws_json1_1_v1.json_protocol.operation.put_and_get_inline_documents_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_json1_1_v1/src/json_protocol/common/endpoint_resolver.dart'
    as _i7;
import 'package:aws_json1_1_v1/src/json_protocol/common/serializers.dart'
    as _i5;
import 'package:aws_json1_1_v1/src/json_protocol/model/put_and_get_inline_documents_input_output.dart'
    as _i2;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This example serializes an inline document as part of the payload.
class PutAndGetInlineDocumentsOperation extends _i1.HttpOperation<
    _i2.PutAndGetInlineDocumentsInputOutput,
    _i2.PutAndGetInlineDocumentsInputOutput,
    _i2.PutAndGetInlineDocumentsInputOutput,
    _i2.PutAndGetInlineDocumentsInputOutput> {
  /// This example serializes an inline document as part of the payload.
  PutAndGetInlineDocumentsOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.PutAndGetInlineDocumentsInputOutput,
          _i2.PutAndGetInlineDocumentsInputOutput,
          _i2.PutAndGetInlineDocumentsInputOutput,
          _i2.PutAndGetInlineDocumentsInputOutput>> protocols = [
    _i4.AwsJson1_1Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'JsonProtocol.PutAndGetInlineDocuments',
        ),
        _i4.WithSigV4(
          region: _region,
          service: _i6.AWSService.iam,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i4.WithSdkInvocationId(),
        const _i4.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i7.endpointResolver.resolve(
    _i7.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.PutAndGetInlineDocumentsInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i2.PutAndGetInlineDocumentsInputOutput? output]) => 200;
  @override
  _i2.PutAndGetInlineDocumentsInputOutput buildOutput(
    _i2.PutAndGetInlineDocumentsInputOutput payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      _i2.PutAndGetInlineDocumentsInputOutput.fromResponse(
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
  _i8.Future<_i2.PutAndGetInlineDocumentsInputOutput> run(
    _i2.PutAndGetInlineDocumentsInputOutput input, {
    _i1.HttpClient? client,
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
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)}
      },
    );
  }
}
