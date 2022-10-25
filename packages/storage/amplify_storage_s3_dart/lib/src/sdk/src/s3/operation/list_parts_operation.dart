// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.operation.list_parts_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/endpoint_resolver.dart'
    as _i10;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/serializers.dart'
    as _i8;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_parts_output.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_parts_request.dart'
    as _i2;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/part.dart' as _i5;
import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i7;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i6;

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
class ListPartsOperation extends _i1.PaginatedHttpOperation<
    _i2.ListPartsRequestPayload,
    _i2.ListPartsRequest,
    _i3.ListPartsOutputPayload,
    _i3.ListPartsOutput,
    String,
    int,
    _i4.BuiltList<_i5.Part>> {
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
  ListPartsOperation({
    required String region,
    Uri? baseUri,
    _i6.S3ClientConfig s3ClientConfig = const _i6.S3ClientConfig(),
    _i7.AWSCredentialsProvider credentialsProvider =
        const _i7.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _s3ClientConfig = s3ClientConfig,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.ListPartsRequestPayload, _i2.ListPartsRequest,
          _i3.ListPartsOutputPayload, _i3.ListPartsOutput>> protocols = [
    _i6.RestXmlProtocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        _i6.WithSigV4(
          region: _region,
          service: _i9.AWSService.s3,
          credentialsProvider: _credentialsProvider,
          serviceConfiguration: _s3ClientConfig.signerConfiguration ??
              _i7.S3ServiceConfiguration(),
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i6.WithSdkInvocationId(),
        const _i6.WithSdkRequest(),
      ],
      responseInterceptors: [],
      noErrorWrapping: true,
    )
  ];

  late final _i6.AWSEndpoint _awsEndpoint = _i10.endpointResolver.resolve(
    _i10.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i6.S3ClientConfig _s3ClientConfig;

  final _i7.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.ListPartsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}/{Key+}?x-id=ListParts'
            : r'/{Key+}?x-id=ListParts';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.requestPayer != null) {
          b.headers['x-amz-request-payer'] = input.requestPayer!.value;
        }
        if (input.expectedBucketOwner != null) {
          if (input.expectedBucketOwner!.isNotEmpty) {
            b.headers['x-amz-expected-bucket-owner'] =
                input.expectedBucketOwner!;
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
        b.queryParameters.add(
          'max-parts',
          input.maxParts.toString(),
        );
        if (input.partNumberMarker != null) {
          b.queryParameters.add(
            'part-number-marker',
            input.partNumberMarker!,
          );
        }
        b.queryParameters.add(
          'uploadId',
          input.uploadId,
        );
      });
  @override
  int successCode([_i3.ListPartsOutput? output]) => 200;
  @override
  _i3.ListPartsOutput buildOutput(
    _i3.ListPartsOutputPayload payload,
    _i9.AWSStreamedHttpResponse response,
  ) =>
      _i3.ListPartsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i6.AWSRetryer get retryer => _i6.AWSRetryer();
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
  _i11.Future<_i3.ListPartsOutput> run(
    _i2.ListPartsRequest input, {
    _i1.HttpClient? client,
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
        ...{_i9.AWSHeaders.sdkInvocationId: _i9.uuid(secure: true)}
      },
    );
  }

  @override
  String? getToken(_i3.ListPartsOutput output) => output.nextPartNumberMarker;
  @override
  _i4.BuiltList<_i5.Part> getItems(_i3.ListPartsOutput output) =>
      output.parts ?? _i4.BuiltList();
  @override
  _i2.ListPartsRequest rebuildInput(
    _i2.ListPartsRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.partNumberMarker = token;
        b.maxParts = pageSize;
      });
}
