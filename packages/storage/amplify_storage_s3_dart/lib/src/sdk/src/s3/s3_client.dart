// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.s3_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/abort_multipart_upload_output.dart'
    as _i5;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/abort_multipart_upload_request.dart'
    as _i6;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/complete_multipart_upload_output.dart'
    as _i8;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/complete_multipart_upload_request.dart'
    as _i9;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_object_output.dart'
    as _i11;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_object_request.dart'
    as _i12;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/create_multipart_upload_output.dart'
    as _i14;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/create_multipart_upload_request.dart'
    as _i15;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete_object_output.dart'
    as _i17;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete_object_request.dart'
    as _i18;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete_objects_output.dart'
    as _i20;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete_objects_request.dart'
    as _i21;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/get_object_output.dart'
    as _i23;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/get_object_request.dart'
    as _i24;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/head_object_output.dart'
    as _i26;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/head_object_request.dart'
    as _i27;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_multipart_uploads_output.dart'
    as _i29;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_multipart_uploads_request.dart'
    as _i30;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_objects_v2_output.dart'
    as _i32;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_objects_v2_request.dart'
    as _i33;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_parts_request.dart'
    as _i37;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/part.dart' as _i36;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/put_object_output.dart'
    as _i39;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/put_object_request.dart'
    as _i40;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/select_object_content_output.dart'
    as _i42;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/select_object_content_request.dart'
    as _i43;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/upload_part_copy_output.dart'
    as _i48;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/upload_part_copy_request.dart'
    as _i49;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/upload_part_output.dart'
    as _i45;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/upload_part_request.dart'
    as _i46;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/operation/abort_multipart_upload_operation.dart'
    as _i7;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/operation/complete_multipart_upload_operation.dart'
    as _i10;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/operation/copy_object_operation.dart'
    as _i13;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/operation/create_multipart_upload_operation.dart'
    as _i16;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/operation/delete_object_operation.dart'
    as _i19;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/operation/delete_objects_operation.dart'
    as _i22;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/operation/get_object_operation.dart'
    as _i25;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/operation/head_object_operation.dart'
    as _i28;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/operation/list_multipart_uploads_operation.dart'
    as _i31;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/operation/list_objects_v2_operation.dart'
    as _i34;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/operation/list_parts_operation.dart'
    as _i38;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/operation/put_object_operation.dart'
    as _i41;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/operation/select_object_content_operation.dart'
    as _i44;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/operation/upload_part_copy_operation.dart'
    as _i50;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/operation/upload_part_operation.dart'
    as _i47;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i35;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

