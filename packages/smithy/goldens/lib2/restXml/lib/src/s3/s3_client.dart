// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_xml_v2.s3.s3_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:rest_xml_v2/src/s3/model/get_bucket_location_output.dart'
    as _i5;
import 'package:rest_xml_v2/src/s3/model/get_bucket_location_request.dart'
    as _i6;
import 'package:rest_xml_v2/src/s3/model/list_objects_v2_output.dart' as _i8;
import 'package:rest_xml_v2/src/s3/model/list_objects_v2_request.dart' as _i9;
import 'package:rest_xml_v2/src/s3/operation/get_bucket_location_operation.dart'
    as _i7;
import 'package:rest_xml_v2/src/s3/operation/list_objects_v2_operation.dart'
    as _i10;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

class S3Client {
  const S3Client({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    required _i2.S3ClientConfig s3ClientConfig,
    required _i3.AWSCredentialsProvider credentialsProvider,
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _s3ClientConfig = s3ClientConfig,
        _credentialsProvider = credentialsProvider;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final _i2.S3ClientConfig _s3ClientConfig;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  _i4.SmithyOperation<_i5.GetBucketLocationOutput> getBucketLocation(
    _i6.GetBucketLocationRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i7.GetBucketLocationOperation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: _s3ClientConfig,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i4.SmithyOperation<_i4.PaginatedResult<_i8.ListObjectsV2Output, int, String>>
      listObjectsV2(
    _i9.ListObjectsV2Request input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i10.ListObjectsV2Operation(
      region: _region,
      baseUri: _baseUri,
      s3ClientConfig: _s3ClientConfig,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }
}
