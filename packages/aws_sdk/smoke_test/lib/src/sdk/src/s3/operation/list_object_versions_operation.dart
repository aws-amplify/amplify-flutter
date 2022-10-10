// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.operation.list_object_versions_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart' as _i8;
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/list_object_versions_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/list_object_versions_request.dart'
    as _i2;

/// Returns metadata about all versions of the objects in a bucket. You can also use request parameters as selection criteria to return metadata about a subset of all the object versions.
///
/// To use this operation, you must have permissions to perform the `s3:ListBucketVersions` action. Be aware of the name difference.
///
/// A 200 OK response can contain valid or invalid XML. Make sure to design your application to parse the contents of the response and handle it appropriately.
///
/// To use this operation, you must have READ access to the bucket.
///
/// This action is not supported by Amazon S3 on Outposts.
///
/// The following operations are related to `ListObjectVersions`:
///
/// *   [ListObjectsV2](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html)
///
/// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
///
/// *   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
///
/// *   [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)
class ListObjectVersionsOperation extends _i1.HttpOperation<
    _i2.ListObjectVersionsRequestPayload,
    _i2.ListObjectVersionsRequest,
    _i3.ListObjectVersionsOutput,
    _i3.ListObjectVersionsOutput> {
  /// Returns metadata about all versions of the objects in a bucket. You can also use request parameters as selection criteria to return metadata about a subset of all the object versions.
  ///
  /// To use this operation, you must have permissions to perform the `s3:ListBucketVersions` action. Be aware of the name difference.
  ///
  /// A 200 OK response can contain valid or invalid XML. Make sure to design your application to parse the contents of the response and handle it appropriately.
  ///
  /// To use this operation, you must have READ access to the bucket.
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  ///
  /// The following operations are related to `ListObjectVersions`:
  ///
  /// *   [ListObjectsV2](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html)
  ///
  /// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
  ///
  /// *   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
  ///
  /// *   [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)
  ListObjectVersionsOperation({
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
          _i2.ListObjectVersionsRequestPayload,
          _i2.ListObjectVersionsRequest,
          _i3.ListObjectVersionsOutput,
          _i3.ListObjectVersionsOutput>> protocols = [
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
  _i1.HttpRequest buildRequest(_i2.ListObjectVersionsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}?versions'
            : r'/?versions';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
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
        if (input.keyMarker != null) {
          b.queryParameters.add(
            'key-marker',
            input.keyMarker!,
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
        if (input.versionIdMarker != null) {
          b.queryParameters.add(
            'version-id-marker',
            input.versionIdMarker!,
          );
        }
      });
  @override
  int successCode([_i3.ListObjectVersionsOutput? output]) => 200;
  @override
  _i3.ListObjectVersionsOutput buildOutput(
    _i3.ListObjectVersionsOutput payload,
    _i7.AWSStreamedHttpResponse response,
  ) =>
      _i3.ListObjectVersionsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
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
  _i9.Future<_i3.ListObjectVersionsOutput> run(
    _i2.ListObjectVersionsRequest input, {
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
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
