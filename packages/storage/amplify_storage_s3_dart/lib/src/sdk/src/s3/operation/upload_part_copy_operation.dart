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

/// Uploads a part by copying data from an existing object as data source. You specify the data source by adding the request header `x-amz-copy-source` in your request and a byte range by adding the request header `x-amz-copy-source-range` in your request.
///
/// For information about maximum and minimum part sizes and other multipart upload specifications, see [Multipart upload limits](https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html) in the _Amazon S3 User Guide_.
///
/// Instead of using an existing object as part data, you might use the [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html) action and provide data in your request.
///
/// You must initiate a multipart upload before you can upload any part. In response to your initiate request. Amazon S3 returns a unique identifier, the upload ID, that you must include in your upload part request.
///
/// For more information about using the `UploadPartCopy` operation, see the following:
///
/// *   For conceptual information about multipart uploads, see [Uploading Objects Using Multipart Upload](https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html) in the _Amazon S3 User Guide_.
///
/// *   For information about permissions required to use the multipart upload API, see [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html) in the _Amazon S3 User Guide_.
///
/// *   For information about copying objects using a single atomic action vs. a multipart upload, see [Operations on Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectOperations.html) in the _Amazon S3 User Guide_.
///
/// *   For information about using server-side encryption with customer-provided encryption keys with the `UploadPartCopy` operation, see [CopyObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html) and [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html).
///
///
/// Note the following additional considerations about the request headers `x-amz-copy-source-if-match`, `x-amz-copy-source-if-none-match`, `x-amz-copy-source-if-unmodified-since`, and `x-amz-copy-source-if-modified-since`:
///
/// *   **Consideration 1** \- If both of the `x-amz-copy-source-if-match` and `x-amz-copy-source-if-unmodified-since` headers are present in the request as follows:
///
///     `x-amz-copy-source-if-match` condition evaluates to `true`, and;
///
///     `x-amz-copy-source-if-unmodified-since` condition evaluates to `false`;
///
///     Amazon S3 returns `200 OK` and copies the data.
///
/// *   **Consideration 2** \- If both of the `x-amz-copy-source-if-none-match` and `x-amz-copy-source-if-modified-since` headers are present in the request as follows:
///
///     `x-amz-copy-source-if-none-match` condition evaluates to `false`, and;
///
///     `x-amz-copy-source-if-modified-since` condition evaluates to `true`;
///
///     Amazon S3 returns `412 Precondition Failed` response code.
///
///
/// Versioning
///
/// If your bucket has versioning enabled, you could have multiple versions of the same object. By default, `x-amz-copy-source` identifies the current version of the object to copy. If the current version is a delete marker and you don't specify a versionId in the `x-amz-copy-source`, Amazon S3 returns a 404 error, because the object does not exist. If you specify versionId in the `x-amz-copy-source` and the versionId is a delete marker, Amazon S3 returns an HTTP 400 error, because you are not allowed to specify a delete marker as a version for the `x-amz-copy-source`.
///
/// You can optionally specify a specific version of the source object to copy by adding the `versionId` subresource as shown in the following example:
///
/// `x-amz-copy-source: /bucket/object?versionId=version id`
///
/// Special errors
///
/// *   *   _Code: NoSuchUpload_
///
///     *   _Cause: The specified multipart upload does not exist. The upload ID might be invalid, or the multipart upload might have been aborted or completed._
///
///     *   _HTTP Status Code: 404 Not Found_
///
/// *   *   _Code: InvalidRequest_
///
///     *   _Cause: The specified copy source is not supported as a byte-range copy source._
///
///     *   _HTTP Status Code: 400 Bad Request_
///
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
  /// Uploads a part by copying data from an existing object as data source. You specify the data source by adding the request header `x-amz-copy-source` in your request and a byte range by adding the request header `x-amz-copy-source-range` in your request.
  ///
  /// For information about maximum and minimum part sizes and other multipart upload specifications, see [Multipart upload limits](https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html) in the _Amazon S3 User Guide_.
  ///
  /// Instead of using an existing object as part data, you might use the [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html) action and provide data in your request.
  ///
  /// You must initiate a multipart upload before you can upload any part. In response to your initiate request. Amazon S3 returns a unique identifier, the upload ID, that you must include in your upload part request.
  ///
  /// For more information about using the `UploadPartCopy` operation, see the following:
  ///
  /// *   For conceptual information about multipart uploads, see [Uploading Objects Using Multipart Upload](https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html) in the _Amazon S3 User Guide_.
  ///
  /// *   For information about permissions required to use the multipart upload API, see [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html) in the _Amazon S3 User Guide_.
  ///
  /// *   For information about copying objects using a single atomic action vs. a multipart upload, see [Operations on Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectOperations.html) in the _Amazon S3 User Guide_.
  ///
  /// *   For information about using server-side encryption with customer-provided encryption keys with the `UploadPartCopy` operation, see [CopyObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html) and [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html).
  ///
  ///
  /// Note the following additional considerations about the request headers `x-amz-copy-source-if-match`, `x-amz-copy-source-if-none-match`, `x-amz-copy-source-if-unmodified-since`, and `x-amz-copy-source-if-modified-since`:
  ///
  /// *   **Consideration 1** \- If both of the `x-amz-copy-source-if-match` and `x-amz-copy-source-if-unmodified-since` headers are present in the request as follows:
  ///
  ///     `x-amz-copy-source-if-match` condition evaluates to `true`, and;
  ///
  ///     `x-amz-copy-source-if-unmodified-since` condition evaluates to `false`;
  ///
  ///     Amazon S3 returns `200 OK` and copies the data.
  ///
  /// *   **Consideration 2** \- If both of the `x-amz-copy-source-if-none-match` and `x-amz-copy-source-if-modified-since` headers are present in the request as follows:
  ///
  ///     `x-amz-copy-source-if-none-match` condition evaluates to `false`, and;
  ///
  ///     `x-amz-copy-source-if-modified-since` condition evaluates to `true`;
  ///
  ///     Amazon S3 returns `412 Precondition Failed` response code.
  ///
  ///
  /// Versioning
  ///
  /// If your bucket has versioning enabled, you could have multiple versions of the same object. By default, `x-amz-copy-source` identifies the current version of the object to copy. If the current version is a delete marker and you don't specify a versionId in the `x-amz-copy-source`, Amazon S3 returns a 404 error, because the object does not exist. If you specify versionId in the `x-amz-copy-source` and the versionId is a delete marker, Amazon S3 returns an HTTP 400 error, because you are not allowed to specify a delete marker as a version for the `x-amz-copy-source`.
  ///
  /// You can optionally specify a specific version of the source object to copy by adding the `versionId` subresource as shown in the following example:
  ///
  /// `x-amz-copy-source: /bucket/object?versionId=version id`
  ///
  /// Special errors
  ///
  /// *   *   _Code: NoSuchUpload_
  ///
  ///     *   _Cause: The specified multipart upload does not exist. The upload ID might be invalid, or the multipart upload might have been aborted or completed._
  ///
  ///     *   _HTTP Status Code: 404 Not Found_
  ///
  /// *   *   _Code: InvalidRequest_
  ///
  ///     *   _Cause: The specified copy source is not supported as a byte-range copy source._
  ///
  ///     *   _HTTP Status Code: 400 Bad Request_
  ///
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
        const _i3.AWSCredentialsProvider.environment(),
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
