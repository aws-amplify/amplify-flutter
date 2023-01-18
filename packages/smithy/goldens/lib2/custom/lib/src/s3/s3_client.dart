// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library custom_v2.s3.s3_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:custom_v2/src/s3/model/copy_object_output.dart' as _i5;
import 'package:custom_v2/src/s3/model/copy_object_request.dart' as _i6;
import 'package:custom_v2/src/s3/model/get_object_output.dart' as _i8;
import 'package:custom_v2/src/s3/model/get_object_request.dart' as _i9;
import 'package:custom_v2/src/s3/operation/copy_object_operation.dart' as _i7;
import 'package:custom_v2/src/s3/operation/get_object_operation.dart' as _i10;
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

  _i4.SmithyOperation<_i5.CopyObjectOutput> copyObject(
    _i6.CopyObjectRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i7.CopyObjectOperation(
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

  _i4.SmithyOperation<_i8.GetObjectOutput> getObject(
    _i9.GetObjectRequest input, {
    _i1.AWSHttpClient? client,
    _i2.S3ClientConfig? s3ClientConfig,
    _i3.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i10.GetObjectOperation(
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
