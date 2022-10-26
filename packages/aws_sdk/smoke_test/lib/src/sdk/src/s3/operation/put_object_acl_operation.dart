// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.operation.put_object_acl_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i8;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart' as _i9;
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/access_control_policy.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/no_such_key.dart' as _i10;
import 'package:smoke_test/src/sdk/src/s3/model/put_object_acl_output.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/put_object_acl_request.dart'
    as _i3;

/// Uses the `acl` subresource to set the access control list (ACL) permissions for a new or existing object in an S3 bucket. You must have `WRITE_ACP` permission to set the ACL of an object. For more information, see [What permissions can I grant?](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#permissions) in the _Amazon S3 User Guide_.
///
/// This action is not supported by Amazon S3 on Outposts.
///
/// Depending on your application needs, you can choose to set the ACL on an object using either the request body or the headers. For example, if you have an existing application that updates a bucket ACL using the request body, you can continue to use that approach. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) in the _Amazon S3 User Guide_.
///
/// If your bucket uses the bucket owner enforced setting for S3 Object Ownership, ACLs are disabled and no longer affect permissions. You must use policies to grant access to your bucket and the objects in it. Requests to set ACLs or update ACLs fail and return the `AccessControlListNotSupported` error code. Requests to read ACLs are still supported. For more information, see [Controlling object ownership](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html) in the _Amazon S3 User Guide_.
///
/// **Access Permissions**
///
/// You can set access permissions using one of the following methods:
///
/// *   Specify a canned ACL with the `x-amz-acl` request header. Amazon S3 supports a set of predefined ACLs, known as canned ACLs. Each canned ACL has a predefined set of grantees and permissions. Specify the canned ACL name as the value of `x-amz-ac`l. If you use this header, you cannot use other access control-specific headers in your request. For more information, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).
///
/// *   Specify access permissions explicitly with the `x-amz-grant-read`, `x-amz-grant-read-acp`, `x-amz-grant-write-acp`, and `x-amz-grant-full-control` headers. When using these headers, you specify explicit access permissions and grantees (Amazon Web Services accounts or Amazon S3 groups) who will receive the permission. If you use these ACL-specific headers, you cannot use `x-amz-acl` header to set a canned ACL. These parameters map to the set of permissions that Amazon S3 supports in an ACL. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html).
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
///     For example, the following `x-amz-grant-read` header grants list objects permission to the two Amazon Web Services accounts identified by their email addresses.
///
///     `x-amz-grant-read: emailAddress="xyz@amazon.com", emailAddress="abc@amazon.com"`
///
///
/// You can use either a canned ACL or specify access permissions explicitly. You cannot do both.
///
/// **Grantee Values**
///
/// You can specify the person (grantee) to whom you're assigning access rights (using request elements) in the following ways:
///
/// *   By the person's ID:
///
///     `<>ID<><>GranteesEmail<>`
///
///     DisplayName is optional and ignored in the request.
///
/// *   By URI:
///
///     `<>http://acs.amazonaws.com/groups/global/AuthenticatedUsers<>`
///
/// *   By Email address:
///
///     `<>Grantees@email.com<>lt;/Grantee>`
///
///     The grantee is resolved to the CanonicalUser and, in a response to a GET Object acl request, appears as the CanonicalUser.
///
///     Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions:
///
///     *   US East (N. Virginia)
///
///     *   US West (N. California)
///
///     *   US West (Oregon)
///
///     *   Asia Pacific (Singapore)
///
///     *   Asia Pacific (Sydney)
///
///     *   Asia Pacific (Tokyo)
///
///     *   Europe (Ireland)
///
///     *   South America (São Paulo)
///
///
///     For a list of all the Amazon S3 supported Regions and endpoints, see [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in the Amazon Web Services General Reference.
///
///
/// **Versioning**
///
/// The ACL of an object is set at the object version level. By default, PUT sets the ACL of the current version of an object. To set the ACL of a different version, use the `versionId` subresource.
///
/// **Related Resources**
///
/// *   [CopyObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)
///
/// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
class PutObjectAclOperation extends _i1.HttpOperation<
    _i2.AccessControlPolicy,
    _i3.PutObjectAclRequest,
    _i4.PutObjectAclOutputPayload,
    _i4.PutObjectAclOutput> {
  /// Uses the `acl` subresource to set the access control list (ACL) permissions for a new or existing object in an S3 bucket. You must have `WRITE_ACP` permission to set the ACL of an object. For more information, see [What permissions can I grant?](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#permissions) in the _Amazon S3 User Guide_.
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  ///
  /// Depending on your application needs, you can choose to set the ACL on an object using either the request body or the headers. For example, if you have an existing application that updates a bucket ACL using the request body, you can continue to use that approach. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) in the _Amazon S3 User Guide_.
  ///
  /// If your bucket uses the bucket owner enforced setting for S3 Object Ownership, ACLs are disabled and no longer affect permissions. You must use policies to grant access to your bucket and the objects in it. Requests to set ACLs or update ACLs fail and return the `AccessControlListNotSupported` error code. Requests to read ACLs are still supported. For more information, see [Controlling object ownership](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html) in the _Amazon S3 User Guide_.
  ///
  /// **Access Permissions**
  ///
  /// You can set access permissions using one of the following methods:
  ///
  /// *   Specify a canned ACL with the `x-amz-acl` request header. Amazon S3 supports a set of predefined ACLs, known as canned ACLs. Each canned ACL has a predefined set of grantees and permissions. Specify the canned ACL name as the value of `x-amz-ac`l. If you use this header, you cannot use other access control-specific headers in your request. For more information, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).
  ///
  /// *   Specify access permissions explicitly with the `x-amz-grant-read`, `x-amz-grant-read-acp`, `x-amz-grant-write-acp`, and `x-amz-grant-full-control` headers. When using these headers, you specify explicit access permissions and grantees (Amazon Web Services accounts or Amazon S3 groups) who will receive the permission. If you use these ACL-specific headers, you cannot use `x-amz-acl` header to set a canned ACL. These parameters map to the set of permissions that Amazon S3 supports in an ACL. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html).
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
  ///     For example, the following `x-amz-grant-read` header grants list objects permission to the two Amazon Web Services accounts identified by their email addresses.
  ///
  ///     `x-amz-grant-read: emailAddress="xyz@amazon.com", emailAddress="abc@amazon.com"`
  ///
  ///
  /// You can use either a canned ACL or specify access permissions explicitly. You cannot do both.
  ///
  /// **Grantee Values**
  ///
  /// You can specify the person (grantee) to whom you're assigning access rights (using request elements) in the following ways:
  ///
  /// *   By the person's ID:
  ///
  ///     `<>ID<><>GranteesEmail<>`
  ///
  ///     DisplayName is optional and ignored in the request.
  ///
  /// *   By URI:
  ///
  ///     `<>http://acs.amazonaws.com/groups/global/AuthenticatedUsers<>`
  ///
  /// *   By Email address:
  ///
  ///     `<>Grantees@email.com<>lt;/Grantee>`
  ///
  ///     The grantee is resolved to the CanonicalUser and, in a response to a GET Object acl request, appears as the CanonicalUser.
  ///
  ///     Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions:
  ///
  ///     *   US East (N. Virginia)
  ///
  ///     *   US West (N. California)
  ///
  ///     *   US West (Oregon)
  ///
  ///     *   Asia Pacific (Singapore)
  ///
  ///     *   Asia Pacific (Sydney)
  ///
  ///     *   Asia Pacific (Tokyo)
  ///
  ///     *   Europe (Ireland)
  ///
  ///     *   South America (São Paulo)
  ///
  ///
  ///     For a list of all the Amazon S3 supported Regions and endpoints, see [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in the Amazon Web Services General Reference.
  ///
  ///
  /// **Versioning**
  ///
  /// The ACL of an object is set at the object version level. By default, PUT sets the ACL of the current version of an object. To set the ACL of a different version, use the `versionId` subresource.
  ///
  /// **Related Resources**
  ///
  /// *   [CopyObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)
  ///
  /// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
  PutObjectAclOperation({
    required String region,
    Uri? baseUri,
    _i5.S3ClientConfig s3ClientConfig = const _i5.S3ClientConfig(),
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _s3ClientConfig = s3ClientConfig,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.AccessControlPolicy, _i3.PutObjectAclRequest,
          _i4.PutObjectAclOutputPayload, _i4.PutObjectAclOutput>> protocols = [
    _i5.RestXmlProtocol(
      serializers: _i7.serializers,
      builderFactories: _i7.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        _i5.WithSigV4(
          region: _region,
          service: _i8.AWSService.s3,
          credentialsProvider: _credentialsProvider,
          serviceConfiguration: _s3ClientConfig.signerConfiguration ??
              _i6.S3ServiceConfiguration(),
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i5.WithSdkInvocationId(),
        const _i5.WithSdkRequest(),
      ],
      responseInterceptors: [],
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

  @override
  _i1.HttpRequest buildRequest(_i3.PutObjectAclRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}/{Key+}?acl'
            : r'/{Key+}?acl';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.acl != null) {
          b.headers['x-amz-acl'] = input.acl!.value;
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
        if (input.grantWrite != null) {
          if (input.grantWrite!.isNotEmpty) {
            b.headers['x-amz-grant-write'] = input.grantWrite!;
          }
        }
        if (input.grantWriteAcp != null) {
          if (input.grantWriteAcp!.isNotEmpty) {
            b.headers['x-amz-grant-write-acp'] = input.grantWriteAcp!;
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
        if (input.versionId != null) {
          b.queryParameters.add(
            'versionId',
            input.versionId!,
          );
        }
        b.requestInterceptors
            .add(_i5.WithChecksum(input.checksumAlgorithm?.value));
      });
  @override
  int successCode([_i4.PutObjectAclOutput? output]) => 200;
  @override
  _i4.PutObjectAclOutput buildOutput(
    _i4.PutObjectAclOutputPayload payload,
    _i8.AWSBaseHttpResponse response,
  ) =>
      _i4.PutObjectAclOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.s3',
            shape: 'NoSuchKey',
          ),
          _i1.ErrorKind.client,
          _i10.NoSuchKey,
          builder: _i10.NoSuchKey.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'PutObjectAcl';
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
  _i1.SmithyOperation<_i4.PutObjectAclOutput> run(
    _i3.PutObjectAclRequest input, {
    _i8.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i11.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i8.AWSHeaders.sdkInvocationId: _i8.uuid(secure: true)}
      },
    );
  }
}
