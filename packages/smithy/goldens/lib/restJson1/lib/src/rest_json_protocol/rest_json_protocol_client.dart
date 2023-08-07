// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v1.rest_json_protocol.rest_json_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:rest_json1_v1/src/rest_json_protocol/model/all_query_string_types_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/constant_and_variable_query_string_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/constant_query_string_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/datetime_offsets_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/document_type_as_payload_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/document_type_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/empty_input_and_empty_output_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/empty_input_and_empty_output_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/enum_payload_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/fractional_seconds_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/greeting_struct.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/greeting_with_errors_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/host_label_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_checksum_required_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_payload_traits_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_payload_traits_with_media_type_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_payload_with_structure_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_prefix_headers_in_response_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_prefix_headers_in_response_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_prefix_headers_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_prefix_headers_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_request_with_float_labels_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_request_with_greedy_label_in_path_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_request_with_labels_and_timestamp_format_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_request_with_labels_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_request_with_regex_literal_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_response_code_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/ignore_query_params_in_response_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/input_and_output_with_headers_io.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/json_blobs_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/json_enums_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/json_int_enums_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/json_lists_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/json_maps_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/json_timestamps_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_accept_with_generic_string_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_accept_with_payload_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_blob_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_boolean_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_byte_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_content_type_with_generic_string_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_content_type_with_payload_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_content_type_without_body_empty_input_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_double_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_float_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_integer_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_list_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_long_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_map_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_request_body_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_short_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_string_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_timestamp_body_date_time_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_timestamp_body_default_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_timestamp_body_http_date_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_timestamp_header_date_time_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_timestamp_header_default_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_timestamp_header_epoch_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_timestamp_path_default_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_timestamp_path_epoch_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_timestamp_path_http_date_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_timestamp_query_default_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_timestamp_query_epoch_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_timestamp_query_http_date_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/malformed_union_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/media_type_header_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/media_type_header_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/no_input_and_output_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/null_and_empty_headers_io.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/omits_null_serializes_empty_string_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/omits_serializing_empty_lists_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/post_player_action_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/post_player_action_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/post_union_with_json_name_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/post_union_with_json_name_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/put_with_content_encoding_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/query_idempotency_token_auto_fill_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/query_params_as_string_list_map_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/query_precedence_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/recursive_shapes_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/response_code_http_fallback_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/response_code_required_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/simple_scalar_properties_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/streaming_traits_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/streaming_traits_require_length_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/streaming_traits_with_media_type_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/string_payload_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/test_body_structure_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/test_no_payload_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/test_payload_blob_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/test_payload_structure_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/timestamp_format_headers_io.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/union_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/all_query_string_types_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/constant_and_variable_query_string_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/constant_query_string_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/datetime_offsets_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/document_type_as_payload_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/document_type_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/empty_input_and_empty_output_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/endpoint_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/endpoint_with_host_label_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/fractional_seconds_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/greeting_with_errors_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/host_with_path_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_checksum_required_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_enum_payload_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_payload_traits_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_payload_traits_with_media_type_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_payload_with_structure_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_prefix_headers_in_response_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_prefix_headers_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_request_with_float_labels_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_request_with_greedy_label_in_path_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_request_with_labels_and_timestamp_format_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_request_with_labels_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_request_with_regex_literal_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_response_code_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_string_payload_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/ignore_query_params_in_response_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/input_and_output_with_headers_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/json_blobs_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/json_enums_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/json_int_enums_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/json_lists_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/json_maps_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/json_timestamps_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/json_unions_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_accept_with_body_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_accept_with_generic_string_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_accept_with_payload_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_blob_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_boolean_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_byte_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_content_type_with_body_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_content_type_with_generic_string_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_content_type_with_payload_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_content_type_without_body_empty_input_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_content_type_without_body_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_double_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_float_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_integer_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_list_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_long_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_map_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_request_body_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_short_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_string_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_timestamp_body_date_time_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_timestamp_body_default_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_timestamp_body_http_date_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_timestamp_header_date_time_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_timestamp_header_default_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_timestamp_header_epoch_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_timestamp_path_default_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_timestamp_path_epoch_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_timestamp_path_http_date_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_timestamp_query_default_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_timestamp_query_epoch_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_timestamp_query_http_date_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/malformed_union_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/media_type_header_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/no_input_and_no_output_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/no_input_and_output_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/null_and_empty_headers_client_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/null_and_empty_headers_server_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/omits_null_serializes_empty_string_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/omits_serializing_empty_lists_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/post_player_action_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/post_union_with_json_name_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/put_with_content_encoding_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/query_idempotency_token_auto_fill_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/query_params_as_string_list_map_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/query_precedence_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/recursive_shapes_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/response_code_http_fallback_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/response_code_required_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/simple_scalar_properties_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/streaming_traits_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/streaming_traits_require_length_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/streaming_traits_with_media_type_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/test_body_structure_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/test_no_payload_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/test_payload_blob_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/test_payload_structure_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/timestamp_format_headers_operation.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/unit_input_and_output_operation.dart';
import 'package:smithy/smithy.dart' as _i2;