class S3Client {
  const S3Client({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    _i2.S3ClientConfig s3ClientConfig = const _i2.S3ClientConfig(),
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
    List<_i4.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i4.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _s3ClientConfig = s3ClientConfig,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final _i2.S3ClientConfig _s3ClientConfig;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i4.HttpRequestInterceptor> _requestInterceptors;

  final List<_i4.HttpResponseInterceptor> _responseInterceptors;

  /// This action aborts a multipart upload. After a multipart upload is aborted, no additional parts can be uploaded using that upload ID. The storage consumed by any previously uploaded parts will be freed. However, if any part uploads are currently in progress, those part uploads might or might not succeed. As a result, it might be necessary to abort a given multipart upload multiple times in order to completely free all storage consumed by all parts.
  ///
  /// To verify that all parts have been removed, so you don't get charged for the part storage, you should call the [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html) action and ensure that the parts list is empty.
  ///
  /// For information about permissions required to use the multipart upload, see [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html).
  ///
  /// The following operations are related to `AbortMultipartUpload`:
  ///
  /// *   [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)
  ///
  /// *   [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)
  ///
  /// *   [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)
  ///
  /// *   [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)
  ///
  /// *   [ListMultipartUploads](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)
  _i4.SmithyOperation<_i5.AbortMultipartUploadOutput> abortMultipartUpload(
    _i6.AbortMultipartUploadRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i7.AbortMultipartUploadOperation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: s3ClientConfig ?? _s3ClientConfig,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Completes a multipart upload by assembling previously uploaded parts.
  ///
  /// You first initiate the multipart upload and then upload all parts using the [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html) operation. After successfully uploading all relevant parts of an upload, you call this action to complete the upload. Upon receiving this request, Amazon S3 concatenates all the parts in ascending order by part number to create a new object. In the Complete Multipart Upload request, you must provide the parts list. You must ensure that the parts list is complete. This action concatenates the parts that you provide in the list. For each part in the list, you must provide the part number and the `ETag` value, returned after that part was uploaded.
  ///
  /// Processing of a Complete Multipart Upload request could take several minutes to complete. After Amazon S3 begins processing the request, it sends an HTTP response header that specifies a 200 OK response. While processing is in progress, Amazon S3 periodically sends white space characters to keep the connection from timing out. Because a request could fail after the initial 200 OK response has been sent, it is important that you check the response body to determine whether the request succeeded.
  ///
  /// Note that if `CompleteMultipartUpload` fails, applications should be prepared to retry the failed requests. For more information, see [Amazon S3 Error Best Practices](https://docs.aws.amazon.com/AmazonS3/latest/dev/ErrorBestPractices.html).
  ///
  /// You cannot use `Content-Type: application/x-www-form-urlencoded` with Complete Multipart Upload requests. Also, if you do not provide a `Content-Type` header, `CompleteMultipartUpload` returns a 200 OK response.
  ///
  /// For more information about multipart uploads, see [Uploading Objects Using Multipart Upload](https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html).
  ///
  /// For information about permissions required to use the multipart upload API, see [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html).
  ///
  /// `CompleteMultipartUpload` has the following special errors:
  ///
  /// *   Error code: `EntityTooSmall`
  ///
  ///     *   Description: Your proposed upload is smaller than the minimum allowed object size. Each part must be at least 5 MB in size, except the last part.
  ///
  ///     *   400 Bad Request
  ///
  /// *   Error code: `InvalidPart`
  ///
  ///     *   Description: One or more of the specified parts could not be found. The part might not have been uploaded, or the specified entity tag might not have matched the part's entity tag.
  ///
  ///     *   400 Bad Request
  ///
  /// *   Error code: `InvalidPartOrder`
  ///
  ///     *   Description: The list of parts was not in ascending order. The parts list must be specified in order by part number.
  ///
  ///     *   400 Bad Request
  ///
  /// *   Error code: `NoSuchUpload`
  ///
  ///     *   Description: The specified multipart upload does not exist. The upload ID might be invalid, or the multipart upload might have been aborted or completed.
  ///
  ///     *   404 Not Found
  ///
  ///
  /// The following operations are related to `CompleteMultipartUpload`:
  ///
  /// *   [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)
  ///
  /// *   [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)
  ///
  /// *   [AbortMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)
  ///
  /// *   [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)
  ///
  /// *   [ListMultipartUploads](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)
  _i4.SmithyOperation<_i8.CompleteMultipartUploadOutput>
      completeMultipartUpload(
    _i9.CompleteMultipartUploadRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i10.CompleteMultipartUploadOperation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: s3ClientConfig ?? _s3ClientConfig,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a copy of an object that is already stored in Amazon S3.
  ///
  /// You can store individual objects of up to 5 TB in Amazon S3. You create a copy of your object up to 5 GB in size in a single atomic action using this API. However, to copy an object greater than 5 GB, you must use the multipart upload Upload Part - Copy (UploadPartCopy) API. For more information, see [Copy Object Using the REST Multipart Upload API](https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjctsUsingRESTMPUapi.html).
  ///
  /// All copy requests must be authenticated. Additionally, you must have _read_ access to the source object and _write_ access to the destination bucket. For more information, see [REST Authentication](https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html). Both the Region that you want to copy the object from and the Region that you want to copy the object to must be enabled for your account.
  ///
  /// A copy request might return an error when Amazon S3 receives the copy request or while Amazon S3 is copying the files. If the error occurs before the copy action starts, you receive a standard Amazon S3 error. If the error occurs during the copy operation, the error response is embedded in the `200 OK` response. This means that a `200 OK` response can contain either a success or an error. Design your application to parse the contents of the response and handle it appropriately.
  ///
  /// If the copy is successful, you receive a response with information about the copied object.
  ///
  /// If the request is an HTTP 1.1 request, the response is chunk encoded. If it were not, it would not contain the content-length, and you would need to read the entire body.
  ///
  /// The copy request charge is based on the storage class and Region that you specify for the destination object. For pricing information, see [Amazon S3 pricing](http://aws.amazon.com/s3/pricing/).
  ///
  /// Amazon S3 transfer acceleration does not support cross-Region copies. If you request a cross-Region copy using a transfer acceleration endpoint, you get a 400 `Bad Request` error. For more information, see [Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html).
  ///
  /// **Metadata**
  ///
  /// When copying an object, you can preserve all metadata (default) or specify new metadata. However, the ACL is not preserved and is set to private for the user making the request. To override the default ACL setting, specify a new ACL when generating a copy request. For more information, see [Using ACLs](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).
  ///
  /// To specify whether you want the object metadata copied from the source object or replaced with metadata provided in the request, you can optionally add the `x-amz-metadata-directive` header. When you grant permissions, you can use the `s3:x-amz-metadata-directive` condition key to enforce certain metadata behavior when objects are uploaded. For more information, see [Specifying Conditions in a Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/amazon-s3-policy-keys.html) in the _Amazon S3 User Guide_. For a complete list of Amazon S3-specific condition keys, see [Actions, Resources, and Condition Keys for Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/list_amazons3.html).
  ///
  /// **x-amz-copy-source-if Headers**
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
  /// **Server-side encryption**
  ///
  /// When you perform a CopyObject operation, you can optionally use the appropriate encryption-related headers to encrypt the object using server-side encryption with Amazon Web Services managed encryption keys (SSE-S3 or SSE-KMS) or a customer-provided encryption key. With server-side encryption, Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts the data when you access it. For more information about server-side encryption, see [Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html).
  ///
  /// If a target object uses SSE-KMS, you can enable an S3 Bucket Key for the object. For more information, see [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) in the _Amazon S3 User Guide_.
  ///
  /// **Access Control List (ACL)-Specific Request Headers**
  ///
  /// When copying an object, you can optionally use headers to grant ACL-based permissions. By default, all objects are private. Only the owner has full access control. When adding a new object, you can grant permissions to individual Amazon Web Services accounts or to predefined groups defined by Amazon S3. These permissions are then added to the ACL on the object. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) and [Managing ACLs Using the REST API](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-using-rest-api.html).
  ///
  /// If the bucket that you're copying objects to uses the bucket owner enforced setting for S3 Object Ownership, ACLs are disabled and no longer affect permissions. Buckets that use this setting only accept PUT requests that don't specify an ACL or PUT requests that specify bucket owner full control ACLs, such as the `bucket-owner-full-control` canned ACL or an equivalent form of this ACL expressed in the XML format.
  ///
  /// For more information, see [Controlling ownership of objects and disabling ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html) in the _Amazon S3 User Guide_.
  ///
  /// If your bucket uses the bucket owner enforced setting for Object Ownership, all objects written to the bucket by any account will be owned by the bucket owner.
  ///
  /// **Checksums**
  ///
  /// When copying an object, if it has a checksum, that checksum will be copied to the new object by default. When you copy the object over, you may optionally specify a different checksum algorithm to use with the `x-amz-checksum-algorithm` header.
  ///
  /// **Storage Class Options**
  ///
  /// You can use the `CopyObject` action to change the storage class of an object that is already stored in Amazon S3 using the `StorageClass` parameter. For more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html) in the _Amazon S3 User Guide_.
  ///
  /// **Versioning**
  ///
  /// By default, `x-amz-copy-source` identifies the current version of an object to copy. If the current version is a delete marker, Amazon S3 behaves as if the object was deleted. To copy a different version, use the `versionId` subresource.
  ///
  /// If you enable versioning on the target bucket, Amazon S3 generates a unique version ID for the object being copied. This version ID is different from the version ID of the source object. Amazon S3 returns the version ID of the copied object in the `x-amz-version-id` response header in the response.
  ///
  /// If you do not enable versioning or suspend it on the target bucket, the version ID that Amazon S3 generates is always null.
  ///
  /// If the source object's storage class is GLACIER, you must restore a copy of this object before you can use it as a source object for the copy operation. For more information, see [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html).
  ///
  /// The following operations are related to `CopyObject`:
  ///
  /// *   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
  ///
  /// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
  ///
  ///
  /// For more information, see [Copying Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjectsExamples.html).
  _i4.SmithyOperation<_i11.CopyObjectOutput> copyObject(
    _i12.CopyObjectRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i13.CopyObjectOperation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: s3ClientConfig ?? _s3ClientConfig,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This action initiates a multipart upload and returns an upload ID. This upload ID is used to associate all of the parts in the specific multipart upload. You specify this upload ID in each of your subsequent upload part requests (see [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)). You also include this upload ID in the final request to either complete or abort the multipart upload request.
  ///
  /// For more information about multipart uploads, see [Multipart Upload Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html).
  ///
  /// If you have configured a lifecycle rule to abort incomplete multipart uploads, the upload must complete within the number of days specified in the bucket lifecycle configuration. Otherwise, the incomplete multipart upload becomes eligible for an abort action and Amazon S3 aborts the multipart upload. For more information, see [Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config).
  ///
  /// For information about the permissions required to use the multipart upload API, see [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html).
  ///
  /// For request signing, multipart upload is just a series of regular requests. You initiate a multipart upload, send one or more requests to upload parts, and then complete the multipart upload process. You sign each request individually. There is nothing special about signing multipart upload requests. For more information about signing, see [Authenticating Requests (Amazon Web Services Signature Version 4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html).
  ///
  /// After you initiate a multipart upload and upload one or more parts, to stop being charged for storing the uploaded parts, you must either complete or abort the multipart upload. Amazon S3 frees up the space used to store the parts and stop charging you for storing them only after you either complete or abort a multipart upload.
  ///
  /// You can optionally request server-side encryption. For server-side encryption, Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts it when you access it. You can provide your own encryption key, or use Amazon Web Services KMS keys or Amazon S3-managed encryption keys. If you choose to provide your own encryption key, the request headers you provide in [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html) and [UploadPartCopy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html) requests must match the headers you used in the request to initiate the upload by using `CreateMultipartUpload`.
  ///
  /// To perform a multipart upload with encryption using an Amazon Web Services KMS key, the requester must have permission to the `kms:Decrypt` and `kms:GenerateDataKey*` actions on the key. These permissions are required because Amazon S3 must decrypt and read data from the encrypted file parts before it completes the multipart upload. For more information, see [Multipart upload API and permissions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html#mpuAndPermissions) in the _Amazon S3 User Guide_.
  ///
  /// If your Identity and Access Management (IAM) user or role is in the same Amazon Web Services account as the KMS key, then you must have these permissions on the key policy. If your IAM user or role belongs to a different account than the key, then you must have the permissions on both the key policy and your IAM user or role.
  ///
  /// For more information, see [Protecting Data Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html).
  ///
  /// Access Permissions
  ///
  /// When copying an object, you can optionally specify the accounts or groups that should be granted specific permissions on the new object. There are two ways to grant the permissions using the request headers:
  ///
  /// *   Specify a canned ACL with the `x-amz-acl` request header. For more information, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).
  ///
  /// *   Specify access permissions explicitly with the `x-amz-grant-read`, `x-amz-grant-read-acp`, `x-amz-grant-write-acp`, and `x-amz-grant-full-control` headers. These parameters map to the set of permissions that Amazon S3 supports in an ACL. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html).
  ///
  ///
  /// You can use either a canned ACL or specify access permissions explicitly. You cannot do both.
  ///
  /// Server-Side- Encryption-Specific Request Headers
  ///
  /// You can optionally tell Amazon S3 to encrypt data at rest using server-side encryption. Server-side encryption is for data encryption at rest. Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts it when you access it. The option you use depends on whether you want to use Amazon Web Services managed encryption keys or provide your own encryption key.
  ///
  /// *   Use encryption keys managed by Amazon S3 or customer managed key stored in Amazon Web Services Key Management Service (Amazon Web Services KMS) – If you want Amazon Web Services to manage the keys used to encrypt data, specify the following headers in the request.
  ///
  ///     *   `x-amz-server-side-encryption`
  ///
  ///     *   `x-amz-server-side-encryption-aws-kms-key-id`
  ///
  ///     *   `x-amz-server-side-encryption-context`
  ///
  ///
  ///     If you specify `x-amz-server-side-encryption:aws:kms`, but don't provide `x-amz-server-side-encryption-aws-kms-key-id`, Amazon S3 uses the Amazon Web Services managed key in Amazon Web Services KMS to protect the data.
  ///
  ///     All GET and PUT requests for an object protected by Amazon Web Services KMS fail if you don't make them with SSL or by using SigV4.
  ///
  ///     For more information about server-side encryption with KMS key (SSE-KMS), see [Protecting Data Using Server-Side Encryption with KMS keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html).
  ///
  /// *   Use customer-provided encryption keys – If you want to manage your own encryption keys, provide all the following headers in the request.
  ///
  ///     *   `x-amz-server-side-encryption-customer-algorithm`
  ///
  ///     *   `x-amz-server-side-encryption-customer-key`
  ///
  ///     *   `x-amz-server-side-encryption-customer-key-MD5`
  ///
  ///
  ///     For more information about server-side encryption with KMS keys (SSE-KMS), see [Protecting Data Using Server-Side Encryption with KMS keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html).
  ///
  ///
  /// Access-Control-List (ACL)-Specific Request Headers
  ///
  /// You also can use the following access control–related headers with this operation. By default, all objects are private. Only the owner has full access control. When adding a new object, you can grant permissions to individual Amazon Web Services accounts or to predefined groups defined by Amazon S3. These permissions are then added to the access control list (ACL) on the object. For more information, see [Using ACLs](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html). With this operation, you can grant access permissions using one of the following two methods:
  ///
  /// *   Specify a canned ACL (`x-amz-acl`) — Amazon S3 supports a set of predefined ACLs, known as _canned ACLs_. Each canned ACL has a predefined set of grantees and permissions. For more information, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).
  ///
  /// *   Specify access permissions explicitly — To explicitly grant access permissions to specific Amazon Web Services accounts or groups, use the following headers. Each header maps to specific permissions that Amazon S3 supports in an ACL. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html). In the header, you specify a list of grantees who get the specific permission. To grant permissions explicitly, use:
  ///
  ///     *   `x-amz-grant-read`
  ///
  ///     *   `x-amz-grant-write`
  ///
  ///     *   `x-amz-grant-read-acp`
  ///
  ///     *   `x-amz-grant-write-acp`
  ///
  ///     *   `x-amz-grant-full-control`
  ///
  ///
  ///     You specify each grantee as a type=value pair, where the type is one of the following:
  ///
  ///     *   `id` – if the value specified is the canonical user ID of an Amazon Web Services account
  ///
  ///     *   `uri` – if you are granting permissions to a predefined group
  ///
  ///     *   `emailAddress` – if the value specified is the email address of an Amazon Web Services account
  ///
  ///         Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions:
  ///
  ///         *   US East (N. Virginia)
  ///
  ///         *   US West (N. California)
  ///
  ///         *   US West (Oregon)
  ///
  ///         *   Asia Pacific (Singapore)
  ///
  ///         *   Asia Pacific (Sydney)
  ///
  ///         *   Asia Pacific (Tokyo)
  ///
  ///         *   Europe (Ireland)
  ///
  ///         *   South America (São Paulo)
  ///
  ///
  ///         For a list of all the Amazon S3 supported Regions and endpoints, see [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in the Amazon Web Services General Reference.
  ///
  ///
  ///     For example, the following `x-amz-grant-read` header grants the Amazon Web Services accounts identified by account IDs permissions to read object data and its metadata:
  ///
  ///     `x-amz-grant-read: id="11112222333", id="444455556666"`
  ///
  ///
  /// The following operations are related to `CreateMultipartUpload`:
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
  _i4.SmithyOperation<_i14.CreateMultipartUploadOutput> createMultipartUpload(
    _i15.CreateMultipartUploadRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i16.CreateMultipartUploadOperation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: s3ClientConfig ?? _s3ClientConfig,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the null version (if there is one) of an object and inserts a delete marker, which becomes the latest version of the object. If there isn't a null version, Amazon S3 does not remove any objects but will still respond that the command was successful.
  ///
  /// To remove a specific version, you must be the bucket owner and you must use the version Id subresource. Using this subresource permanently deletes the version. If the object deleted is a delete marker, Amazon S3 sets the response header, `x-amz-delete-marker`, to true.
  ///
  /// If the object you want to delete is in a bucket where the bucket versioning configuration is MFA Delete enabled, you must include the `x-amz-mfa` request header in the DELETE `versionId` request. Requests that include `x-amz-mfa` must use HTTPS.
  ///
  /// For more information about MFA Delete, see [Using MFA Delete](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMFADelete.html). To see sample requests that use versioning, see [Sample Request](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectDELETE.html#ExampleVersionObjectDelete).
  ///
  /// You can delete objects by explicitly calling DELETE Object or configure its lifecycle ([PutBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html)) to enable Amazon S3 to remove them for you. If you want to block users or accounts from removing or deleting objects from your bucket, you must deny them the `s3:DeleteObject`, `s3:DeleteObjectVersion`, and `s3:PutLifeCycleConfiguration` actions.
  ///
  /// The following action is related to `DeleteObject`:
  ///
  /// *   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
  _i4.SmithyOperation<_i17.DeleteObjectOutput> deleteObject(
    _i18.DeleteObjectRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i19.DeleteObjectOperation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: s3ClientConfig ?? _s3ClientConfig,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This action enables you to delete multiple objects from a bucket using a single HTTP request. If you know the object keys that you want to delete, then this action provides a suitable alternative to sending individual delete requests, reducing per-request overhead.
  ///
  /// The request contains a list of up to 1000 keys that you want to delete. In the XML, you provide the object key names, and optionally, version IDs if you want to delete a specific version of the object from a versioning-enabled bucket. For each key, Amazon S3 performs a delete action and returns the result of that delete, success, or failure, in the response. Note that if the object specified in the request is not found, Amazon S3 returns the result as deleted.
  ///
  /// The action supports two modes for the response: verbose and quiet. By default, the action uses verbose mode in which the response includes the result of deletion of each key in your request. In quiet mode the response includes only keys where the delete action encountered an error. For a successful deletion, the action does not return any information about the delete in the response body.
  ///
  /// When performing this action on an MFA Delete enabled bucket, that attempts to delete any versioned objects, you must include an MFA token. If you do not provide one, the entire request will fail, even if there are non-versioned objects you are trying to delete. If you provide an invalid token, whether there are versioned keys in the request or not, the entire Multi-Object Delete request will fail. For information about MFA Delete, see [MFA Delete](https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html#MultiFactorAuthenticationDelete).
  ///
  /// Finally, the Content-MD5 header is required for all Multi-Object Delete requests. Amazon S3 uses the header value to ensure that your request body has not been altered in transit.
  ///
  /// The following operations are related to `DeleteObjects`:
  ///
  /// *   [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)
  ///
  /// *   [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)
  ///
  /// *   [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)
  ///
  /// *   [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)
  ///
  /// *   [AbortMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)
  _i4.SmithyOperation<_i20.DeleteObjectsOutput> deleteObjects(
    _i21.DeleteObjectsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i22.DeleteObjectsOperation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: s3ClientConfig ?? _s3ClientConfig,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves objects from Amazon S3. To use `GET`, you must have `READ` access to the object. If you grant `READ` access to the anonymous user, you can return the object without using an authorization header.
  ///
  /// An Amazon S3 bucket has no directory hierarchy such as you would find in a typical computer file system. You can, however, create a logical hierarchy by using object key names that imply a folder structure. For example, instead of naming an object `sample.jpg`, you can name it `photos/2006/February/sample.jpg`.
  ///
  /// To get an object from such a logical hierarchy, specify the full key name for the object in the `GET` operation. For a virtual hosted-style request example, if you have the object `photos/2006/February/sample.jpg`, specify the resource as `/photos/2006/February/sample.jpg`. For a path-style request example, if you have the object `photos/2006/February/sample.jpg` in the bucket named `examplebucket`, specify the resource as `/examplebucket/photos/2006/February/sample.jpg`. For more information about request types, see [HTTP Host Header Bucket Specification](https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html#VirtualHostingSpecifyBucket).
  ///
  /// For more information about returning the ACL of an object, see [GetObjectAcl](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html).
  ///
  /// If the object you are retrieving is stored in the S3 Glacier or S3 Glacier Deep Archive storage class, or S3 Intelligent-Tiering Archive or S3 Intelligent-Tiering Deep Archive tiers, before you can retrieve the object you must first restore a copy using [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html). Otherwise, this action returns an `InvalidObjectStateError` error. For information about restoring archived objects, see [Restoring Archived Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html).
  ///
  /// Encryption request headers, like `x-amz-server-side-encryption`, should not be sent for GET requests if your object uses server-side encryption with KMS keys (SSE-KMS) or server-side encryption with Amazon S3–managed encryption keys (SSE-S3). If your object does use these types of keys, you’ll get an HTTP 400 BadRequest error.
  ///
  /// If you encrypt an object by using server-side encryption with customer-provided encryption keys (SSE-C) when you store the object in Amazon S3, then when you GET the object, you must use the following headers:
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
  /// Assuming you have the relevant permission to read object tags, the response also returns the `x-amz-tagging-count` header that provides the count of number of tags associated with the object. You can use [GetObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html) to retrieve the tag set associated with an object.
  ///
  /// **Permissions**
  ///
  /// You need the relevant read object (or version) permission for this operation. For more information, see [Specifying Permissions in a Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html). If the object you request does not exist, the error Amazon S3 returns depends on whether you also have the `s3:ListBucket` permission.
  ///
  /// *   If you have the `s3:ListBucket` permission on the bucket, Amazon S3 will return an HTTP status code 404 ("no such key") error.
  ///
  /// *   If you don’t have the `s3:ListBucket` permission, Amazon S3 will return an HTTP status code 403 ("access denied") error.
  ///
  ///
  /// **Versioning**
  ///
  /// By default, the GET action returns the current version of an object. To return a different version, use the `versionId` subresource.
  ///
  /// *   If you supply a `versionId`, you need the `s3:GetObjectVersion` permission to access a specific version of an object. If you request a specific version, you do not need to have the `s3:GetObject` permission.
  ///
  /// *   If the current version of the object is a delete marker, Amazon S3 behaves as if the object was deleted and includes `x-amz-delete-marker: true` in the response.
  ///
  ///
  /// For more information about versioning, see [PutBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketVersioning.html).
  ///
  /// **Overriding Response Header Values**
  ///
  /// There are times when you want to override certain response header values in a GET response. For example, you might override the `Content-Disposition` response header value in your GET request.
  ///
  /// You can override values for a set of response headers using the following query parameters. These response header values are sent only on a successful request, that is, when status code 200 OK is returned. The set of headers you can override using these parameters is a subset of the headers that Amazon S3 accepts when you create an object. The response headers that you can override for the GET response are `Content-Type`, `Content-Language`, `Expires`, `Cache-Control`, `Content-Disposition`, and `Content-Encoding`. To override these header values in the GET response, you use the following request parameters.
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
  /// **Additional Considerations about Request Headers**
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
  _i4.SmithyOperation<_i23.GetObjectOutput> getObject(
    _i24.GetObjectRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i25.GetObjectOperation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: s3ClientConfig ?? _s3ClientConfig,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

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
  _i4.SmithyOperation<_i26.HeadObjectOutput> headObject(
    _i27.HeadObjectRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i28.HeadObjectOperation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: s3ClientConfig ?? _s3ClientConfig,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This action lists in-progress multipart uploads. An in-progress multipart upload is a multipart upload that has been initiated using the Initiate Multipart Upload request, but has not yet been completed or aborted.
  ///
  /// This action returns at most 1,000 multipart uploads in the response. 1,000 multipart uploads is the maximum number of uploads a response can include, which is also the default value. You can further limit the number of uploads in a response by specifying the `max-uploads` parameter in the response. If additional multipart uploads satisfy the list criteria, the response will contain an `IsTruncated` element with the value true. To list the additional multipart uploads, use the `key-marker` and `upload-id-marker` request parameters.
  ///
  /// In the response, the uploads are sorted by key. If your application has initiated more than one multipart upload using the same object key, then uploads in the response are first sorted by key. Additionally, uploads are sorted in ascending order within each key by the upload initiation time.
  ///
  /// For more information on multipart uploads, see [Uploading Objects Using Multipart Upload](https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html).
  ///
  /// For information on permissions required to use the multipart upload API, see [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html).
  ///
  /// The following operations are related to `ListMultipartUploads`:
  ///
  /// *   [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)
  ///
  /// *   [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)
  ///
  /// *   [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)
  ///
  /// *   [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)
  ///
  /// *   [AbortMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)
  _i4.SmithyOperation<_i29.ListMultipartUploadsOutput> listMultipartUploads(
    _i30.ListMultipartUploadsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i31.ListMultipartUploadsOperation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: s3ClientConfig ?? _s3ClientConfig,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns some or all (up to 1,000) of the objects in a bucket with each request. You can use the request parameters as selection criteria to return a subset of the objects in a bucket. A `200 OK` response can contain valid or invalid XML. Make sure to design your application to parse the contents of the response and handle it appropriately. Objects are returned sorted in an ascending order of the respective key names in the list. For more information about listing objects, see [Listing object keys programmatically](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ListingKeysUsingAPIs.html)
  ///
  /// To use this operation, you must have READ access to the bucket.
  ///
  /// To use this action in an Identity and Access Management (IAM) policy, you must have permissions to perform the `s3:ListBucket` action. The bucket owner has this permission by default and can grant this permission to others. For more information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources) and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).
  ///
  /// This section describes the latest revision of this action. We recommend that you use this revised API for application development. For backward compatibility, Amazon S3 continues to support the prior version of this API, [ListObjects](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html).
  ///
  /// To get a list of your buckets, see [ListBuckets](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html).
  ///
  /// The following operations are related to `ListObjectsV2`:
  ///
  /// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
  ///
  /// *   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
  ///
  /// *   [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
  _i4.SmithyOperation<
      _i4.PaginatedResult<_i32.ListObjectsV2Output, int, String>> listObjectsV2(
    _i33.ListObjectsV2Request input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i34.ListObjectsV2Operation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: s3ClientConfig ?? _s3ClientConfig,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Lists the parts that have been uploaded for a specific multipart upload. This operation must include the upload ID, which you obtain by sending the initiate multipart upload request (see [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)). This request returns a maximum of 1,000 uploaded parts. The default number of parts returned is 1,000 parts. You can restrict the number of parts returned by specifying the `max-parts` request parameter. If your multipart upload consists of more than 1,000 parts, the response returns an `IsTruncated` field with the value of true, and a `NextPartNumberMarker` element. In subsequent `ListParts` requests you can include the part-number-marker query string parameter and set its value to the `NextPartNumberMarker` field value from the previous response.
  ///
  /// If the upload was created using a checksum algorithm, you will need to have permission to the `kms:Decrypt` action for the request to succeed.
  ///
  /// For more information on multipart uploads, see [Uploading Objects Using Multipart Upload](https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html).
  ///
  /// For information on permissions required to use the multipart upload API, see [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html).
  ///
  /// The following operations are related to `ListParts`:
  ///
  /// *   [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)
  ///
  /// *   [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)
  ///
  /// *   [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)
  ///
  /// *   [AbortMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)
  ///
  /// *   [GetObjectAttributes](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)
  ///
  /// *   [ListMultipartUploads](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)
  _i4.SmithyOperation<
      _i4.PaginatedResult<_i35.BuiltList<_i36.Part>, int, String>> listParts(
    _i37.ListPartsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i38.ListPartsOperation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: s3ClientConfig ?? _s3ClientConfig,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Adds an object to a bucket. You must have WRITE permissions on a bucket to add an object to it.
  ///
  /// Amazon S3 never adds partial objects; if you receive a success response, Amazon S3 added the entire object to the bucket.
  ///
  /// Amazon S3 is a distributed system. If it receives multiple write requests for the same object simultaneously, it overwrites all but the last object written. Amazon S3 does not provide object locking; if you need this, make sure to build it into your application layer or use versioning instead.
  ///
  /// To ensure that data is not corrupted traversing the network, use the `Content-MD5` header. When you use this header, Amazon S3 checks the object against the provided MD5 value and, if they do not match, returns an error. Additionally, you can calculate the MD5 while putting an object to Amazon S3 and compare the returned ETag to the calculated MD5 value.
  ///
  /// *   To successfully complete the `PutObject` request, you must have the `s3:PutObject` in your IAM permissions.
  ///
  /// *   To successfully change the objects acl of your `PutObject` request, you must have the `s3:PutObjectAcl` in your IAM permissions.
  ///
  /// *   The `Content-MD5` header is required for any request to upload an object with a retention period configured using Amazon S3 Object Lock. For more information about Amazon S3 Object Lock, see [Amazon S3 Object Lock Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html) in the _Amazon S3 User Guide_.
  ///
  ///
  /// **Server-side Encryption**
  ///
  /// You can optionally request server-side encryption. With server-side encryption, Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts the data when you access it. You have the option to provide your own encryption key or use Amazon Web Services managed encryption keys (SSE-S3 or SSE-KMS). For more information, see [Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html).
  ///
  /// If you request server-side encryption using Amazon Web Services Key Management Service (SSE-KMS), you can enable an S3 Bucket Key at the object-level. For more information, see [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) in the _Amazon S3 User Guide_.
  ///
  /// **Access Control List (ACL)-Specific Request Headers**
  ///
  /// You can use headers to grant ACL- based permissions. By default, all objects are private. Only the owner has full access control. When adding a new object, you can grant permissions to individual Amazon Web Services accounts or to predefined groups defined by Amazon S3. These permissions are then added to the ACL on the object. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) and [Managing ACLs Using the REST API](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-using-rest-api.html).
  ///
  /// If the bucket that you're uploading objects to uses the bucket owner enforced setting for S3 Object Ownership, ACLs are disabled and no longer affect permissions. Buckets that use this setting only accept PUT requests that don't specify an ACL or PUT requests that specify bucket owner full control ACLs, such as the `bucket-owner-full-control` canned ACL or an equivalent form of this ACL expressed in the XML format. PUT requests that contain other ACLs (for example, custom grants to certain Amazon Web Services accounts) fail and return a `400` error with the error code `AccessControlListNotSupported`.
  ///
  /// For more information, see [Controlling ownership of objects and disabling ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html) in the _Amazon S3 User Guide_.
  ///
  /// If your bucket uses the bucket owner enforced setting for Object Ownership, all objects written to the bucket by any account will be owned by the bucket owner.
  ///
  /// **Storage Class Options**
  ///
  /// By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The STANDARD storage class provides high durability and high availability. Depending on performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses the OUTPOSTS Storage Class. For more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html) in the _Amazon S3 User Guide_.
  ///
  /// **Versioning**
  ///
  /// If you enable versioning for a bucket, Amazon S3 automatically generates a unique version ID for the object being stored. Amazon S3 returns this ID in the response. When you enable versioning for a bucket, if Amazon S3 receives multiple write requests for the same object simultaneously, it stores all of the objects.
  ///
  /// For more information about versioning, see [Adding Objects to Versioning Enabled Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/AddingObjectstoVersioningEnabledBuckets.html). For information about returning the versioning state of a bucket, see [GetBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html).
  ///
  /// **Related Resources**
  ///
  /// *   [CopyObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)
  ///
  /// *   [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)
  _i4.SmithyOperation<_i39.PutObjectOutput> putObject(
    _i40.PutObjectRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i41.PutObjectOperation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: s3ClientConfig ?? _s3ClientConfig,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This action filters the contents of an Amazon S3 object based on a simple structured query language (SQL) statement. In the request, along with the SQL expression, you must also specify a data serialization format (JSON, CSV, or Apache Parquet) of the object. Amazon S3 uses this format to parse object data into records, and returns only records that match the specified SQL expression. You must also specify the data serialization format for the response.
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  ///
  /// For more information about Amazon S3 Select, see [Selecting Content from Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/selecting-content-from-objects.html) and [SELECT Command](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-glacier-select-sql-reference-select.html) in the _Amazon S3 User Guide_.
  ///
  /// For more information about using SQL with Amazon S3 Select, see [SQL Reference for Amazon S3 Select and S3 Glacier Select](https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-glacier-select-sql-reference.html) in the _Amazon S3 User Guide_.
  ///
  /// **Permissions**
  ///
  /// You must have `s3:GetObject` permission for this operation. Amazon S3 Select does not support anonymous access. For more information about permissions, see [Specifying Permissions in a Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html) in the _Amazon S3 User Guide_.
  ///
  /// _Object Data Formats_
  ///
  /// You can use Amazon S3 Select to query objects that have the following format properties:
  ///
  /// *   _CSV, JSON, and Parquet_ \- Objects must be in CSV, JSON, or Parquet format.
  ///
  /// *   _UTF-8_ \- UTF-8 is the only encoding type Amazon S3 Select supports.
  ///
  /// *   _GZIP or BZIP2_ \- CSV and JSON files can be compressed using GZIP or BZIP2. GZIP and BZIP2 are the only compression formats that Amazon S3 Select supports for CSV and JSON files. Amazon S3 Select supports columnar compression for Parquet using GZIP or Snappy. Amazon S3 Select does not support whole-object compression for Parquet objects.
  ///
  /// *   _Server-side encryption_ \- Amazon S3 Select supports querying objects that are protected with server-side encryption.
  ///
  ///     For objects that are encrypted with customer-provided encryption keys (SSE-C), you must use HTTPS, and you must use the headers that are documented in the [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html). For more information about SSE-C, see [Server-Side Encryption (Using Customer-Provided Encryption Keys)](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html) in the _Amazon S3 User Guide_.
  ///
  ///     For objects that are encrypted with Amazon S3 managed encryption keys (SSE-S3) and Amazon Web Services KMS keys (SSE-KMS), server-side encryption is handled transparently, so you don't need to specify anything. For more information about server-side encryption, including SSE-S3 and SSE-KMS, see [Protecting Data Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html) in the _Amazon S3 User Guide_.
  ///
  ///
  /// **Working with the Response Body**
  ///
  /// Given the response size is unknown, Amazon S3 Select streams the response as a series of messages and includes a `Transfer-Encoding` header with `chunked` as its value in the response. For more information, see [Appendix: SelectObjectContent Response](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTSelectObjectAppendix.html).
  ///
  /// **GetObject Support**
  ///
  /// The `SelectObjectContent` action does not support the following `GetObject` functionality. For more information, see [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html).
  ///
  /// *   `Range`: Although you can specify a scan range for an Amazon S3 Select request (see [SelectObjectContentRequest - ScanRange](https://docs.aws.amazon.com/AmazonS3/latest/API/API_SelectObjectContent.html#AmazonS3-SelectObjectContent-request-ScanRange) in the request parameters), you cannot specify the range of bytes of an object to return.
  ///
  /// *   GLACIER, DEEP\_ARCHIVE and REDUCED\_REDUNDANCY storage classes: You cannot specify the GLACIER, DEEP_ARCHIVE, or `REDUCED_REDUNDANCY` storage classes. For more information, about storage classes see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#storage-class-intro) in the _Amazon S3 User Guide_.
  ///
  ///
  /// **Special Errors**
  ///
  /// For a list of special errors for this operation, see [List of SELECT Object Content Error Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#SelectObjectContentErrorCodeList)
  ///
  /// **Related Resources**
  ///
  /// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
  ///
  /// *   [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html)
  ///
  /// *   [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html)
  _i4.SmithyOperation<_i42.SelectObjectContentOutput> selectObjectContent(
    _i43.SelectObjectContentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i44.SelectObjectContentOperation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: s3ClientConfig ?? _s3ClientConfig,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

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
  /// You can optionally request server-side encryption where Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts it for you when you access it. You have the option of providing your own encryption key, or you can use the Amazon Web Services managed encryption keys. If you choose to provide your own encryption key, the request headers you provide in the request must match the headers you used in the request to initiate the upload by using [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html). For more information, go to [Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html) in the _Amazon S3 User Guide_.
  ///
  /// Server-side encryption is supported by the S3 Multipart Upload actions. Unless you are using a customer-provided encryption key, you don't need to specify the encryption parameters in each UploadPart request. Instead, you only need to specify the server-side encryption parameters in the initial Initiate Multipart request. For more information, see [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html).
  ///
  /// If you requested server-side encryption using a customer-provided encryption key in your initiate multipart upload request, you must provide identical encryption information in each part upload using the following headers.
  ///
  /// *   x-amz-server-side-encryption-customer-algorithm
  ///
  /// *   x-amz-server-side-encryption-customer-key
  ///
  /// *   x-amz-server-side-encryption-customer-key-MD5
  ///
  ///
  /// **Special Errors**
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
  /// **Related Resources**
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
  _i4.SmithyOperation<_i45.UploadPartOutput> uploadPart(
    _i46.UploadPartRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i47.UploadPartOperation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: s3ClientConfig ?? _s3ClientConfig,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

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
  /// **Versioning**
  ///
  /// If your bucket has versioning enabled, you could have multiple versions of the same object. By default, `x-amz-copy-source` identifies the current version of the object to copy. If the current version is a delete marker and you don't specify a versionId in the `x-amz-copy-source`, Amazon S3 returns a 404 error, because the object does not exist. If you specify versionId in the `x-amz-copy-source` and the versionId is a delete marker, Amazon S3 returns an HTTP 400 error, because you are not allowed to specify a delete marker as a version for the `x-amz-copy-source`.
  ///
  /// You can optionally specify a specific version of the source object to copy by adding the `versionId` subresource as shown in the following example:
  ///
  /// `x-amz-copy-source: /bucket/object?versionId=version id`
  ///
  /// **Special Errors**
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
  /// **Related Resources**
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
  _i4.SmithyOperation<_i48.UploadPartCopyOutput> uploadPartCopy(
    _i49.UploadPartCopyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i50.UploadPartCopyOperation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: s3ClientConfig ?? _s3ClientConfig,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
