// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i118;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/all_query_string_types_input.dart'
    as _i2;
import 'package:rest_json1_v2/src/rest_json_protocol/model/aws_config.dart'
    as _i117;
import 'package:rest_json1_v2/src/rest_json_protocol/model/client_config.dart'
    as _i114;
import 'package:rest_json1_v2/src/rest_json_protocol/model/complex_error.dart'
    as _i13;
import 'package:rest_json1_v2/src/rest_json_protocol/model/complex_nested_error_data.dart'
    as _i14;
import 'package:rest_json1_v2/src/rest_json_protocol/model/constant_and_variable_query_string_input.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/model/constant_query_string_input.dart'
    as _i6;
import 'package:rest_json1_v2/src/rest_json_protocol/model/document_type_as_payload_input_output.dart'
    as _i8;
import 'package:rest_json1_v2/src/rest_json_protocol/model/document_type_input_output.dart'
    as _i7;
import 'package:rest_json1_v2/src/rest_json_protocol/model/empty_input_and_empty_output_input.dart'
    as _i9;
import 'package:rest_json1_v2/src/rest_json_protocol/model/empty_input_and_empty_output_output.dart'
    as _i10;
import 'package:rest_json1_v2/src/rest_json_protocol/model/enum_payload_input.dart'
    as _i18;
import 'package:rest_json1_v2/src/rest_json_protocol/model/environment_config.dart'
    as _i109;
import 'package:rest_json1_v2/src/rest_json_protocol/model/file_config_settings.dart'
    as _i112;
import 'package:rest_json1_v2/src/rest_json_protocol/model/foo_enum.dart'
    as _i3;
import 'package:rest_json1_v2/src/rest_json_protocol/model/foo_error.dart'
    as _i15;
import 'package:rest_json1_v2/src/rest_json_protocol/model/greeting_struct.dart'
    as _i43;
import 'package:rest_json1_v2/src/rest_json_protocol/model/greeting_with_errors_output.dart'
    as _i12;
import 'package:rest_json1_v2/src/rest_json_protocol/model/host_label_input.dart'
    as _i11;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_checksum_required_input_output.dart'
    as _i17;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_payload_traits_input_output.dart'
    as _i20;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_payload_traits_with_media_type_input_output.dart'
    as _i21;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_payload_with_structure_input_output.dart'
    as _i22;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_in_response_input.dart'
    as _i27;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_in_response_output.dart'
    as _i26;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_input.dart'
    as _i24;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_output.dart'
    as _i25;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_float_labels_input.dart'
    as _i28;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_greedy_label_in_path_input.dart'
    as _i29;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_labels_and_timestamp_format_input.dart'
    as _i31;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_labels_input.dart'
    as _i30;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_regex_literal_input.dart'
    as _i32;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_response_code_output.dart'
    as _i33;
import 'package:rest_json1_v2/src/rest_json_protocol/model/ignore_query_params_in_response_output.dart'
    as _i35;
import 'package:rest_json1_v2/src/rest_json_protocol/model/input_and_output_with_headers_io.dart'
    as _i36;
import 'package:rest_json1_v2/src/rest_json_protocol/model/integer_enum.dart'
    as _i4;
import 'package:rest_json1_v2/src/rest_json_protocol/model/invalid_greeting.dart'
    as _i16;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_blobs_input_output.dart'
    as _i37;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_enums_input_output.dart'
    as _i38;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_int_enums_input_output.dart'
    as _i39;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_lists_input_output.dart'
    as _i40;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_maps_input_output.dart'
    as _i42;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_timestamps_input_output.dart'
    as _i44;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_accept_with_generic_string_output.dart'
    as _i48;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_accept_with_payload_output.dart'
    as _i49;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_blob_input.dart'
    as _i50;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_boolean_input.dart'
    as _i51;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_byte_input.dart'
    as _i52;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_content_type_with_generic_string_input.dart'
    as _i53;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_content_type_with_payload_input.dart'
    as _i54;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_double_input.dart'
    as _i55;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_float_input.dart'
    as _i56;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_integer_input.dart'
    as _i57;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_list_input.dart'
    as _i58;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_long_input.dart'
    as _i59;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_map_input.dart'
    as _i60;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_request_body_input.dart'
    as _i61;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_short_input.dart'
    as _i62;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_string_input.dart'
    as _i63;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_body_date_time_input.dart'
    as _i64;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_body_default_input.dart'
    as _i65;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_body_http_date_input.dart'
    as _i66;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_header_date_time_input.dart'
    as _i67;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_header_default_input.dart'
    as _i68;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_header_epoch_input.dart'
    as _i69;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_path_default_input.dart'
    as _i70;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_path_epoch_input.dart'
    as _i71;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_path_http_date_input.dart'
    as _i72;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_query_default_input.dart'
    as _i73;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_query_epoch_input.dart'
    as _i74;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_query_http_date_input.dart'
    as _i75;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_union_input.dart'
    as _i77;
