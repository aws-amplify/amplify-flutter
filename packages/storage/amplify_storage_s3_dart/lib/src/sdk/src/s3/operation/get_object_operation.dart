// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.operation.get_object_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/endpoint_resolver.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/serializers.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/get_object_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/get_object_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/invalid_object_state.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/no_such_key.dart';
import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Retrieves objects from Amazon S3. To use `GET`, you must have `READ` access to the object. If you grant `READ` access to the anonymous user, you can return the object without using an authorization header.
///
/// An Amazon S3 bucket has no directory hierarchy such as you would find in a typical computer file system. You can, however, create a logical hierarchy by using object key names that imply a folder structure. For example, instead of naming an object `sample.jpg`, you can name it `photos/2006/February/sample.jpg`.
///
/// To get an object from such a logical hierarchy, specify the full key name for the object in the `GET` operation. For a virtual hosted-style request example, if you have the object `photos/2006/February/sample.jpg`, specify the resource as `/photos/2006/February/sample.jpg`. For a path-style request example, if you have the object `photos/2006/February/sample.jpg` in the bucket named `examplebucket`, specify the resource as `/examplebucket/photos/2006/February/sample.jpg`. For more information about request types, see [HTTP Host Header Bucket Specification](https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html#VirtualHostingSpecifyBucket).
///
/// For more information about returning the ACL of an object, see [GetObjectAcl](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html).
///
/// If the object you are retrieving is stored in the S3 Glacier Flexible Retrieval or S3 Glacier Deep Archive storage class, or S3 Intelligent-Tiering Archive or S3 Intelligent-Tiering Deep Archive tiers, before you can retrieve the object you must first restore a copy using [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html). Otherwise, this action returns an `InvalidObjectState` error. For information about restoring archived objects, see [Restoring Archived Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html).
///
/// Encryption request headers, like `x-amz-server-side-encryption`, should not be sent for GET requests if your object uses server-side encryption with Key Management Service (KMS) keys (SSE-KMS), dual-layer server-side encryption with Amazon Web Services KMS keys (DSSE-KMS), or server-side encryption with Amazon S3 managed encryption keys (SSE-S3). If your object does use these types of keys, you’ll get an HTTP 400 Bad Request error.
///
/// If you encrypt an object by using server-side encryption with customer-provided encryption keys (SSE-C) when you store the object in Amazon S3, then when you GET the object, you must use the following headers:
///
/// *   `x-amz-server-side-encryption-customer-algorithm`
///
/// *   `x-amz-server-side-encryption-customer-key`
///
/// *   `x-amz-server-side-encryption-customer-key-MD5`
///
///
/// For more information about SSE-C, see [Server-Side Encryption (Using Customer-Provided Encryption Keys)](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html).
///
/// Assuming you have the relevant permission to read object tags, the response also returns the `x-amz-tagging-count` header that provides the count of number of tags associated with the object. You can use [GetObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html) to retrieve the tag set associated with an object.
///
/// Permissions
///
/// You need the relevant read object (or version) permission for this operation. For more information, see [Specifying Permissions in a Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html). If the object that you request doesn’t exist, the error that Amazon S3 returns depends on whether you also have the `s3:ListBucket` permission.
///
/// If you have the `s3:ListBucket` permission on the bucket, Amazon S3 returns an HTTP status code 404 (Not Found) error.
///
/// If you don’t have the `s3:ListBucket` permission, Amazon S3 returns an HTTP status code 403 ("access denied") error.
///
/// Versioning
///
/// By default, the `GET` action returns the current version of an object. To return a different version, use the `versionId` subresource.
///
/// *   If you supply a `versionId`, you need the `s3:GetObjectVersion` permission to access a specific version of an object. If you request a specific version, you do not need to have the `s3:GetObject` permission. If you request the current version without a specific version ID, only `s3:GetObject` permission is required. `s3:GetObjectVersion` permission won't be required.
///
/// *   If the current version of the object is a delete marker, Amazon S3 behaves as if the object was deleted and includes `x-amz-delete-marker: true` in the response.
///
///
/// For more information about versioning, see [PutBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketVersioning.html).
///
/// Overriding Response Header Values
///
/// There are times when you want to override certain response header values in a `GET` response. For example, you might override the `Content-Disposition` response header value in your `GET` request.
///
/// You can override values for a set of response headers using the following query parameters. These response header values are sent only on a successful request, that is, when status code 200 OK is returned. The set of headers you can override using these parameters is a subset of the headers that Amazon S3 accepts when you create an object. The response headers that you can override for the `GET` response are `Content-Type`, `Content-Language`, `Expires`, `Cache-Control`, `Content-Disposition`, and `Content-Encoding`. To override these header values in the `GET` response, you use the following request parameters.
///
/// You must sign the request, either using an Authorization header or a presigned URL, when using these parameters. They cannot be used with an unsigned (anonymous) request.
///
/// *   `response-content-type`
///
/// *   `response-content-language`
///
/// *   `response-expires`
///
/// *   `response-cache-control`
///
/// *   `response-content-disposition`
///
/// *   `response-content-encoding`
///
///
/// Overriding Response Header Values
///
/// If both of the `If-Match` and `If-Unmodified-Since` headers are present in the request as follows: `If-Match` condition evaluates to `true`, and; `If-Unmodified-Since` condition evaluates to `false`; then, S3 returns 200 OK and the data requested.
///
/// If both of the `If-None-Match` and `If-Modified-Since` headers are present in the request as follows: `If-None-Match` condition evaluates to `false`, and; `If-Modified-Since` condition evaluates to `true`; then, S3 returns 304 Not Modified response code.
///
/// For more information about conditional requests, see [RFC 7232](https://tools.ietf.org/html/rfc7232).
///
/// The following operations are related to `GetObject`:
///
/// *   [ListBuckets](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html)
///
/// *   [GetObjectAcl](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html)
class GetObjectOperation extends _i1.HttpOperation<GetObjectRequestPayload,
    GetObjectRequest, _i2.Stream<List<int>>, GetObjectOutput> {
  /// Retrieves objects from Amazon S3. To use `GET`, you must have `READ` access to the object. If you grant `READ` access to the anonymous user, you can return the object without using an authorization header.
  ///
  /// An Amazon S3 bucket has no directory hierarchy such as you would find in a typical computer file system. You can, however, create a logical hierarchy by using object key names that imply a folder structure. For example, instead of naming an object `sample.jpg`, you can name it `photos/2006/February/sample.jpg`.
  ///
  /// To get an object from such a logical hierarchy, specify the full key name for the object in the `GET` operation. For a virtual hosted-style request example, if you have the object `photos/2006/February/sample.jpg`, specify the resource as `/photos/2006/February/sample.jpg`. For a path-style request example, if you have the object `photos/2006/February/sample.jpg` in the bucket named `examplebucket`, specify the resource as `/examplebucket/photos/2006/February/sample.jpg`. For more information about request types, see [HTTP Host Header Bucket Specification](https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html#VirtualHostingSpecifyBucket).
  ///
  /// For more information about returning the ACL of an object, see [GetObjectAcl](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html).
  ///
  /// If the object you are retrieving is stored in the S3 Glacier Flexible Retrieval or S3 Glacier Deep Archive storage class, or S3 Intelligent-Tiering Archive or S3 Intelligent-Tiering Deep Archive tiers, before you can retrieve the object you must first restore a copy using [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html). Otherwise, this action returns an `InvalidObjectState` error. For information about restoring archived objects, see [Restoring Archived Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html).
  ///
  /// Encryption request headers, like `x-amz-server-side-encryption`, should not be sent for GET requests if your object uses server-side encryption with Key Management Service (KMS) keys (SSE-KMS), dual-layer server-side encryption with Amazon Web Services KMS keys (DSSE-KMS), or server-side encryption with Amazon S3 managed encryption keys (SSE-S3). If your object does use these types of keys, you’ll get an HTTP 400 Bad Request error.
  ///
  /// If you encrypt an object by using server-side encryption with customer-provided encryption keys (SSE-C) when you store the object in Amazon S3, then when you GET the object, you must use the following headers:
  ///
  /// *   `x-amz-server-side-encryption-customer-algorithm`
  ///
  /// *   `x-amz-server-side-encryption-customer-key`
  ///
  /// *   `x-amz-server-side-encryption-customer-key-MD5`
  ///
  ///
  /// For more information about SSE-C, see [Server-Side Encryption (Using Customer-Provided Encryption Keys)](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html).
  ///
  /// Assuming you have the relevant permission to read object tags, the response also returns the `x-amz-tagging-count` header that provides the count of number of tags associated with the object. You can use [GetObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html) to retrieve the tag set associated with an object.
  ///
  /// Permissions
  ///
  /// You need the relevant read object (or version) permission for this operation. For more information, see [Specifying Permissions in a Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html). If the object that you request doesn’t exist, the error that Amazon S3 returns depends on whether you also have the `s3:ListBucket` permission.
  ///
  /// If you have the `s3:ListBucket` permission on the bucket, Amazon S3 returns an HTTP status code 404 (Not Found) error.
  ///
  /// If you don’t have the `s3:ListBucket` permission, Amazon S3 returns an HTTP status code 403 ("access denied") error.
  ///
  /// Versioning
  ///
  /// By default, the `GET` action returns the current version of an object. To return a different version, use the `versionId` subresource.
  ///
  /// *   If you supply a `versionId`, you need the `s3:GetObjectVersion` permission to access a specific version of an object. If you request a specific version, you do not need to have the `s3:GetObject` permission. If you request the current version without a specific version ID, only `s3:GetObject` permission is required. `s3:GetObjectVersion` permission won't be required.
  ///
  /// *   If the current version of the object is a delete marker, Amazon S3 behaves as if the object was deleted and includes `x-amz-delete-marker: true` in the response.
  ///
  ///
  /// For more information about versioning, see [PutBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketVersioning.html).
  ///
  /// Overriding Response Header Values
  ///
  /// There are times when you want to override certain response header values in a `GET` response. For example, you might override the `Content-Disposition` response header value in your `GET` request.
  ///
  /// You can override values for a set of response headers using the following query parameters. These response header values are sent only on a successful request, that is, when status code 200 OK is returned. The set of headers you can override using these parameters is a subset of the headers that Amazon S3 accepts when you create an object. The response headers that you can override for the `GET` response are `Content-Type`, `Content-Language`, `Expires`, `Cache-Control`, `Content-Disposition`, and `Content-Encoding`. To override these header values in the `GET` response, you use the following request parameters.
  ///
  /// You must sign the request, either using an Authorization header or a presigned URL, when using these parameters. They cannot be used with an unsigned (anonymous) request.
  ///
  /// *   `response-content-type`
  ///
  /// *   `response-content-language`
  ///
  /// *   `response-expires`
  ///
  /// *   `response-cache-control`
  ///
  /// *   `response-content-disposition`
  ///
  /// *   `response-content-encoding`
  ///
  ///
  /// Overriding Response Header Values
  ///
  /// If both of the `If-Match` and `If-Unmodified-Since` headers are present in the request as follows: `If-Match` condition evaluates to `true`, and; `If-Unmodified-Since` condition evaluates to `false`; then, S3 returns 200 OK and the data requested.
  ///
  /// If both of the `If-None-Match` and `If-Modified-Since` headers are present in the request as follows: `If-None-Match` condition evaluates to `false`, and; `If-Modified-Since` condition evaluates to `true`; then, S3 returns 304 Not Modified response code.
  ///
  /// For more information about conditional requests, see [RFC 7232](https://tools.ietf.org/html/rfc7232).
  ///
  /// The following operations are related to `GetObject`:
  ///
  /// *   [ListBuckets](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html)
  ///
  /// *   [GetObjectAcl](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html)
  GetObjectOperation({
    required String region,
    Uri? baseUri,
    _i3.S3ClientConfig s3ClientConfig = const _i3.S3ClientConfig(),
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _s3ClientConfig = s3ClientConfig,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<GetObjectRequestPayload, GetObjectRequest,
          _i2.Stream<List<int>>, GetObjectOutput>> protocols = [
    _i3.RestXmlProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            _i3.WithSigV4(
              region: _region,
              service: _i5.AWSService.s3,
              credentialsProvider: _credentialsProvider,
              serviceConfiguration: _s3ClientConfig.signerConfiguration ??
                  _i4.S3ServiceConfiguration(),
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors: <_i1.HttpResponseInterceptor>[
            const _i3.CheckPartialResponse()
          ] +
          _responseInterceptors,
      noErrorWrapping: true,
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.S3ClientConfig _s3ClientConfig;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(GetObjectRequest input) => _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}/{Key+}?x-id=GetObject'
            : r'/{Key+}?x-id=GetObject';
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
        if (input.responseCacheControl != null) {
          b.queryParameters.add(
            'response-cache-control',
            input.responseCacheControl!,
          );
        }
        if (input.responseContentDisposition != null) {
          b.queryParameters.add(
            'response-content-disposition',
            input.responseContentDisposition!,
          );
        }
        if (input.responseContentEncoding != null) {
          b.queryParameters.add(
            'response-content-encoding',
            input.responseContentEncoding!,
          );
        }
        if (input.responseContentLanguage != null) {
          b.queryParameters.add(
            'response-content-language',
            input.responseContentLanguage!,
          );
        }
        if (input.responseContentType != null) {
          b.queryParameters.add(
            'response-content-type',
            input.responseContentType!,
          );
        }
        if (input.responseExpires != null) {
          b.queryParameters.add(
            'response-expires',
            _i1.Timestamp(input.responseExpires!)
                .format(_i1.TimestampFormat.httpDate)
                .toString(),
          );
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
  int successCode([GetObjectOutput? output]) => 200;
  @override
  GetObjectOutput buildOutput(
    _i2.Stream<List<int>> payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      GetObjectOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<InvalidObjectState, InvalidObjectState>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.s3',
            shape: 'InvalidObjectState',
          ),
          _i1.ErrorKind.client,
          InvalidObjectState,
          builder: InvalidObjectState.fromResponse,
        ),
        _i1.SmithyError<NoSuchKey, NoSuchKey>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.s3',
            shape: 'NoSuchKey',
          ),
          _i1.ErrorKind.client,
          NoSuchKey,
          builder: NoSuchKey.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GetObject';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
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
  _i1.SmithyOperation<GetObjectOutput> run(
    GetObjectRequest input, {
    _i5.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i2.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i5.AWSHeaders.sdkInvocationId: _i5.uuid(secure: true)},
      },
    );
  }
}
