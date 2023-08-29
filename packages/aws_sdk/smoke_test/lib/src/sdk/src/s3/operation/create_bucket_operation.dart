// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.operation.create_bucket_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/s3/model/bucket_already_exists.dart';
import 'package:smoke_test/src/sdk/src/s3/model/bucket_already_owned_by_you.dart';
import 'package:smoke_test/src/sdk/src/s3/model/create_bucket_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/create_bucket_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/create_bucket_request.dart';

/// Creates a new S3 bucket. To create a bucket, you must register with Amazon S3 and have a valid Amazon Web Services Access Key ID to authenticate requests. Anonymous requests are never allowed to create buckets. By creating the bucket, you become the bucket owner.
///
/// Not every string is an acceptable bucket name. For information about bucket naming restrictions, see [Bucket naming rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html).
///
/// If you want to create an Amazon S3 on Outposts bucket, see [Create Bucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html).
///
/// By default, the bucket is created in the US East (N. Virginia) Region. You can optionally specify a Region in the request body. You might choose a Region to optimize latency, minimize costs, or address regulatory requirements. For example, if you reside in Europe, you will probably find it advantageous to create buckets in the Europe (Ireland) Region. For more information, see [Accessing a bucket](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html#access-bucket-intro).
///
/// If you send your create bucket request to the `s3.amazonaws.com` endpoint, the request goes to the `us-east-1` Region. Accordingly, the signature calculations in Signature Version 4 must use `us-east-1` as the Region, even if the location constraint in the request specifies another Region where the bucket is to be created. If you create a bucket in a Region other than US East (N. Virginia), your application must be able to handle 307 redirect. For more information, see [Virtual hosting of buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html).
///
/// Permissions
///
/// In addition to `s3:CreateBucket`, the following permissions are required when your `CreateBucket` request includes specific headers:
///
/// *   **Access control lists (ACLs)** \- If your `CreateBucket` request specifies access control list (ACL) permissions and the ACL is public-read, public-read-write, authenticated-read, or if you specify access permissions explicitly through any other ACL, both `s3:CreateBucket` and `s3:PutBucketAcl` permissions are needed. If the ACL for the `CreateBucket` request is private or if the request doesn't specify any ACLs, only `s3:CreateBucket` permission is needed.
///
/// *   **Object Lock** \- If `ObjectLockEnabledForBucket` is set to true in your `CreateBucket` request, `s3:PutBucketObjectLockConfiguration` and `s3:PutBucketVersioning` permissions are required.
///
/// *   **S3 Object Ownership** \- If your `CreateBucket` request includes the `x-amz-object-ownership` header, then the `s3:PutBucketOwnershipControls` permission is required. By default, `ObjectOwnership` is set to `BucketOWnerEnforced` and ACLs are disabled. We recommend keeping ACLs disabled, except in uncommon use cases where you must control access for each object individually. If you want to change the `ObjectOwnership` setting, you can use the `x-amz-object-ownership` header in your `CreateBucket` request to set the `ObjectOwnership` setting of your choice. For more information about S3 Object Ownership, see [Controlling object ownership](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html) in the _Amazon S3 User Guide_.
///
/// *   **S3 Block Public Access** \- If your specific use case requires granting public access to your S3 resources, you can disable Block Public Access. You can create a new bucket with Block Public Access enabled, then separately call the [`DeletePublicAccessBlock`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeletePublicAccessBlock.html) API. To use this operation, you must have the `s3:PutBucketPublicAccessBlock` permission. By default, all Block Public Access settings are enabled for new buckets. To avoid inadvertent exposure of your resources, we recommend keeping the S3 Block Public Access settings enabled. For more information about S3 Block Public Access, see [Blocking public access to your Amazon S3 storage](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html) in the _Amazon S3 User Guide_.
///
///
/// If your `CreateBucket` request sets `BucketOwnerEnforced` for Amazon S3 Object Ownership and specifies a bucket ACL that provides access to an external Amazon Web Services account, your request fails with a `400` error and returns the `InvalidBucketAcLWithObjectOwnership` error code. For more information, see [Setting Object Ownership on an existing bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-ownership-existing-bucket.html) in the _Amazon S3 User Guide_.
///
/// The following operations are related to `CreateBucket`:
///
/// *   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
///
/// *   [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)
class CreateBucketOperation extends _i1.HttpOperation<CreateBucketConfiguration,
    CreateBucketRequest, CreateBucketOutputPayload, CreateBucketOutput> {
  /// Creates a new S3 bucket. To create a bucket, you must register with Amazon S3 and have a valid Amazon Web Services Access Key ID to authenticate requests. Anonymous requests are never allowed to create buckets. By creating the bucket, you become the bucket owner.
  ///
  /// Not every string is an acceptable bucket name. For information about bucket naming restrictions, see [Bucket naming rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html).
  ///
  /// If you want to create an Amazon S3 on Outposts bucket, see [Create Bucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html).
  ///
  /// By default, the bucket is created in the US East (N. Virginia) Region. You can optionally specify a Region in the request body. You might choose a Region to optimize latency, minimize costs, or address regulatory requirements. For example, if you reside in Europe, you will probably find it advantageous to create buckets in the Europe (Ireland) Region. For more information, see [Accessing a bucket](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html#access-bucket-intro).
  ///
  /// If you send your create bucket request to the `s3.amazonaws.com` endpoint, the request goes to the `us-east-1` Region. Accordingly, the signature calculations in Signature Version 4 must use `us-east-1` as the Region, even if the location constraint in the request specifies another Region where the bucket is to be created. If you create a bucket in a Region other than US East (N. Virginia), your application must be able to handle 307 redirect. For more information, see [Virtual hosting of buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html).
  ///
  /// Permissions
  ///
  /// In addition to `s3:CreateBucket`, the following permissions are required when your `CreateBucket` request includes specific headers:
  ///
  /// *   **Access control lists (ACLs)** \- If your `CreateBucket` request specifies access control list (ACL) permissions and the ACL is public-read, public-read-write, authenticated-read, or if you specify access permissions explicitly through any other ACL, both `s3:CreateBucket` and `s3:PutBucketAcl` permissions are needed. If the ACL for the `CreateBucket` request is private or if the request doesn't specify any ACLs, only `s3:CreateBucket` permission is needed.
  ///
  /// *   **Object Lock** \- If `ObjectLockEnabledForBucket` is set to true in your `CreateBucket` request, `s3:PutBucketObjectLockConfiguration` and `s3:PutBucketVersioning` permissions are required.
  ///
  /// *   **S3 Object Ownership** \- If your `CreateBucket` request includes the `x-amz-object-ownership` header, then the `s3:PutBucketOwnershipControls` permission is required. By default, `ObjectOwnership` is set to `BucketOWnerEnforced` and ACLs are disabled. We recommend keeping ACLs disabled, except in uncommon use cases where you must control access for each object individually. If you want to change the `ObjectOwnership` setting, you can use the `x-amz-object-ownership` header in your `CreateBucket` request to set the `ObjectOwnership` setting of your choice. For more information about S3 Object Ownership, see [Controlling object ownership](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html) in the _Amazon S3 User Guide_.
  ///
  /// *   **S3 Block Public Access** \- If your specific use case requires granting public access to your S3 resources, you can disable Block Public Access. You can create a new bucket with Block Public Access enabled, then separately call the [`DeletePublicAccessBlock`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeletePublicAccessBlock.html) API. To use this operation, you must have the `s3:PutBucketPublicAccessBlock` permission. By default, all Block Public Access settings are enabled for new buckets. To avoid inadvertent exposure of your resources, we recommend keeping the S3 Block Public Access settings enabled. For more information about S3 Block Public Access, see [Blocking public access to your Amazon S3 storage](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html) in the _Amazon S3 User Guide_.
  ///
  ///
  /// If your `CreateBucket` request sets `BucketOwnerEnforced` for Amazon S3 Object Ownership and specifies a bucket ACL that provides access to an external Amazon Web Services account, your request fails with a `400` error and returns the `InvalidBucketAcLWithObjectOwnership` error code. For more information, see [Setting Object Ownership on an existing bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-ownership-existing-bucket.html) in the _Amazon S3 User Guide_.
  ///
  /// The following operations are related to `CreateBucket`:
  ///
  /// *   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
  ///
  /// *   [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)
  CreateBucketOperation({
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
      _i1.HttpProtocol<CreateBucketConfiguration, CreateBucketRequest,
          CreateBucketOutputPayload, CreateBucketOutput>> protocols = [
    _i2.RestXmlProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
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
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
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
  _i1.HttpRequest buildRequest(CreateBucketRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = _s3ClientConfig.usePathStyle ? r'/{Bucket}' : r'/';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.acl != null) {
          b.headers['x-amz-acl'] = input.acl!.value;
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
        if (input.objectLockEnabledForBucket != null) {
          b.headers['x-amz-bucket-object-lock-enabled'] =
              input.objectLockEnabledForBucket!.toString();
        }
        if (input.objectOwnership != null) {
          b.headers['x-amz-object-ownership'] = input.objectOwnership!.value;
        }
      });
  @override
  int successCode([CreateBucketOutput? output]) => 200;
  @override
  CreateBucketOutput buildOutput(
    CreateBucketOutputPayload payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      CreateBucketOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<BucketAlreadyExists, BucketAlreadyExists>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.s3',
            shape: 'BucketAlreadyExists',
          ),
          _i1.ErrorKind.client,
          BucketAlreadyExists,
          builder: BucketAlreadyExists.fromResponse,
        ),
        _i1.SmithyError<BucketAlreadyOwnedByYou, BucketAlreadyOwnedByYou>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.s3',
            shape: 'BucketAlreadyOwnedByYou',
          ),
          _i1.ErrorKind.client,
          BucketAlreadyOwnedByYou,
          builder: BucketAlreadyOwnedByYou.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'CreateBucket';
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
  _i1.SmithyOperation<CreateBucketOutput> run(
    CreateBucketRequest input, {
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