import 'package:rest_json1_v2/src/rest_json_protocol/model/media_type_header_input.dart'
    as _i78;
import 'package:rest_json1_v2/src/rest_json_protocol/model/media_type_header_output.dart'
    as _i79;
import 'package:rest_json1_v2/src/rest_json_protocol/model/my_union.dart'
    as _i47;
import 'package:rest_json1_v2/src/rest_json_protocol/model/nested_payload.dart'
    as _i23;
import 'package:rest_json1_v2/src/rest_json_protocol/model/no_input_and_output_output.dart'
    as _i80;
import 'package:rest_json1_v2/src/rest_json_protocol/model/null_and_empty_headers_io.dart'
    as _i81;
import 'package:rest_json1_v2/src/rest_json_protocol/model/omits_null_serializes_empty_string_input.dart'
    as _i82;
import 'package:rest_json1_v2/src/rest_json_protocol/model/operation_config.dart'
    as _i115;
import 'package:rest_json1_v2/src/rest_json_protocol/model/payload_config.dart'
    as _i106;
import 'package:rest_json1_v2/src/rest_json_protocol/model/player_action.dart'
    as _i85;
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_player_action_input.dart'
    as _i83;
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_player_action_output.dart'
    as _i84;
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_union_with_json_name_input.dart'
    as _i86;
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_union_with_json_name_output.dart'
    as _i87;
import 'package:rest_json1_v2/src/rest_json_protocol/model/query_idempotency_token_auto_fill_input.dart'
    as _i89;
import 'package:rest_json1_v2/src/rest_json_protocol/model/query_params_as_string_list_map_input.dart'
    as _i90;
import 'package:rest_json1_v2/src/rest_json_protocol/model/query_precedence_input.dart'
    as _i91;
import 'package:rest_json1_v2/src/rest_json_protocol/model/recursive_shapes_input_output.dart'
    as _i92;
import 'package:rest_json1_v2/src/rest_json_protocol/model/recursive_shapes_input_output_nested1.dart'
    as _i93;
import 'package:rest_json1_v2/src/rest_json_protocol/model/recursive_shapes_input_output_nested2.dart'
    as _i94;
import 'package:rest_json1_v2/src/rest_json_protocol/model/renamed_greeting.dart'
    as _i46;
import 'package:rest_json1_v2/src/rest_json_protocol/model/response_code_http_fallback_input_output.dart'
    as _i95;
import 'package:rest_json1_v2/src/rest_json_protocol/model/response_code_required_output.dart'
    as _i96;
import 'package:rest_json1_v2/src/rest_json_protocol/model/retry_config.dart'
    as _i113;
import 'package:rest_json1_v2/src/rest_json_protocol/model/retry_mode.dart'
    as _i108;
import 'package:rest_json1_v2/src/rest_json_protocol/model/s3_addressing_style.dart'
    as _i110;
import 'package:rest_json1_v2/src/rest_json_protocol/model/s3_config.dart'
    as _i111;
import 'package:rest_json1_v2/src/rest_json_protocol/model/scoped_config.dart'
    as _i116;
import 'package:rest_json1_v2/src/rest_json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i97;
import 'package:rest_json1_v2/src/rest_json_protocol/model/simple_union.dart'
    as _i76;
import 'package:rest_json1_v2/src/rest_json_protocol/model/streaming_traits_input_output.dart'
    as _i98;
import 'package:rest_json1_v2/src/rest_json_protocol/model/streaming_traits_require_length_input.dart'
    as _i99;
