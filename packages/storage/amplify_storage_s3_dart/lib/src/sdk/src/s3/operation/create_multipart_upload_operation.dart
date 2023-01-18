// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.operation.create_multipart_upload_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/endpoint_resolver.dart'
    as _i8;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/serializers.dart'
    as _i6;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/create_multipart_upload_output.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/create_multipart_upload_request.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

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
class CreateMultipartUploadOperation extends _i1.HttpOperation<
    _i2.CreateMultipartUploadRequestPayload,
    _i2.CreateMultipartUploadRequest,
    _i3.CreateMultipartUploadOutputPayload,
    _i3.CreateMultipartUploadOutput> {
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
  CreateMultipartUploadOperation({
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
      _i1.HttpProtocol<
          _i2.CreateMultipartUploadRequestPayload,
          _i2.CreateMultipartUploadRequest,
          _i3.CreateMultipartUploadOutputPayload,
          _i3.CreateMultipartUploadOutput>> protocols = [
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
  _i1.HttpRequest buildRequest(_i2.CreateMultipartUploadRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}/{Key+}?uploads&x-id=CreateMultipartUpload'
            : r'/{Key+}?uploads&x-id=CreateMultipartUpload';
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
        if (input.contentType != null) {
          if (input.contentType!.isNotEmpty) {
            b.headers['Content-Type'] = input.contentType!;
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
        if (input.checksumAlgorithm != null) {
          b.headers['x-amz-checksum-algorithm'] =
              input.checksumAlgorithm!.value;
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
  int successCode([_i3.CreateMultipartUploadOutput? output]) => 200;
  @override
  _i3.CreateMultipartUploadOutput buildOutput(
    _i3.CreateMultipartUploadOutputPayload payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.CreateMultipartUploadOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'CreateMultipartUpload';
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
  _i1.SmithyOperation<_i3.CreateMultipartUploadOutput> run(
    _i2.CreateMultipartUploadRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i9.runZoned(
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
