// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.operation.write_get_object_response_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart' as _i8;
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/write_get_object_response_request.dart'
    as _i3;

/// Passes transformed objects to a `GetObject` operation when using Object Lambda access points. For information about Object Lambda access points, see [Transforming objects with Object Lambda access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html) in the _Amazon S3 User Guide_.
///
/// This operation supports metadata that can be returned by [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html), in addition to `RequestRoute`, `RequestToken`, `StatusCode`, `ErrorCode`, and `ErrorMessage`. The `GetObject` response metadata is supported so that the `WriteGetObjectResponse` caller, typically an Lambda function, can provide the same metadata when it internally invokes `GetObject`. When `WriteGetObjectResponse` is called by a customer-owned Lambda function, the metadata returned to the end user `GetObject` call might differ from what Amazon S3 would normally return.
///
/// You can include any number of metadata headers. When including a metadata header, it should be prefaced with `x-amz-meta`. For example, `x-amz-meta-my-custom-header: MyCustomValue`. The primary use case for this is to forward `GetObject` metadata.
///
/// Amazon Web Services provides some prebuilt Lambda functions that you can use with S3 Object Lambda to detect and redact personally identifiable information (PII) and decompress S3 objects. These Lambda functions are available in the Amazon Web Services Serverless Application Repository, and can be selected through the Amazon Web Services Management Console when you create your Object Lambda access point.
///
/// Example 1: PII Access Control - This Lambda function uses Amazon Comprehend, a natural language processing (NLP) service using machine learning to find insights and relationships in text. It automatically detects personally identifiable information (PII) such as names, addresses, dates, credit card numbers, and social security numbers from documents in your Amazon S3 bucket.
///
/// Example 2: PII Redaction - This Lambda function uses Amazon Comprehend, a natural language processing (NLP) service using machine learning to find insights and relationships in text. It automatically redacts personally identifiable information (PII) such as names, addresses, dates, credit card numbers, and social security numbers from documents in your Amazon S3 bucket.
///
/// Example 3: Decompression - The Lambda function S3ObjectLambdaDecompression, is equipped to decompress objects stored in S3 in one of six compressed file formats including bzip2, gzip, snappy, zlib, zstandard and ZIP.
///
/// For information on how to view and use these functions, see [Using Amazon Web Services built Lambda functions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-examples.html) in the _Amazon S3 User Guide_.
class WriteGetObjectResponseOperation extends _i1.HttpOperation<
    _i2.Stream<List<int>>,
    _i3.WriteGetObjectResponseRequest,
    _i1.Unit,
    _i1.Unit> {
  /// Passes transformed objects to a `GetObject` operation when using Object Lambda access points. For information about Object Lambda access points, see [Transforming objects with Object Lambda access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html) in the _Amazon S3 User Guide_.
  ///
  /// This operation supports metadata that can be returned by [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html), in addition to `RequestRoute`, `RequestToken`, `StatusCode`, `ErrorCode`, and `ErrorMessage`. The `GetObject` response metadata is supported so that the `WriteGetObjectResponse` caller, typically an Lambda function, can provide the same metadata when it internally invokes `GetObject`. When `WriteGetObjectResponse` is called by a customer-owned Lambda function, the metadata returned to the end user `GetObject` call might differ from what Amazon S3 would normally return.
  ///
  /// You can include any number of metadata headers. When including a metadata header, it should be prefaced with `x-amz-meta`. For example, `x-amz-meta-my-custom-header: MyCustomValue`. The primary use case for this is to forward `GetObject` metadata.
  ///
  /// Amazon Web Services provides some prebuilt Lambda functions that you can use with S3 Object Lambda to detect and redact personally identifiable information (PII) and decompress S3 objects. These Lambda functions are available in the Amazon Web Services Serverless Application Repository, and can be selected through the Amazon Web Services Management Console when you create your Object Lambda access point.
  ///
  /// Example 1: PII Access Control - This Lambda function uses Amazon Comprehend, a natural language processing (NLP) service using machine learning to find insights and relationships in text. It automatically detects personally identifiable information (PII) such as names, addresses, dates, credit card numbers, and social security numbers from documents in your Amazon S3 bucket.
  ///
  /// Example 2: PII Redaction - This Lambda function uses Amazon Comprehend, a natural language processing (NLP) service using machine learning to find insights and relationships in text. It automatically redacts personally identifiable information (PII) such as names, addresses, dates, credit card numbers, and social security numbers from documents in your Amazon S3 bucket.
  ///
  /// Example 3: Decompression - The Lambda function S3ObjectLambdaDecompression, is equipped to decompress objects stored in S3 in one of six compressed file formats including bzip2, gzip, snappy, zlib, zstandard and ZIP.
  ///
  /// For information on how to view and use these functions, see [Using Amazon Web Services built Lambda functions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-examples.html) in the _Amazon S3 User Guide_.
  WriteGetObjectResponseOperation({
    required String region,
    Uri? baseUri,
    _i4.S3ClientConfig s3ClientConfig = const _i4.S3ClientConfig(),
    _i5.AWSCredentialsProvider credentialsProvider =
        const _i5.AWSCredentialsProvider.environment(),
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
      _i1.HttpProtocol<_i2.Stream<List<int>>, _i3.WriteGetObjectResponseRequest,
          _i1.Unit, _i1.Unit>> protocols = [
    _i4.RestXmlProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            _i4.WithSigV4(
              region: _region,
              service: _i7.AWSService.s3,
              credentialsProvider: _credentialsProvider,
              serviceConfiguration: _s3ClientConfig.signerConfiguration ??
                  _i5.S3ServiceConfiguration(),
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
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

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i3.WriteGetObjectResponseRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/WriteGetObjectResponse?x-id=WriteGetObjectResponse';
        b.hostPrefix = '{RequestRoute}.';
        if (input.requestRoute.isNotEmpty) {
          b.headers['x-amz-request-route'] = input.requestRoute;
        }
        if (input.requestToken.isNotEmpty) {
          b.headers['x-amz-request-token'] = input.requestToken;
        }
        if (input.statusCode != null) {
          b.headers['x-amz-fwd-status'] = input.statusCode!.toString();
        }
        if (input.errorCode != null) {
          if (input.errorCode!.isNotEmpty) {
            b.headers['x-amz-fwd-error-code'] = input.errorCode!;
          }
        }
        if (input.errorMessage != null) {
          if (input.errorMessage!.isNotEmpty) {
            b.headers['x-amz-fwd-error-message'] = input.errorMessage!;
          }
        }
        if (input.acceptRanges != null) {
          if (input.acceptRanges!.isNotEmpty) {
            b.headers['x-amz-fwd-header-accept-ranges'] = input.acceptRanges!;
          }
        }
        if (input.cacheControl != null) {
          if (input.cacheControl!.isNotEmpty) {
            b.headers['x-amz-fwd-header-Cache-Control'] = input.cacheControl!;
          }
        }
        if (input.contentDisposition != null) {
          if (input.contentDisposition!.isNotEmpty) {
            b.headers['x-amz-fwd-header-Content-Disposition'] =
                input.contentDisposition!;
          }
        }
        if (input.contentEncoding != null) {
          if (input.contentEncoding!.isNotEmpty) {
            b.headers['x-amz-fwd-header-Content-Encoding'] =
                input.contentEncoding!;
          }
        }
        if (input.contentLanguage != null) {
          if (input.contentLanguage!.isNotEmpty) {
            b.headers['x-amz-fwd-header-Content-Language'] =
                input.contentLanguage!;
          }
        }
        if (input.contentLength != null) {
          b.headers['Content-Length'] = input.contentLength!.toString();
        }
        if (input.contentRange != null) {
          if (input.contentRange!.isNotEmpty) {
            b.headers['x-amz-fwd-header-Content-Range'] = input.contentRange!;
          }
        }
        if (input.contentType != null) {
          if (input.contentType!.isNotEmpty) {
            b.headers['x-amz-fwd-header-Content-Type'] = input.contentType!;
          }
        }
        if (input.checksumCrc32 != null) {
          if (input.checksumCrc32!.isNotEmpty) {
            b.headers['x-amz-fwd-header-x-amz-checksum-crc32'] =
                input.checksumCrc32!;
          }
        }
        if (input.checksumCrc32C != null) {
          if (input.checksumCrc32C!.isNotEmpty) {
            b.headers['x-amz-fwd-header-x-amz-checksum-crc32c'] =
                input.checksumCrc32C!;
          }
        }
        if (input.checksumSha1 != null) {
          if (input.checksumSha1!.isNotEmpty) {
            b.headers['x-amz-fwd-header-x-amz-checksum-sha1'] =
                input.checksumSha1!;
          }
        }
        if (input.checksumSha256 != null) {
          if (input.checksumSha256!.isNotEmpty) {
            b.headers['x-amz-fwd-header-x-amz-checksum-sha256'] =
                input.checksumSha256!;
          }
        }
        if (input.deleteMarker != null) {
          b.headers['x-amz-fwd-header-x-amz-delete-marker'] =
              input.deleteMarker!.toString();
        }
        if (input.eTag != null) {
          if (input.eTag!.isNotEmpty) {
            b.headers['x-amz-fwd-header-ETag'] = input.eTag!;
          }
        }
        if (input.expires != null) {
          b.headers['x-amz-fwd-header-Expires'] = _i1.Timestamp(input.expires!)
              .format(_i1.TimestampFormat.httpDate)
              .toString();
        }
        if (input.expiration != null) {
          if (input.expiration!.isNotEmpty) {
            b.headers['x-amz-fwd-header-x-amz-expiration'] = input.expiration!;
          }
        }
        if (input.lastModified != null) {
          b.headers['x-amz-fwd-header-Last-Modified'] =
              _i1.Timestamp(input.lastModified!)
                  .format(_i1.TimestampFormat.httpDate)
                  .toString();
        }
        if (input.missingMeta != null) {
          b.headers['x-amz-fwd-header-x-amz-missing-meta'] =
              input.missingMeta!.toString();
        }
        if (input.objectLockMode != null) {
          b.headers['x-amz-fwd-header-x-amz-object-lock-mode'] =
              input.objectLockMode!.value;
        }
        if (input.objectLockLegalHoldStatus != null) {
          b.headers['x-amz-fwd-header-x-amz-object-lock-legal-hold'] =
              input.objectLockLegalHoldStatus!.value;
        }
        if (input.objectLockRetainUntilDate != null) {
          b.headers['x-amz-fwd-header-x-amz-object-lock-retain-until-date'] =
              _i1.Timestamp(input.objectLockRetainUntilDate!)
                  .format(_i1.TimestampFormat.dateTime)
                  .toString();
        }
        if (input.partsCount != null) {
          b.headers['x-amz-fwd-header-x-amz-mp-parts-count'] =
              input.partsCount!.toString();
        }
        if (input.replicationStatus != null) {
          b.headers['x-amz-fwd-header-x-amz-replication-status'] =
              input.replicationStatus!.value;
        }
        if (input.requestCharged != null) {
          b.headers['x-amz-fwd-header-x-amz-request-charged'] =
              input.requestCharged!.value;
        }
        if (input.restore != null) {
          if (input.restore!.isNotEmpty) {
            b.headers['x-amz-fwd-header-x-amz-restore'] = input.restore!;
          }
        }
        if (input.serverSideEncryption != null) {
          b.headers['x-amz-fwd-header-x-amz-server-side-encryption'] =
              input.serverSideEncryption!.value;
        }
        if (input.sseCustomerAlgorithm != null) {
          if (input.sseCustomerAlgorithm!.isNotEmpty) {
            b.headers[
                    'x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm'] =
                input.sseCustomerAlgorithm!;
          }
        }
        if (input.ssekmsKeyId != null) {
          if (input.ssekmsKeyId!.isNotEmpty) {
            b.headers[
                    'x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id'] =
                input.ssekmsKeyId!;
          }
        }
        if (input.sseCustomerKeyMd5 != null) {
          if (input.sseCustomerKeyMd5!.isNotEmpty) {
            b.headers[
                    'x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5'] =
                input.sseCustomerKeyMd5!;
          }
        }
        if (input.storageClass != null) {
          b.headers['x-amz-fwd-header-x-amz-storage-class'] =
              input.storageClass!.value;
        }
        if (input.tagCount != null) {
          b.headers['x-amz-fwd-header-x-amz-tagging-count'] =
              input.tagCount!.toString();
        }
        if (input.versionId != null) {
          if (input.versionId!.isNotEmpty) {
            b.headers['x-amz-fwd-header-x-amz-version-id'] = input.versionId!;
          }
        }
        if (input.bucketKeyEnabled != null) {
          b.headers[
                  'x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled'] =
              input.bucketKeyEnabled!.toString();
        }
        if (input.metadata != null) {
          for (var entry in input.metadata!.toMap().entries) {
            if (entry.value.isNotEmpty) {
              b.headers['x-amz-meta-' + entry.key] = entry.value;
            }
          }
        }
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'WriteGetObjectResponse';
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
  _i1.SmithyOperation<_i1.Unit> run(
    _i3.WriteGetObjectResponseRequest input, {
    _i7.AWSHttpClient? client,
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
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
