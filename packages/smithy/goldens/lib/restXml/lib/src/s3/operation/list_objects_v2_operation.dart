// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_xml_v1.s3.operation.list_objects_v2_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i10;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:rest_xml_v1/src/s3/common/endpoint_resolver.dart' as _i8;
import 'package:rest_xml_v1/src/s3/common/serializers.dart' as _i6;
import 'package:rest_xml_v1/src/s3/model/list_objects_v2_output.dart' as _i3;
import 'package:rest_xml_v1/src/s3/model/list_objects_v2_request.dart' as _i2;
import 'package:rest_xml_v1/src/s3/model/no_such_bucket.dart' as _i9;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class ListObjectsV2Operation extends _i1.PaginatedHttpOperation<
    _i2.ListObjectsV2RequestPayload,
    _i2.ListObjectsV2Request,
    _i3.ListObjectsV2Output,
    _i3.ListObjectsV2Output,
    String,
    int,
    _i3.ListObjectsV2Output> {
  ListObjectsV2Operation({
    required String region,
    Uri? baseUri,
    _i4.S3ClientConfig s3ClientConfig = const _i4.S3ClientConfig(),
    _i5.AWSCredentialsProvider credentialsProvider =
        const _i5.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _s3ClientConfig = s3ClientConfig,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.ListObjectsV2RequestPayload,
          _i2.ListObjectsV2Request,
          _i3.ListObjectsV2Output,
          _i3.ListObjectsV2Output>> protocols = [
    _i4.RestXmlProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        _i4.WithSigV4(
          region: _region,
          service: _i7.AWSService.s3,
          credentialsProvider: _credentialsProvider,
          serviceConfiguration: _s3ClientConfig.signerConfiguration ??
              _i5.S3ServiceConfiguration(),
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i4.WithSdkInvocationId(),
        const _i4.WithSdkRequest(),
      ],
      responseInterceptors: [],
      noErrorWrapping: true,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.S3ClientConfig _s3ClientConfig;

  final _i5.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.ListObjectsV2Request input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}?list-type=2'
            : r'/?list-type=2';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.requestPayer != null) {
          b.headers['x-amz-request-payer'] = input.requestPayer!.value;
        }
        if (input.expectedBucketOwner != null) {
          if (input.expectedBucketOwner!.isNotEmpty) {
            b.headers['x-amz-expected-bucket-owner'] =
                input.expectedBucketOwner!;
          }
        }
        if (input.delimiter != null) {
          b.queryParameters.add(
            'delimiter',
            input.delimiter!,
          );
        }
        if (input.encodingType != null) {
          b.queryParameters.add(
            'encoding-type',
            input.encodingType!.value,
          );
        }
        if (input.maxKeys != null) {
          b.queryParameters.add(
            'max-keys',
            input.maxKeys!.toString(),
          );
        }
        if (input.prefix != null) {
          b.queryParameters.add(
            'prefix',
            input.prefix!,
          );
        }
        if (input.continuationToken != null) {
          b.queryParameters.add(
            'continuation-token',
            input.continuationToken!,
          );
        }
        if (input.fetchOwner != null) {
          b.queryParameters.add(
            'fetch-owner',
            input.fetchOwner!.toString(),
          );
        }
        if (input.startAfter != null) {
          b.queryParameters.add(
            'start-after',
            input.startAfter!,
          );
        }
      });
  @override
  int successCode([_i3.ListObjectsV2Output? output]) => 200;
  @override
  _i3.ListObjectsV2Output buildOutput(
    _i3.ListObjectsV2Output payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ListObjectsV2Output.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.s3',
            shape: 'NoSuchBucket',
          ),
          _i1.ErrorKind.client,
          _i9.NoSuchBucket,
          builder: _i9.NoSuchBucket.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'ListObjectsV2';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
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
  _i1.SmithyOperation<_i3.ListObjectsV2Output> run(
    _i2.ListObjectsV2Request input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i10.runZoned(
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

  @override
  String? getToken(_i3.ListObjectsV2Output output) =>
      output.nextContinuationToken;
  @override
  _i3.ListObjectsV2Output getItems(_i3.ListObjectsV2Output output) => output;
  @override
  _i2.ListObjectsV2Request rebuildInput(
    _i2.ListObjectsV2Request input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.continuationToken = token;
        if (pageSize != null) {
          b.maxKeys = pageSize;
        }
      });
}
