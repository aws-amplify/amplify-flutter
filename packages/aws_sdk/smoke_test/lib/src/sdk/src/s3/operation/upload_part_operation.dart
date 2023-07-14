// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.operation.upload_part_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i8;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart' as _i9;
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/upload_part_output.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/upload_part_request.dart'
    as _i3;

/// Uploads a part in a multipart upload.
///
/// In this operation, you provide part data in your request. However, you have an option to specify your existing Amazon S3 object as a data source for the part you are uploading. To upload a part from an existing object, you use the [UploadPartCopy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html) operation.
///
/// You must initiate a multipart upload (see [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)) before you can upload any part. In response to your initiate request, Amazon S3 returns an upload ID, a unique identifier, that you must include in your upload part request.
///
/// Part numbers can be any number from 1 to 10,000, inclusive. A part number uniquely identifies a part and also defines its position within the object being created. If you upload a new part using the same part number that was used with a previous part, the previously uploaded part is overwritten.
///
/// For information about maximum and minimum part sizes and other multipart upload specifications, see [Multipart upload limits](https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html) in the _Amazon S3 User Guide_.
///
/// To ensure that data is not corrupted when traversing the network, specify the `Content-MD5` header in the upload part request. Amazon S3 checks the part data against the provided MD5 value. If they do not match, Amazon S3 returns an error.
///
/// If the upload request is signed with Signature Version 4, then Amazon Web Services S3 uses the `x-amz-content-sha256` header as a checksum instead of `Content-MD5`. For more information see [Authenticating Requests: Using the Authorization Header (Amazon Web Services Signature Version 4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-auth-using-authorization-header.html).
///
/// **Note:** After you initiate multipart upload and upload one or more parts, you must either complete or abort multipart upload in order to stop getting charged for storage of the uploaded parts. Only after you either complete or abort multipart upload, Amazon S3 frees up the parts storage and stops charging you for the parts storage.
///
/// For more information on multipart uploads, go to [Multipart Upload Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html) in the _Amazon S3 User Guide_ .
///
/// For information on the permissions required to use the multipart upload API, go to [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html) in the _Amazon S3 User Guide_.
///
/// Server-side encryption is for data encryption at rest. Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts it when you access it. You have three mutually exclusive options to protect data using server-side encryption in Amazon S3, depending on how you choose to manage the encryption keys. Specifically, the encryption key options are Amazon S3 managed keys (SSE-S3), Amazon Web Services KMS keys (SSE-KMS), and Customer-Provided Keys (SSE-C). Amazon S3 encrypts data with server-side encryption using Amazon S3 managed keys (SSE-S3) by default. You can optionally tell Amazon S3 to encrypt data at rest using server-side encryption with other key options. The option you use depends on whether you want to use KMS keys (SSE-KMS) or provide your own encryption key (SSE-C). If you choose to provide your own encryption key, the request headers you provide in the request must match the headers you used in the request to initiate the upload by using [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html). For more information, go to [Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html) in the _Amazon S3 User Guide_.
///
/// Server-side encryption is supported by the S3 Multipart Upload actions. Unless you are using a customer-provided encryption key (SSE-C), you don't need to specify the encryption parameters in each UploadPart request. Instead, you only need to specify the server-side encryption parameters in the initial Initiate Multipart request. For more information, see [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html).
///
/// If you requested server-side encryption using a customer-provided encryption key (SSE-C) in your initiate multipart upload request, you must provide identical encryption information in each part upload using the following headers.
///
/// *   x-amz-server-side-encryption-customer-algorithm
///
/// *   x-amz-server-side-encryption-customer-key
///
/// *   x-amz-server-side-encryption-customer-key-MD5
///
///
/// `UploadPart` has the following special errors:
///
/// *   *   _Code: NoSuchUpload_
///
///     *   _Cause: The specified multipart upload does not exist. The upload ID might be invalid, or the multipart upload might have been aborted or completed._
///
///     *   _HTTP Status Code: 404 Not Found_
///
///     *   _SOAP Fault Code Prefix: Client_
///
///
/// The following operations are related to `UploadPart`:
///
/// *   [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)
///
/// *   [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)
///
/// *   [AbortMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)
///
/// *   [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)
///
/// *   [ListMultipartUploads](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)
class UploadPartOperation extends _i1.HttpOperation<_i2.Stream<List<int>>,
    _i3.UploadPartRequest, _i4.UploadPartOutputPayload, _i4.UploadPartOutput> {
  /// Uploads a part in a multipart upload.
  ///
  /// In this operation, you provide part data in your request. However, you have an option to specify your existing Amazon S3 object as a data source for the part you are uploading. To upload a part from an existing object, you use the [UploadPartCopy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html) operation.
  ///
  /// You must initiate a multipart upload (see [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)) before you can upload any part. In response to your initiate request, Amazon S3 returns an upload ID, a unique identifier, that you must include in your upload part request.
  ///
  /// Part numbers can be any number from 1 to 10,000, inclusive. A part number uniquely identifies a part and also defines its position within the object being created. If you upload a new part using the same part number that was used with a previous part, the previously uploaded part is overwritten.
  ///
  /// For information about maximum and minimum part sizes and other multipart upload specifications, see [Multipart upload limits](https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html) in the _Amazon S3 User Guide_.
  ///
  /// To ensure that data is not corrupted when traversing the network, specify the `Content-MD5` header in the upload part request. Amazon S3 checks the part data against the provided MD5 value. If they do not match, Amazon S3 returns an error.
  ///
  /// If the upload request is signed with Signature Version 4, then Amazon Web Services S3 uses the `x-amz-content-sha256` header as a checksum instead of `Content-MD5`. For more information see [Authenticating Requests: Using the Authorization Header (Amazon Web Services Signature Version 4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-auth-using-authorization-header.html).
  ///
  /// **Note:** After you initiate multipart upload and upload one or more parts, you must either complete or abort multipart upload in order to stop getting charged for storage of the uploaded parts. Only after you either complete or abort multipart upload, Amazon S3 frees up the parts storage and stops charging you for the parts storage.
  ///
  /// For more information on multipart uploads, go to [Multipart Upload Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html) in the _Amazon S3 User Guide_ .
  ///
  /// For information on the permissions required to use the multipart upload API, go to [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html) in the _Amazon S3 User Guide_.
  ///
  /// Server-side encryption is for data encryption at rest. Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts it when you access it. You have three mutually exclusive options to protect data using server-side encryption in Amazon S3, depending on how you choose to manage the encryption keys. Specifically, the encryption key options are Amazon S3 managed keys (SSE-S3), Amazon Web Services KMS keys (SSE-KMS), and Customer-Provided Keys (SSE-C). Amazon S3 encrypts data with server-side encryption using Amazon S3 managed keys (SSE-S3) by default. You can optionally tell Amazon S3 to encrypt data at rest using server-side encryption with other key options. The option you use depends on whether you want to use KMS keys (SSE-KMS) or provide your own encryption key (SSE-C). If you choose to provide your own encryption key, the request headers you provide in the request must match the headers you used in the request to initiate the upload by using [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html). For more information, go to [Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html) in the _Amazon S3 User Guide_.
  ///
  /// Server-side encryption is supported by the S3 Multipart Upload actions. Unless you are using a customer-provided encryption key (SSE-C), you don't need to specify the encryption parameters in each UploadPart request. Instead, you only need to specify the server-side encryption parameters in the initial Initiate Multipart request. For more information, see [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html).
  ///
  /// If you requested server-side encryption using a customer-provided encryption key (SSE-C) in your initiate multipart upload request, you must provide identical encryption information in each part upload using the following headers.
  ///
  /// *   x-amz-server-side-encryption-customer-algorithm
  ///
  /// *   x-amz-server-side-encryption-customer-key
  ///
  /// *   x-amz-server-side-encryption-customer-key-MD5
  ///
  ///
  /// `UploadPart` has the following special errors:
  ///
  /// *   *   _Code: NoSuchUpload_
  ///
  ///     *   _Cause: The specified multipart upload does not exist. The upload ID might be invalid, or the multipart upload might have been aborted or completed._
  ///
  ///     *   _HTTP Status Code: 404 Not Found_
  ///
  ///     *   _SOAP Fault Code Prefix: Client_
  ///
  ///
  /// The following operations are related to `UploadPart`:
  ///
  /// *   [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)
  ///
  /// *   [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)
  ///
  /// *   [AbortMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)
  ///
  /// *   [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)
  ///
  /// *   [ListMultipartUploads](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)
  UploadPartOperation({
    required String region,
    Uri? baseUri,
    _i5.S3ClientConfig s3ClientConfig = const _i5.S3ClientConfig(),
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
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
      _i1.HttpProtocol<_i2.Stream<List<int>>, _i3.UploadPartRequest,
          _i4.UploadPartOutputPayload, _i4.UploadPartOutput>> protocols = [
    _i5.RestXmlProtocol(
      serializers: _i7.serializers,
      builderFactories: _i7.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            _i5.WithSigV4(
              region: _region,
              service: _i8.AWSService.s3,
              credentialsProvider: _credentialsProvider,
              serviceConfiguration: _s3ClientConfig.signerConfiguration ??
                  _i6.S3ServiceConfiguration(),
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
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

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i3.UploadPartRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}/{Key+}?x-id=UploadPart'
            : r'/{Key+}?x-id=UploadPart';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.contentLength != null) {
          b.headers['Content-Length'] = input.contentLength!.toString();
        }
        if (input.contentMd5 != null) {
          if (input.contentMd5!.isNotEmpty) {
            b.headers['Content-MD5'] = input.contentMd5!;
          }
        }
        if (input.checksumAlgorithm != null) {
          b.headers['x-amz-sdk-checksum-algorithm'] =
              input.checksumAlgorithm!.value;
        }
        if (input.checksumCrc32 != null) {
          if (input.checksumCrc32!.isNotEmpty) {
            b.headers['x-amz-checksum-crc32'] = input.checksumCrc32!;
          }
        }
        if (input.checksumCrc32C != null) {
          if (input.checksumCrc32C!.isNotEmpty) {
            b.headers['x-amz-checksum-crc32c'] = input.checksumCrc32C!;
          }
        }
        if (input.checksumSha1 != null) {
          if (input.checksumSha1!.isNotEmpty) {
            b.headers['x-amz-checksum-sha1'] = input.checksumSha1!;
          }
        }
        if (input.checksumSha256 != null) {
          if (input.checksumSha256!.isNotEmpty) {
            b.headers['x-amz-checksum-sha256'] = input.checksumSha256!;
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
        if (input.checksumAlgorithm != null) {
          b.requestInterceptors
              .add(_i5.WithChecksum(input.checksumAlgorithm!.value));
        }
      });
  @override
  int successCode([_i4.UploadPartOutput? output]) => 200;
  @override
  _i4.UploadPartOutput buildOutput(
    _i4.UploadPartOutputPayload payload,
    _i8.AWSBaseHttpResponse response,
  ) =>
      _i4.UploadPartOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'UploadPart';
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
  _i1.SmithyOperation<_i4.UploadPartOutput> run(
    _i3.UploadPartRequest input, {
    _i8.AWSHttpClient? client,
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
        ...{_i8.AWSHeaders.sdkInvocationId: _i8.uuid(secure: true)},
      },
    );
  }
}
