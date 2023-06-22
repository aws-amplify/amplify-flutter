// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.operation.restore_object_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i8;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart' as _i9;
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/object_already_in_active_tier_error.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/s3/model/restore_object_output.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/restore_object_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/restore_request.dart' as _i2;

/// Restores an archived copy of an object back into Amazon S3
///
/// This action is not supported by Amazon S3 on Outposts.
///
/// This action performs the following types of requests:
///
/// *   `select` \- Perform a select query on an archived object
///
/// *   `restore an archive` \- Restore an archived object
///
///
/// For more information about the `S3` structure in the request body, see the following:
///
/// *   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
///
/// *   [Managing Access with ACLs](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html) in the _Amazon S3 User Guide_
///
/// *   [Protecting Data Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html) in the _Amazon S3 User Guide_
///
///
/// Define the SQL expression for the `SELECT` type of restoration for your query in the request body's `SelectParameters` structure. You can use expressions like the following examples.
///
/// *   The following expression returns all records from the specified object.
///
///     `SELECT * FROM Object`
///
/// *   Assuming that you are not using any headers for data stored in the object, you can specify columns with positional headers.
///
///     `SELECT s.\_1, s.\_2 FROM Object s WHERE s._3 > 100`
///
/// *   If you have headers and you set the `fileHeaderInfo` in the `CSV` structure in the request body to `USE`, you can specify headers in the query. (If you set the `fileHeaderInfo` field to `IGNORE`, the first row is skipped for the query.) You cannot mix ordinal positions with header column names.
///
///     `SELECT s.Id, s.FirstName, s.SSN FROM S3Object s`
///
///
/// When making a select request, you can also do the following:
///
/// *   To expedite your queries, specify the `Expedited` tier. For more information about tiers, see "Restoring Archives," later in this topic.
///
/// *   Specify details about the data serialization format of both the input object that is being queried and the serialization of the CSV-encoded query results.
///
///
/// The following are additional important facts about the select feature:
///
/// *   The output results are new Amazon S3 objects. Unlike archive retrievals, they are stored until explicitly deleted-manually or through a lifecycle configuration.
///
/// *   You can issue more than one select request on the same Amazon S3 object. Amazon S3 doesn't duplicate requests, so avoid issuing duplicate requests.
///
/// *   Amazon S3 accepts a select request even if the object has already been restored. A select request doesn’t return error response `409`.
///
///
/// Permissions
///
/// To use this operation, you must have permissions to perform the `s3:RestoreObject` action. The bucket owner has this permission by default and can grant this permission to others. For more information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources) and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html) in the _Amazon S3 User Guide_.
///
/// Restoring objects
///
/// Objects that you archive to the S3 Glacier Flexible Retrieval Flexible Retrieval or S3 Glacier Deep Archive storage class, and S3 Intelligent-Tiering Archive or S3 Intelligent-Tiering Deep Archive tiers, are not accessible in real time. For objects in the S3 Glacier Flexible Retrieval Flexible Retrieval or S3 Glacier Deep Archive storage classes, you must first initiate a restore request, and then wait until a temporary copy of the object is available. If you want a permanent copy of the object, create a copy of it in the Amazon S3 Standard storage class in your S3 bucket. To access an archived object, you must restore the object for the duration (number of days) that you specify. For objects in the Archive Access or Deep Archive Access tiers of S3 Intelligent-Tiering, you must first initiate a restore request, and then wait until the object is moved into the Frequent Access tier.
///
/// To restore a specific object version, you can provide a version ID. If you don't provide a version ID, Amazon S3 restores the current version.
///
/// When restoring an archived object, you can specify one of the following data access tier options in the `Tier` element of the request body:
///
/// *   `Expedited` \- Expedited retrievals allow you to quickly access your data stored in the S3 Glacier Flexible Retrieval Flexible Retrieval storage class or S3 Intelligent-Tiering Archive tier when occasional urgent requests for restoring archives are required. For all but the largest archived objects (250 MB+), data accessed using Expedited retrievals is typically made available within 1–5 minutes. Provisioned capacity ensures that retrieval capacity for Expedited retrievals is available when you need it. Expedited retrievals and provisioned capacity are not available for objects stored in the S3 Glacier Deep Archive storage class or S3 Intelligent-Tiering Deep Archive tier.
///
/// *   `Standard` \- Standard retrievals allow you to access any of your archived objects within several hours. This is the default option for retrieval requests that do not specify the retrieval option. Standard retrievals typically finish within 3–5 hours for objects stored in the S3 Glacier Flexible Retrieval Flexible Retrieval storage class or S3 Intelligent-Tiering Archive tier. They typically finish within 12 hours for objects stored in the S3 Glacier Deep Archive storage class or S3 Intelligent-Tiering Deep Archive tier. Standard retrievals are free for objects stored in S3 Intelligent-Tiering.
///
/// *   `Bulk` \- Bulk retrievals free for objects stored in the S3 Glacier Flexible Retrieval and S3 Intelligent-Tiering storage classes, enabling you to retrieve large amounts, even petabytes, of data at no cost. Bulk retrievals typically finish within 5–12 hours for objects stored in the S3 Glacier Flexible Retrieval Flexible Retrieval storage class or S3 Intelligent-Tiering Archive tier. Bulk retrievals are also the lowest-cost retrieval option when restoring objects from S3 Glacier Deep Archive. They typically finish within 48 hours for objects stored in the S3 Glacier Deep Archive storage class or S3 Intelligent-Tiering Deep Archive tier.
///
///
/// For more information about archive retrieval options and provisioned capacity for `Expedited` data access, see [Restoring Archived Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html) in the _Amazon S3 User Guide_.
///
/// You can use Amazon S3 restore speed upgrade to change the restore speed to a faster speed while it is in progress. For more information, see [Upgrading the speed of an in-progress restore](https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html#restoring-objects-upgrade-tier.title.html) in the _Amazon S3 User Guide_.
///
/// To get the status of object restoration, you can send a `HEAD` request. Operations return the `x-amz-restore` header, which provides information about the restoration status, in the response. You can use Amazon S3 event notifications to notify you when a restore is initiated or completed. For more information, see [Configuring Amazon S3 Event Notifications](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the _Amazon S3 User Guide_.
///
/// After restoring an archived object, you can update the restoration period by reissuing the request with a new period. Amazon S3 updates the restoration period relative to the current time and charges only for the request-there are no data transfer charges. You cannot update the restoration period when Amazon S3 is actively processing your current restore request for the object.
///
/// If your bucket has a lifecycle configuration with a rule that includes an expiration action, the object expiration overrides the life span that you specify in a restore request. For example, if you restore an object copy for 10 days, but the object is scheduled to expire in 3 days, Amazon S3 deletes the object in 3 days. For more information about lifecycle configuration, see [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html) and [Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html) in _Amazon S3 User Guide_.
///
/// Responses
///
/// A successful action returns either the `200 OK` or `202 Accepted` status code.
///
/// *   If the object is not previously restored, then Amazon S3 returns `202 Accepted` in the response.
///
/// *   If the object is previously restored, Amazon S3 returns `200 OK` in the response.
///
///
/// *   Special errors:
///
///     *   _Code: RestoreAlreadyInProgress_
///
///     *   _Cause: Object restore is already in progress. (This error does not apply to SELECT type requests.)_
///
///     *   _HTTP Status Code: 409 Conflict_
///
///     *   _SOAP Fault Code Prefix: Client_
///
/// *   *   _Code: GlacierExpeditedRetrievalNotAvailable_
///
///     *   _Cause: expedited retrievals are currently not available. Try again later. (Returned if there is insufficient capacity to process the Expedited request. This error applies only to Expedited retrievals and not to S3 Standard or Bulk retrievals.)_
///
///     *   _HTTP Status Code: 503_
///
///     *   _SOAP Fault Code Prefix: N/A_
///
///
/// The following operations are related to `RestoreObject`:
///
/// *   [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html)
///
/// *   [GetBucketNotificationConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketNotificationConfiguration.html)
class RestoreObjectOperation extends _i1.HttpOperation<
    _i2.RestoreRequest,
    _i3.RestoreObjectRequest,
    _i4.RestoreObjectOutputPayload,
    _i4.RestoreObjectOutput> {
  /// Restores an archived copy of an object back into Amazon S3
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  ///
  /// This action performs the following types of requests:
  ///
  /// *   `select` \- Perform a select query on an archived object
  ///
  /// *   `restore an archive` \- Restore an archived object
  ///
  ///
  /// For more information about the `S3` structure in the request body, see the following:
  ///
  /// *   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
  ///
  /// *   [Managing Access with ACLs](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html) in the _Amazon S3 User Guide_
  ///
  /// *   [Protecting Data Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html) in the _Amazon S3 User Guide_
  ///
  ///
  /// Define the SQL expression for the `SELECT` type of restoration for your query in the request body's `SelectParameters` structure. You can use expressions like the following examples.
  ///
  /// *   The following expression returns all records from the specified object.
  ///
  ///     `SELECT * FROM Object`
  ///
  /// *   Assuming that you are not using any headers for data stored in the object, you can specify columns with positional headers.
  ///
  ///     `SELECT s.\_1, s.\_2 FROM Object s WHERE s._3 > 100`
  ///
  /// *   If you have headers and you set the `fileHeaderInfo` in the `CSV` structure in the request body to `USE`, you can specify headers in the query. (If you set the `fileHeaderInfo` field to `IGNORE`, the first row is skipped for the query.) You cannot mix ordinal positions with header column names.
  ///
  ///     `SELECT s.Id, s.FirstName, s.SSN FROM S3Object s`
  ///
  ///
  /// When making a select request, you can also do the following:
  ///
  /// *   To expedite your queries, specify the `Expedited` tier. For more information about tiers, see "Restoring Archives," later in this topic.
  ///
  /// *   Specify details about the data serialization format of both the input object that is being queried and the serialization of the CSV-encoded query results.
  ///
  ///
  /// The following are additional important facts about the select feature:
  ///
  /// *   The output results are new Amazon S3 objects. Unlike archive retrievals, they are stored until explicitly deleted-manually or through a lifecycle configuration.
  ///
  /// *   You can issue more than one select request on the same Amazon S3 object. Amazon S3 doesn't duplicate requests, so avoid issuing duplicate requests.
  ///
  /// *   Amazon S3 accepts a select request even if the object has already been restored. A select request doesn’t return error response `409`.
  ///
  ///
  /// Permissions
  ///
  /// To use this operation, you must have permissions to perform the `s3:RestoreObject` action. The bucket owner has this permission by default and can grant this permission to others. For more information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources) and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html) in the _Amazon S3 User Guide_.
  ///
  /// Restoring objects
  ///
  /// Objects that you archive to the S3 Glacier Flexible Retrieval Flexible Retrieval or S3 Glacier Deep Archive storage class, and S3 Intelligent-Tiering Archive or S3 Intelligent-Tiering Deep Archive tiers, are not accessible in real time. For objects in the S3 Glacier Flexible Retrieval Flexible Retrieval or S3 Glacier Deep Archive storage classes, you must first initiate a restore request, and then wait until a temporary copy of the object is available. If you want a permanent copy of the object, create a copy of it in the Amazon S3 Standard storage class in your S3 bucket. To access an archived object, you must restore the object for the duration (number of days) that you specify. For objects in the Archive Access or Deep Archive Access tiers of S3 Intelligent-Tiering, you must first initiate a restore request, and then wait until the object is moved into the Frequent Access tier.
  ///
  /// To restore a specific object version, you can provide a version ID. If you don't provide a version ID, Amazon S3 restores the current version.
  ///
  /// When restoring an archived object, you can specify one of the following data access tier options in the `Tier` element of the request body:
  ///
  /// *   `Expedited` \- Expedited retrievals allow you to quickly access your data stored in the S3 Glacier Flexible Retrieval Flexible Retrieval storage class or S3 Intelligent-Tiering Archive tier when occasional urgent requests for restoring archives are required. For all but the largest archived objects (250 MB+), data accessed using Expedited retrievals is typically made available within 1–5 minutes. Provisioned capacity ensures that retrieval capacity for Expedited retrievals is available when you need it. Expedited retrievals and provisioned capacity are not available for objects stored in the S3 Glacier Deep Archive storage class or S3 Intelligent-Tiering Deep Archive tier.
  ///
  /// *   `Standard` \- Standard retrievals allow you to access any of your archived objects within several hours. This is the default option for retrieval requests that do not specify the retrieval option. Standard retrievals typically finish within 3–5 hours for objects stored in the S3 Glacier Flexible Retrieval Flexible Retrieval storage class or S3 Intelligent-Tiering Archive tier. They typically finish within 12 hours for objects stored in the S3 Glacier Deep Archive storage class or S3 Intelligent-Tiering Deep Archive tier. Standard retrievals are free for objects stored in S3 Intelligent-Tiering.
  ///
  /// *   `Bulk` \- Bulk retrievals free for objects stored in the S3 Glacier Flexible Retrieval and S3 Intelligent-Tiering storage classes, enabling you to retrieve large amounts, even petabytes, of data at no cost. Bulk retrievals typically finish within 5–12 hours for objects stored in the S3 Glacier Flexible Retrieval Flexible Retrieval storage class or S3 Intelligent-Tiering Archive tier. Bulk retrievals are also the lowest-cost retrieval option when restoring objects from S3 Glacier Deep Archive. They typically finish within 48 hours for objects stored in the S3 Glacier Deep Archive storage class or S3 Intelligent-Tiering Deep Archive tier.
  ///
  ///
  /// For more information about archive retrieval options and provisioned capacity for `Expedited` data access, see [Restoring Archived Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html) in the _Amazon S3 User Guide_.
  ///
  /// You can use Amazon S3 restore speed upgrade to change the restore speed to a faster speed while it is in progress. For more information, see [Upgrading the speed of an in-progress restore](https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html#restoring-objects-upgrade-tier.title.html) in the _Amazon S3 User Guide_.
  ///
  /// To get the status of object restoration, you can send a `HEAD` request. Operations return the `x-amz-restore` header, which provides information about the restoration status, in the response. You can use Amazon S3 event notifications to notify you when a restore is initiated or completed. For more information, see [Configuring Amazon S3 Event Notifications](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the _Amazon S3 User Guide_.
  ///
  /// After restoring an archived object, you can update the restoration period by reissuing the request with a new period. Amazon S3 updates the restoration period relative to the current time and charges only for the request-there are no data transfer charges. You cannot update the restoration period when Amazon S3 is actively processing your current restore request for the object.
  ///
  /// If your bucket has a lifecycle configuration with a rule that includes an expiration action, the object expiration overrides the life span that you specify in a restore request. For example, if you restore an object copy for 10 days, but the object is scheduled to expire in 3 days, Amazon S3 deletes the object in 3 days. For more information about lifecycle configuration, see [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html) and [Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html) in _Amazon S3 User Guide_.
  ///
  /// Responses
  ///
  /// A successful action returns either the `200 OK` or `202 Accepted` status code.
  ///
  /// *   If the object is not previously restored, then Amazon S3 returns `202 Accepted` in the response.
  ///
  /// *   If the object is previously restored, Amazon S3 returns `200 OK` in the response.
  ///
  ///
  /// *   Special errors:
  ///
  ///     *   _Code: RestoreAlreadyInProgress_
  ///
  ///     *   _Cause: Object restore is already in progress. (This error does not apply to SELECT type requests.)_
  ///
  ///     *   _HTTP Status Code: 409 Conflict_
  ///
  ///     *   _SOAP Fault Code Prefix: Client_
  ///
  /// *   *   _Code: GlacierExpeditedRetrievalNotAvailable_
  ///
  ///     *   _Cause: expedited retrievals are currently not available. Try again later. (Returned if there is insufficient capacity to process the Expedited request. This error applies only to Expedited retrievals and not to S3 Standard or Bulk retrievals.)_
  ///
  ///     *   _HTTP Status Code: 503_
  ///
  ///     *   _SOAP Fault Code Prefix: N/A_
  ///
  ///
  /// The following operations are related to `RestoreObject`:
  ///
  /// *   [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html)
  ///
  /// *   [GetBucketNotificationConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketNotificationConfiguration.html)
  RestoreObjectOperation({
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
      _i1.HttpProtocol<
          _i2.RestoreRequest,
          _i3.RestoreObjectRequest,
          _i4.RestoreObjectOutputPayload,
          _i4.RestoreObjectOutput>> protocols = [
    _i5.RestXmlProtocol(
      serializers: _i7.serializers,
      builderFactories: _i7.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
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
  _i1.HttpRequest buildRequest(_i3.RestoreObjectRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}/{Key+}?restore&x-id=RestoreObject'
            : r'/{Key+}?restore&x-id=RestoreObject';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.requestPayer != null) {
          b.headers['x-amz-request-payer'] = input.requestPayer!.value;
        }
        if (input.checksumAlgorithm != null) {
          b.headers['x-amz-sdk-checksum-algorithm'] =
              input.checksumAlgorithm!.value;
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
        if (input.checksumAlgorithm != null) {
          b.requestInterceptors
              .add(_i5.WithChecksum(input.checksumAlgorithm!.value));
        }
      });
  @override
  int successCode([_i4.RestoreObjectOutput? output]) => 200;
  @override
  _i4.RestoreObjectOutput buildOutput(
    _i4.RestoreObjectOutputPayload payload,
    _i8.AWSBaseHttpResponse response,
  ) =>
      _i4.RestoreObjectOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i10.ObjectAlreadyInActiveTierError,
            _i10.ObjectAlreadyInActiveTierError>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.s3',
            shape: 'ObjectAlreadyInActiveTierError',
          ),
          _i1.ErrorKind.client,
          _i10.ObjectAlreadyInActiveTierError,
          builder: _i10.ObjectAlreadyInActiveTierError.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'RestoreObject';
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
  _i1.SmithyOperation<_i4.RestoreObjectOutput> run(
    _i3.RestoreObjectRequest input, {
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
        ...{_i8.AWSHeaders.sdkInvocationId: _i8.uuid(secure: true)},
      },
    );
  }
}