/// A REST JSON service that sends JSON requests and responses.
class RestJsonProtocolClient {
  /// A REST JSON service that sends JSON requests and responses.
  const RestJsonProtocolClient({
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

  /// This example uses all query string types.
  _i2.SmithyOperation<void> allQueryStringTypes(
    AllQueryStringTypesInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return AllQueryStringTypesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example uses fixed query string params and variable query string params. The fixed query string parameters and variable parameters must both be serialized (implementations may need to merge them together).
  _i2.SmithyOperation<void> constantAndVariableQueryString(
    ConstantAndVariableQueryStringInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return ConstantAndVariableQueryStringOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example uses a constant query string parameters and a label. This simply tests that labels and query string parameters are compatible. The fixed query string parameter named "hello" should in no way conflict with the label, `{hello}`.
  _i2.SmithyOperation<void> constantQueryString(
    ConstantQueryStringInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return ConstantQueryStringOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<DatetimeOffsetsOutput> datetimeOffsets(
      {_i1.AWSHttpClient? client}) {
    return DatetimeOffsetsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This example serializes a document as part of the payload.
  _i2.SmithyOperation<DocumentTypeInputOutput> documentType(
    DocumentTypeInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return DocumentTypeOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example serializes a document as the entire HTTP payload.
  _i2.SmithyOperation<DocumentTypeAsPayloadInputOutput> documentTypeAsPayload(
    DocumentTypeAsPayloadInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return DocumentTypeAsPayloadOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The example tests how requests and responses are serialized when there's no request or response payload because the operation has an empty input and empty output structure that reuses the same shape. While this should be rare, code generators must support this.
  _i2.SmithyOperation<EmptyInputAndEmptyOutputOutput> emptyInputAndEmptyOutput(
    EmptyInputAndEmptyOutputInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return EmptyInputAndEmptyOutputOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> endpointOperation({_i1.AWSHttpClient? client}) {
    return EndpointOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> endpointWithHostLabelOperation(
    HostLabelInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return EndpointWithHostLabelOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<FractionalSecondsOutput> fractionalSeconds(
      {_i1.AWSHttpClient? client}) {
    return FractionalSecondsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This operation has four possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A BadRequest error. 4. A FooError. Implementations must be able to successfully take a response and properly (de)serialize successful and error responses based on the the presence of the
  _i2.SmithyOperation<GreetingWithErrorsOutput> greetingWithErrors(
      {_i1.AWSHttpClient? client}) {
    return GreetingWithErrorsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> hostWithPathOperation({_i1.AWSHttpClient? client}) {
    return HostWithPathOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This example tests httpChecksumRequired trait
  _i2.SmithyOperation<HttpChecksumRequiredInputOutput> httpChecksumRequired(
    HttpChecksumRequiredInputOutput input, {
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

  _i2.SmithyOperation<EnumPayloadInput> httpEnumPayload(
    EnumPayloadInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpEnumPayloadOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This examples serializes a blob shape in the payload. In this example, no JSON document is synthesized because the payload is not a structure or a union type.
  _i2.SmithyOperation<HttpPayloadTraitsInputOutput> httpPayloadTraits(
    HttpPayloadTraitsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpPayloadTraitsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This examples uses a `@mediaType` trait on the payload to force a custom content-type to be serialized.
  _i2.SmithyOperation<HttpPayloadTraitsWithMediaTypeInputOutput>
      httpPayloadTraitsWithMediaType(
    HttpPayloadTraitsWithMediaTypeInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpPayloadTraitsWithMediaTypeOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This examples serializes a structure in the payload. Note that serializing a structure changes the wrapper element name to match the targeted structure.
  _i2.SmithyOperation<HttpPayloadWithStructureInputOutput>
      httpPayloadWithStructure(
    HttpPayloadWithStructureInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpPayloadWithStructureOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This examples adds headers to the input of a request and response by prefix.///
  /// See also:
  /// - [httpPrefixHeaders Trait](https://smithy.io/2.0/spec/http-bindings.html#httpprefixheaders-trait)

  _i2.SmithyOperation<HttpPrefixHeadersOutput> httpPrefixHeaders(
    HttpPrefixHeadersInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpPrefixHeadersOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Clients that perform this test extract all headers from the response.
  _i2.SmithyOperation<HttpPrefixHeadersInResponseOutput>
      httpPrefixHeadersInResponse(
    HttpPrefixHeadersInResponseInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpPrefixHeadersInResponseOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> httpRequestWithFloatLabels(
    HttpRequestWithFloatLabelsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpRequestWithFloatLabelsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> httpRequestWithGreedyLabelInPath(
    HttpRequestWithGreedyLabelInPathInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpRequestWithGreedyLabelInPathOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The example tests how requests are serialized when there's no input payload but there are HTTP labels.
  _i2.SmithyOperation<void> httpRequestWithLabels(
    HttpRequestWithLabelsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpRequestWithLabelsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The example tests how requests serialize different timestamp formats in the URI path.
  _i2.SmithyOperation<void> httpRequestWithLabelsAndTimestampFormat(
    HttpRequestWithLabelsAndTimestampFormatInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpRequestWithLabelsAndTimestampFormatOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> httpRequestWithRegexLiteral(
    HttpRequestWithRegexLiteralInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpRequestWithRegexLiteralOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<HttpResponseCodeOutput> httpResponseCode(
      {_i1.AWSHttpClient? client}) {
    return HttpResponseCodeOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<StringPayloadInput> httpStringPayload(
    StringPayloadInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpStringPayloadOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example ensures that query string bound request parameters are serialized in the body of responses if the structure is used in both the request and response.
  _i2.SmithyOperation<IgnoreQueryParamsInResponseOutput>
      ignoreQueryParamsInResponse({_i1.AWSHttpClient? client}) {
    return IgnoreQueryParamsInResponseOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// The example tests how requests and responses are serialized when there is no input or output payload but there are HTTP header bindings.
  _i2.SmithyOperation<InputAndOutputWithHeadersIo> inputAndOutputWithHeaders(
    InputAndOutputWithHeadersIo input, {
    _i1.AWSHttpClient? client,
  }) {
    return InputAndOutputWithHeadersOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Blobs are base64 encoded
  _i2.SmithyOperation<JsonBlobsInputOutput> jsonBlobs(
    JsonBlobsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return JsonBlobsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example serializes enums as top level properties, in lists, sets, and maps.
  _i2.SmithyOperation<JsonEnumsInputOutput> jsonEnums(
    JsonEnumsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return JsonEnumsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example serializes intEnums as top level properties, in lists, sets, and maps.
  _i2.SmithyOperation<JsonIntEnumsInputOutput> jsonIntEnums(
    JsonIntEnumsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return JsonIntEnumsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This test case serializes JSON lists for the following cases for both input and output: 1. Normal JSON lists. 2. Normal JSON sets. 3. JSON lists of lists. 4. Lists of structures.
  _i2.SmithyOperation<JsonListsInputOutput> jsonLists(
    JsonListsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return JsonListsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The example tests basic map serialization.
  _i2.SmithyOperation<JsonMapsInputOutput> jsonMaps(
    JsonMapsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return JsonMapsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This tests how timestamps are serialized, including using the default format of date-time and various @timestampFormat trait values.
  _i2.SmithyOperation<JsonTimestampsInputOutput> jsonTimestamps(
    JsonTimestampsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return JsonTimestampsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This operation uses unions for inputs and outputs.
  _i2.SmithyOperation<UnionInputOutput> jsonUnions(
    UnionInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return JsonUnionsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<GreetingStruct> malformedAcceptWithBody(
      {_i1.AWSHttpClient? client}) {
    return MalformedAcceptWithBodyOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<MalformedAcceptWithGenericStringOutput>
      malformedAcceptWithGenericString({_i1.AWSHttpClient? client}) {
    return MalformedAcceptWithGenericStringOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<MalformedAcceptWithPayloadOutput>
      malformedAcceptWithPayload({_i1.AWSHttpClient? client}) {
    return MalformedAcceptWithPayloadOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedBlob(
    MalformedBlobInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedBlobOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedBoolean(
    MalformedBooleanInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedBooleanOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedByte(
    MalformedByteInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedByteOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedContentTypeWithBody(
    GreetingStruct input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedContentTypeWithBodyOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedContentTypeWithGenericString(
    MalformedContentTypeWithGenericStringInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedContentTypeWithGenericStringOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedContentTypeWithPayload(
    MalformedContentTypeWithPayloadInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedContentTypeWithPayloadOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedContentTypeWithoutBody(
      {_i1.AWSHttpClient? client}) {
    return MalformedContentTypeWithoutBodyOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedContentTypeWithoutBodyEmptyInput(
    MalformedContentTypeWithoutBodyEmptyInputInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedContentTypeWithoutBodyEmptyInputOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedDouble(
    MalformedDoubleInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedDoubleOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedFloat(
    MalformedFloatInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedFloatOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedInteger(
    MalformedIntegerInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedIntegerOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedList(
    MalformedListInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedListOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedLong(
    MalformedLongInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedLongOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedMap(
    MalformedMapInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedMapOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedRequestBody(
    MalformedRequestBodyInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedRequestBodyOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedShort(
    MalformedShortInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedShortOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedString(
    MalformedStringInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedStringOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedTimestampBodyDateTime(
    MalformedTimestampBodyDateTimeInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedTimestampBodyDateTimeOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedTimestampBodyDefault(
    MalformedTimestampBodyDefaultInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedTimestampBodyDefaultOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedTimestampBodyHttpDate(
    MalformedTimestampBodyHttpDateInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedTimestampBodyHttpDateOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedTimestampHeaderDateTime(
    MalformedTimestampHeaderDateTimeInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedTimestampHeaderDateTimeOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedTimestampHeaderDefault(
    MalformedTimestampHeaderDefaultInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedTimestampHeaderDefaultOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedTimestampHeaderEpoch(
    MalformedTimestampHeaderEpochInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedTimestampHeaderEpochOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedTimestampPathDefault(
    MalformedTimestampPathDefaultInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedTimestampPathDefaultOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedTimestampPathEpoch(
    MalformedTimestampPathEpochInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedTimestampPathEpochOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedTimestampPathHttpDate(
    MalformedTimestampPathHttpDateInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedTimestampPathHttpDateOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedTimestampQueryDefault(
    MalformedTimestampQueryDefaultInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedTimestampQueryDefaultOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedTimestampQueryEpoch(
    MalformedTimestampQueryEpochInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedTimestampQueryEpochOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedTimestampQueryHttpDate(
    MalformedTimestampQueryHttpDateInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedTimestampQueryHttpDateOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> malformedUnion(
    MalformedUnionInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MalformedUnionOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example ensures that mediaType strings are base64 encoded in headers.
  _i2.SmithyOperation<MediaTypeHeaderOutput> mediaTypeHeader(
    MediaTypeHeaderInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return MediaTypeHeaderOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The example tests how requests and responses are serialized when there's no request or response payload because the operation has no input or output. While this should be rare, code generators must support this.
  _i2.SmithyOperation<void> noInputAndNoOutput({_i1.AWSHttpClient? client}) {
    return NoInputAndNoOutputOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// The example tests how requests and responses are serialized when there's no request or response payload because the operation has no input and the output is empty. While this should be rare, code generators must support this.
  _i2.SmithyOperation<NoInputAndOutputOutput> noInputAndOutput(
      {_i1.AWSHttpClient? client}) {
    return NoInputAndOutputOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// Null and empty headers are not sent over the wire.
  _i2.SmithyOperation<NullAndEmptyHeadersIo> nullAndEmptyHeadersClient(
    NullAndEmptyHeadersIo input, {
    _i1.AWSHttpClient? client,
  }) {
    return NullAndEmptyHeadersClientOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Null and empty headers are not sent over the wire.
  _i2.SmithyOperation<NullAndEmptyHeadersIo> nullAndEmptyHeadersServer(
    NullAndEmptyHeadersIo input, {
    _i1.AWSHttpClient? client,
  }) {
    return NullAndEmptyHeadersServerOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Omits null, but serializes empty string value.
  _i2.SmithyOperation<void> omitsNullSerializesEmptyString(
    OmitsNullSerializesEmptyStringInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return OmitsNullSerializesEmptyStringOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Omits serializing empty lists. Because empty strings are serilized as \`Foo=\`, empty lists cannot also be serialized as \`Foo=\` and instead must be omitted.
  _i2.SmithyOperation<void> omitsSerializingEmptyLists(
    OmitsSerializingEmptyListsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return OmitsSerializingEmptyListsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This operation defines a union with a Unit member.
  _i2.SmithyOperation<PostPlayerActionOutput> postPlayerAction(
    PostPlayerActionInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return PostPlayerActionOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This operation defines a union that uses jsonName on some members.
  _i2.SmithyOperation<PostUnionWithJsonNameOutput> postUnionWithJsonName(
    PostUnionWithJsonNameInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return PostUnionWithJsonNameOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> putWithContentEncoding(
    PutWithContentEncodingInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return PutWithContentEncodingOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Automatically adds idempotency tokens.
  _i2.SmithyOperation<void> queryIdempotencyTokenAutoFill(
    QueryIdempotencyTokenAutoFillInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return QueryIdempotencyTokenAutoFillOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> queryParamsAsStringListMap(
    QueryParamsAsStringListMapInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return QueryParamsAsStringListMapOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> queryPrecedence(
    QueryPrecedenceInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return QueryPrecedenceOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Recursive shapes
  _i2.SmithyOperation<RecursiveShapesInputOutput> recursiveShapes(
    RecursiveShapesInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return RecursiveShapesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<ResponseCodeHttpFallbackInputOutput>
      responseCodeHttpFallback(
    ResponseCodeHttpFallbackInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return ResponseCodeHttpFallbackOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<ResponseCodeRequiredOutput> responseCodeRequired(
      {_i1.AWSHttpClient? client}) {
    return ResponseCodeRequiredOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<SimpleScalarPropertiesInputOutput> simpleScalarProperties(
    SimpleScalarPropertiesInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return SimpleScalarPropertiesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This examples serializes a streaming blob shape in the request body. In this example, no JSON document is synthesized because the payload is not a structure or a union type.
  _i2.SmithyOperation<StreamingTraitsInputOutput> streamingTraits(
    StreamingTraitsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return StreamingTraitsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This examples serializes a streaming blob shape with a required content length in the request body. In this example, no JSON document is synthesized because the payload is not a structure or a union type.
  _i2.SmithyOperation<void> streamingTraitsRequireLength(
    StreamingTraitsRequireLengthInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return StreamingTraitsRequireLengthOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This examples serializes a streaming media-typed blob shape in the request body. This examples uses a `@mediaType` trait on the payload to force a custom content-type to be serialized.
  _i2.SmithyOperation<StreamingTraitsWithMediaTypeInputOutput>
      streamingTraitsWithMediaType(
    StreamingTraitsWithMediaTypeInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return StreamingTraitsWithMediaTypeOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example operation serializes a structure in the HTTP body. It should ensure Content-Type: application/json is used in all requests and that an "empty" body is an empty JSON document ({}).
  _i2.SmithyOperation<TestBodyStructureInputOutput> testBodyStructure(
    TestBodyStructureInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return TestBodyStructureOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example operation serializes a request without an HTTP body. These tests are to ensure we do not attach a body or related headers (Content-Length, Content-Type) to operations that semantically cannot produce an HTTP body.
  _i2.SmithyOperation<TestNoPayloadInputOutput> testNoPayload(
    TestNoPayloadInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return TestNoPayloadOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example operation serializes a payload targeting a blob. The Blob shape is not structured content and we cannot make assumptions about what data will be sent. This test ensures only a generic "Content-Type: application/octet-stream" header is used, and that we are not treating an empty body as an empty JSON document.
  _i2.SmithyOperation<TestPayloadBlobInputOutput> testPayloadBlob(
    TestPayloadBlobInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return TestPayloadBlobOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example operation serializes a payload targeting a structure. This enforces the same requirements as TestBodyStructure but with the body specified by the @httpPayload trait.
  _i2.SmithyOperation<TestPayloadStructureInputOutput> testPayloadStructure(
    TestPayloadStructureInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return TestPayloadStructureOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example tests how timestamp request and response headers are serialized.
  _i2.SmithyOperation<TimestampFormatHeadersIo> timestampFormatHeaders(
    TimestampFormatHeadersIo input, {
    _i1.AWSHttpClient? client,
  }) {
    return TimestampFormatHeadersOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This test is similar to NoInputAndNoOutput, but uses explicit Unit types.
  _i2.SmithyOperation<void> unitInputAndOutput({_i1.AWSHttpClient? client}) {
    return UnitInputAndOutputOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }
}
