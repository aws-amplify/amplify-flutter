// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.operation.copy_object_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/endpoint_resolver.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/serializers.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_object_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_object_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_object_result.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_not_in_active_tier_error.dart';
import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

/// Creates a copy of an object that is already stored in Amazon S3.
///
/// You can store individual objects of up to 5 TB in Amazon S3. You create a copy of your object up to 5 GB in size in a single atomic action using this API. However, to copy an object greater than 5 GB, you must use the multipart upload Upload Part - Copy (UploadPartCopy) API. For more information, see [Copy Object Using the REST Multipart Upload API](https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjctsUsingRESTMPUapi.html).
///
/// All copy requests must be authenticated. Additionally, you must have _read_ access to the source object and _write_ access to the destination bucket. For more information, see [REST Authentication](https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html). Both the Region that you want to copy the object from and the Region that you want to copy the object to must be enabled for your account.
///
/// A copy request might return an error when Amazon S3 receives the copy request or while Amazon S3 is copying the files. If the error occurs before the copy action starts, you receive a standard Amazon S3 error. If the error occurs during the copy operation, the error response is embedded in the `200 OK` response. This means that a `200 OK` response can contain either a success or an error. If you call the S3 API directly, make sure to design your application to parse the contents of the response and handle it appropriately. If you use Amazon Web Services SDKs, SDKs handle this condition. The SDKs detect the embedded error and apply error handling per your configuration settings (including automatically retrying the request as appropriate). If the condition persists, the SDKs throws an exception (or, for the SDKs that don't use exceptions, they return the error).
///
/// If the copy is successful, you receive a response with information about the copied object.
///
/// If the request is an HTTP 1.1 request, the response is chunk encoded. If it were not, it would not contain the content-length, and you would need to read the entire body.
///
/// The copy request charge is based on the storage class and Region that you specify for the destination object. The request can also result in a data retrieval charge for the source if the source storage class bills for data retrieval. For pricing information, see [Amazon S3 pricing](http://aws.amazon.com/s3/pricing/).
///
/// Amazon S3 transfer acceleration does not support cross-Region copies. If you request a cross-Region copy using a transfer acceleration endpoint, you get a 400 `Bad Request` error. For more information, see [Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html).
///
/// Metadata
///
/// When copying an object, you can preserve all metadata (the default) or specify new metadata. However, the access control list (ACL) is not preserved and is set to private for the user making the request. To override the default ACL setting, specify a new ACL when generating a copy request. For more information, see [Using ACLs](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).
///
/// To specify whether you want the object metadata copied from the source object or replaced with metadata provided in the request, you can optionally add the `x-amz-metadata-directive` header. When you grant permissions, you can use the `s3:x-amz-metadata-directive` condition key to enforce certain metadata behavior when objects are uploaded. For more information, see [Specifying Conditions in a Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/amazon-s3-policy-keys.html) in the _Amazon S3 User Guide_. For a complete list of Amazon S3-specific condition keys, see [Actions, Resources, and Condition Keys for Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/list_amazons3.html).
///
/// `x-amz-website-redirect-location` is unique to each object and must be specified in the request headers to copy the value.
///
/// x-amz-copy-source-if Headers
///
/// To only copy an object under certain conditions, such as whether the `Etag` matches or whether the object was modified before or after a specified date, use the following request parameters:
///
/// *   `x-amz-copy-source-if-match`
///
/// *   `x-amz-copy-source-if-none-match`
///
/// *   `x-amz-copy-source-if-unmodified-since`
///
/// *   `x-amz-copy-source-if-modified-since`
///
///
/// If both the `x-amz-copy-source-if-match` and `x-amz-copy-source-if-unmodified-since` headers are present in the request and evaluate as follows, Amazon S3 returns `200 OK` and copies the data:
///
/// *   `x-amz-copy-source-if-match` condition evaluates to true
///
/// *   `x-amz-copy-source-if-unmodified-since` condition evaluates to false
///
///
/// If both the `x-amz-copy-source-if-none-match` and `x-amz-copy-source-if-modified-since` headers are present in the request and evaluate as follows, Amazon S3 returns the `412 Precondition Failed` response code:
///
/// *   `x-amz-copy-source-if-none-match` condition evaluates to false
///
/// *   `x-amz-copy-source-if-modified-since` condition evaluates to true
///
///
/// All headers with the `x-amz-` prefix, including `x-amz-copy-source`, must be signed.
///
/// Server-side encryption
///
/// Amazon S3 automatically encrypts all new objects that are copied to an S3 bucket. When copying an object, if you don't specify encryption information in your copy request, the encryption setting of the target object is set to the default encryption configuration of the destination bucket. By default, all buckets have a base level of encryption configuration that uses server-side encryption with Amazon S3 managed keys (SSE-S3). If the destination bucket has a default encryption configuration that uses server-side encryption with Key Management Service (KMS) keys (SSE-KMS), dual-layer server-side encryption with Amazon Web Services KMS keys (DSSE-KMS), or server-side encryption with customer-provided encryption keys (SSE-C), Amazon S3 uses the corresponding KMS key, or a customer-provided key to encrypt the target object copy.
///
/// When you perform a `CopyObject` operation, if you want to use a different type of encryption setting for the target object, you can use other appropriate encryption-related headers to encrypt the target object with a KMS key, an Amazon S3 managed key, or a customer-provided key. With server-side encryption, Amazon S3 encrypts your data as it writes your data to disks in its data centers and decrypts the data when you access it. If the encryption setting in your request is different from the default encryption configuration of the destination bucket, the encryption setting in your request takes precedence. If the source object for the copy is stored in Amazon S3 using SSE-C, you must provide the necessary encryption information in your request so that Amazon S3 can decrypt the object for copying. For more information about server-side encryption, see [Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html).
///
/// If a target object uses SSE-KMS, you can enable an S3 Bucket Key for the object. For more information, see [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) in the _Amazon S3 User Guide_.
///
/// Access Control List (ACL)-Specific Request Headers
///
/// When copying an object, you can optionally use headers to grant ACL-based permissions. By default, all objects are private. Only the owner has full access control. When adding a new object, you can grant permissions to individual Amazon Web Services accounts or to predefined groups that are defined by Amazon S3. These permissions are then added to the ACL on the object. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) and [Managing ACLs Using the REST API](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-using-rest-api.html).
///
/// If the bucket that you're copying objects to uses the bucket owner enforced setting for S3 Object Ownership, ACLs are disabled and no longer affect permissions. Buckets that use this setting only accept `PUT` requests that don't specify an ACL or `PUT` requests that specify bucket owner full control ACLs, such as the `bucket-owner-full-control` canned ACL or an equivalent form of this ACL expressed in the XML format.
///
/// For more information, see [Controlling ownership of objects and disabling ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html) in the _Amazon S3 User Guide_.
///
/// If your bucket uses the bucket owner enforced setting for Object Ownership, all objects written to the bucket by any account will be owned by the bucket owner.
///
/// Checksums
///
/// When copying an object, if it has a checksum, that checksum will be copied to the new object by default. When you copy the object over, you can optionally specify a different checksum algorithm to use with the `x-amz-checksum-algorithm` header.
///
/// Storage Class Options
///
/// You can use the `CopyObject` action to change the storage class of an object that is already stored in Amazon S3 by using the `StorageClass` parameter. For more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html) in the _Amazon S3 User Guide_.
///
/// If the source object's storage class is GLACIER, you must restore a copy of this object before you can use it as a source object for the copy operation. For more information, see [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html). For more information, see [Copying Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjectsExamples.html).
///
/// Versioning
///
/// By default, `x-amz-copy-source` header identifies the current version of an object to copy. If the current version is a delete marker, Amazon S3 behaves as if the object was deleted. To copy a different version, use the `versionId` subresource.
///
/// If you enable versioning on the target bucket, Amazon S3 generates a unique version ID for the object being copied. This version ID is different from the version ID of the source object. Amazon S3 returns the version ID of the copied object in the `x-amz-version-id` response header in the response.
///
/// If you do not enable versioning or suspend it on the target bucket, the version ID that Amazon S3 generates is always null.
///
/// The following operations are related to `CopyObject`:
///
/// *   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
///
/// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
class CopyObjectOperation extends _i1.HttpOperation<CopyObjectRequestPayload,
    CopyObjectRequest, CopyObjectResult, CopyObjectOutput> {
  /// Creates a copy of an object that is already stored in Amazon S3.
  ///
  /// You can store individual objects of up to 5 TB in Amazon S3. You create a copy of your object up to 5 GB in size in a single atomic action using this API. However, to copy an object greater than 5 GB, you must use the multipart upload Upload Part - Copy (UploadPartCopy) API. For more information, see [Copy Object Using the REST Multipart Upload API](https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjctsUsingRESTMPUapi.html).
  ///
  /// All copy requests must be authenticated. Additionally, you must have _read_ access to the source object and _write_ access to the destination bucket. For more information, see [REST Authentication](https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html). Both the Region that you want to copy the object from and the Region that you want to copy the object to must be enabled for your account.
  ///
  /// A copy request might return an error when Amazon S3 receives the copy request or while Amazon S3 is copying the files. If the error occurs before the copy action starts, you receive a standard Amazon S3 error. If the error occurs during the copy operation, the error response is embedded in the `200 OK` response. This means that a `200 OK` response can contain either a success or an error. If you call the S3 API directly, make sure to design your application to parse the contents of the response and handle it appropriately. If you use Amazon Web Services SDKs, SDKs handle this condition. The SDKs detect the embedded error and apply error handling per your configuration settings (including automatically retrying the request as appropriate). If the condition persists, the SDKs throws an exception (or, for the SDKs that don't use exceptions, they return the error).
  ///
  /// If the copy is successful, you receive a response with information about the copied object.
  ///
  /// If the request is an HTTP 1.1 request, the response is chunk encoded. If it were not, it would not contain the content-length, and you would need to read the entire body.
  ///
  /// The copy request charge is based on the storage class and Region that you specify for the destination object. The request can also result in a data retrieval charge for the source if the source storage class bills for data retrieval. For pricing information, see [Amazon S3 pricing](http://aws.amazon.com/s3/pricing/).
  ///
  /// Amazon S3 transfer acceleration does not support cross-Region copies. If you request a cross-Region copy using a transfer acceleration endpoint, you get a 400 `Bad Request` error. For more information, see [Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html).
  ///
  /// Metadata
  ///
  /// When copying an object, you can preserve all metadata (the default) or specify new metadata. However, the access control list (ACL) is not preserved and is set to private for the user making the request. To override the default ACL setting, specify a new ACL when generating a copy request. For more information, see [Using ACLs](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).
  ///
  /// To specify whether you want the object metadata copied from the source object or replaced with metadata provided in the request, you can optionally add the `x-amz-metadata-directive` header. When you grant permissions, you can use the `s3:x-amz-metadata-directive` condition key to enforce certain metadata behavior when objects are uploaded. For more information, see [Specifying Conditions in a Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/amazon-s3-policy-keys.html) in the _Amazon S3 User Guide_. For a complete list of Amazon S3-specific condition keys, see [Actions, Resources, and Condition Keys for Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/list_amazons3.html).
  ///
  /// `x-amz-website-redirect-location` is unique to each object and must be specified in the request headers to copy the value.
  ///
  /// x-amz-copy-source-if Headers
  ///
  /// To only copy an object under certain conditions, such as whether the `Etag` matches or whether the object was modified before or after a specified date, use the following request parameters:
  ///
  /// *   `x-amz-copy-source-if-match`
  ///
  /// *   `x-amz-copy-source-if-none-match`
  ///
  /// *   `x-amz-copy-source-if-unmodified-since`
  ///
  /// *   `x-amz-copy-source-if-modified-since`
  ///
  ///
  /// If both the `x-amz-copy-source-if-match` and `x-amz-copy-source-if-unmodified-since` headers are present in the request and evaluate as follows, Amazon S3 returns `200 OK` and copies the data:
  ///
  /// *   `x-amz-copy-source-if-match` condition evaluates to true
  ///
  /// *   `x-amz-copy-source-if-unmodified-since` condition evaluates to false
  ///
  ///
  /// If both the `x-amz-copy-source-if-none-match` and `x-amz-copy-source-if-modified-since` headers are present in the request and evaluate as follows, Amazon S3 returns the `412 Precondition Failed` response code:
  ///
  /// *   `x-amz-copy-source-if-none-match` condition evaluates to false
  ///
  /// *   `x-amz-copy-source-if-modified-since` condition evaluates to true
  ///
  ///
  /// All headers with the `x-amz-` prefix, including `x-amz-copy-source`, must be signed.
  ///
  /// Server-side encryption
  ///
  /// Amazon S3 automatically encrypts all new objects that are copied to an S3 bucket. When copying an object, if you don't specify encryption information in your copy request, the encryption setting of the target object is set to the default encryption configuration of the destination bucket. By default, all buckets have a base level of encryption configuration that uses server-side encryption with Amazon S3 managed keys (SSE-S3). If the destination bucket has a default encryption configuration that uses server-side encryption with Key Management Service (KMS) keys (SSE-KMS), dual-layer server-side encryption with Amazon Web Services KMS keys (DSSE-KMS), or server-side encryption with customer-provided encryption keys (SSE-C), Amazon S3 uses the corresponding KMS key, or a customer-provided key to encrypt the target object copy.
  ///
  /// When you perform a `CopyObject` operation, if you want to use a different type of encryption setting for the target object, you can use other appropriate encryption-related headers to encrypt the target object with a KMS key, an Amazon S3 managed key, or a customer-provided key. With server-side encryption, Amazon S3 encrypts your data as it writes your data to disks in its data centers and decrypts the data when you access it. If the encryption setting in your request is different from the default encryption configuration of the destination bucket, the encryption setting in your request takes precedence. If the source object for the copy is stored in Amazon S3 using SSE-C, you must provide the necessary encryption information in your request so that Amazon S3 can decrypt the object for copying. For more information about server-side encryption, see [Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html).
  ///
  /// If a target object uses SSE-KMS, you can enable an S3 Bucket Key for the object. For more information, see [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) in the _Amazon S3 User Guide_.
  ///
  /// Access Control List (ACL)-Specific Request Headers
  ///
  /// When copying an object, you can optionally use headers to grant ACL-based permissions. By default, all objects are private. Only the owner has full access control. When adding a new object, you can grant permissions to individual Amazon Web Services accounts or to predefined groups that are defined by Amazon S3. These permissions are then added to the ACL on the object. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) and [Managing ACLs Using the REST API](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-using-rest-api.html).
  ///
  /// If the bucket that you're copying objects to uses the bucket owner enforced setting for S3 Object Ownership, ACLs are disabled and no longer affect permissions. Buckets that use this setting only accept `PUT` requests that don't specify an ACL or `PUT` requests that specify bucket owner full control ACLs, such as the `bucket-owner-full-control` canned ACL or an equivalent form of this ACL expressed in the XML format.
  ///
  /// For more information, see [Controlling ownership of objects and disabling ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html) in the _Amazon S3 User Guide_.
  ///
  /// If your bucket uses the bucket owner enforced setting for Object Ownership, all objects written to the bucket by any account will be owned by the bucket owner.
  ///
  /// Checksums
  ///
  /// When copying an object, if it has a checksum, that checksum will be copied to the new object by default. When you copy the object over, you can optionally specify a different checksum algorithm to use with the `x-amz-checksum-algorithm` header.
  ///
  /// Storage Class Options
  ///
  /// You can use the `CopyObject` action to change the storage class of an object that is already stored in Amazon S3 by using the `StorageClass` parameter. For more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html) in the _Amazon S3 User Guide_.
  ///
  /// If the source object's storage class is GLACIER, you must restore a copy of this object before you can use it as a source object for the copy operation. For more information, see [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html). For more information, see [Copying Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjectsExamples.html).
  ///
  /// Versioning
  ///
  /// By default, `x-amz-copy-source` header identifies the current version of an object to copy. If the current version is a delete marker, Amazon S3 behaves as if the object was deleted. To copy a different version, use the `versionId` subresource.
  ///
  /// If you enable versioning on the target bucket, Amazon S3 generates a unique version ID for the object being copied. This version ID is different from the version ID of the source object. Amazon S3 returns the version ID of the copied object in the `x-amz-version-id` response header in the response.
  ///
  /// If you do not enable versioning or suspend it on the target bucket, the version ID that Amazon S3 generates is always null.
  ///
  /// The following operations are related to `CopyObject`:
  ///
  /// *   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
  ///
  /// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
  CopyObjectOperation({
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
      _i1.HttpProtocol<CopyObjectRequestPayload, CopyObjectRequest,
          CopyObjectResult, CopyObjectOutput>> protocols = [
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
  _i1.HttpRequest buildRequest(CopyObjectRequest input) => _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}/{Key+}?x-id=CopyObject'
            : r'/{Key+}?x-id=CopyObject';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.acl != null) {
          b.headers['x-amz-acl'] = input.acl!.value;
        }
        if (input.cacheControl != null) {
          if (input.cacheControl!.isNotEmpty) {
            b.headers['Cache-Control'] = input.cacheControl!;
          }
        }
        if (input.checksumAlgorithm != null) {
          b.headers['x-amz-checksum-algorithm'] =
              input.checksumAlgorithm!.value;
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
        if (input.contentType != null) {
          if (input.contentType!.isNotEmpty) {
            b.headers['Content-Type'] = input.contentType!;
          }
        }
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
        if (input.metadataDirective != null) {
          b.headers['x-amz-metadata-directive'] =
              input.metadataDirective!.value;
        }
        if (input.taggingDirective != null) {
          b.headers['x-amz-tagging-directive'] = input.taggingDirective!.value;
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
        if (input.expectedSourceBucketOwner != null) {
          if (input.expectedSourceBucketOwner!.isNotEmpty) {
            b.headers['x-amz-source-expected-bucket-owner'] =
                input.expectedSourceBucketOwner!;
          }
        }
        if (input.metadata != null) {
          for (var entry in input.metadata!.toMap().entries) {
            if (entry.value.isNotEmpty) {
              b.headers['x-amz-meta-${entry.key}'] = entry.value;
            }
          }
        }
      });
  @override
  int successCode([CopyObjectOutput? output]) => 200;
  @override
  CopyObjectOutput buildOutput(
    CopyObjectResult? payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      CopyObjectOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<ObjectNotInActiveTierError, ObjectNotInActiveTierError>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.s3',
            shape: 'ObjectNotInActiveTierError',
          ),
          _i1.ErrorKind.client,
          ObjectNotInActiveTierError,
          builder: ObjectNotInActiveTierError.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'CopyObject';
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
  _i1.SmithyOperation<CopyObjectOutput> run(
    CopyObjectRequest input, {
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
