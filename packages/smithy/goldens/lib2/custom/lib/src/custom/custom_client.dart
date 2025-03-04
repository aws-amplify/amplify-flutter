// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library custom_v2.custom.custom_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:custom_v2/src/custom/model/default_values_input.dart';
import 'package:custom_v2/src/custom/model/default_values_output.dart';
import 'package:custom_v2/src/custom/model/http_checksum_not_required_with_member_input.dart';
import 'package:custom_v2/src/custom/model/http_checksum_really_not_required_input.dart';
import 'package:custom_v2/src/custom/model/http_checksum_really_required_input.dart';
import 'package:custom_v2/src/custom/model/http_checksum_required_input.dart';
import 'package:custom_v2/src/custom/model/http_checksum_required_with_member_input.dart';
import 'package:custom_v2/src/custom/model/nested_collections_input.dart';
import 'package:custom_v2/src/custom/operation/default_values_operation.dart';
import 'package:custom_v2/src/custom/operation/http_checksum_not_required_with_member_operation.dart';
import 'package:custom_v2/src/custom/operation/http_checksum_really_not_required_operation.dart';
import 'package:custom_v2/src/custom/operation/http_checksum_really_required_operation.dart';
import 'package:custom_v2/src/custom/operation/http_checksum_required_operation.dart';
import 'package:custom_v2/src/custom/operation/http_checksum_required_with_member_operation.dart';
import 'package:custom_v2/src/custom/operation/nested_collections_operation.dart';
import 'package:smithy/smithy.dart' as _i2;

class CustomClient {
  const CustomClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    List<_i2.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i2.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final List<_i2.HttpRequestInterceptor> _requestInterceptors;

  final List<_i2.HttpResponseInterceptor> _responseInterceptors;

  _i2.SmithyOperation<DefaultValuesOutput> defaultValues(
    DefaultValuesInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return DefaultValuesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> httpChecksumNotRequiredWithMember(
    HttpChecksumNotRequiredWithMemberInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpChecksumNotRequiredWithMemberOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Tests the behavior of @httpChecksum combined with @httpChecksumRequired as described \[here\](https://awslabs.github.io/smithy/2.0/aws/aws-core.html#behavior-with-httpchecksumrequired).
  _i2.SmithyOperation<void> httpChecksumReallyNotRequired(
    HttpChecksumReallyNotRequiredInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpChecksumReallyNotRequiredOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Tests the behavior of @httpChecksum combined with @httpChecksumRequired as described \[here\](https://awslabs.github.io/smithy/2.0/aws/aws-core.html#behavior-with-httpchecksumrequired).
  _i2.SmithyOperation<void> httpChecksumReallyRequired(
    HttpChecksumReallyRequiredInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpChecksumReallyRequiredOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> httpChecksumRequired(
    HttpChecksumRequiredInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpChecksumRequiredOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> httpChecksumRequiredWithMember(
    HttpChecksumRequiredWithMemberInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpChecksumRequiredWithMemberOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> nestedCollections(
    NestedCollectionsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return NestedCollectionsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
