// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library custom_v2.s3.operation.get_object_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:aws_common/aws_common.dart' as _i8;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:custom_v2/src/s3/common/endpoint_resolver.dart' as _i9;
import 'package:custom_v2/src/s3/common/serializers.dart' as _i7;
import 'package:custom_v2/src/s3/model/get_object_output.dart' as _i4;
import 'package:custom_v2/src/s3/model/get_object_request.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

class GetObjectOperation extends _i1.HttpOperation<_i2.GetObjectRequestPayload,
    _i2.GetObjectRequest, _i3.Stream<List<int>>, _i4.GetObjectOutput> {
  GetObjectOperation({
    required String region,
    Uri? baseUri,
    _i5.S3ClientConfig s3ClientConfig = const _i5.S3ClientConfig(),
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _s3ClientConfig = s3ClientConfig,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.GetObjectRequestPayload, _i2.GetObjectRequest,
          _i3.Stream<List<int>>, _i4.GetObjectOutput>> protocols = [
    _i5.RestXmlProtocol(
      serializers: _i7.serializers,
      builderFactories: _i7.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        _i5.WithSigV4(
          region: _region,
          service: _i8.AWSService.s3,
          credentialsProvider: _credentialsProvider,
          serviceConfiguration: _s3ClientConfig.signerConfiguration ??
              _i6.S3ServiceConfiguration(),
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i5.WithSdkInvocationId(),
        const _i5.WithSdkRequest(),
      ],
      responseInterceptors: [const _i5.CheckPartialResponse()],
      noErrorWrapping: true,
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i9.endpointResolver.resolve(
    _i9.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i5.S3ClientConfig _s3ClientConfig;

  final _i6.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.GetObjectRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}/{Key+}?x-id=GetObject'
            : r'/{Key+}?x-id=GetObject';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.range != null) {
          if (input.range!.isNotEmpty) {
            b.headers['Range'] = input.range!;
          }
        }
      });
  @override
  int successCode([_i4.GetObjectOutput? output]) => 200;
  @override
  _i4.GetObjectOutput buildOutput(
    _i3.Stream<List<int>>? payload,
    _i8.AWSBaseHttpResponse response,
  ) =>
      _i4.GetObjectOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'GetObject';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri {
    var baseUri = _baseUri ?? endpoint.uri;
    if (_s3ClientConfig.useDualStack) {
      baseUri = baseUri.replace(
        host: baseUri.host.replaceFirst(RegExp(r'^s3\.'), 's3.dualstack.'),
      );
    }
    if (_s3ClientConfig.useAcceleration) {
      baseUri = baseUri.replace(
        host: baseUri.host
            .replaceFirst(RegExp('$_region\\.'), '')
            .replaceFirst(RegExp(r'^s3\.'), 's3-accelerate.'),
      );
    }
    return baseUri;
  }

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i4.GetObjectOutput> run(
    _i2.GetObjectRequest input, {
    _i8.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i3.runZoned(
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
