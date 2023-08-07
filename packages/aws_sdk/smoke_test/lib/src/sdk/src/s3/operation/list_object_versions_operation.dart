// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.operation.list_object_versions_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_object_versions_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_object_versions_request.dart';

/// Returns metadata about all versions of the objects in a bucket. You can also use request parameters as selection criteria to return metadata about a subset of all the object versions.
///
/// To use this operation, you must have permission to perform the `s3:ListBucketVersions` action. Be aware of the name difference.
///
/// A `200 OK` response can contain valid or invalid XML. Make sure to design your application to parse the contents of the response and handle it appropriately.
///
/// To use this operation, you must have READ access to the bucket.
///
/// This action is not supported by Amazon S3 on Outposts.
///
/// The following operations are related to `ListObjectVersions`:
///
/// *   [ListObjectsV2](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html)
///
/// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
///
/// *   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
///
/// *   [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)
class ListObjectVersionsOperation extends _i1.HttpOperation<
    ListObjectVersionsRequestPayload,
    ListObjectVersionsRequest,
    ListObjectVersionsOutputPayload,
    ListObjectVersionsOutput> {
  /// Returns metadata about all versions of the objects in a bucket. You can also use request parameters as selection criteria to return metadata about a subset of all the object versions.
  ///
  /// To use this operation, you must have permission to perform the `s3:ListBucketVersions` action. Be aware of the name difference.
  ///
  /// A `200 OK` response can contain valid or invalid XML. Make sure to design your application to parse the contents of the response and handle it appropriately.
  ///
  /// To use this operation, you must have READ access to the bucket.
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  ///
  /// The following operations are related to `ListObjectVersions`:
  ///
  /// *   [ListObjectsV2](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html)
  ///
  /// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
  ///
  /// *   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
  ///
  /// *   [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)
  ListObjectVersionsOperation({
    required String region,
    Uri? baseUri,
    _i2.S3ClientConfig s3ClientConfig = const _i2.S3ClientConfig(),
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
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
          ListObjectVersionsRequestPayload,
          ListObjectVersionsRequest,
          ListObjectVersionsOutputPayload,
          ListObjectVersionsOutput>> protocols = [
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
  _i1.HttpRequest buildRequest(ListObjectVersionsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}?versions'
            : r'/?versions';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.expectedBucketOwner != null) {
          if (input.expectedBucketOwner!.isNotEmpty) {
            b.headers['x-amz-expected-bucket-owner'] =
                input.expectedBucketOwner!;
          }
        }
        if (input.requestPayer != null) {
          b.headers['x-amz-request-payer'] = input.requestPayer!.value;
        }
        if (input.optionalObjectAttributes != null) {
          if (input.optionalObjectAttributes!.isNotEmpty) {
            b.headers['x-amz-optional-object-attributes'] = input
                .optionalObjectAttributes!
                .map((el) => el.value)
                .map((el) => _i1.sanitizeHeader(el))
                .join(', ');
          }
        }
        if (input.delimiter != null) {
          b.queryParameters.add(
            'delimiter',
            input.delimiter!,
          );
        }
        if (input.encodingType != null) {
          b.queryParameters.add(
            'encoding-type',
            input.encodingType!.value,
          );
        }
        if (input.keyMarker != null) {
          b.queryParameters.add(
            'key-marker',
            input.keyMarker!,
          );
        }
        if (input.maxKeys != null) {
          b.queryParameters.add(
            'max-keys',
            input.maxKeys!.toString(),
          );
        }
        if (input.prefix != null) {
          b.queryParameters.add(
            'prefix',
            input.prefix!,
          );
        }
        if (input.versionIdMarker != null) {
          b.queryParameters.add(
            'version-id-marker',
            input.versionIdMarker!,
          );
        }
      });
  @override
  int successCode([ListObjectVersionsOutput? output]) => 200;
  @override
  ListObjectVersionsOutput buildOutput(
    ListObjectVersionsOutputPayload payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      ListObjectVersionsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'ListObjectVersions';
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
  _i1.SmithyOperation<ListObjectVersionsOutput> run(
    ListObjectVersionsRequest input, {
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
