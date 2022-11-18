// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v2.glacier.glacier_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:rest_json1_v2/src/glacier/model/archive_creation_output.dart'
    as _i4;
import 'package:rest_json1_v2/src/glacier/model/upload_archive_input.dart'
    as _i5;
import 'package:rest_json1_v2/src/glacier/model/upload_multipart_part_input.dart'
    as _i8;
import 'package:rest_json1_v2/src/glacier/model/upload_multipart_part_output.dart'
    as _i7;
import 'package:rest_json1_v2/src/glacier/operation/upload_archive_operation.dart'
    as _i6;
import 'package:rest_json1_v2/src/glacier/operation/upload_multipart_part_operation.dart'
    as _i9;
import 'package:smithy/smithy.dart' as _i3;

class GlacierClient {
  const GlacierClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    required _i2.AWSCredentialsProvider credentialsProvider,
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  _i3.SmithyOperation<_i4.ArchiveCreationOutput> uploadArchive(
    _i5.UploadArchiveInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i6.UploadArchiveOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i3.SmithyOperation<_i7.UploadMultipartPartOutput> uploadMultipartPart(
    _i8.UploadMultipartPartInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i9.UploadMultipartPartOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
