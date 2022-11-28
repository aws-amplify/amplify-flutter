// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.operation.head_object_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i10;

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/endpoint_resolver.dart'
    as _i8;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/serializers.dart'
    as _i6;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/head_object_output.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/head_object_request.dart'
    as _i2;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/not_found.dart'
    as _i9;
import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// The HEAD action retrieves metadata from an object without returning the object itself. This action is useful if you're only interested in an object's metadata. To use HEAD, you must have READ access to the object.
///
/// A `HEAD` request has the same options as a `GET` action on an object. The response is identical to the `GET` response except that there is no response body. Because of this, if the `HEAD` request generates an error, it returns a generic `404 Not Found` or `403 Forbidden` code. It is not possible to retrieve the exact exception beyond these error codes.
///
/// If you encrypt an object by using server-side encryption with customer-provided encryption keys (SSE-C) when you store the object in Amazon S3, then when you retrieve the metadata from the object, you must use the following headers:
///
/// *   x-amz-server-side-encryption-customer-algorithm
///
/// *   x-amz-server-side-encryption-customer-key
///
/// *   x-amz-server-side-encryption-customer-key-MD5
///
///
/// For more information about SSE-C, see [Server-Side Encryption (Using Customer-Provided Encryption Keys)](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html).
///
/// *   Encryption request headers, like `x-amz-server-side-encryption`, should not be sent for GET requests if your object uses server-side encryption with KMS keys (SSE-KMS) or server-side encryption with Amazon S3–managed encryption keys (SSE-S3). If your object does use these types of keys, you’ll get an HTTP 400 BadRequest error.
///
/// *   The last modified property in this case is the creation date of the object.
///
///
/// Request headers are limited to 8 KB in size. For more information, see [Common Request Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonRequestHeaders.html).
///
/// Consider the following when using request headers:
///
/// *   Consideration 1 – If both of the `If-Match` and `If-Unmodified-Since` headers are present in the request as follows:
///
///     *   `If-Match` condition evaluates to `true`, and;
///
///     *   `If-Unmodified-Since` condition evaluates to `false`;
///
///
///     Then Amazon S3 returns `200 OK` and the data requested.
///
/// *   Consideration 2 – If both of the `If-None-Match` and `If-Modified-Since` headers are present in the request as follows:
///
///     *   `If-None-Match` condition evaluates to `false`, and;
///
///     *   `If-Modified-Since` condition evaluates to `true`;
///
///
///     Then Amazon S3 returns the `304 Not Modified` response code.
///
///
/// For more information about conditional requests, see [RFC 7232](https://tools.ietf.org/html/rfc7232).
///
/// **Permissions**
///
/// You need the relevant read object (or version) permission for this operation. For more information, see [Specifying Permissions in a Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html). If the object you request does not exist, the error Amazon S3 returns depends on whether you also have the s3:ListBucket permission.
///
/// *   If you have the `s3:ListBucket` permission on the bucket, Amazon S3 returns an HTTP status code 404 ("no such key") error.
///
/// *   If you don’t have the `s3:ListBucket` permission, Amazon S3 returns an HTTP status code 403 ("access denied") error.
///
///
/// The following actions are related to `HeadObject`:
///
/// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
///
/// *   [GetObjectAttributes](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)
class HeadObjectOperation extends _i1.HttpOperation<
    _i2.HeadObjectRequestPayload,
    _i2.HeadObjectRequest,
    _i3.HeadObjectOutputPayload,
    _i3.HeadObjectOutput> {
  /// The HEAD action retrieves metadata from an object without returning the object itself. This action is useful if you're only interested in an object's metadata. To use HEAD, you must have READ access to the object.
  ///
  /// A `HEAD` request has the same options as a `GET` action on an object. The response is identical to the `GET` response except that there is no response body. Because of this, if the `HEAD` request generates an error, it returns a generic `404 Not Found` or `403 Forbidden` code. It is not possible to retrieve the exact exception beyond these error codes.
  ///
  /// If you encrypt an object by using server-side encryption with customer-provided encryption keys (SSE-C) when you store the object in Amazon S3, then when you retrieve the metadata from the object, you must use the following headers:
  ///
  /// *   x-amz-server-side-encryption-customer-algorithm
  ///
  /// *   x-amz-server-side-encryption-customer-key
  ///
  /// *   x-amz-server-side-encryption-customer-key-MD5
  ///
  ///
  /// For more information about SSE-C, see [Server-Side Encryption (Using Customer-Provided Encryption Keys)](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html).
  ///
  /// *   Encryption request headers, like `x-amz-server-side-encryption`, should not be sent for GET requests if your object uses server-side encryption with KMS keys (SSE-KMS) or server-side encryption with Amazon S3–managed encryption keys (SSE-S3). If your object does use these types of keys, you’ll get an HTTP 400 BadRequest error.
  ///
  /// *   The last modified property in this case is the creation date of the object.
  ///
  ///
  /// Request headers are limited to 8 KB in size. For more information, see [Common Request Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonRequestHeaders.html).
  ///
  /// Consider the following when using request headers:
  ///
  /// *   Consideration 1 – If both of the `If-Match` and `If-Unmodified-Since` headers are present in the request as follows:
  ///
  ///     *   `If-Match` condition evaluates to `true`, and;
  ///
  ///     *   `If-Unmodified-Since` condition evaluates to `false`;
  ///
  ///
  ///     Then Amazon S3 returns `200 OK` and the data requested.
  ///
  /// *   Consideration 2 – If both of the `If-None-Match` and `If-Modified-Since` headers are present in the request as follows:
  ///
  ///     *   `If-None-Match` condition evaluates to `false`, and;
  ///
  ///     *   `If-Modified-Since` condition evaluates to `true`;
  ///
  ///
  ///     Then Amazon S3 returns the `304 Not Modified` response code.
  ///
  ///
  /// For more information about conditional requests, see [RFC 7232](https://tools.ietf.org/html/rfc7232).
  ///
  /// **Permissions**
  ///
  /// You need the relevant read object (or version) permission for this operation. For more information, see [Specifying Permissions in a Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html). If the object you request does not exist, the error Amazon S3 returns depends on whether you also have the s3:ListBucket permission.
  ///
  /// *   If you have the `s3:ListBucket` permission on the bucket, Amazon S3 returns an HTTP status code 404 ("no such key") error.
  ///
  /// *   If you don’t have the `s3:ListBucket` permission, Amazon S3 returns an HTTP status code 403 ("access denied") error.
  ///
  ///
  /// The following actions are related to `HeadObject`:
  ///
  /// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
  ///
  /// *   [GetObjectAttributes](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)
  HeadObjectOperation({
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
      _i1.HttpProtocol<_i2.HeadObjectRequestPayload, _i2.HeadObjectRequest,
          _i3.HeadObjectOutputPayload, _i3.HeadObjectOutput>> protocols = [
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
        const _i1.WithUserAgent('aws-sdk-dart/0.3.0'),
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
  _i1.HttpRequest buildRequest(_i2.HeadObjectRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'HEAD';
        b.path =
            _s3ClientConfig.usePathStyle ? r'/{Bucket}/{Key+}' : r'/{Key+}';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.ifMatch != null) {
          if (input.ifMatch!.isNotEmpty) {
            b.headers['If-Match'] = input.ifMatch!;
          }
        }
        if (input.ifModifiedSince != null) {
          b.headers['If-Modified-Since'] = _i1.Timestamp(input.ifModifiedSince!)
              .format(_i1.TimestampFormat.httpDate)
              .toString();
        }
        if (input.ifNoneMatch != null) {
          if (input.ifNoneMatch!.isNotEmpty) {
            b.headers['If-None-Match'] = input.ifNoneMatch!;
          }
        }
        if (input.ifUnmodifiedSince != null) {
          b.headers['If-Unmodified-Since'] =
              _i1.Timestamp(input.ifUnmodifiedSince!)
                  .format(_i1.TimestampFormat.httpDate)
                  .toString();
        }
        if (input.range != null) {
          if (input.range!.isNotEmpty) {
            b.headers['Range'] = input.range!;
          }
        }
        if (input.sseCustomerAlgorithm != null) {
          if (input.sseCustomerAlgorithm!.isNotEmpty) {
            b.headers['x-amz-server-side-encryption-customer-algorithm'] =
                input.sseCustomerAlgorithm!;
          }
        }
        if (input.sseCustomerKey != null) {
          if (input.sseCustomerKey!.isNotEmpty) {
            b.headers['x-amz-server-side-encryption-customer-key'] =
                input.sseCustomerKey!;
          }
        }
        if (input.sseCustomerKeyMd5 != null) {
          if (input.sseCustomerKeyMd5!.isNotEmpty) {
            b.headers['x-amz-server-side-encryption-customer-key-MD5'] =
                input.sseCustomerKeyMd5!;
          }
        }
        if (input.requestPayer != null) {
          b.headers['x-amz-request-payer'] = input.requestPayer!.value;
        }
        if (input.expectedBucketOwner != null) {
          if (input.expectedBucketOwner!.isNotEmpty) {
            b.headers['x-amz-expected-bucket-owner'] =
                input.expectedBucketOwner!;
          }
        }
        if (input.checksumMode != null) {
          b.headers['x-amz-checksum-mode'] = input.checksumMode!.value;
        }
        if (input.versionId != null) {
          b.queryParameters.add(
            'versionId',
            input.versionId!,
          );
        }
        if (input.partNumber != null) {
          b.queryParameters.add(
            'partNumber',
            input.partNumber!.toString(),
          );
        }
      });
  @override
  int successCode([_i3.HeadObjectOutput? output]) => 200;
  @override
  _i3.HeadObjectOutput buildOutput(
    _i3.HeadObjectOutputPayload payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.HeadObjectOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.s3',
            shape: 'NotFound',
          ),
          _i1.ErrorKind.client,
          _i9.NotFound,
          builder: _i9.NotFound.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'HeadObject';
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
  _i1.SmithyOperation<_i3.HeadObjectOutput> run(
    _i2.HeadObjectRequest input, {
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
}
