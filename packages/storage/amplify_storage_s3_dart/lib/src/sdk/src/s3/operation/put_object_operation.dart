// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.operation.put_object_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/endpoint_resolver.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/serializers.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/put_object_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/put_object_request.dart';
import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Adds an object to a bucket.
///
/// *   Amazon S3 never adds partial objects; if you receive a success response, Amazon S3 added the entire object to the bucket. You cannot use `PutObject` to only update a single piece of metadata for an existing object. You must put the entire object with updated metadata if you want to update some values.
///
/// *   If your bucket uses the bucket owner enforced setting for Object Ownership, ACLs are disabled and no longer affect permissions. All objects written to the bucket by any account will be owned by the bucket owner.
///
/// *   **Directory buckets** \- For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format `https://_bucket_name_.s3express-_az_id_._region_.amazonaws.com/_key-name_` . Path-style requests are not supported. For more information, see [Regional and Zonal endpoints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html) in the _Amazon S3 User Guide_.
///
///
/// Amazon S3 is a distributed system. If it receives multiple write requests for the same object simultaneously, it overwrites all but the last object written. However, Amazon S3 provides features that can modify this behavior:
///
/// *   **S3 Object Lock** \- To prevent objects from being deleted or overwritten, you can use [Amazon S3 Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html) in the _Amazon S3 User Guide_.
///
///     This functionality is not supported for directory buckets.
///
/// *   **S3 Versioning** \- When you enable versioning for a bucket, if Amazon S3 receives multiple write requests for the same object simultaneously, it stores all versions of the objects. For each write request that is made to the same object, Amazon S3 automatically generates a unique version ID of that object being stored in Amazon S3. You can retrieve, replace, or delete any version of the object. For more information about versioning, see [Adding Objects to Versioning-Enabled Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/AddingObjectstoVersioningEnabledBuckets.html) in the _Amazon S3 User Guide_. For information about returning the versioning state of a bucket, see [GetBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html).
///
///     This functionality is not supported for directory buckets.
///
///
/// Permissions
///
/// *   **General purpose bucket permissions** \- The following permissions are required in your policies when your `PutObject` request includes specific headers.
///
///     *   **`s3:PutObject`** \- To successfully complete the `PutObject` request, you must always have the `s3:PutObject` permission on a bucket to add an object to it.
///
///     *   **`s3:PutObjectAcl`** \- To successfully change the objects ACL of your `PutObject` request, you must have the `s3:PutObjectAcl`.
///
///     *   **`s3:PutObjectTagging`** \- To successfully set the tag-set with your `PutObject` request, you must have the `s3:PutObjectTagging`.
///
/// *   **Directory bucket permissions** \- To grant access to this API operation on a directory bucket, we recommend that you use the [`CreateSession`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html) API operation for session-based authorization. Specifically, you grant the `s3express:CreateSession` permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the `CreateSession` API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another `CreateSession` API call to generate a new session token for use. Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see [`CreateSession`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html) .
///
///
/// Data integrity with Content-MD5
///
/// *   **General purpose bucket** \- To ensure that data is not corrupted traversing the network, use the `Content-MD5` header. When you use this header, Amazon S3 checks the object against the provided MD5 value and, if they do not match, Amazon S3 returns an error. Alternatively, when the object's ETag is its MD5 digest, you can calculate the MD5 while putting the object to Amazon S3 and compare the returned ETag to the calculated MD5 value.
///
/// *   **Directory bucket** \- This functionality is not supported for directory buckets.
///
///
/// HTTP Host header syntax
///
/// **Directory buckets** \- The HTTP Host header syntax is `_Bucket_name_.s3express-_az_id_._region_.amazonaws.com`.
///
/// For more information about related Amazon S3 APIs, see the following:
///
/// *   [CopyObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)
///
/// *   [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)
class PutObjectOperation extends _i1.HttpOperation<_i2.Stream<List<int>>,
    PutObjectRequest, PutObjectOutputPayload, PutObjectOutput> {
  /// Adds an object to a bucket.
  ///
  /// *   Amazon S3 never adds partial objects; if you receive a success response, Amazon S3 added the entire object to the bucket. You cannot use `PutObject` to only update a single piece of metadata for an existing object. You must put the entire object with updated metadata if you want to update some values.
  ///
  /// *   If your bucket uses the bucket owner enforced setting for Object Ownership, ACLs are disabled and no longer affect permissions. All objects written to the bucket by any account will be owned by the bucket owner.
  ///
  /// *   **Directory buckets** \- For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format `https://_bucket_name_.s3express-_az_id_._region_.amazonaws.com/_key-name_` . Path-style requests are not supported. For more information, see [Regional and Zonal endpoints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html) in the _Amazon S3 User Guide_.
  ///
  ///
  /// Amazon S3 is a distributed system. If it receives multiple write requests for the same object simultaneously, it overwrites all but the last object written. However, Amazon S3 provides features that can modify this behavior:
  ///
  /// *   **S3 Object Lock** \- To prevent objects from being deleted or overwritten, you can use [Amazon S3 Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html) in the _Amazon S3 User Guide_.
  ///
  ///     This functionality is not supported for directory buckets.
  ///
  /// *   **S3 Versioning** \- When you enable versioning for a bucket, if Amazon S3 receives multiple write requests for the same object simultaneously, it stores all versions of the objects. For each write request that is made to the same object, Amazon S3 automatically generates a unique version ID of that object being stored in Amazon S3. You can retrieve, replace, or delete any version of the object. For more information about versioning, see [Adding Objects to Versioning-Enabled Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/AddingObjectstoVersioningEnabledBuckets.html) in the _Amazon S3 User Guide_. For information about returning the versioning state of a bucket, see [GetBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html).
  ///
  ///     This functionality is not supported for directory buckets.
  ///
  ///
  /// Permissions
  ///
  /// *   **General purpose bucket permissions** \- The following permissions are required in your policies when your `PutObject` request includes specific headers.
  ///
  ///     *   **`s3:PutObject`** \- To successfully complete the `PutObject` request, you must always have the `s3:PutObject` permission on a bucket to add an object to it.
  ///
  ///     *   **`s3:PutObjectAcl`** \- To successfully change the objects ACL of your `PutObject` request, you must have the `s3:PutObjectAcl`.
  ///
  ///     *   **`s3:PutObjectTagging`** \- To successfully set the tag-set with your `PutObject` request, you must have the `s3:PutObjectTagging`.
  ///
  /// *   **Directory bucket permissions** \- To grant access to this API operation on a directory bucket, we recommend that you use the [`CreateSession`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html) API operation for session-based authorization. Specifically, you grant the `s3express:CreateSession` permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the `CreateSession` API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another `CreateSession` API call to generate a new session token for use. Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see [`CreateSession`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html) .
  ///
  ///
  /// Data integrity with Content-MD5
  ///
  /// *   **General purpose bucket** \- To ensure that data is not corrupted traversing the network, use the `Content-MD5` header. When you use this header, Amazon S3 checks the object against the provided MD5 value and, if they do not match, Amazon S3 returns an error. Alternatively, when the object's ETag is its MD5 digest, you can calculate the MD5 while putting the object to Amazon S3 and compare the returned ETag to the calculated MD5 value.
  ///
  /// *   **Directory bucket** \- This functionality is not supported for directory buckets.
  ///
  ///
  /// HTTP Host header syntax
  ///
  /// **Directory buckets** \- The HTTP Host header syntax is `_Bucket_name_.s3express-_az_id_._region_.amazonaws.com`.
  ///
  /// For more information about related Amazon S3 APIs, see the following:
  ///
  /// *   [CopyObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)
  ///
  /// *   [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)
  PutObjectOperation({
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
      _i1.HttpProtocol<_i2.Stream<List<int>>, PutObjectRequest,
          PutObjectOutputPayload, PutObjectOutput>> protocols = [
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
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
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
  _i1.HttpRequest buildRequest(PutObjectRequest input) => _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}/{Key+}?x-id=PutObject'
            : r'/{Key+}?x-id=PutObject';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.acl != null) {
          b.headers['x-amz-acl'] = input.acl!.value;
        }
        if (input.cacheControl != null) {
          if (input.cacheControl!.isNotEmpty) {
            b.headers['Cache-Control'] = input.cacheControl!;
          }
        }
        if (input.contentDisposition != null) {
          if (input.contentDisposition!.isNotEmpty) {
            b.headers['Content-Disposition'] = input.contentDisposition!;
          }
        }
        if (input.contentEncoding != null) {
          if (input.contentEncoding!.isNotEmpty) {
            b.headers['Content-Encoding'] = input.contentEncoding!;
          }
        }
        if (input.contentLanguage != null) {
          if (input.contentLanguage!.isNotEmpty) {
            b.headers['Content-Language'] = input.contentLanguage!;
          }
        }
        if (input.contentLength != null) {
          b.headers['Content-Length'] = input.contentLength!.toString();
        }
        if (input.contentMd5 != null) {
          if (input.contentMd5!.isNotEmpty) {
            b.headers['Content-MD5'] = input.contentMd5!;
          }
        }
        if (input.contentType != null) {
          if (input.contentType!.isNotEmpty) {
            b.headers['Content-Type'] = input.contentType!;
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
        if (input.expires != null) {
          b.headers['Expires'] = _i1.Timestamp(input.expires!)
              .format(_i1.TimestampFormat.httpDate)
              .toString();
        }
        if (input.grantFullControl != null) {
          if (input.grantFullControl!.isNotEmpty) {
            b.headers['x-amz-grant-full-control'] = input.grantFullControl!;
          }
        }
        if (input.grantRead != null) {
          if (input.grantRead!.isNotEmpty) {
            b.headers['x-amz-grant-read'] = input.grantRead!;
          }
        }
        if (input.grantReadAcp != null) {
          if (input.grantReadAcp!.isNotEmpty) {
            b.headers['x-amz-grant-read-acp'] = input.grantReadAcp!;
          }
        }
        if (input.grantWriteAcp != null) {
          if (input.grantWriteAcp!.isNotEmpty) {
            b.headers['x-amz-grant-write-acp'] = input.grantWriteAcp!;
          }
        }
        if (input.serverSideEncryption != null) {
          b.headers['x-amz-server-side-encryption'] =
              input.serverSideEncryption!.value;
        }
        if (input.storageClass != null) {
          b.headers['x-amz-storage-class'] = input.storageClass!.value;
        }
        if (input.websiteRedirectLocation != null) {
          if (input.websiteRedirectLocation!.isNotEmpty) {
            b.headers['x-amz-website-redirect-location'] =
                input.websiteRedirectLocation!;
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
        if (input.ssekmsKeyId != null) {
          if (input.ssekmsKeyId!.isNotEmpty) {
            b.headers['x-amz-server-side-encryption-aws-kms-key-id'] =
                input.ssekmsKeyId!;
          }
        }
        if (input.ssekmsEncryptionContext != null) {
          if (input.ssekmsEncryptionContext!.isNotEmpty) {
            b.headers['x-amz-server-side-encryption-context'] =
                input.ssekmsEncryptionContext!;
          }
        }
        if (input.bucketKeyEnabled != null) {
          b.headers['x-amz-server-side-encryption-bucket-key-enabled'] =
              input.bucketKeyEnabled!.toString();
        }
        if (input.requestPayer != null) {
          b.headers['x-amz-request-payer'] = input.requestPayer!.value;
        }
        if (input.tagging != null) {
          if (input.tagging!.isNotEmpty) {
            b.headers['x-amz-tagging'] = input.tagging!;
          }
        }
        if (input.objectLockMode != null) {
          b.headers['x-amz-object-lock-mode'] = input.objectLockMode!.value;
        }
        if (input.objectLockRetainUntilDate != null) {
          b.headers['x-amz-object-lock-retain-until-date'] =
              _i1.Timestamp(input.objectLockRetainUntilDate!)
                  .format(_i1.TimestampFormat.dateTime)
                  .toString();
        }
        if (input.objectLockLegalHoldStatus != null) {
          b.headers['x-amz-object-lock-legal-hold'] =
              input.objectLockLegalHoldStatus!.value;
        }
        if (input.expectedBucketOwner != null) {
          if (input.expectedBucketOwner!.isNotEmpty) {
            b.headers['x-amz-expected-bucket-owner'] =
                input.expectedBucketOwner!;
          }
        }
        if (input.metadata != null) {
          for (var entry in input.metadata!.toMap().entries) {
            if (entry.value.isNotEmpty) {
              b.headers['x-amz-meta-${entry.key}'] = entry.value;
            }
          }
        }
        if (input.checksumAlgorithm != null) {
          b.requestInterceptors
              .add(_i3.WithChecksum(input.checksumAlgorithm!.value));
        }
      });

  @override
  int successCode([PutObjectOutput? output]) => 200;

  @override
  PutObjectOutput buildOutput(
    PutObjectOutputPayload payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      PutObjectOutput.fromResponse(
        payload,
        response,
      );

  @override
  List<_i1.SmithyError> get errorTypes => const [];

  @override
  String get runtimeTypeName => 'PutObject';

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
  _i1.SmithyOperation<PutObjectOutput> run(
    PutObjectRequest input, {
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
