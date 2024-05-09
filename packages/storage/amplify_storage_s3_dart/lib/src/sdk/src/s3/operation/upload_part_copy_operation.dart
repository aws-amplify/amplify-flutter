// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.operation.upload_part_copy_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/endpoint_resolver.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/serializers.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_part_result.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/upload_part_copy_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/upload_part_copy_request.dart';
import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

/// Uploads a part by copying data from an existing object as data source. To specify the data source, you add the request header `x-amz-copy-source` in your request. To specify a byte range, you add the request header `x-amz-copy-source-range` in your request.
///
/// For information about maximum and minimum part sizes and other multipart upload specifications, see [Multipart upload limits](https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html) in the _Amazon S3 User Guide_.
///
/// Instead of copying data from an existing object as part data, you might use the [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html) action to upload new data as a part of an object in your request.
///
/// You must initiate a multipart upload before you can upload any part. In response to your initiate request, Amazon S3 returns the upload ID, a unique identifier that you must include in your upload part request.
///
/// For conceptual information about multipart uploads, see [Uploading Objects Using Multipart Upload](https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html) in the _Amazon S3 User Guide_. For information about copying objects using a single atomic action vs. a multipart upload, see [Operations on Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectOperations.html) in the _Amazon S3 User Guide_.
///
/// **Directory buckets** \- For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format `https://_bucket_name_.s3express-_az_id_._region_.amazonaws.com/_key-name_` . Path-style requests are not supported. For more information, see [Regional and Zonal endpoints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html) in the _Amazon S3 User Guide_.
///
/// Authentication and authorization
///
/// All `UploadPartCopy` requests must be authenticated and signed by using IAM credentials (access key ID and secret access key for the IAM identities). All headers with the `x-amz-` prefix, including `x-amz-copy-source`, must be signed. For more information, see [REST Authentication](https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html).
///
/// **Directory buckets** \- You must use IAM credentials to authenticate and authorize your access to the `UploadPartCopy` API operation, instead of using the temporary security credentials through the `CreateSession` API operation.
///
/// Amazon Web Services CLI or SDKs handles authentication and authorization on your behalf.
///
/// Permissions
///
/// You must have `READ` access to the source object and `WRITE` access to the destination bucket.
///
/// *   **General purpose bucket permissions** \- You must have the permissions in a policy based on the bucket types of your source bucket and destination bucket in an `UploadPartCopy` operation.
///
///     *   If the source object is in a general purpose bucket, you must have the **`s3:GetObject`** permission to read the source object that is being copied.
///
///     *   If the destination bucket is a general purpose bucket, you must have the **`s3:PubObject`** permission to write the object copy to the destination bucket.
///
///
///     For information about permissions required to use the multipart upload API, see [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html) in the _Amazon S3 User Guide_.
///
/// *   **Directory bucket permissions** \- You must have permissions in a bucket policy or an IAM identity-based policy based on the source and destination bucket types in an `UploadPartCopy` operation.
///
///     *   If the source object that you want to copy is in a directory bucket, you must have the **`s3express:CreateSession`** permission in the `Action` element of a policy to read the object . By default, the session is in the `ReadWrite` mode. If you want to restrict the access, you can explicitly set the `s3express:SessionMode` condition key to `ReadOnly` on the copy source bucket.
///
///     *   If the copy destination is a directory bucket, you must have the **`s3express:CreateSession`** permission in the `Action` element of a policy to write the object to the destination. The `s3express:SessionMode` condition key cannot be set to `ReadOnly` on the copy destination.
///
///
///     For example policies, see [Example bucket policies for S3 Express One Zone](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-example-bucket-policies.html) and [Amazon Web Services Identity and Access Management (IAM) identity-based policies for S3 Express One Zone](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-identity-policies.html) in the _Amazon S3 User Guide_.
///
///
/// Encryption
///
/// *   **General purpose buckets** \- For information about using server-side encryption with customer-provided encryption keys with the `UploadPartCopy` operation, see [CopyObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html) and [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html).
///
/// *   **Directory buckets** \- For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (`AES256`) is supported.
///
///
/// Special errors
///
/// *   Error Code: `NoSuchUpload`
///
///     *   Description: The specified multipart upload does not exist. The upload ID might be invalid, or the multipart upload might have been aborted or completed.
///
///     *   HTTP Status Code: 404 Not Found
///
/// *   Error Code: `InvalidRequest`
///
///     *   Description: The specified copy source is not supported as a byte-range copy source.
///
///     *   HTTP Status Code: 400 Bad Request
///
///
/// HTTP Host header syntax
///
/// **Directory buckets** \- The HTTP Host header syntax is `_Bucket_name_.s3express-_az_id_._region_.amazonaws.com`.
///
/// The following operations are related to `UploadPartCopy`:
///
/// *   [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)
///
/// *   [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)
///
/// *   [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)
///
/// *   [AbortMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)
///
/// *   [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)
///
/// *   [ListMultipartUploads](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)
class UploadPartCopyOperation extends _i1.HttpOperation<
    UploadPartCopyRequestPayload,
    UploadPartCopyRequest,
    CopyPartResult,
    UploadPartCopyOutput> {
  /// Uploads a part by copying data from an existing object as data source. To specify the data source, you add the request header `x-amz-copy-source` in your request. To specify a byte range, you add the request header `x-amz-copy-source-range` in your request.
  ///
  /// For information about maximum and minimum part sizes and other multipart upload specifications, see [Multipart upload limits](https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html) in the _Amazon S3 User Guide_.
  ///
  /// Instead of copying data from an existing object as part data, you might use the [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html) action to upload new data as a part of an object in your request.
  ///
  /// You must initiate a multipart upload before you can upload any part. In response to your initiate request, Amazon S3 returns the upload ID, a unique identifier that you must include in your upload part request.
  ///
  /// For conceptual information about multipart uploads, see [Uploading Objects Using Multipart Upload](https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html) in the _Amazon S3 User Guide_. For information about copying objects using a single atomic action vs. a multipart upload, see [Operations on Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectOperations.html) in the _Amazon S3 User Guide_.
  ///
  /// **Directory buckets** \- For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format `https://_bucket_name_.s3express-_az_id_._region_.amazonaws.com/_key-name_` . Path-style requests are not supported. For more information, see [Regional and Zonal endpoints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html) in the _Amazon S3 User Guide_.
  ///
  /// Authentication and authorization
  ///
  /// All `UploadPartCopy` requests must be authenticated and signed by using IAM credentials (access key ID and secret access key for the IAM identities). All headers with the `x-amz-` prefix, including `x-amz-copy-source`, must be signed. For more information, see [REST Authentication](https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html).
  ///
  /// **Directory buckets** \- You must use IAM credentials to authenticate and authorize your access to the `UploadPartCopy` API operation, instead of using the temporary security credentials through the `CreateSession` API operation.
  ///
  /// Amazon Web Services CLI or SDKs handles authentication and authorization on your behalf.
  ///
  /// Permissions
  ///
  /// You must have `READ` access to the source object and `WRITE` access to the destination bucket.
  ///
  /// *   **General purpose bucket permissions** \- You must have the permissions in a policy based on the bucket types of your source bucket and destination bucket in an `UploadPartCopy` operation.
  ///
  ///     *   If the source object is in a general purpose bucket, you must have the **`s3:GetObject`** permission to read the source object that is being copied.
  ///
  ///     *   If the destination bucket is a general purpose bucket, you must have the **`s3:PubObject`** permission to write the object copy to the destination bucket.
  ///
  ///
  ///     For information about permissions required to use the multipart upload API, see [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html) in the _Amazon S3 User Guide_.
  ///
  /// *   **Directory bucket permissions** \- You must have permissions in a bucket policy or an IAM identity-based policy based on the source and destination bucket types in an `UploadPartCopy` operation.
  ///
  ///     *   If the source object that you want to copy is in a directory bucket, you must have the **`s3express:CreateSession`** permission in the `Action` element of a policy to read the object . By default, the session is in the `ReadWrite` mode. If you want to restrict the access, you can explicitly set the `s3express:SessionMode` condition key to `ReadOnly` on the copy source bucket.
  ///
  ///     *   If the copy destination is a directory bucket, you must have the **`s3express:CreateSession`** permission in the `Action` element of a policy to write the object to the destination. The `s3express:SessionMode` condition key cannot be set to `ReadOnly` on the copy destination.
  ///
  ///
  ///     For example policies, see [Example bucket policies for S3 Express One Zone](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-example-bucket-policies.html) and [Amazon Web Services Identity and Access Management (IAM) identity-based policies for S3 Express One Zone](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-identity-policies.html) in the _Amazon S3 User Guide_.
  ///
  ///
  /// Encryption
  ///
  /// *   **General purpose buckets** \- For information about using server-side encryption with customer-provided encryption keys with the `UploadPartCopy` operation, see [CopyObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html) and [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html).
  ///
  /// *   **Directory buckets** \- For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (`AES256`) is supported.
  ///
  ///
  /// Special errors
  ///
  /// *   Error Code: `NoSuchUpload`
  ///
  ///     *   Description: The specified multipart upload does not exist. The upload ID might be invalid, or the multipart upload might have been aborted or completed.
  ///
  ///     *   HTTP Status Code: 404 Not Found
  ///
  /// *   Error Code: `InvalidRequest`
  ///
  ///     *   Description: The specified copy source is not supported as a byte-range copy source.
  ///
  ///     *   HTTP Status Code: 400 Bad Request
  ///
  ///
  /// HTTP Host header syntax
  ///
  /// **Directory buckets** \- The HTTP Host header syntax is `_Bucket_name_.s3express-_az_id_._region_.amazonaws.com`.
  ///
  /// The following operations are related to `UploadPartCopy`:
  ///
  /// *   [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)
  ///
  /// *   [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)
  ///
  /// *   [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)
  ///
  /// *   [AbortMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)
  ///
  /// *   [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)
  ///
  /// *   [ListMultipartUploads](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)
  UploadPartCopyOperation({
    required String region,
    Uri? baseUri,
    _i2.S3ClientConfig s3ClientConfig = const _i2.S3ClientConfig(),
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.defaultChain(),
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
      _i1.HttpProtocol<UploadPartCopyRequestPayload, UploadPartCopyRequest,
          CopyPartResult, UploadPartCopyOutput>> protocols = [
    _i2.RestXmlProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            _i2.WithSigV4(
              region: _region,
              service: _i4.AWSService.s3,
              credentialsProvider: _credentialsProvider,
              serviceConfiguration: _s3ClientConfig.signerConfiguration ??
                  _i3.S3ServiceConfiguration(),
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i2.WithSdkInvocationId(),
            const _i2.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors: <_i1.HttpResponseInterceptor>[
            const _i2.CheckErrorOnSuccess()
          ] +
          _responseInterceptors,
      noErrorWrapping: true,
    )
  ];

  late final _i2.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i2.S3ClientConfig _s3ClientConfig;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(UploadPartCopyRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}/{Key+}?x-id=UploadPartCopy'
            : r'/{Key+}?x-id=UploadPartCopy';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.copySource.isNotEmpty) {
          b.headers['x-amz-copy-source'] = input.copySource;
        }
        if (input.copySourceIfMatch != null) {
          if (input.copySourceIfMatch!.isNotEmpty) {
            b.headers['x-amz-copy-source-if-match'] = input.copySourceIfMatch!;
          }
        }
        if (input.copySourceIfModifiedSince != null) {
          b.headers['x-amz-copy-source-if-modified-since'] =
              _i1.Timestamp(input.copySourceIfModifiedSince!)
                  .format(_i1.TimestampFormat.httpDate)
                  .toString();
        }
        if (input.copySourceIfNoneMatch != null) {
          if (input.copySourceIfNoneMatch!.isNotEmpty) {
            b.headers['x-amz-copy-source-if-none-match'] =
                input.copySourceIfNoneMatch!;
          }
        }
        if (input.copySourceIfUnmodifiedSince != null) {
          b.headers['x-amz-copy-source-if-unmodified-since'] =
              _i1.Timestamp(input.copySourceIfUnmodifiedSince!)
                  .format(_i1.TimestampFormat.httpDate)
                  .toString();
        }
        if (input.copySourceRange != null) {
          if (input.copySourceRange!.isNotEmpty) {
            b.headers['x-amz-copy-source-range'] = input.copySourceRange!;
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
        if (input.copySourceSseCustomerAlgorithm != null) {
          if (input.copySourceSseCustomerAlgorithm!.isNotEmpty) {
            b.headers[
                    'x-amz-copy-source-server-side-encryption-customer-algorithm'] =
                input.copySourceSseCustomerAlgorithm!;
          }
        }
        if (input.copySourceSseCustomerKey != null) {
          if (input.copySourceSseCustomerKey!.isNotEmpty) {
            b.headers['x-amz-copy-source-server-side-encryption-customer-key'] =
                input.copySourceSseCustomerKey!;
          }
        }
        if (input.copySourceSseCustomerKeyMd5 != null) {
          if (input.copySourceSseCustomerKeyMd5!.isNotEmpty) {
            b.headers[
                    'x-amz-copy-source-server-side-encryption-customer-key-MD5'] =
                input.copySourceSseCustomerKeyMd5!;
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
        if (input.expectedSourceBucketOwner != null) {
          if (input.expectedSourceBucketOwner!.isNotEmpty) {
            b.headers['x-amz-source-expected-bucket-owner'] =
                input.expectedSourceBucketOwner!;
          }
        }
        if (input.partNumber != null) {
          b.queryParameters.add(
            'partNumber',
            input.partNumber!.toString(),
          );
        }
        b.queryParameters.add(
          'uploadId',
          input.uploadId,
        );
      });

  @override
  int successCode([UploadPartCopyOutput? output]) => 200;

  @override
  UploadPartCopyOutput buildOutput(
    CopyPartResult? payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      UploadPartCopyOutput.fromResponse(
        payload,
        response,
      );

  @override
  List<_i1.SmithyError> get errorTypes => const [];

  @override
  String get runtimeTypeName => 'UploadPartCopy';

  @override
  _i2.AWSRetryer get retryer => _i2.AWSRetryer();

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
  _i1.SmithyOperation<UploadPartCopyOutput> run(
    UploadPartCopyRequest input, {
    _i4.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i5.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i4.AWSHeaders.sdkInvocationId: _i4.uuid(secure: true)},
      },
    );
  }
}
