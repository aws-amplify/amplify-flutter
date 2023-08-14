// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v1.rest_json_protocol.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/all_query_string_types_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/aws_config.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/client_config.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/complex_error.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/complex_nested_error_data.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/constant_and_variable_query_string_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/constant_query_string_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/datetime_offsets_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/document_type_as_payload_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/document_type_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/empty_input_and_empty_output_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/empty_input_and_empty_output_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/enum_payload_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/environment_config.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/file_config_settings.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/foo_enum.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/foo_error.dart';
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
import 'package:rest_json1_v1/src/rest_json_protocol/model/invalid_greeting.dart';
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
import 'package:rest_json1_v1/src/rest_json_protocol/model/my_union.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/nested_payload.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/no_input_and_output_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/null_and_empty_headers_io.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/omits_null_serializes_empty_string_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/omits_serializing_empty_lists_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/operation_config.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/payload_config.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/player_action.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/post_player_action_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/post_player_action_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/post_union_with_json_name_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/post_union_with_json_name_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/put_with_content_encoding_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/query_idempotency_token_auto_fill_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/query_params_as_string_list_map_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/query_precedence_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/recursive_shapes_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/recursive_shapes_input_output_nested1.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/recursive_shapes_input_output_nested2.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/renamed_greeting.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/response_code_http_fallback_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/response_code_required_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/retry_config.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/retry_mode.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/s3_addressing_style.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/s3_config.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/scoped_config.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/simple_scalar_properties_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/simple_union.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/streaming_traits_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/streaming_traits_require_length_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/streaming_traits_with_media_type_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/string_enum.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/string_payload_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/structure_list_member.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/test_body_structure_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/test_config.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/test_no_payload_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/test_payload_blob_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/test_payload_structure_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/timestamp_format_headers_io.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/union_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/union_with_json_name.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...AllQueryStringTypesInput.serializers,
  ...FooEnum.serializers,
  ...ConstantAndVariableQueryStringInput.serializers,
  ...ConstantQueryStringInput.serializers,
  ...DatetimeOffsetsOutput.serializers,
  ...DocumentTypeInputOutput.serializers,
  ...DocumentTypeAsPayloadInputOutput.serializers,
  ...EmptyInputAndEmptyOutputInput.serializers,
  ...EmptyInputAndEmptyOutputOutput.serializers,
  ...HostLabelInput.serializers,
  ...FractionalSecondsOutput.serializers,
  ...GreetingWithErrorsOutput.serializers,
  ...ComplexError.serializers,
  ...ComplexNestedErrorData.serializers,
  ...FooError.serializers,
  ...InvalidGreeting.serializers,
  ...HttpChecksumRequiredInputOutput.serializers,
  ...EnumPayloadInput.serializers,
  ...StringEnum.serializers,
  ...HttpPayloadTraitsInputOutput.serializers,
  ...HttpPayloadTraitsWithMediaTypeInputOutput.serializers,
  ...HttpPayloadWithStructureInputOutput.serializers,
  ...NestedPayload.serializers,
  ...HttpPrefixHeadersInput.serializers,
  ...HttpPrefixHeadersOutput.serializers,
  ...HttpPrefixHeadersInResponseOutput.serializers,
  ...HttpPrefixHeadersInResponseInput.serializers,
  ...HttpRequestWithFloatLabelsInput.serializers,
  ...HttpRequestWithGreedyLabelInPathInput.serializers,
  ...HttpRequestWithLabelsInput.serializers,
  ...HttpRequestWithLabelsAndTimestampFormatInput.serializers,
  ...HttpRequestWithRegexLiteralInput.serializers,
  ...HttpResponseCodeOutput.serializers,
  ...StringPayloadInput.serializers,
  ...IgnoreQueryParamsInResponseOutput.serializers,
  ...InputAndOutputWithHeadersIo.serializers,
  ...JsonBlobsInputOutput.serializers,
  ...JsonEnumsInputOutput.serializers,
  ...JsonIntEnumsInputOutput.serializers,
  ...JsonListsInputOutput.serializers,
  ...StructureListMember.serializers,
  ...JsonMapsInputOutput.serializers,
  ...GreetingStruct.serializers,
  ...JsonTimestampsInputOutput.serializers,
  ...UnionInputOutput.serializers,
  ...RenamedGreeting.serializers,
  ...MyUnion.serializers,
  ...MalformedAcceptWithGenericStringOutput.serializers,
  ...MalformedAcceptWithPayloadOutput.serializers,
  ...MalformedBlobInput.serializers,
  ...MalformedBooleanInput.serializers,
  ...MalformedByteInput.serializers,
  ...MalformedContentTypeWithGenericStringInput.serializers,
  ...MalformedContentTypeWithPayloadInput.serializers,
  ...MalformedContentTypeWithoutBodyEmptyInputInput.serializers,
  ...MalformedDoubleInput.serializers,
  ...MalformedFloatInput.serializers,
  ...MalformedIntegerInput.serializers,
  ...MalformedListInput.serializers,
  ...MalformedLongInput.serializers,
  ...MalformedMapInput.serializers,
  ...MalformedRequestBodyInput.serializers,
  ...MalformedShortInput.serializers,
  ...MalformedStringInput.serializers,
  ...MalformedTimestampBodyDateTimeInput.serializers,
  ...MalformedTimestampBodyDefaultInput.serializers,
  ...MalformedTimestampBodyHttpDateInput.serializers,
  ...MalformedTimestampHeaderDateTimeInput.serializers,
  ...MalformedTimestampHeaderDefaultInput.serializers,
  ...MalformedTimestampHeaderEpochInput.serializers,
  ...MalformedTimestampPathDefaultInput.serializers,
  ...MalformedTimestampPathEpochInput.serializers,
  ...MalformedTimestampPathHttpDateInput.serializers,
  ...MalformedTimestampQueryDefaultInput.serializers,
  ...MalformedTimestampQueryEpochInput.serializers,
  ...MalformedTimestampQueryHttpDateInput.serializers,
  ...SimpleUnion.serializers,
  ...MalformedUnionInput.serializers,
  ...MediaTypeHeaderInput.serializers,
  ...MediaTypeHeaderOutput.serializers,
  ...NoInputAndOutputOutput.serializers,
  ...NullAndEmptyHeadersIo.serializers,
  ...OmitsNullSerializesEmptyStringInput.serializers,
  ...OmitsSerializingEmptyListsInput.serializers,
  ...PostPlayerActionInput.serializers,
  ...PostPlayerActionOutput.serializers,
  ...PlayerAction.serializers,
  ...PostUnionWithJsonNameInput.serializers,
  ...PostUnionWithJsonNameOutput.serializers,
  ...UnionWithJsonName.serializers,
  ...PutWithContentEncodingInput.serializers,
  ...QueryIdempotencyTokenAutoFillInput.serializers,
  ...QueryParamsAsStringListMapInput.serializers,
  ...QueryPrecedenceInput.serializers,
  ...RecursiveShapesInputOutput.serializers,
  ...RecursiveShapesInputOutputNested1.serializers,
  ...RecursiveShapesInputOutputNested2.serializers,
  ...ResponseCodeHttpFallbackInputOutput.serializers,
  ...ResponseCodeRequiredOutput.serializers,
  ...SimpleScalarPropertiesInputOutput.serializers,
  ...StreamingTraitsInputOutput.serializers,
  ...StreamingTraitsRequireLengthInput.serializers,
  ...StreamingTraitsWithMediaTypeInputOutput.serializers,
  ...TestBodyStructureInputOutput.serializers,
  ...TestConfig.serializers,
  ...TestNoPayloadInputOutput.serializers,
  ...TestPayloadBlobInputOutput.serializers,
  ...TestPayloadStructureInputOutput.serializers,
  ...PayloadConfig.serializers,
  ...TimestampFormatHeadersIo.serializers,
  ...RetryMode.serializers,
  ...EnvironmentConfig.serializers,
  ...S3AddressingStyle.serializers,
  ...S3Config.serializers,
  ...FileConfigSettings.serializers,
  ...RetryConfig.serializers,
  ...ClientConfig.serializers,
  ...OperationConfig.serializers,
  ...ScopedConfig.serializers,
  ...AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltList,
    [FullType(String)],
  ): _i2.ListBuilder<String>.new,
  const FullType(
    _i2.BuiltSet,
    [FullType(String)],
  ): _i2.SetBuilder<String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(int)],
  ): _i2.ListBuilder<int>.new,
  const FullType(
    _i2.BuiltSet,
    [FullType(int)],
  ): _i2.SetBuilder<int>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(double)],
  ): _i2.ListBuilder<double>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(bool)],
  ): _i2.ListBuilder<bool>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DateTime)],
  ): _i2.ListBuilder<DateTime>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FooEnum)],
  ): _i2.ListBuilder<FooEnum>.new,
  const FullType(
    _i2.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.MapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltSet,
    [FullType(FooEnum)],
  ): _i2.SetBuilder<FooEnum>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(FooEnum),
    ],
  ): _i2.MapBuilder<String, FooEnum>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(int),
    ],
  ): _i2.MapBuilder<String, int>.new,
  const FullType(
    _i2.BuiltList,
    [FullType.nullable(String)],
  ): _i2.ListBuilder<String?>.new,
  const FullType(
    _i2.BuiltList,
    [
      FullType(
        _i2.BuiltList,
        [FullType(String)],
      )
    ],
  ): _i2.ListBuilder<_i2.BuiltList<String>>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StructureListMember)],
  ): _i2.ListBuilder<StructureListMember>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(GreetingStruct),
    ],
  ): _i2.MapBuilder<String, GreetingStruct>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType.nullable(GreetingStruct),
    ],
  ): _i2.MapBuilder<String, GreetingStruct?>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(bool),
    ],
  ): _i2.MapBuilder<String, bool>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType.nullable(int),
    ],
  ): _i2.MapBuilder<String, int?>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType.nullable(bool),
    ],
  ): _i2.MapBuilder<String, bool?>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType.nullable(String),
    ],
  ): _i2.MapBuilder<String, String?>.new,
  const FullType(
    _i2.BuiltSetMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.SetMultimapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(FileConfigSettings),
    ],
  ): _i2.MapBuilder<String, FileConfigSettings>.new,
};
