// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v1.rest_json_validation_protocol.rest_json_validation_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/malformed_enum_input.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/malformed_length_input.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/malformed_length_override_input.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/malformed_length_query_string_input.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/malformed_pattern_input.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/malformed_pattern_override_input.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/malformed_range_input.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/malformed_range_override_input.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/malformed_required_input.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/malformed_unique_items_input.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/recursive_structures_input.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/sensitive_validation_input.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/operation/malformed_enum_operation.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/operation/malformed_length_operation.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/operation/malformed_length_override_operation.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/operation/malformed_length_query_string_operation.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/operation/malformed_pattern_operation.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/operation/malformed_pattern_override_operation.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/operation/malformed_range_operation.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/operation/malformed_range_override_operation.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/operation/malformed_required_operation.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/operation/malformed_unique_items_operation.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/operation/recursive_structures_operation.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/operation/sensitive_validation_operation.dart';
import 'package:smithy/smithy.dart' as _i2;

/// A REST JSON service that sends JSON requests and responses with validation applied
class RestJsonValidationProtocolClient {
  /// A REST JSON service that sends JSON requests and responses with validation applied
  const RestJsonValidationProtocolClient({
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

  _i2.SmithyOperation<void> malformedEnum(
    MalformedEnumInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedEnumOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedLength(
    MalformedLengthInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedLengthOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedLengthOverride(
    MalformedLengthOverrideInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedLengthOverrideOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedLengthQueryString(
    MalformedLengthQueryStringInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedLengthQueryStringOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedPattern(
    MalformedPatternInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedPatternOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedPatternOverride(
    MalformedPatternOverrideInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedPatternOverrideOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedRange(
    MalformedRangeInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedRangeOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedRangeOverride(
    MalformedRangeOverrideInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedRangeOverrideOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedRequired(
    MalformedRequiredInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedRequiredOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedUniqueItems(
    MalformedUniqueItemsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedUniqueItemsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> recursiveStructures(
    RecursiveStructuresInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return RecursiveStructuresOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> sensitiveValidation(
    SensitiveValidationInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return SensitiveValidationOperation(
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
