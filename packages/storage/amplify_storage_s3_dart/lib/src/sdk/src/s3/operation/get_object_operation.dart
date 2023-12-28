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

/// Retrieves an object from Amazon S3.
///
/// In the `GetObject` request, specify the full key name for the object.
///
/// **General purpose buckets** \- Both the virtual-hosted-style requests and the path-style requests are supported. For a virtual hosted-style request example, if you have the object `photos/2006/February/sample.jpg`, specify the object key name as `/photos/2006/February/sample.jpg`. For a path-style request example, if you have the object `photos/2006/February/sample.jpg` in the bucket named `examplebucket`, specify the object key name as `/examplebucket/photos/2006/February/sample.jpg`. For more information about request types, see [HTTP Host Header Bucket Specification](https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html#VirtualHostingSpecifyBucket) in the _Amazon S3 User Guide_.
///
/// **Directory buckets** \- Only virtual-hosted-style requests are supported. For a virtual hosted-style request example, if you have the object `photos/2006/February/sample.jpg` in the bucket named `examplebucket--use1-az5--x-s3`, specify the object key name as `/photos/2006/February/sample.jpg`. Also, when you make requests to this API operation, your requests are sent to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format `https://_bucket_name_.s3express-_az_id_._region_.amazonaws.com/_key-name_` . Path-style requests are not supported. For more information, see [Regional and Zonal endpoints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html) in the _Amazon S3 User Guide_.
///
/// Permissions
///
/// *   **General purpose bucket permissions** \- You must have the required permissions in a policy. To use `GetObject`, you must have the `READ` access to the object (or version). If you grant `READ` access to the anonymous user, the `GetObject` operation returns the object without using an authorization header. For more information, see [Specifying permissions in a policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html) in the _Amazon S3 User Guide_.
///
///     If you include a `versionId` in your request header, you must have the `s3:GetObjectVersion` permission to access a specific version of an object. The `s3:GetObject` permission is not required in this scenario.
///
///     If you request the current version of an object without a specific `versionId` in the request header, only the `s3:GetObject` permission is required. The `s3:GetObjectVersion` permission is not required in this scenario.
///
///     If the object that you request doesn’t exist, the error that Amazon S3 returns depends on whether you also have the `s3:ListBucket` permission.
///
///     *   If you have the `s3:ListBucket` permission on the bucket, Amazon S3 returns an HTTP status code `404 Not Found` error.
///
///     *   If you don’t have the `s3:ListBucket` permission, Amazon S3 returns an HTTP status code `403 Access Denied` error.
///
/// *   **Directory bucket permissions** \- To grant access to this API operation on a directory bucket, we recommend that you use the [`CreateSession`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html) API operation for session-based authorization. Specifically, you grant the `s3express:CreateSession` permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the `CreateSession` API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another `CreateSession` API call to generate a new session token for use. Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see [`CreateSession`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html) .
///
///
/// Storage classes
///
/// If the object you are retrieving is stored in the S3 Glacier Flexible Retrieval storage class, the S3 Glacier Deep Archive storage class, the S3 Intelligent-Tiering Archive Access tier, or the S3 Intelligent-Tiering Deep Archive Access tier, before you can retrieve the object you must first restore a copy using [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html). Otherwise, this operation returns an `InvalidObjectState` error. For information about restoring archived objects, see [Restoring Archived Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html) in the _Amazon S3 User Guide_.
///
/// **Directory buckets** \- For directory buckets, only the S3 Express One Zone storage class is supported to store newly created objects. Unsupported storage class values won't write a destination object and will respond with the HTTP status code `400 Bad Request`.
///
/// Encryption
///
/// Encryption request headers, like `x-amz-server-side-encryption`, should not be sent for the `GetObject` requests, if your object uses server-side encryption with Amazon S3 managed encryption keys (SSE-S3), server-side encryption with Key Management Service (KMS) keys (SSE-KMS), or dual-layer server-side encryption with Amazon Web Services KMS keys (DSSE-KMS). If you include the header in your `GetObject` requests for the object that uses these types of keys, you’ll get an HTTP `400 Bad Request` error.
///
/// Overriding response header values through the request
///
/// There are times when you want to override certain response header values of a `GetObject` response. For example, you might override the `Content-Disposition` response header value through your `GetObject` request.
///
/// You can override values for a set of response headers. These modified response header values are included only in a successful response, that is, when the HTTP status code `200 OK` is returned. The headers you can override using the following query parameters in the request are a subset of the headers that Amazon S3 accepts when you create an object.
///
/// The response headers that you can override for the `GetObject` response are `Cache-Control`, `Content-Disposition`, `Content-Encoding`, `Content-Language`, `Content-Type`, and `Expires`.
///
/// To override values for a set of response headers in the `GetObject` response, you can use the following query parameters in the request.
///
/// *   `response-cache-control`
///
/// *   `response-content-disposition`
///
/// *   `response-content-encoding`
///
/// *   `response-content-language`
///
/// *   `response-content-type`
///
/// *   `response-expires`
///
///
/// When you use these parameters, you must sign the request by using either an Authorization header or a presigned URL. These parameters cannot be used with an unsigned (anonymous) request.
///
/// HTTP Host header syntax
///
/// **Directory buckets** \- The HTTP Host header syntax is `_Bucket_name_.s3express-_az_id_._region_.amazonaws.com`.
///
/// The following operations are related to `GetObject`:
///
/// *   [ListBuckets](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html)
///
/// *   [GetObjectAcl](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html)
class GetObjectOperation extends _i1.HttpOperation<GetObjectRequestPayload,
    GetObjectRequest, _i2.Stream<List<int>>, GetObjectOutput> {
  /// Retrieves an object from Amazon S3.
  ///
  /// In the `GetObject` request, specify the full key name for the object.
  ///
  /// **General purpose buckets** \- Both the virtual-hosted-style requests and the path-style requests are supported. For a virtual hosted-style request example, if you have the object `photos/2006/February/sample.jpg`, specify the object key name as `/photos/2006/February/sample.jpg`. For a path-style request example, if you have the object `photos/2006/February/sample.jpg` in the bucket named `examplebucket`, specify the object key name as `/examplebucket/photos/2006/February/sample.jpg`. For more information about request types, see [HTTP Host Header Bucket Specification](https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html#VirtualHostingSpecifyBucket) in the _Amazon S3 User Guide_.
  ///
  /// **Directory buckets** \- Only virtual-hosted-style requests are supported. For a virtual hosted-style request example, if you have the object `photos/2006/February/sample.jpg` in the bucket named `examplebucket--use1-az5--x-s3`, specify the object key name as `/photos/2006/February/sample.jpg`. Also, when you make requests to this API operation, your requests are sent to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format `https://_bucket_name_.s3express-_az_id_._region_.amazonaws.com/_key-name_` . Path-style requests are not supported. For more information, see [Regional and Zonal endpoints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html) in the _Amazon S3 User Guide_.
  ///
  /// Permissions
  ///
  /// *   **General purpose bucket permissions** \- You must have the required permissions in a policy. To use `GetObject`, you must have the `READ` access to the object (or version). If you grant `READ` access to the anonymous user, the `GetObject` operation returns the object without using an authorization header. For more information, see [Specifying permissions in a policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html) in the _Amazon S3 User Guide_.
  ///
  ///     If you include a `versionId` in your request header, you must have the `s3:GetObjectVersion` permission to access a specific version of an object. The `s3:GetObject` permission is not required in this scenario.
  ///
  ///     If you request the current version of an object without a specific `versionId` in the request header, only the `s3:GetObject` permission is required. The `s3:GetObjectVersion` permission is not required in this scenario.
  ///
  ///     If the object that you request doesn’t exist, the error that Amazon S3 returns depends on whether you also have the `s3:ListBucket` permission.
  ///
  ///     *   If you have the `s3:ListBucket` permission on the bucket, Amazon S3 returns an HTTP status code `404 Not Found` error.
  ///
  ///     *   If you don’t have the `s3:ListBucket` permission, Amazon S3 returns an HTTP status code `403 Access Denied` error.
  ///
  /// *   **Directory bucket permissions** \- To grant access to this API operation on a directory bucket, we recommend that you use the [`CreateSession`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html) API operation for session-based authorization. Specifically, you grant the `s3express:CreateSession` permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the `CreateSession` API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another `CreateSession` API call to generate a new session token for use. Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see [`CreateSession`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html) .
  ///
  ///
  /// Storage classes
  ///
  /// If the object you are retrieving is stored in the S3 Glacier Flexible Retrieval storage class, the S3 Glacier Deep Archive storage class, the S3 Intelligent-Tiering Archive Access tier, or the S3 Intelligent-Tiering Deep Archive Access tier, before you can retrieve the object you must first restore a copy using [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html). Otherwise, this operation returns an `InvalidObjectState` error. For information about restoring archived objects, see [Restoring Archived Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html) in the _Amazon S3 User Guide_.
  ///
  /// **Directory buckets** \- For directory buckets, only the S3 Express One Zone storage class is supported to store newly created objects. Unsupported storage class values won't write a destination object and will respond with the HTTP status code `400 Bad Request`.
  ///
  /// Encryption
  ///
  /// Encryption request headers, like `x-amz-server-side-encryption`, should not be sent for the `GetObject` requests, if your object uses server-side encryption with Amazon S3 managed encryption keys (SSE-S3), server-side encryption with Key Management Service (KMS) keys (SSE-KMS), or dual-layer server-side encryption with Amazon Web Services KMS keys (DSSE-KMS). If you include the header in your `GetObject` requests for the object that uses these types of keys, you’ll get an HTTP `400 Bad Request` error.
  ///
  /// Overriding response header values through the request
  ///
  /// There are times when you want to override certain response header values of a `GetObject` response. For example, you might override the `Content-Disposition` response header value through your `GetObject` request.
  ///
  /// You can override values for a set of response headers. These modified response header values are included only in a successful response, that is, when the HTTP status code `200 OK` is returned. The headers you can override using the following query parameters in the request are a subset of the headers that Amazon S3 accepts when you create an object.
  ///
  /// The response headers that you can override for the `GetObject` response are `Cache-Control`, `Content-Disposition`, `Content-Encoding`, `Content-Language`, `Content-Type`, and `Expires`.
  ///
  /// To override values for a set of response headers in the `GetObject` response, you can use the following query parameters in the request.
  ///
  /// *   `response-cache-control`
  ///
  /// *   `response-content-disposition`
  ///
  /// *   `response-content-encoding`
  ///
  /// *   `response-content-language`
  ///
  /// *   `response-content-type`
  ///
  /// *   `response-expires`
  ///
  ///
  /// When you use these parameters, you must sign the request by using either an Authorization header or a presigned URL. These parameters cannot be used with an unsigned (anonymous) request.
  ///
  /// HTTP Host header syntax
  ///
  /// **Directory buckets** \- The HTTP Host header syntax is `_Bucket_name_.s3express-_az_id_._region_.amazonaws.com`.
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
        const _i4.AWSCredentialsProvider.defaultChain(),
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
          statusCode: 403,
          builder: InvalidObjectState.fromResponse,
        ),
        _i1.SmithyError<NoSuchKey, NoSuchKey>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.s3',
            shape: 'NoSuchKey',
          ),
          _i1.ErrorKind.client,
          NoSuchKey,
          statusCode: 404,
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