import 'package:rest_json1_v2/src/rest_json_protocol/model/streaming_traits_with_media_type_input_output.dart'
    as _i100;
import 'package:rest_json1_v2/src/rest_json_protocol/model/string_enum.dart'
    as _i19;
import 'package:rest_json1_v2/src/rest_json_protocol/model/string_payload_input.dart'
    as _i34;
import 'package:rest_json1_v2/src/rest_json_protocol/model/structure_list_member.dart'
    as _i41;
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_body_structure_input_output.dart'
    as _i101;
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_config.dart'
    as _i102;
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_no_payload_input_output.dart'
    as _i103;
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_payload_blob_input_output.dart'
    as _i104;
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_payload_structure_input_output.dart'
    as _i105;
import 'package:rest_json1_v2/src/rest_json_protocol/model/timestamp_format_headers_io.dart'
    as _i107;
import 'package:rest_json1_v2/src/rest_json_protocol/model/union_input_output.dart'
    as _i45;
import 'package:rest_json1_v2/src/rest_json_protocol/model/union_with_json_name.dart'
    as _i88;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.AllQueryStringTypesInput.serializers,
  ..._i3.FooEnum.serializers,
  ..._i4.IntegerEnum.serializers,
  ..._i5.ConstantAndVariableQueryStringInput.serializers,
  ..._i6.ConstantQueryStringInput.serializers,
  ..._i7.DocumentTypeInputOutput.serializers,
  ..._i8.DocumentTypeAsPayloadInputOutput.serializers,
  ..._i9.EmptyInputAndEmptyOutputInput.serializers,
  ..._i10.EmptyInputAndEmptyOutputOutput.serializers,
  ..._i11.HostLabelInput.serializers,
  ..._i12.GreetingWithErrorsOutput.serializers,
  ..._i13.ComplexError.serializers,
  ..._i14.ComplexNestedErrorData.serializers,
  ..._i15.FooError.serializers,
  ..._i16.InvalidGreeting.serializers,
  ..._i17.HttpChecksumRequiredInputOutput.serializers,
  ..._i18.EnumPayloadInput.serializers,
  ..._i19.StringEnum.serializers,
  ..._i20.HttpPayloadTraitsInputOutput.serializers,
  ..._i21.HttpPayloadTraitsWithMediaTypeInputOutput.serializers,
  ..._i22.HttpPayloadWithStructureInputOutput.serializers,
  ..._i23.NestedPayload.serializers,
  ..._i24.HttpPrefixHeadersInput.serializers,
  ..._i25.HttpPrefixHeadersOutput.serializers,
  ..._i26.HttpPrefixHeadersInResponseOutput.serializers,
  ..._i27.HttpPrefixHeadersInResponseInput.serializers,
  ..._i28.HttpRequestWithFloatLabelsInput.serializers,
  ..._i29.HttpRequestWithGreedyLabelInPathInput.serializers,
  ..._i30.HttpRequestWithLabelsInput.serializers,
  ..._i31.HttpRequestWithLabelsAndTimestampFormatInput.serializers,
  ..._i32.HttpRequestWithRegexLiteralInput.serializers,
  ..._i33.HttpResponseCodeOutput.serializers,
  ..._i34.StringPayloadInput.serializers,
  ..._i35.IgnoreQueryParamsInResponseOutput.serializers,
  ..._i36.InputAndOutputWithHeadersIo.serializers,
  ..._i37.JsonBlobsInputOutput.serializers,
  ..._i38.JsonEnumsInputOutput.serializers,
  ..._i39.JsonIntEnumsInputOutput.serializers,
  ..._i40.JsonListsInputOutput.serializers,
  ..._i41.StructureListMember.serializers,
  ..._i42.JsonMapsInputOutput.serializers,
  ..._i43.GreetingStruct.serializers,
  ..._i44.JsonTimestampsInputOutput.serializers,
  ..._i45.UnionInputOutput.serializers,
  ..._i46.RenamedGreeting.serializers,
  ..._i47.MyUnion.serializers,
  ..._i48.MalformedAcceptWithGenericStringOutput.serializers,
  ..._i49.MalformedAcceptWithPayloadOutput.serializers,
  ..._i50.MalformedBlobInput.serializers,
  ..._i51.MalformedBooleanInput.serializers,
  ..._i52.MalformedByteInput.serializers,
  ..._i53.MalformedContentTypeWithGenericStringInput.serializers,
  ..._i54.MalformedContentTypeWithPayloadInput.serializers,
  ..._i55.MalformedDoubleInput.serializers,
  ..._i56.MalformedFloatInput.serializers,
  ..._i57.MalformedIntegerInput.serializers,
  ..._i58.MalformedListInput.serializers,
  ..._i59.MalformedLongInput.serializers,
  ..._i60.MalformedMapInput.serializers,
  ..._i61.MalformedRequestBodyInput.serializers,
  ..._i62.MalformedShortInput.serializers,
  ..._i63.MalformedStringInput.serializers,
  ..._i64.MalformedTimestampBodyDateTimeInput.serializers,
  ..._i65.MalformedTimestampBodyDefaultInput.serializers,
  ..._i66.MalformedTimestampBodyHttpDateInput.serializers,
  ..._i67.MalformedTimestampHeaderDateTimeInput.serializers,
  ..._i68.MalformedTimestampHeaderDefaultInput.serializers,
  ..._i69.MalformedTimestampHeaderEpochInput.serializers,
  ..._i70.MalformedTimestampPathDefaultInput.serializers,
  ..._i71.MalformedTimestampPathEpochInput.serializers,
  ..._i72.MalformedTimestampPathHttpDateInput.serializers,
  ..._i73.MalformedTimestampQueryDefaultInput.serializers,
  ..._i74.MalformedTimestampQueryEpochInput.serializers,
  ..._i75.MalformedTimestampQueryHttpDateInput.serializers,
  ..._i76.SimpleUnion.serializers,
  ..._i77.MalformedUnionInput.serializers,
  ..._i78.MediaTypeHeaderInput.serializers,
  ..._i79.MediaTypeHeaderOutput.serializers,
  ..._i80.NoInputAndOutputOutput.serializers,
  ..._i81.NullAndEmptyHeadersIo.serializers,
  ..._i82.OmitsNullSerializesEmptyStringInput.serializers,
  ..._i83.PostPlayerActionInput.serializers,
  ..._i84.PostPlayerActionOutput.serializers,
  ..._i85.PlayerAction.serializers,
  ..._i86.PostUnionWithJsonNameInput.serializers,
  ..._i87.PostUnionWithJsonNameOutput.serializers,
  ..._i88.UnionWithJsonName.serializers,
  ..._i89.QueryIdempotencyTokenAutoFillInput.serializers,
  ..._i90.QueryParamsAsStringListMapInput.serializers,
  ..._i91.QueryPrecedenceInput.serializers,
  ..._i92.RecursiveShapesInputOutput.serializers,
  ..._i93.RecursiveShapesInputOutputNested1.serializers,
  ..._i94.RecursiveShapesInputOutputNested2.serializers,
  ..._i95.ResponseCodeHttpFallbackInputOutput.serializers,
  ..._i96.ResponseCodeRequiredOutput.serializers,
  ..._i97.SimpleScalarPropertiesInputOutput.serializers,
  ..._i98.StreamingTraitsInputOutput.serializers,
  ..._i99.StreamingTraitsRequireLengthInput.serializers,
  ..._i100.StreamingTraitsWithMediaTypeInputOutput.serializers,
  ..._i101.TestBodyStructureInputOutput.serializers,
  ..._i102.TestConfig.serializers,
  ..._i103.TestNoPayloadInputOutput.serializers,
  ..._i104.TestPayloadBlobInputOutput.serializers,
  ..._i105.TestPayloadStructureInputOutput.serializers,
  ..._i106.PayloadConfig.serializers,
  ..._i107.TimestampFormatHeadersIo.serializers,
  ..._i108.RetryMode.serializers,
  ..._i109.EnvironmentConfig.serializers,
  ..._i110.S3AddressingStyle.serializers,
  ..._i111.S3Config.serializers,
  ..._i112.FileConfigSettings.serializers,
  ..._i113.RetryConfig.serializers,
  ..._i114.ClientConfig.serializers,
  ..._i115.OperationConfig.serializers,
  ..._i116.ScopedConfig.serializers,
  ..._i117.AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i118.BuiltList,
    [FullType(bool)],
  ): _i118.ListBuilder<bool>.new,
  const FullType(
    _i118.BuiltList,
    [FullType(double)],
  ): _i118.ListBuilder<double>.new,
  const FullType(
    _i118.BuiltList,
    [FullType(_i3.FooEnum)],
  ): _i118.ListBuilder<_i3.FooEnum>.new,
  const FullType(
    _i118.BuiltList,
    [FullType(_i4.IntegerEnum)],
  ): _i118.ListBuilder<_i4.IntegerEnum>.new,
  const FullType(
    _i118.BuiltList,
    [FullType(int)],
  ): _i118.ListBuilder<int>.new,
  const FullType(
    _i118.BuiltSet,
    [FullType(int)],
  ): _i118.SetBuilder<int>.new,
  const FullType(
    _i118.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i118.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i118.BuiltList,
    [FullType(String)],
  ): _i118.ListBuilder<String>.new,
  const FullType(
    _i118.BuiltSet,
    [FullType(String)],
  ): _i118.SetBuilder<String>.new,
  const FullType(
    _i118.BuiltList,
    [FullType(DateTime)],
  ): _i118.ListBuilder<DateTime>.new,
  const FullType(
    _i118.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i118.MapBuilder<String, String>.new,
  const FullType(
    _i118.BuiltMap,
    [
      FullType(String),
      FullType(_i3.FooEnum),
    ],
  ): _i118.MapBuilder<String, _i3.FooEnum>.new,
  const FullType(
    _i118.BuiltSet,
    [FullType(_i3.FooEnum)],
  ): _i118.SetBuilder<_i3.FooEnum>.new,
  const FullType(
    _i118.BuiltMap,
    [
      FullType(String),
      FullType(_i4.IntegerEnum),
    ],
  ): _i118.MapBuilder<String, _i4.IntegerEnum>.new,
  const FullType(
    _i118.BuiltSet,
    [FullType(_i4.IntegerEnum)],
  ): _i118.SetBuilder<_i4.IntegerEnum>.new,
  const FullType(
    _i118.BuiltList,
    [
      FullType(
        _i118.BuiltList,
        [FullType(String)],
      )
    ],
  ): _i118.ListBuilder<_i118.BuiltList<String>>.new,
  const FullType(
    _i118.BuiltList,
    [FullType.nullable(String)],
  ): _i118.ListBuilder<String?>.new,
  const FullType(
    _i118.BuiltList,
    [FullType(_i41.StructureListMember)],
  ): _i118.ListBuilder<_i41.StructureListMember>.new,
  const FullType(
    _i118.BuiltMap,
    [
      FullType(String),
      FullType(bool),
    ],
  ): _i118.MapBuilder<String, bool>.new,
  const FullType(
    _i118.BuiltMap,
    [
      FullType(String),
      FullType(int),
    ],
  ): _i118.MapBuilder<String, int>.new,
  const FullType(
    _i118.BuiltSetMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i118.SetMultimapBuilder<String, String>.new,
  const FullType(
    _i118.BuiltMap,
    [
      FullType(String),
      FullType(_i43.GreetingStruct),
    ],
  ): _i118.MapBuilder<String, _i43.GreetingStruct>.new,
  const FullType(
    _i118.BuiltMap,
    [
      FullType(String),
      FullType.nullable(bool),
    ],
  ): _i118.MapBuilder<String, bool?>.new,
  const FullType(
    _i118.BuiltMap,
    [
      FullType(String),
      FullType.nullable(int),
    ],
  ): _i118.MapBuilder<String, int?>.new,
  const FullType(
    _i118.BuiltMap,
    [
      FullType(String),
      FullType.nullable(String),
    ],
  ): _i118.MapBuilder<String, String?>.new,
  const FullType(
    _i118.BuiltMap,
    [
      FullType(String),
      FullType.nullable(_i43.GreetingStruct),
    ],
  ): _i118.MapBuilder<String, _i43.GreetingStruct?>.new,
  const FullType(
    _i118.BuiltMap,
    [
      FullType(String),
      FullType(_i112.FileConfigSettings),
    ],
  ): _i118.MapBuilder<String, _i112.FileConfigSettings>.new,
};
