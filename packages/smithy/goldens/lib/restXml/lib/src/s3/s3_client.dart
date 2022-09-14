// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_xml_v1.s3.s3_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:rest_xml_v1/src/s3/model/get_bucket_location_output.dart'
    as _i4;
import 'package:rest_xml_v1/src/s3/model/get_bucket_location_request.dart'
    as _i5;
import 'package:rest_xml_v1/src/s3/model/list_objects_v2_output.dart' as _i8;
import 'package:rest_xml_v1/src/s3/model/list_objects_v2_request.dart' as _i9;
import 'package:rest_xml_v1/src/s3/operation/get_bucket_location_operation.dart'
    as _i7;
import 'package:rest_xml_v1/src/s3/operation/list_objects_v2_operation.dart'
    as _i10;
import 'package:smithy/smithy.dart' as _i6;
import 'package:smithy_aws/smithy_aws.dart' as _i1;

class S3Client {
  const S3Client(
      {required String region,
      Uri? baseUri,
      required _i1.S3ClientConfig s3ClientConfig,
      required _i2.AWSCredentialsProvider credentialsProvider})
      : _region = region,
        _baseUri = baseUri,
        _s3ClientConfig = s3ClientConfig,
        _credentialsProvider = credentialsProvider;

  final String _region;

  final Uri? _baseUri;

  final _i1.S3ClientConfig _s3ClientConfig;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  _i3.Future<_i4.GetBucketLocationOutput> getBucketLocation(
      _i5.GetBucketLocationRequest input,
      {_i6.HttpClient? client}) {
    return _i7.GetBucketLocationOperation(
            region: _region,
            baseUri: _baseUri,
            s3ClientConfig: _s3ClientConfig,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  _i3.Future<_i6.PaginatedResult<_i8.ListObjectsV2Output, int>> listObjectsV2(
      _i9.ListObjectsV2Request input,
      {_i6.HttpClient? client}) {
    return _i10.ListObjectsV2Operation(
            region: _region,
            baseUri: _baseUri,
            s3ClientConfig: _s3ClientConfig,
            credentialsProvider: _credentialsProvider)
        .runPaginated(input, client: client);
  }
}
