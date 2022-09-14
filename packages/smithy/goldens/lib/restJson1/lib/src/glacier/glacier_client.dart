// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1.glacier.glacier_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i1;
import 'package:rest_json1/src/glacier/model/archive_creation_output.dart'
    as _i3;
import 'package:rest_json1/src/glacier/model/upload_archive_input.dart' as _i4;
import 'package:rest_json1/src/glacier/model/upload_multipart_part_input.dart'
    as _i8;
import 'package:rest_json1/src/glacier/model/upload_multipart_part_output.dart'
    as _i7;
import 'package:rest_json1/src/glacier/operation/upload_archive_operation.dart'
    as _i6;
import 'package:rest_json1/src/glacier/operation/upload_multipart_part_operation.dart'
    as _i9;
import 'package:smithy/smithy.dart' as _i5;

class GlacierClient {
  const GlacierClient(
      {required String region,
      Uri? baseUri,
      required _i1.AWSCredentialsProvider credentialsProvider})
      : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  final String _region;

  final Uri? _baseUri;

  final _i1.AWSCredentialsProvider _credentialsProvider;

  _i2.Future<_i3.ArchiveCreationOutput> uploadArchive(
      _i4.UploadArchiveInput input,
      {_i5.HttpClient? client}) {
    return _i6.UploadArchiveOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  _i2.Future<_i7.UploadMultipartPartOutput> uploadMultipartPart(
      _i8.UploadMultipartPartInput input,
      {_i5.HttpClient? client}) {
    return _i9.UploadMultipartPartOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }
}
