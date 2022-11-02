// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.rest_json_validation_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_enum_input.dart'
    as _i3;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_input.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_override_input.dart'
    as _i7;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_query_string_input.dart'
    as _i9;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_pattern_input.dart'
    as _i11;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_pattern_override_input.dart'
    as _i13;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_range_input.dart'
    as _i15;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_range_override_input.dart'
    as _i17;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_required_input.dart'
    as _i19;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_structures_input.dart'
    as _i21;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/sensitive_validation_input.dart'
    as _i23;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/operation/malformed_enum_operation.dart'
    as _i4;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/operation/malformed_length_operation.dart'
    as _i6;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/operation/malformed_length_override_operation.dart'
    as _i8;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/operation/malformed_length_query_string_operation.dart'
    as _i10;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/operation/malformed_pattern_operation.dart'
    as _i12;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/operation/malformed_pattern_override_operation.dart'
    as _i14;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/operation/malformed_range_operation.dart'
    as _i16;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/operation/malformed_range_override_operation.dart'
    as _i18;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/operation/malformed_required_operation.dart'
    as _i20;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/operation/recursive_structures_operation.dart'
    as _i22;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/operation/sensitive_validation_operation.dart'
    as _i24;
import 'package:smithy/smithy.dart' as _i2;

/// A REST JSON service that sends JSON requests and responses with validation applied
class RestJsonValidationProtocolClient {
  /// A REST JSON service that sends JSON requests and responses with validation applied
  const RestJsonValidationProtocolClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
  })  : _client = client,
        _region = region,
        _baseUri = baseUri;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  _i2.SmithyOperation<void> malformedEnum(
    _i3.MalformedEnumInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i4.MalformedEnumOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedLength(
    _i5.MalformedLengthInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i6.MalformedLengthOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedLengthOverride(
    _i7.MalformedLengthOverrideInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i8.MalformedLengthOverrideOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedLengthQueryString(
    _i9.MalformedLengthQueryStringInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i10.MalformedLengthQueryStringOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedPattern(
    _i11.MalformedPatternInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i12.MalformedPatternOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedPatternOverride(
    _i13.MalformedPatternOverrideInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i14.MalformedPatternOverrideOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedRange(
    _i15.MalformedRangeInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i16.MalformedRangeOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedRangeOverride(
    _i17.MalformedRangeOverrideInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i18.MalformedRangeOverrideOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedRequired(
    _i19.MalformedRequiredInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i20.MalformedRequiredOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> recursiveStructures(
    _i21.RecursiveStructuresInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i22.RecursiveStructuresOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> sensitiveValidation(
    _i23.SensitiveValidationInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i24.SensitiveValidationOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
