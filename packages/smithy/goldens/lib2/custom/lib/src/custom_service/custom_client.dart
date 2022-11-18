// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library custom_v2.custom_service.custom_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:custom_v2/src/custom_service/model/http_checksum_not_required_with_member_input.dart'
    as _i3;
import 'package:custom_v2/src/custom_service/model/http_checksum_really_not_required_input.dart'
    as _i5;
import 'package:custom_v2/src/custom_service/model/http_checksum_really_required_input.dart'
    as _i7;
import 'package:custom_v2/src/custom_service/model/http_checksum_required_input.dart'
    as _i9;
import 'package:custom_v2/src/custom_service/model/http_checksum_required_with_member_input.dart'
    as _i11;
import 'package:custom_v2/src/custom_service/model/nested_collections_input.dart'
    as _i13;
import 'package:custom_v2/src/custom_service/operation/http_checksum_not_required_with_member_operation.dart'
    as _i4;
import 'package:custom_v2/src/custom_service/operation/http_checksum_really_not_required_operation.dart'
    as _i6;
import 'package:custom_v2/src/custom_service/operation/http_checksum_really_required_operation.dart'
    as _i8;
import 'package:custom_v2/src/custom_service/operation/http_checksum_required_operation.dart'
    as _i10;
import 'package:custom_v2/src/custom_service/operation/http_checksum_required_with_member_operation.dart'
    as _i12;
import 'package:custom_v2/src/custom_service/operation/nested_collections_operation.dart'
    as _i14;
import 'package:smithy/smithy.dart' as _i2;

class CustomClient {
  const CustomClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
  })  : _client = client,
        _region = region,
        _baseUri = baseUri;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  _i2.SmithyOperation<void> httpChecksumNotRequiredWithMember(
    _i3.HttpChecksumNotRequiredWithMemberInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i4.HttpChecksumNotRequiredWithMemberOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Tests the behavior of @httpChecksum combined with @httpChecksumRequired as described \[here\](https://awslabs.github.io/smithy/2.0/aws/aws-core.html#behavior-with-httpchecksumrequired).
  _i2.SmithyOperation<void> httpChecksumReallyNotRequired(
    _i5.HttpChecksumReallyNotRequiredInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i6.HttpChecksumReallyNotRequiredOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Tests the behavior of @httpChecksum combined with @httpChecksumRequired as described \[here\](https://awslabs.github.io/smithy/2.0/aws/aws-core.html#behavior-with-httpchecksumrequired).
  _i2.SmithyOperation<void> httpChecksumReallyRequired(
    _i7.HttpChecksumReallyRequiredInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i8.HttpChecksumReallyRequiredOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> httpChecksumRequired(
    _i9.HttpChecksumRequiredInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i10.HttpChecksumRequiredOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> httpChecksumRequiredWithMember(
    _i11.HttpChecksumRequiredWithMemberInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i12.HttpChecksumRequiredWithMemberOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> nestedCollections(
    _i13.NestedCollectionsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i14.NestedCollectionsOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
