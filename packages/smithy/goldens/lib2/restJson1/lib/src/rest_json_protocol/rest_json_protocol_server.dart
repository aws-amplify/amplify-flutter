// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_protocol.rest_json_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;
import 'dart:typed_data' as _i100;

import 'package:built_value/json_object.dart' as _i98;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/common/serializers.dart'
    as _i3;
import 'package:rest_json1_v2/src/rest_json_protocol/model/all_query_string_types_input.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/model/complex_error.dart'
    as _i103;
import 'package:rest_json1_v2/src/rest_json_protocol/model/constant_and_variable_query_string_input.dart'
    as _i6;
import 'package:rest_json1_v2/src/rest_json_protocol/model/constant_query_string_input.dart'
    as _i7;
import 'package:rest_json1_v2/src/rest_json_protocol/model/datetime_offsets_output.dart'
    as _i8;
import 'package:rest_json1_v2/src/rest_json_protocol/model/document_type_as_payload_input_output.dart'
    as _i10;
import 'package:rest_json1_v2/src/rest_json_protocol/model/document_type_input_output.dart'
    as _i9;
import 'package:rest_json1_v2/src/rest_json_protocol/model/empty_input_and_empty_output_input.dart'
    as _i12;
import 'package:rest_json1_v2/src/rest_json_protocol/model/empty_input_and_empty_output_output.dart'
    as _i11;
import 'package:rest_json1_v2/src/rest_json_protocol/model/enum_payload_input.dart'
    as _i17;
import 'package:rest_json1_v2/src/rest_json_protocol/model/foo_error.dart'
    as _i104;
import 'package:rest_json1_v2/src/rest_json_protocol/model/fractional_seconds_output.dart'
    as _i14;
import 'package:rest_json1_v2/src/rest_json_protocol/model/greeting_struct.dart'
    as _i41;
import 'package:rest_json1_v2/src/rest_json_protocol/model/greeting_with_errors_output.dart'
    as _i15;
import 'package:rest_json1_v2/src/rest_json_protocol/model/host_label_input.dart'
    as _i13;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_checksum_required_input_output.dart'
    as _i16;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_payload_traits_input_output.dart'
    as _i18;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_payload_traits_with_media_type_input_output.dart'
    as _i19;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_payload_with_structure_input_output.dart'
    as _i20;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_in_response_input.dart'
    as _i24;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_in_response_output.dart'
    as _i23;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_input.dart'
    as _i22;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_output.dart'
    as _i21;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_float_labels_input.dart'
    as _i25;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_greedy_label_in_path_input.dart'
    as _i26;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_labels_and_timestamp_format_input.dart'
    as _i28;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_labels_input.dart'
    as _i27;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_regex_literal_input.dart'
    as _i29;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_response_code_output.dart'
    as _i30;
import 'package:rest_json1_v2/src/rest_json_protocol/model/ignore_query_params_in_response_output.dart'
    as _i32;
import 'package:rest_json1_v2/src/rest_json_protocol/model/input_and_output_with_headers_io.dart'
    as _i33;
import 'package:rest_json1_v2/src/rest_json_protocol/model/invalid_greeting.dart'
    as _i105;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_blobs_input_output.dart'
    as _i34;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_enums_input_output.dart'
    as _i35;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_int_enums_input_output.dart'
    as _i36;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_lists_input_output.dart'
    as _i37;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_maps_input_output.dart'
    as _i38;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_timestamps_input_output.dart'
    as _i39;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_accept_with_generic_string_output.dart'
    as _i42;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_accept_with_payload_output.dart'
    as _i43;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_blob_input.dart'
    as _i44;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_boolean_input.dart'
    as _i45;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_byte_input.dart'
    as _i46;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_content_type_with_generic_string_input.dart'
    as _i47;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_content_type_with_payload_input.dart'
    as _i48;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_content_type_without_body_empty_input_input.dart'
    as _i49;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_double_input.dart'
    as _i50;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_float_input.dart'
    as _i51;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_integer_input.dart'
    as _i52;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_list_input.dart'
    as _i53;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_long_input.dart'
    as _i54;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_map_input.dart'
    as _i55;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_request_body_input.dart'
    as _i56;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_short_input.dart'
    as _i57;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_string_input.dart'
    as _i58;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_body_date_time_input.dart'
    as _i59;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_body_default_input.dart'
    as _i60;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_body_http_date_input.dart'
    as _i61;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_header_date_time_input.dart'
    as _i62;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_header_default_input.dart'
    as _i63;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_header_epoch_input.dart'
    as _i64;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_path_default_input.dart'
    as _i65;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_path_epoch_input.dart'
    as _i66;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_path_http_date_input.dart'
    as _i67;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_query_default_input.dart'
    as _i68;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_query_epoch_input.dart'
    as _i69;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_query_http_date_input.dart'
    as _i70;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_union_input.dart'
    as _i71;
import 'package:rest_json1_v2/src/rest_json_protocol/model/media_type_header_input.dart'
    as _i73;
import 'package:rest_json1_v2/src/rest_json_protocol/model/media_type_header_output.dart'
    as _i72;
import 'package:rest_json1_v2/src/rest_json_protocol/model/nested_payload.dart'
    as _i101;
import 'package:rest_json1_v2/src/rest_json_protocol/model/no_input_and_output_output.dart'
    as _i74;
import 'package:rest_json1_v2/src/rest_json_protocol/model/null_and_empty_headers_io.dart'
    as _i75;
import 'package:rest_json1_v2/src/rest_json_protocol/model/omits_null_serializes_empty_string_input.dart'
    as _i76;
import 'package:rest_json1_v2/src/rest_json_protocol/model/omits_serializing_empty_lists_input.dart'
    as _i77;
import 'package:rest_json1_v2/src/rest_json_protocol/model/payload_config.dart'
    as _i102;
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_player_action_input.dart'
    as _i79;
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_player_action_output.dart'
    as _i78;
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_union_with_json_name_input.dart'
    as _i81;
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_union_with_json_name_output.dart'
    as _i80;
import 'package:rest_json1_v2/src/rest_json_protocol/model/query_idempotency_token_auto_fill_input.dart'
    as _i82;
import 'package:rest_json1_v2/src/rest_json_protocol/model/query_params_as_string_list_map_input.dart'
    as _i83;
import 'package:rest_json1_v2/src/rest_json_protocol/model/query_precedence_input.dart'
    as _i84;
import 'package:rest_json1_v2/src/rest_json_protocol/model/recursive_shapes_input_output.dart'
    as _i85;
import 'package:rest_json1_v2/src/rest_json_protocol/model/response_code_http_fallback_input_output.dart'
    as _i86;
import 'package:rest_json1_v2/src/rest_json_protocol/model/response_code_required_output.dart'
    as _i87;
import 'package:rest_json1_v2/src/rest_json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i88;
import 'package:rest_json1_v2/src/rest_json_protocol/model/streaming_traits_input_output.dart'
    as _i89;
import 'package:rest_json1_v2/src/rest_json_protocol/model/streaming_traits_require_length_input.dart'
    as _i90;
import 'package:rest_json1_v2/src/rest_json_protocol/model/streaming_traits_with_media_type_input_output.dart'
    as _i91;
import 'package:rest_json1_v2/src/rest_json_protocol/model/string_enum.dart'
    as _i99;
import 'package:rest_json1_v2/src/rest_json_protocol/model/string_payload_input.dart'
    as _i31;
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_body_structure_input_output.dart'
    as _i92;
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_no_payload_input_output.dart'
    as _i93;
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_payload_blob_input_output.dart'
    as _i94;
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_payload_structure_input_output.dart'
    as _i95;
import 'package:rest_json1_v2/src/rest_json_protocol/model/timestamp_format_headers_io.dart'
    as _i96;
import 'package:rest_json1_v2/src/rest_json_protocol/model/union_input_output.dart'
    as _i40;
import 'package:shelf/shelf.dart' as _i97;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class RestJsonProtocolServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final Router _router = () {
    final service = _RestJsonProtocolServer(this);
    final router = Router();
    router.add(
      'GET',
      r'/AllQueryStringTypesInput',
      service.allQueryStringTypes,
    );
    router.add(
      'GET',
      r'/ConstantAndVariableQueryString?foo=bar',
      service.constantAndVariableQueryString,
    );
    router.add(
      'GET',
      r'/ConstantQueryString/<hello>?foo=bar&hello',
      service.constantQueryString,
    );
    router.add(
      'POST',
      r'/DatetimeOffsets',
      service.datetimeOffsets,
    );
    router.add(
      'PUT',
      r'/DocumentType',
      service.documentType,
    );
    router.add(
      'PUT',
      r'/DocumentTypeAsPayload',
      service.documentTypeAsPayload,
    );
    router.add(
      'POST',
      r'/EmptyInputAndEmptyOutput',
      service.emptyInputAndEmptyOutput,
    );
    router.add(
      'POST',
      r'/EndpointOperation',
      service.endpointOperation,
    );
    router.add(
      'POST',
      r'/EndpointWithHostLabelOperation',
      service.endpointWithHostLabelOperation,
    );
    router.add(
      'POST',
      r'/FractionalSeconds',
      service.fractionalSeconds,
    );
    router.add(
      'PUT',
      r'/GreetingWithErrors',
      service.greetingWithErrors,
    );
    router.add(
      'GET',
      r'/HostWithPathOperation',
      service.hostWithPathOperation,
    );
    router.add(
      'POST',
      r'/HttpChecksumRequired',
      service.httpChecksumRequired,
    );
    router.add(
      'POST',
      r'/EnumPayload',
      service.httpEnumPayload,
    );
    router.add(
      'POST',
      r'/HttpPayloadTraits',
      service.httpPayloadTraits,
    );
    router.add(
      'POST',
      r'/HttpPayloadTraitsWithMediaType',
      service.httpPayloadTraitsWithMediaType,
    );
    router.add(
      'PUT',
      r'/HttpPayloadWithStructure',
      service.httpPayloadWithStructure,
    );
    router.add(
      'GET',
      r'/HttpPrefixHeaders',
      service.httpPrefixHeaders,
    );
    router.add(
      'GET',
      r'/HttpPrefixHeadersResponse',
      service.httpPrefixHeadersInResponse,
    );
    router.add(
      'GET',
      r'/FloatHttpLabels/<float>/<double>',
      service.httpRequestWithFloatLabels,
    );
    router.add(
      'GET',
      r'/HttpRequestWithGreedyLabelInPath/foo/<foo>/baz/<baz>',
      service.httpRequestWithGreedyLabelInPath,
    );
    router.add(
      'GET',
      r'/HttpRequestWithLabels/<string>/<short>/<integer>/<long>/<float>/<double>/<boolean>/<timestamp>',
      service.httpRequestWithLabels,
    );
    router.add(
      'GET',
      r'/HttpRequestWithLabelsAndTimestampFormat/<memberEpochSeconds>/<memberHttpDate>/<memberDateTime>/<defaultFormat>/<targetEpochSeconds>/<targetHttpDate>/<targetDateTime>',
      service.httpRequestWithLabelsAndTimestampFormat,
    );
    router.add(
      'GET',
      r'/ReDosLiteral/<str>/(a+)+',
      service.httpRequestWithRegexLiteral,
    );
    router.add(
      'PUT',
      r'/HttpResponseCode',
      service.httpResponseCode,
    );
    router.add(
      'POST',
      r'/StringPayload',
      service.httpStringPayload,
    );
    router.add(
      'GET',
      r'/IgnoreQueryParamsInResponse',
      service.ignoreQueryParamsInResponse,
    );
    router.add(
      'POST',
      r'/InputAndOutputWithHeaders',
      service.inputAndOutputWithHeaders,
    );
    router.add(
      'POST',
      r'/JsonBlobs',
      service.jsonBlobs,
    );
    router.add(
      'PUT',
      r'/JsonEnums',
      service.jsonEnums,
    );
    router.add(
      'PUT',
      r'/JsonIntEnums',
      service.jsonIntEnums,
    );
    router.add(
      'PUT',
      r'/JsonLists',
      service.jsonLists,
    );
    router.add(
      'POST',
      r'/JsonMaps',
      service.jsonMaps,
    );
    router.add(
      'POST',
      r'/JsonTimestamps',
      service.jsonTimestamps,
    );
    router.add(
      'PUT',
      r'/JsonUnions',
      service.jsonUnions,
    );
    router.add(
      'POST',
      r'/MalformedAcceptWithBody',
      service.malformedAcceptWithBody,
    );
    router.add(
      'POST',
      r'/MalformedAcceptWithGenericString',
      service.malformedAcceptWithGenericString,
    );
    router.add(
      'POST',
      r'/MalformedAcceptWithPayload',
      service.malformedAcceptWithPayload,
    );
    router.add(
      'POST',
      r'/MalformedBlob',
      service.malformedBlob,
    );
    router.add(
      'POST',
      r'/MalformedBoolean/<booleanInPath>',
      service.malformedBoolean,
    );
    router.add(
      'POST',
      r'/MalformedByte/<byteInPath>',
      service.malformedByte,
    );
    router.add(
      'POST',
      r'/MalformedContentTypeWithBody',
      service.malformedContentTypeWithBody,
    );
    router.add(
      'POST',
      r'/MalformedContentTypeWithGenericString',
      service.malformedContentTypeWithGenericString,
    );
    router.add(
      'POST',
      r'/MalformedContentTypeWithPayload',
      service.malformedContentTypeWithPayload,
    );
    router.add(
      'POST',
      r'/MalformedContentTypeWithoutBody',
      service.malformedContentTypeWithoutBody,
    );
    router.add(
      'POST',
      r'/MalformedContentTypeWithoutBodyEmptyInput',
      service.malformedContentTypeWithoutBodyEmptyInput,
    );
    router.add(
      'POST',
      r'/MalformedDouble/<doubleInPath>',
      service.malformedDouble,
    );
    router.add(
      'POST',
      r'/MalformedFloat/<floatInPath>',
      service.malformedFloat,
    );
    router.add(
      'POST',
      r'/MalformedInteger/<integerInPath>',
      service.malformedInteger,
    );
    router.add(
      'POST',
      r'/MalformedList',
      service.malformedList,
    );
    router.add(
      'POST',
      r'/MalformedLong/<longInPath>',
      service.malformedLong,
    );
    router.add(
      'POST',
      r'/MalformedMap',
      service.malformedMap,
    );
    router.add(
      'POST',
      r'/MalformedRequestBody',
      service.malformedRequestBody,
    );
    router.add(
      'POST',
      r'/MalformedShort/<shortInPath>',
      service.malformedShort,
    );
    router.add(
      'POST',
      r'/MalformedString',
      service.malformedString,
    );
    router.add(
      'POST',
      r'/MalformedTimestampBodyDateTime',
      service.malformedTimestampBodyDateTime,
    );
    router.add(
      'POST',
      r'/MalformedTimestampBodyDefault',
      service.malformedTimestampBodyDefault,
    );
    router.add(
      'POST',
      r'/MalformedTimestampBodyHttpDate',
      service.malformedTimestampBodyHttpDate,
    );
    router.add(
      'POST',
      r'/MalformedTimestampHeaderDateTime',
      service.malformedTimestampHeaderDateTime,
    );
    router.add(
      'POST',
      r'/MalformedTimestampHeaderDefault',
      service.malformedTimestampHeaderDefault,
    );
    router.add(
      'POST',
      r'/MalformedTimestampHeaderEpoch',
      service.malformedTimestampHeaderEpoch,
    );
    router.add(
      'POST',
      r'/MalformedTimestampPathDefault/<timestamp>',
      service.malformedTimestampPathDefault,
    );
    router.add(
      'POST',
      r'/MalformedTimestampPathEpoch/<timestamp>',
      service.malformedTimestampPathEpoch,
    );
    router.add(
      'POST',
      r'/MalformedTimestampPathHttpDate/<timestamp>',
      service.malformedTimestampPathHttpDate,
    );
    router.add(
      'POST',
      r'/MalformedTimestampQueryDefault',
      service.malformedTimestampQueryDefault,
    );
    router.add(
      'POST',
      r'/MalformedTimestampQueryEpoch',
      service.malformedTimestampQueryEpoch,
    );
    router.add(
      'POST',
      r'/MalformedTimestampQueryHttpDate',
      service.malformedTimestampQueryHttpDate,
    );
    router.add(
      'POST',
      r'/MalformedUnion',
      service.malformedUnion,
    );
    router.add(
      'GET',
      r'/MediaTypeHeader',
      service.mediaTypeHeader,
    );
    router.add(
      'POST',
      r'/NoInputAndNoOutput',
      service.noInputAndNoOutput,
    );
    router.add(
      'POST',
      r'/NoInputAndOutputOutput',
      service.noInputAndOutput,
    );
    router.add(
      'GET',
      r'/NullAndEmptyHeadersClient',
      service.nullAndEmptyHeadersClient,
    );
    router.add(
      'GET',
      r'/NullAndEmptyHeadersServer',
      service.nullAndEmptyHeadersServer,
    );
    router.add(
      'GET',
      r'/OmitsNullSerializesEmptyString',
      service.omitsNullSerializesEmptyString,
    );
    router.add(
      'POST',
      r'/OmitsSerializingEmptyLists',
      service.omitsSerializingEmptyLists,
    );
    router.add(
      'POST',
      r'/PostPlayerAction',
      service.postPlayerAction,
    );
    router.add(
      'POST',
      r'/PostUnionWithJsonName',
      service.postUnionWithJsonName,
    );
    router.add(
      'POST',
      r'/QueryIdempotencyTokenAutoFill',
      service.queryIdempotencyTokenAutoFill,
    );
    router.add(
      'POST',
      r'/StringListMap',
      service.queryParamsAsStringListMap,
    );
    router.add(
      'POST',
      r'/Precedence',
      service.queryPrecedence,
    );
    router.add(
      'PUT',
      r'/RecursiveShapes',
      service.recursiveShapes,
    );
    router.add(
      'GET',
      r'/responseCodeHttpFallback',
      service.responseCodeHttpFallback,
    );
    router.add(
      'GET',
      r'/responseCodeRequired',
      service.responseCodeRequired,
    );
    router.add(
      'PUT',
      r'/SimpleScalarProperties',
      service.simpleScalarProperties,
    );
    router.add(
      'POST',
      r'/StreamingTraits',
      service.streamingTraits,
    );
    router.add(
      'POST',
      r'/StreamingTraitsRequireLength',
      service.streamingTraitsRequireLength,
    );
    router.add(
      'POST',
      r'/StreamingTraitsWithMediaType',
      service.streamingTraitsWithMediaType,
    );
    router.add(
      'POST',
      r'/body',
      service.testBodyStructure,
    );
    router.add(
      'GET',
      r'/no_payload',
      service.testNoPayload,
    );
    router.add(
      'POST',
      r'/blob_payload',
      service.testPayloadBlob,
    );
    router.add(
      'POST',
      r'/payload',
      service.testPayloadStructure,
    );
    router.add(
      'POST',
      r'/TimestampFormatHeaders',
      service.timestampFormatHeaders,
    );
    router.add(
      'POST',
      r'/UnitInputAndOutput',
      service.unitInputAndOutput,
    );
    return router;
  }();

  _i4.Future<_i1.Unit> allQueryStringTypes(
    _i5.AllQueryStringTypesInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> constantAndVariableQueryString(
    _i6.ConstantAndVariableQueryStringInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> constantQueryString(
    _i7.ConstantQueryStringInput input,
    _i1.Context context,
  );
  _i4.Future<_i8.DatetimeOffsetsOutput> datetimeOffsets(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i9.DocumentTypeInputOutput> documentType(
    _i9.DocumentTypeInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i10.DocumentTypeAsPayloadInputOutput> documentTypeAsPayload(
    _i10.DocumentTypeAsPayloadInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i11.EmptyInputAndEmptyOutputOutput> emptyInputAndEmptyOutput(
    _i12.EmptyInputAndEmptyOutputInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> endpointOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> endpointWithHostLabelOperation(
    _i13.HostLabelInput input,
    _i1.Context context,
  );
  _i4.Future<_i14.FractionalSecondsOutput> fractionalSeconds(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i15.GreetingWithErrorsOutput> greetingWithErrors(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> hostWithPathOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i16.HttpChecksumRequiredInputOutput> httpChecksumRequired(
    _i16.HttpChecksumRequiredInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i17.EnumPayloadInput> httpEnumPayload(
    _i17.EnumPayloadInput input,
    _i1.Context context,
  );
  _i4.Future<_i18.HttpPayloadTraitsInputOutput> httpPayloadTraits(
    _i18.HttpPayloadTraitsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i19.HttpPayloadTraitsWithMediaTypeInputOutput>
      httpPayloadTraitsWithMediaType(
    _i19.HttpPayloadTraitsWithMediaTypeInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i20.HttpPayloadWithStructureInputOutput> httpPayloadWithStructure(
    _i20.HttpPayloadWithStructureInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i21.HttpPrefixHeadersOutput> httpPrefixHeaders(
    _i22.HttpPrefixHeadersInput input,
    _i1.Context context,
  );
  _i4.Future<_i23.HttpPrefixHeadersInResponseOutput>
      httpPrefixHeadersInResponse(
    _i24.HttpPrefixHeadersInResponseInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpRequestWithFloatLabels(
    _i25.HttpRequestWithFloatLabelsInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpRequestWithGreedyLabelInPath(
    _i26.HttpRequestWithGreedyLabelInPathInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpRequestWithLabels(
    _i27.HttpRequestWithLabelsInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpRequestWithLabelsAndTimestampFormat(
    _i28.HttpRequestWithLabelsAndTimestampFormatInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpRequestWithRegexLiteral(
    _i29.HttpRequestWithRegexLiteralInput input,
    _i1.Context context,
  );
  _i4.Future<_i30.HttpResponseCodeOutput> httpResponseCode(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i31.StringPayloadInput> httpStringPayload(
    _i31.StringPayloadInput input,
    _i1.Context context,
  );
  _i4.Future<_i32.IgnoreQueryParamsInResponseOutput>
      ignoreQueryParamsInResponse(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i33.InputAndOutputWithHeadersIo> inputAndOutputWithHeaders(
    _i33.InputAndOutputWithHeadersIo input,
    _i1.Context context,
  );
  _i4.Future<_i34.JsonBlobsInputOutput> jsonBlobs(
    _i34.JsonBlobsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i35.JsonEnumsInputOutput> jsonEnums(
    _i35.JsonEnumsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i36.JsonIntEnumsInputOutput> jsonIntEnums(
    _i36.JsonIntEnumsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i37.JsonListsInputOutput> jsonLists(
    _i37.JsonListsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i38.JsonMapsInputOutput> jsonMaps(
    _i38.JsonMapsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i39.JsonTimestampsInputOutput> jsonTimestamps(
    _i39.JsonTimestampsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i40.UnionInputOutput> jsonUnions(
    _i40.UnionInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i41.GreetingStruct> malformedAcceptWithBody(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i42.MalformedAcceptWithGenericStringOutput>
      malformedAcceptWithGenericString(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i43.MalformedAcceptWithPayloadOutput> malformedAcceptWithPayload(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedBlob(
    _i44.MalformedBlobInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedBoolean(
    _i45.MalformedBooleanInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedByte(
    _i46.MalformedByteInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedContentTypeWithBody(
    _i41.GreetingStruct input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedContentTypeWithGenericString(
    _i47.MalformedContentTypeWithGenericStringInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedContentTypeWithPayload(
    _i48.MalformedContentTypeWithPayloadInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedContentTypeWithoutBody(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedContentTypeWithoutBodyEmptyInput(
    _i49.MalformedContentTypeWithoutBodyEmptyInputInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedDouble(
    _i50.MalformedDoubleInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedFloat(
    _i51.MalformedFloatInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedInteger(
    _i52.MalformedIntegerInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedList(
    _i53.MalformedListInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedLong(
    _i54.MalformedLongInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedMap(
    _i55.MalformedMapInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedRequestBody(
    _i56.MalformedRequestBodyInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedShort(
    _i57.MalformedShortInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedString(
    _i58.MalformedStringInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampBodyDateTime(
    _i59.MalformedTimestampBodyDateTimeInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampBodyDefault(
    _i60.MalformedTimestampBodyDefaultInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampBodyHttpDate(
    _i61.MalformedTimestampBodyHttpDateInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampHeaderDateTime(
    _i62.MalformedTimestampHeaderDateTimeInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampHeaderDefault(
    _i63.MalformedTimestampHeaderDefaultInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampHeaderEpoch(
    _i64.MalformedTimestampHeaderEpochInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampPathDefault(
    _i65.MalformedTimestampPathDefaultInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampPathEpoch(
    _i66.MalformedTimestampPathEpochInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampPathHttpDate(
    _i67.MalformedTimestampPathHttpDateInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampQueryDefault(
    _i68.MalformedTimestampQueryDefaultInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampQueryEpoch(
    _i69.MalformedTimestampQueryEpochInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampQueryHttpDate(
    _i70.MalformedTimestampQueryHttpDateInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedUnion(
    _i71.MalformedUnionInput input,
    _i1.Context context,
  );
  _i4.Future<_i72.MediaTypeHeaderOutput> mediaTypeHeader(
    _i73.MediaTypeHeaderInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> noInputAndNoOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i74.NoInputAndOutputOutput> noInputAndOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i75.NullAndEmptyHeadersIo> nullAndEmptyHeadersClient(
    _i75.NullAndEmptyHeadersIo input,
    _i1.Context context,
  );
  _i4.Future<_i75.NullAndEmptyHeadersIo> nullAndEmptyHeadersServer(
    _i75.NullAndEmptyHeadersIo input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> omitsNullSerializesEmptyString(
    _i76.OmitsNullSerializesEmptyStringInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> omitsSerializingEmptyLists(
    _i77.OmitsSerializingEmptyListsInput input,
    _i1.Context context,
  );
  _i4.Future<_i78.PostPlayerActionOutput> postPlayerAction(
    _i79.PostPlayerActionInput input,
    _i1.Context context,
  );
  _i4.Future<_i80.PostUnionWithJsonNameOutput> postUnionWithJsonName(
    _i81.PostUnionWithJsonNameInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> queryIdempotencyTokenAutoFill(
    _i82.QueryIdempotencyTokenAutoFillInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> queryParamsAsStringListMap(
    _i83.QueryParamsAsStringListMapInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> queryPrecedence(
    _i84.QueryPrecedenceInput input,
    _i1.Context context,
  );
  _i4.Future<_i85.RecursiveShapesInputOutput> recursiveShapes(
    _i85.RecursiveShapesInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i86.ResponseCodeHttpFallbackInputOutput> responseCodeHttpFallback(
    _i86.ResponseCodeHttpFallbackInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i87.ResponseCodeRequiredOutput> responseCodeRequired(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i88.SimpleScalarPropertiesInputOutput> simpleScalarProperties(
    _i88.SimpleScalarPropertiesInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i89.StreamingTraitsInputOutput> streamingTraits(
    _i89.StreamingTraitsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> streamingTraitsRequireLength(
    _i90.StreamingTraitsRequireLengthInput input,
    _i1.Context context,
  );
  _i4.Future<_i91.StreamingTraitsWithMediaTypeInputOutput>
      streamingTraitsWithMediaType(
    _i91.StreamingTraitsWithMediaTypeInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i92.TestBodyStructureInputOutput> testBodyStructure(
    _i92.TestBodyStructureInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i93.TestNoPayloadInputOutput> testNoPayload(
    _i93.TestNoPayloadInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i94.TestPayloadBlobInputOutput> testPayloadBlob(
    _i94.TestPayloadBlobInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i95.TestPayloadStructureInputOutput> testPayloadStructure(
    _i95.TestPayloadStructureInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i96.TimestampFormatHeadersIo> timestampFormatHeaders(
    _i96.TimestampFormatHeadersIo input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> unitInputAndOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i97.Response> call(_i97.Request request) => _router(request);
}

class _RestJsonProtocolServer
    extends _i1.HttpServer<RestJsonProtocolServerBase> {
  _RestJsonProtocolServer(this.service);

  @override
  final RestJsonProtocolServerBase service;

  late final _i1.HttpProtocol<
      _i5.AllQueryStringTypesInputPayload,
      _i5.AllQueryStringTypesInput,
      _i1.Unit,
      _i1.Unit> _allQueryStringTypesProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i6.ConstantAndVariableQueryStringInputPayload,
      _i6.ConstantAndVariableQueryStringInput,
      _i1.Unit,
      _i1.Unit> _constantAndVariableQueryStringProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i7.ConstantQueryStringInputPayload,
      _i7.ConstantQueryStringInput,
      _i1.Unit,
      _i1.Unit> _constantQueryStringProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i8.DatetimeOffsetsOutput,
          _i8.DatetimeOffsetsOutput> _datetimeOffsetsProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i9.DocumentTypeInputOutput,
          _i9.DocumentTypeInputOutput,
          _i9.DocumentTypeInputOutput,
          _i9.DocumentTypeInputOutput> _documentTypeProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i98.JsonObject,
          _i10.DocumentTypeAsPayloadInputOutput,
          _i98.JsonObject,
          _i10.DocumentTypeAsPayloadInputOutput>
      _documentTypeAsPayloadProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i12.EmptyInputAndEmptyOutputInput,
          _i12.EmptyInputAndEmptyOutputInput,
          _i11.EmptyInputAndEmptyOutputOutput,
          _i11.EmptyInputAndEmptyOutputOutput>
      _emptyInputAndEmptyOutputProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _endpointOperationProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i13.HostLabelInput,
      _i13.HostLabelInput,
      _i1.Unit,
      _i1.Unit> _endpointWithHostLabelOperationProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i14.FractionalSecondsOutput,
          _i14.FractionalSecondsOutput> _fractionalSecondsProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit,
          _i15.GreetingWithErrorsOutputPayload, _i15.GreetingWithErrorsOutput>
      _greetingWithErrorsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _hostWithPathOperationProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i16.HttpChecksumRequiredInputOutput,
          _i16.HttpChecksumRequiredInputOutput,
          _i16.HttpChecksumRequiredInputOutput,
          _i16.HttpChecksumRequiredInputOutput> _httpChecksumRequiredProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i99.StringEnum,
      _i17.EnumPayloadInput,
      _i99.StringEnum,
      _i17.EnumPayloadInput> _httpEnumPayloadProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i100.Uint8List,
          _i18.HttpPayloadTraitsInputOutput,
          _i100.Uint8List,
          _i18.HttpPayloadTraitsInputOutput> _httpPayloadTraitsProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i100.Uint8List,
          _i19.HttpPayloadTraitsWithMediaTypeInputOutput,
          _i100.Uint8List,
          _i19.HttpPayloadTraitsWithMediaTypeInputOutput>
      _httpPayloadTraitsWithMediaTypeProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    mediaType: 'text/plain',
  );

  late final _i1.HttpProtocol<
          _i101.NestedPayload,
          _i20.HttpPayloadWithStructureInputOutput,
          _i101.NestedPayload,
          _i20.HttpPayloadWithStructureInputOutput>
      _httpPayloadWithStructureProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i22.HttpPrefixHeadersInputPayload,
          _i22.HttpPrefixHeadersInput,
          _i21.HttpPrefixHeadersOutputPayload,
          _i21.HttpPrefixHeadersOutput> _httpPrefixHeadersProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i24.HttpPrefixHeadersInResponseInput,
          _i24.HttpPrefixHeadersInResponseInput,
          _i23.HttpPrefixHeadersInResponseOutputPayload,
          _i23.HttpPrefixHeadersInResponseOutput>
      _httpPrefixHeadersInResponseProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i25.HttpRequestWithFloatLabelsInputPayload,
      _i25.HttpRequestWithFloatLabelsInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithFloatLabelsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i26.HttpRequestWithGreedyLabelInPathInputPayload,
          _i26.HttpRequestWithGreedyLabelInPathInput, _i1.Unit, _i1.Unit>
      _httpRequestWithGreedyLabelInPathProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i27.HttpRequestWithLabelsInputPayload,
      _i27.HttpRequestWithLabelsInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithLabelsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i28.HttpRequestWithLabelsAndTimestampFormatInputPayload,
          _i28.HttpRequestWithLabelsAndTimestampFormatInput,
          _i1.Unit,
          _i1.Unit> _httpRequestWithLabelsAndTimestampFormatProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i29.HttpRequestWithRegexLiteralInputPayload,
      _i29.HttpRequestWithRegexLiteralInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithRegexLiteralProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit,
          _i30.HttpResponseCodeOutputPayload, _i30.HttpResponseCodeOutput>
      _httpResponseCodeProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<String, _i31.StringPayloadInput, String,
          _i31.StringPayloadInput> _httpStringPayloadProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i1.Unit,
          _i1.Unit,
          _i32.IgnoreQueryParamsInResponseOutput,
          _i32.IgnoreQueryParamsInResponseOutput>
      _ignoreQueryParamsInResponseProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i33.InputAndOutputWithHeadersIoPayload,
          _i33.InputAndOutputWithHeadersIo,
          _i33.InputAndOutputWithHeadersIoPayload,
          _i33.InputAndOutputWithHeadersIo> _inputAndOutputWithHeadersProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i34.JsonBlobsInputOutput,
      _i34.JsonBlobsInputOutput,
      _i34.JsonBlobsInputOutput,
      _i34.JsonBlobsInputOutput> _jsonBlobsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i35.JsonEnumsInputOutput,
      _i35.JsonEnumsInputOutput,
      _i35.JsonEnumsInputOutput,
      _i35.JsonEnumsInputOutput> _jsonEnumsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i36.JsonIntEnumsInputOutput,
          _i36.JsonIntEnumsInputOutput,
          _i36.JsonIntEnumsInputOutput,
          _i36.JsonIntEnumsInputOutput> _jsonIntEnumsProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i37.JsonListsInputOutput,
      _i37.JsonListsInputOutput,
      _i37.JsonListsInputOutput,
      _i37.JsonListsInputOutput> _jsonListsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i38.JsonMapsInputOutput,
      _i38.JsonMapsInputOutput,
      _i38.JsonMapsInputOutput,
      _i38.JsonMapsInputOutput> _jsonMapsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i39.JsonTimestampsInputOutput,
          _i39.JsonTimestampsInputOutput,
          _i39.JsonTimestampsInputOutput,
          _i39.JsonTimestampsInputOutput> _jsonTimestampsProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i40.UnionInputOutput,
      _i40.UnionInputOutput,
      _i40.UnionInputOutput,
      _i40.UnionInputOutput> _jsonUnionsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i41.GreetingStruct,
          _i41.GreetingStruct> _malformedAcceptWithBodyProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, String,
          _i42.MalformedAcceptWithGenericStringOutput>
      _malformedAcceptWithGenericStringProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i100.Uint8List,
          _i43.MalformedAcceptWithPayloadOutput>
      _malformedAcceptWithPayloadProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i44.MalformedBlobInput, _i44.MalformedBlobInput,
      _i1.Unit, _i1.Unit> _malformedBlobProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i45.MalformedBooleanInputPayload,
      _i45.MalformedBooleanInput,
      _i1.Unit,
      _i1.Unit> _malformedBooleanProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i46.MalformedByteInputPayload,
      _i46.MalformedByteInput,
      _i1.Unit,
      _i1.Unit> _malformedByteProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i41.GreetingStruct,
      _i41.GreetingStruct,
      _i1.Unit,
      _i1.Unit> _malformedContentTypeWithBodyProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<String,
          _i47.MalformedContentTypeWithGenericStringInput, _i1.Unit, _i1.Unit>
      _malformedContentTypeWithGenericStringProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i100.Uint8List,
          _i48.MalformedContentTypeWithPayloadInput, _i1.Unit, _i1.Unit>
      _malformedContentTypeWithPayloadProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    mediaType: 'image/jpeg',
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _malformedContentTypeWithoutBodyProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i49.MalformedContentTypeWithoutBodyEmptyInputInputPayload,
          _i49.MalformedContentTypeWithoutBodyEmptyInputInput,
          _i1.Unit,
          _i1.Unit> _malformedContentTypeWithoutBodyEmptyInputProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i50.MalformedDoubleInputPayload,
      _i50.MalformedDoubleInput,
      _i1.Unit,
      _i1.Unit> _malformedDoubleProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i51.MalformedFloatInputPayload,
      _i51.MalformedFloatInput,
      _i1.Unit,
      _i1.Unit> _malformedFloatProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i52.MalformedIntegerInputPayload,
      _i52.MalformedIntegerInput,
      _i1.Unit,
      _i1.Unit> _malformedIntegerProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i53.MalformedListInput, _i53.MalformedListInput,
      _i1.Unit, _i1.Unit> _malformedListProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i54.MalformedLongInputPayload,
      _i54.MalformedLongInput,
      _i1.Unit,
      _i1.Unit> _malformedLongProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i55.MalformedMapInput, _i55.MalformedMapInput,
      _i1.Unit, _i1.Unit> _malformedMapProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i56.MalformedRequestBodyInput,
      _i56.MalformedRequestBodyInput,
      _i1.Unit,
      _i1.Unit> _malformedRequestBodyProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i57.MalformedShortInputPayload,
      _i57.MalformedShortInput,
      _i1.Unit,
      _i1.Unit> _malformedShortProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i58.MalformedStringInputPayload,
      _i58.MalformedStringInput,
      _i1.Unit,
      _i1.Unit> _malformedStringProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i59.MalformedTimestampBodyDateTimeInput,
      _i59.MalformedTimestampBodyDateTimeInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampBodyDateTimeProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i60.MalformedTimestampBodyDefaultInput,
      _i60.MalformedTimestampBodyDefaultInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampBodyDefaultProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i61.MalformedTimestampBodyHttpDateInput,
      _i61.MalformedTimestampBodyHttpDateInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampBodyHttpDateProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i62.MalformedTimestampHeaderDateTimeInputPayload,
          _i62.MalformedTimestampHeaderDateTimeInput, _i1.Unit, _i1.Unit>
      _malformedTimestampHeaderDateTimeProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i63.MalformedTimestampHeaderDefaultInputPayload,
          _i63.MalformedTimestampHeaderDefaultInput, _i1.Unit, _i1.Unit>
      _malformedTimestampHeaderDefaultProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i64.MalformedTimestampHeaderEpochInputPayload,
      _i64.MalformedTimestampHeaderEpochInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampHeaderEpochProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i65.MalformedTimestampPathDefaultInputPayload,
      _i65.MalformedTimestampPathDefaultInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampPathDefaultProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i66.MalformedTimestampPathEpochInputPayload,
      _i66.MalformedTimestampPathEpochInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampPathEpochProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i67.MalformedTimestampPathHttpDateInputPayload,
      _i67.MalformedTimestampPathHttpDateInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampPathHttpDateProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i68.MalformedTimestampQueryDefaultInputPayload,
      _i68.MalformedTimestampQueryDefaultInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampQueryDefaultProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i69.MalformedTimestampQueryEpochInputPayload,
      _i69.MalformedTimestampQueryEpochInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampQueryEpochProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i70.MalformedTimestampQueryHttpDateInputPayload,
          _i70.MalformedTimestampQueryHttpDateInput, _i1.Unit, _i1.Unit>
      _malformedTimestampQueryHttpDateProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i71.MalformedUnionInput,
      _i71.MalformedUnionInput,
      _i1.Unit,
      _i1.Unit> _malformedUnionProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i73.MediaTypeHeaderInputPayload,
          _i73.MediaTypeHeaderInput,
          _i72.MediaTypeHeaderOutputPayload,
          _i72.MediaTypeHeaderOutput> _mediaTypeHeaderProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _noInputAndNoOutputProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i74.NoInputAndOutputOutput,
          _i74.NoInputAndOutputOutput> _noInputAndOutputProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i75.NullAndEmptyHeadersIoPayload,
          _i75.NullAndEmptyHeadersIo,
          _i75.NullAndEmptyHeadersIoPayload,
          _i75.NullAndEmptyHeadersIo> _nullAndEmptyHeadersClientProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i75.NullAndEmptyHeadersIoPayload,
          _i75.NullAndEmptyHeadersIo,
          _i75.NullAndEmptyHeadersIoPayload,
          _i75.NullAndEmptyHeadersIo> _nullAndEmptyHeadersServerProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i76.OmitsNullSerializesEmptyStringInputPayload,
      _i76.OmitsNullSerializesEmptyStringInput,
      _i1.Unit,
      _i1.Unit> _omitsNullSerializesEmptyStringProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i77.OmitsSerializingEmptyListsInputPayload,
      _i77.OmitsSerializingEmptyListsInput,
      _i1.Unit,
      _i1.Unit> _omitsSerializingEmptyListsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i79.PostPlayerActionInput,
          _i79.PostPlayerActionInput,
          _i78.PostPlayerActionOutput,
          _i78.PostPlayerActionOutput> _postPlayerActionProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i81.PostUnionWithJsonNameInput,
          _i81.PostUnionWithJsonNameInput,
          _i80.PostUnionWithJsonNameOutput,
          _i80.PostUnionWithJsonNameOutput> _postUnionWithJsonNameProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i82.QueryIdempotencyTokenAutoFillInputPayload,
      _i82.QueryIdempotencyTokenAutoFillInput,
      _i1.Unit,
      _i1.Unit> _queryIdempotencyTokenAutoFillProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i83.QueryParamsAsStringListMapInputPayload,
      _i83.QueryParamsAsStringListMapInput,
      _i1.Unit,
      _i1.Unit> _queryParamsAsStringListMapProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i84.QueryPrecedenceInputPayload,
      _i84.QueryPrecedenceInput,
      _i1.Unit,
      _i1.Unit> _queryPrecedenceProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i85.RecursiveShapesInputOutput,
          _i85.RecursiveShapesInputOutput,
          _i85.RecursiveShapesInputOutput,
          _i85.RecursiveShapesInputOutput> _recursiveShapesProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i86.ResponseCodeHttpFallbackInputOutput,
          _i86.ResponseCodeHttpFallbackInputOutput,
          _i86.ResponseCodeHttpFallbackInputOutput,
          _i86.ResponseCodeHttpFallbackInputOutput>
      _responseCodeHttpFallbackProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i1.Unit,
          _i1.Unit,
          _i87.ResponseCodeRequiredOutputPayload,
          _i87.ResponseCodeRequiredOutput> _responseCodeRequiredProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i88.SimpleScalarPropertiesInputOutputPayload,
          _i88.SimpleScalarPropertiesInputOutput,
          _i88.SimpleScalarPropertiesInputOutputPayload,
          _i88.SimpleScalarPropertiesInputOutput>
      _simpleScalarPropertiesProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i4.Stream<List<int>>,
          _i89.StreamingTraitsInputOutput,
          _i4.Stream<List<int>>,
          _i89.StreamingTraitsInputOutput> _streamingTraitsProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i4.Stream<List<int>>,
      _i90.StreamingTraitsRequireLengthInput,
      _i1.Unit,
      _i1.Unit> _streamingTraitsRequireLengthProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i4.Stream<List<int>>,
          _i91.StreamingTraitsWithMediaTypeInputOutput,
          _i4.Stream<List<int>>,
          _i91.StreamingTraitsWithMediaTypeInputOutput>
      _streamingTraitsWithMediaTypeProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    mediaType: 'text/plain',
  );

  late final _i1.HttpProtocol<
          _i92.TestBodyStructureInputOutputPayload,
          _i92.TestBodyStructureInputOutput,
          _i92.TestBodyStructureInputOutputPayload,
          _i92.TestBodyStructureInputOutput> _testBodyStructureProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i93.TestNoPayloadInputOutputPayload,
          _i93.TestNoPayloadInputOutput,
          _i93.TestNoPayloadInputOutputPayload,
          _i93.TestNoPayloadInputOutput> _testNoPayloadProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i100.Uint8List, _i94.TestPayloadBlobInputOutput,
          _i100.Uint8List, _i94.TestPayloadBlobInputOutput>
      _testPayloadBlobProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i102.PayloadConfig,
          _i95.TestPayloadStructureInputOutput,
          _i102.PayloadConfig,
          _i95.TestPayloadStructureInputOutput> _testPayloadStructureProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i96.TimestampFormatHeadersIoPayload,
          _i96.TimestampFormatHeadersIo,
          _i96.TimestampFormatHeadersIoPayload,
          _i96.TimestampFormatHeadersIo> _timestampFormatHeadersProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _unitInputAndOutputProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  _i4.Future<_i97.Response> allQueryStringTypes(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _allQueryStringTypesProtocol.contentType;
    try {
      final payload =
          (await _allQueryStringTypesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i5.AllQueryStringTypesInputPayload),
      ) as _i5.AllQueryStringTypesInputPayload);
      final input = _i5.AllQueryStringTypesInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.allQueryStringTypes(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _allQueryStringTypesProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> constantAndVariableQueryString(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _constantAndVariableQueryStringProtocol.contentType;
    try {
      final payload = (await _constantAndVariableQueryStringProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i6.ConstantAndVariableQueryStringInputPayload),
      ) as _i6.ConstantAndVariableQueryStringInputPayload);
      final input = _i6.ConstantAndVariableQueryStringInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.constantAndVariableQueryString(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _constantAndVariableQueryStringProtocol.wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> constantQueryString(
    _i97.Request request,
    String hello,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _constantQueryStringProtocol.contentType;
    try {
      final payload =
          (await _constantQueryStringProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i7.ConstantQueryStringInputPayload),
      ) as _i7.ConstantQueryStringInputPayload);
      final input = _i7.ConstantQueryStringInput.fromRequest(
        payload,
        awsRequest,
        labels: {'hello': hello},
      );
      final output = await service.constantQueryString(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _constantQueryStringProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> datetimeOffsets(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _datetimeOffsetsProtocol.contentType;
    try {
      final payload =
          (await _datetimeOffsetsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.datetimeOffsets(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _datetimeOffsetsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i8.DatetimeOffsetsOutput,
          [FullType(_i8.DatetimeOffsetsOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> documentType(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _documentTypeProtocol.contentType;
    try {
      final payload = (await _documentTypeProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i9.DocumentTypeInputOutput),
      ) as _i9.DocumentTypeInputOutput);
      final input = _i9.DocumentTypeInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.documentType(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _documentTypeProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i9.DocumentTypeInputOutput,
          [FullType(_i9.DocumentTypeInputOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> documentTypeAsPayload(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _documentTypeAsPayloadProtocol.contentType;
    try {
      final payload =
          (await _documentTypeAsPayloadProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i98.JsonObject),
      ) as _i98.JsonObject?);
      final input = _i10.DocumentTypeAsPayloadInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.documentTypeAsPayload(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _documentTypeAsPayloadProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i10.DocumentTypeAsPayloadInputOutput,
          [FullType.nullable(_i98.JsonObject)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> emptyInputAndEmptyOutput(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _emptyInputAndEmptyOutputProtocol.contentType;
    try {
      final payload =
          (await _emptyInputAndEmptyOutputProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i12.EmptyInputAndEmptyOutputInput),
      ) as _i12.EmptyInputAndEmptyOutputInput);
      final input = _i12.EmptyInputAndEmptyOutputInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.emptyInputAndEmptyOutput(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _emptyInputAndEmptyOutputProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i11.EmptyInputAndEmptyOutputOutput,
          [FullType(_i11.EmptyInputAndEmptyOutputOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> endpointOperation(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _endpointOperationProtocol.contentType;
    try {
      final payload =
          (await _endpointOperationProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.endpointOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _endpointOperationProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> endpointWithHostLabelOperation(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _endpointWithHostLabelOperationProtocol.contentType;
    try {
      final payload = (await _endpointWithHostLabelOperationProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i13.HostLabelInput),
      ) as _i13.HostLabelInput);
      final input = _i13.HostLabelInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.endpointWithHostLabelOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _endpointWithHostLabelOperationProtocol.wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> fractionalSeconds(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _fractionalSecondsProtocol.contentType;
    try {
      final payload =
          (await _fractionalSecondsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.fractionalSeconds(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _fractionalSecondsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i14.FractionalSecondsOutput,
          [FullType(_i14.FractionalSecondsOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> greetingWithErrors(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _greetingWithErrorsProtocol.contentType;
    try {
      final payload =
          (await _greetingWithErrorsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.greetingWithErrors(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _greetingWithErrorsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i15.GreetingWithErrorsOutput,
          [FullType(_i15.GreetingWithErrorsOutputPayload)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i103.ComplexError catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ComplexError';
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          _i103.ComplexError,
          [FullType(_i103.ComplexErrorPayload)],
        ),
      );
      const statusCode = 403;
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i104.FooError catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'FooError';
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          _i104.FooError,
          [FullType(_i104.FooError)],
        ),
      );
      const statusCode = 500;
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i105.InvalidGreeting catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'InvalidGreeting';
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          _i105.InvalidGreeting,
          [FullType(_i105.InvalidGreeting)],
        ),
      );
      const statusCode = 400;
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> hostWithPathOperation(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _hostWithPathOperationProtocol.contentType;
    try {
      final payload =
          (await _hostWithPathOperationProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.hostWithPathOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _hostWithPathOperationProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> httpChecksumRequired(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpChecksumRequiredProtocol.contentType;
    try {
      final payload =
          (await _httpChecksumRequiredProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i16.HttpChecksumRequiredInputOutput),
      ) as _i16.HttpChecksumRequiredInputOutput);
      final input = _i16.HttpChecksumRequiredInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpChecksumRequired(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _httpChecksumRequiredProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i16.HttpChecksumRequiredInputOutput,
          [FullType(_i16.HttpChecksumRequiredInputOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> httpEnumPayload(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpEnumPayloadProtocol.contentType;
    try {
      final payload =
          (await _httpEnumPayloadProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i99.StringEnum),
      ) as _i99.StringEnum?);
      final input = _i17.EnumPayloadInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpEnumPayload(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _httpEnumPayloadProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i17.EnumPayloadInput,
          [FullType.nullable(_i99.StringEnum)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> httpPayloadTraits(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadTraitsProtocol.contentType;
    try {
      final payload =
          (await _httpPayloadTraitsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i100.Uint8List),
      ) as _i100.Uint8List?);
      final input = _i18.HttpPayloadTraitsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPayloadTraits(
        input,
        context,
      );
      if (output.foo != null) {
        context.response.headers['X-Foo'] = output.foo!;
      }
      const statusCode = 200;
      final body = await _httpPayloadTraitsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i18.HttpPayloadTraitsInputOutput,
          [FullType.nullable(_i100.Uint8List)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> httpPayloadTraitsWithMediaType(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadTraitsWithMediaTypeProtocol.contentType;
    try {
      final payload = (await _httpPayloadTraitsWithMediaTypeProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i100.Uint8List),
      ) as _i100.Uint8List?);
      final input = _i19.HttpPayloadTraitsWithMediaTypeInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPayloadTraitsWithMediaType(
        input,
        context,
      );
      if (output.foo != null) {
        context.response.headers['X-Foo'] = output.foo!;
      }
      const statusCode = 200;
      final body = await _httpPayloadTraitsWithMediaTypeProtocol.wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i19.HttpPayloadTraitsWithMediaTypeInputOutput,
          [FullType.nullable(_i100.Uint8List)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> httpPayloadWithStructure(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithStructureProtocol.contentType;
    try {
      final payload =
          (await _httpPayloadWithStructureProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i101.NestedPayload),
      ) as _i101.NestedPayload?);
      final input = _i20.HttpPayloadWithStructureInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPayloadWithStructure(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _httpPayloadWithStructureProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i20.HttpPayloadWithStructureInputOutput,
          [FullType.nullable(_i101.NestedPayload)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> httpPrefixHeaders(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPrefixHeadersProtocol.contentType;
    try {
      final payload =
          (await _httpPrefixHeadersProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i22.HttpPrefixHeadersInputPayload),
      ) as _i22.HttpPrefixHeadersInputPayload);
      final input = _i22.HttpPrefixHeadersInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPrefixHeaders(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _httpPrefixHeadersProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i21.HttpPrefixHeadersOutput,
          [FullType(_i21.HttpPrefixHeadersOutputPayload)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> httpPrefixHeadersInResponse(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPrefixHeadersInResponseProtocol.contentType;
    try {
      final payload = (await _httpPrefixHeadersInResponseProtocol.wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i24.HttpPrefixHeadersInResponseInput),
      ) as _i24.HttpPrefixHeadersInResponseInput);
      final input = _i24.HttpPrefixHeadersInResponseInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPrefixHeadersInResponse(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _httpPrefixHeadersInResponseProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i23.HttpPrefixHeadersInResponseOutput,
          [FullType(_i23.HttpPrefixHeadersInResponseOutputPayload)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> httpRequestWithFloatLabels(
    _i97.Request request,
    String float,
    String double,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpRequestWithFloatLabelsProtocol.contentType;
    try {
      final payload =
          (await _httpRequestWithFloatLabelsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i25.HttpRequestWithFloatLabelsInputPayload),
      ) as _i25.HttpRequestWithFloatLabelsInputPayload);
      final input = _i25.HttpRequestWithFloatLabelsInput.fromRequest(
        payload,
        awsRequest,
        labels: {
          'float': float,
          'double': double,
        },
      );
      final output = await service.httpRequestWithFloatLabels(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _httpRequestWithFloatLabelsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> httpRequestWithGreedyLabelInPath(
    _i97.Request request,
    String foo,
    String baz,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpRequestWithGreedyLabelInPathProtocol.contentType;
    try {
      final payload = (await _httpRequestWithGreedyLabelInPathProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i26.HttpRequestWithGreedyLabelInPathInputPayload),
      ) as _i26.HttpRequestWithGreedyLabelInPathInputPayload);
      final input = _i26.HttpRequestWithGreedyLabelInPathInput.fromRequest(
        payload,
        awsRequest,
        labels: {
          'foo': foo,
          'baz': baz,
        },
      );
      final output = await service.httpRequestWithGreedyLabelInPath(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _httpRequestWithGreedyLabelInPathProtocol
          .wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> httpRequestWithLabels(
    _i97.Request request,
    String string,
    String short,
    String integer,
    String long,
    String float,
    String double,
    String boolean,
    String timestamp,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpRequestWithLabelsProtocol.contentType;
    try {
      final payload =
          (await _httpRequestWithLabelsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i27.HttpRequestWithLabelsInputPayload),
      ) as _i27.HttpRequestWithLabelsInputPayload);
      final input = _i27.HttpRequestWithLabelsInput.fromRequest(
        payload,
        awsRequest,
        labels: {
          'string': string,
          'short': short,
          'integer': integer,
          'long': long,
          'float': float,
          'double': double,
          'boolean': boolean,
          'timestamp': timestamp,
        },
      );
      final output = await service.httpRequestWithLabels(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _httpRequestWithLabelsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> httpRequestWithLabelsAndTimestampFormat(
    _i97.Request request,
    String memberEpochSeconds,
    String memberHttpDate,
    String memberDateTime,
    String defaultFormat,
    String targetEpochSeconds,
    String targetHttpDate,
    String targetDateTime,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpRequestWithLabelsAndTimestampFormatProtocol.contentType;
    try {
      final payload = (await _httpRequestWithLabelsAndTimestampFormatProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(
            _i28.HttpRequestWithLabelsAndTimestampFormatInputPayload),
      ) as _i28.HttpRequestWithLabelsAndTimestampFormatInputPayload);
      final input =
          _i28.HttpRequestWithLabelsAndTimestampFormatInput.fromRequest(
        payload,
        awsRequest,
        labels: {
          'memberEpochSeconds': memberEpochSeconds,
          'memberHttpDate': memberHttpDate,
          'memberDateTime': memberDateTime,
          'defaultFormat': defaultFormat,
          'targetEpochSeconds': targetEpochSeconds,
          'targetHttpDate': targetHttpDate,
          'targetDateTime': targetDateTime,
        },
      );
      final output = await service.httpRequestWithLabelsAndTimestampFormat(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _httpRequestWithLabelsAndTimestampFormatProtocol
          .wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> httpRequestWithRegexLiteral(
    _i97.Request request,
    String str,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpRequestWithRegexLiteralProtocol.contentType;
    try {
      final payload = (await _httpRequestWithRegexLiteralProtocol.wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i29.HttpRequestWithRegexLiteralInputPayload),
      ) as _i29.HttpRequestWithRegexLiteralInputPayload);
      final input = _i29.HttpRequestWithRegexLiteralInput.fromRequest(
        payload,
        awsRequest,
        labels: {'str': str},
      );
      final output = await service.httpRequestWithRegexLiteral(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _httpRequestWithRegexLiteralProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> httpResponseCode(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpResponseCodeProtocol.contentType;
    try {
      final payload =
          (await _httpResponseCodeProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.httpResponseCode(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _httpResponseCodeProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i30.HttpResponseCodeOutput,
          [FullType(_i30.HttpResponseCodeOutputPayload)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> httpStringPayload(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpStringPayloadProtocol.contentType;
    try {
      final payload =
          (await _httpStringPayloadProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(String),
      ) as String?);
      final input = _i31.StringPayloadInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpStringPayload(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _httpStringPayloadProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i31.StringPayloadInput,
          [FullType.nullable(String)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> ignoreQueryParamsInResponse(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _ignoreQueryParamsInResponseProtocol.contentType;
    try {
      final payload = (await _ignoreQueryParamsInResponseProtocol.wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.ignoreQueryParamsInResponse(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _ignoreQueryParamsInResponseProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i32.IgnoreQueryParamsInResponseOutput,
          [FullType(_i32.IgnoreQueryParamsInResponseOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> inputAndOutputWithHeaders(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _inputAndOutputWithHeadersProtocol.contentType;
    try {
      final payload =
          (await _inputAndOutputWithHeadersProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i33.InputAndOutputWithHeadersIoPayload),
      ) as _i33.InputAndOutputWithHeadersIoPayload);
      final input = _i33.InputAndOutputWithHeadersIo.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.inputAndOutputWithHeaders(
        input,
        context,
      );
      if (output.headerString != null) {
        context.response.headers['X-String'] = output.headerString!;
      }
      if (output.headerByte != null) {
        context.response.headers['X-Byte'] = output.headerByte!.toString();
      }
      if (output.headerShort != null) {
        context.response.headers['X-Short'] = output.headerShort!.toString();
      }
      if (output.headerInteger != null) {
        context.response.headers['X-Integer'] =
            output.headerInteger!.toString();
      }
      if (output.headerLong != null) {
        context.response.headers['X-Long'] = output.headerLong!.toString();
      }
      if (output.headerFloat != null) {
        context.response.headers['X-Float'] = output.headerFloat!.toString();
      }
      if (output.headerDouble != null) {
        context.response.headers['X-Double'] = output.headerDouble!.toString();
      }
      if (output.headerTrueBool != null) {
        context.response.headers['X-Boolean1'] =
            output.headerTrueBool!.toString();
      }
      if (output.headerFalseBool != null) {
        context.response.headers['X-Boolean2'] =
            output.headerFalseBool!.toString();
      }
      if (output.headerStringList != null) {
        context.response.headers['X-StringList'] = output.headerStringList!
            .map((el) => _i1.sanitizeHeader(el))
            .join(', ');
      }
      if (output.headerStringSet != null) {
        context.response.headers['X-StringSet'] = output.headerStringSet!
            .map((el) => _i1.sanitizeHeader(el))
            .join(', ');
      }
      if (output.headerIntegerList != null) {
        context.response.headers['X-IntegerList'] = output.headerIntegerList!
            .map((el) => el.toString())
            .map((el) => _i1.sanitizeHeader(el))
            .join(', ');
      }
      if (output.headerBooleanList != null) {
        context.response.headers['X-BooleanList'] = output.headerBooleanList!
            .map((el) => el.toString())
            .map((el) => _i1.sanitizeHeader(el))
            .join(', ');
      }
      if (output.headerTimestampList != null) {
        context.response.headers['X-TimestampList'] = output
            .headerTimestampList!
            .map((el) => _i1.Timestamp(el)
                .format(_i1.TimestampFormat.httpDate)
                .toString())
            .map((el) => _i1.sanitizeHeader(
                  el,
                  isTimestampList: true,
                ))
            .join(', ');
      }
      if (output.headerEnum != null) {
        context.response.headers['X-Enum'] = output.headerEnum!.value;
      }
      if (output.headerEnumList != null) {
        context.response.headers['X-EnumList'] = output.headerEnumList!
            .map((el) => el.value)
            .map((el) => _i1.sanitizeHeader(el))
            .join(', ');
      }
      if (output.headerIntegerEnum != null) {
        context.response.headers['X-IntegerEnum'] =
            output.headerIntegerEnum!.value.toString();
      }
      if (output.headerIntegerEnumList != null) {
        context.response.headers['X-IntegerEnumList'] = output
            .headerIntegerEnumList!
            .map((el) => el.value.toString())
            .map((el) => _i1.sanitizeHeader(el))
            .join(', ');
      }
      const statusCode = 200;
      final body =
          await _inputAndOutputWithHeadersProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i33.InputAndOutputWithHeadersIo,
          [FullType(_i33.InputAndOutputWithHeadersIoPayload)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> jsonBlobs(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonBlobsProtocol.contentType;
    try {
      final payload = (await _jsonBlobsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i34.JsonBlobsInputOutput),
      ) as _i34.JsonBlobsInputOutput);
      final input = _i34.JsonBlobsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonBlobs(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _jsonBlobsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i34.JsonBlobsInputOutput,
          [FullType(_i34.JsonBlobsInputOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> jsonEnums(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonEnumsProtocol.contentType;
    try {
      final payload = (await _jsonEnumsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i35.JsonEnumsInputOutput),
      ) as _i35.JsonEnumsInputOutput);
      final input = _i35.JsonEnumsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonEnums(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _jsonEnumsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i35.JsonEnumsInputOutput,
          [FullType(_i35.JsonEnumsInputOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> jsonIntEnums(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _jsonIntEnumsProtocol.contentType;
    try {
      final payload = (await _jsonIntEnumsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i36.JsonIntEnumsInputOutput),
      ) as _i36.JsonIntEnumsInputOutput);
      final input = _i36.JsonIntEnumsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonIntEnums(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _jsonIntEnumsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i36.JsonIntEnumsInputOutput,
          [FullType(_i36.JsonIntEnumsInputOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> jsonLists(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonListsProtocol.contentType;
    try {
      final payload = (await _jsonListsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i37.JsonListsInputOutput),
      ) as _i37.JsonListsInputOutput);
      final input = _i37.JsonListsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonLists(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _jsonListsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i37.JsonListsInputOutput,
          [FullType(_i37.JsonListsInputOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> jsonMaps(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonMapsProtocol.contentType;
    try {
      final payload = (await _jsonMapsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i38.JsonMapsInputOutput),
      ) as _i38.JsonMapsInputOutput);
      final input = _i38.JsonMapsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonMaps(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _jsonMapsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i38.JsonMapsInputOutput,
          [FullType(_i38.JsonMapsInputOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> jsonTimestamps(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _jsonTimestampsProtocol.contentType;
    try {
      final payload = (await _jsonTimestampsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i39.JsonTimestampsInputOutput),
      ) as _i39.JsonTimestampsInputOutput);
      final input = _i39.JsonTimestampsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonTimestamps(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _jsonTimestampsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i39.JsonTimestampsInputOutput,
          [FullType(_i39.JsonTimestampsInputOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> jsonUnions(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonUnionsProtocol.contentType;
    try {
      final payload = (await _jsonUnionsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i40.UnionInputOutput),
      ) as _i40.UnionInputOutput);
      final input = _i40.UnionInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonUnions(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _jsonUnionsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i40.UnionInputOutput,
          [FullType(_i40.UnionInputOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedAcceptWithBody(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedAcceptWithBodyProtocol.contentType;
    try {
      final payload =
          (await _malformedAcceptWithBodyProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.malformedAcceptWithBody(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _malformedAcceptWithBodyProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i41.GreetingStruct,
          [FullType(_i41.GreetingStruct)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedAcceptWithGenericString(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedAcceptWithGenericStringProtocol.contentType;
    try {
      final payload = (await _malformedAcceptWithGenericStringProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.malformedAcceptWithGenericString(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedAcceptWithGenericStringProtocol
          .wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i42.MalformedAcceptWithGenericStringOutput,
          [FullType.nullable(String)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedAcceptWithPayload(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedAcceptWithPayloadProtocol.contentType;
    try {
      final payload =
          (await _malformedAcceptWithPayloadProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.malformedAcceptWithPayload(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _malformedAcceptWithPayloadProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i43.MalformedAcceptWithPayloadOutput,
          [FullType.nullable(_i100.Uint8List)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedBlob(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedBlobProtocol.contentType;
    try {
      final payload = (await _malformedBlobProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i44.MalformedBlobInput),
      ) as _i44.MalformedBlobInput);
      final input = _i44.MalformedBlobInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedBlob(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedBlobProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedBoolean(
    _i97.Request request,
    String booleanInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedBooleanProtocol.contentType;
    try {
      final payload =
          (await _malformedBooleanProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i45.MalformedBooleanInputPayload),
      ) as _i45.MalformedBooleanInputPayload);
      final input = _i45.MalformedBooleanInput.fromRequest(
        payload,
        awsRequest,
        labels: {'booleanInPath': booleanInPath},
      );
      final output = await service.malformedBoolean(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedBooleanProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedByte(
    _i97.Request request,
    String byteInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedByteProtocol.contentType;
    try {
      final payload = (await _malformedByteProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i46.MalformedByteInputPayload),
      ) as _i46.MalformedByteInputPayload);
      final input = _i46.MalformedByteInput.fromRequest(
        payload,
        awsRequest,
        labels: {'byteInPath': byteInPath},
      );
      final output = await service.malformedByte(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedByteProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedContentTypeWithBody(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedContentTypeWithBodyProtocol.contentType;
    try {
      final payload = (await _malformedContentTypeWithBodyProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i41.GreetingStruct),
      ) as _i41.GreetingStruct);
      final input = _i41.GreetingStruct.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedContentTypeWithBody(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _malformedContentTypeWithBodyProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedContentTypeWithGenericString(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedContentTypeWithGenericStringProtocol.contentType;
    try {
      final payload = (await _malformedContentTypeWithGenericStringProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(String),
      ) as String?);
      final input = _i47.MalformedContentTypeWithGenericStringInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedContentTypeWithGenericString(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedContentTypeWithGenericStringProtocol
          .wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedContentTypeWithPayload(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedContentTypeWithPayloadProtocol.contentType;
    try {
      final payload = (await _malformedContentTypeWithPayloadProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i100.Uint8List),
      ) as _i100.Uint8List?);
      final input = _i48.MalformedContentTypeWithPayloadInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedContentTypeWithPayload(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedContentTypeWithPayloadProtocol.wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedContentTypeWithoutBody(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedContentTypeWithoutBodyProtocol.contentType;
    try {
      final payload = (await _malformedContentTypeWithoutBodyProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.malformedContentTypeWithoutBody(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedContentTypeWithoutBodyProtocol.wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedContentTypeWithoutBodyEmptyInput(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedContentTypeWithoutBodyEmptyInputProtocol.contentType;
    try {
      final payload = (await _malformedContentTypeWithoutBodyEmptyInputProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(
            _i49.MalformedContentTypeWithoutBodyEmptyInputInputPayload),
      ) as _i49.MalformedContentTypeWithoutBodyEmptyInputInputPayload);
      final input =
          _i49.MalformedContentTypeWithoutBodyEmptyInputInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedContentTypeWithoutBodyEmptyInput(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedContentTypeWithoutBodyEmptyInputProtocol
          .wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedDouble(
    _i97.Request request,
    String doubleInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedDoubleProtocol.contentType;
    try {
      final payload =
          (await _malformedDoubleProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i50.MalformedDoubleInputPayload),
      ) as _i50.MalformedDoubleInputPayload);
      final input = _i50.MalformedDoubleInput.fromRequest(
        payload,
        awsRequest,
        labels: {'doubleInPath': doubleInPath},
      );
      final output = await service.malformedDouble(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedDoubleProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedFloat(
    _i97.Request request,
    String floatInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedFloatProtocol.contentType;
    try {
      final payload = (await _malformedFloatProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i51.MalformedFloatInputPayload),
      ) as _i51.MalformedFloatInputPayload);
      final input = _i51.MalformedFloatInput.fromRequest(
        payload,
        awsRequest,
        labels: {'floatInPath': floatInPath},
      );
      final output = await service.malformedFloat(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedFloatProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedInteger(
    _i97.Request request,
    String integerInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedIntegerProtocol.contentType;
    try {
      final payload =
          (await _malformedIntegerProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i52.MalformedIntegerInputPayload),
      ) as _i52.MalformedIntegerInputPayload);
      final input = _i52.MalformedIntegerInput.fromRequest(
        payload,
        awsRequest,
        labels: {'integerInPath': integerInPath},
      );
      final output = await service.malformedInteger(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedIntegerProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedList(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedListProtocol.contentType;
    try {
      final payload = (await _malformedListProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i53.MalformedListInput),
      ) as _i53.MalformedListInput);
      final input = _i53.MalformedListInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedList(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedListProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedLong(
    _i97.Request request,
    String longInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedLongProtocol.contentType;
    try {
      final payload = (await _malformedLongProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i54.MalformedLongInputPayload),
      ) as _i54.MalformedLongInputPayload);
      final input = _i54.MalformedLongInput.fromRequest(
        payload,
        awsRequest,
        labels: {'longInPath': longInPath},
      );
      final output = await service.malformedLong(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedLongProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedMap(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedMapProtocol.contentType;
    try {
      final payload = (await _malformedMapProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i55.MalformedMapInput),
      ) as _i55.MalformedMapInput);
      final input = _i55.MalformedMapInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedMap(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedMapProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedRequestBody(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedRequestBodyProtocol.contentType;
    try {
      final payload =
          (await _malformedRequestBodyProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i56.MalformedRequestBodyInput),
      ) as _i56.MalformedRequestBodyInput);
      final input = _i56.MalformedRequestBodyInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedRequestBody(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedRequestBodyProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedShort(
    _i97.Request request,
    String shortInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedShortProtocol.contentType;
    try {
      final payload = (await _malformedShortProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i57.MalformedShortInputPayload),
      ) as _i57.MalformedShortInputPayload);
      final input = _i57.MalformedShortInput.fromRequest(
        payload,
        awsRequest,
        labels: {'shortInPath': shortInPath},
      );
      final output = await service.malformedShort(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedShortProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedString(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedStringProtocol.contentType;
    try {
      final payload =
          (await _malformedStringProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i58.MalformedStringInputPayload),
      ) as _i58.MalformedStringInputPayload);
      final input = _i58.MalformedStringInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedString(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedStringProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedTimestampBodyDateTime(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampBodyDateTimeProtocol.contentType;
    try {
      final payload = (await _malformedTimestampBodyDateTimeProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i59.MalformedTimestampBodyDateTimeInput),
      ) as _i59.MalformedTimestampBodyDateTimeInput);
      final input = _i59.MalformedTimestampBodyDateTimeInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampBodyDateTime(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedTimestampBodyDateTimeProtocol.wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedTimestampBodyDefault(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampBodyDefaultProtocol.contentType;
    try {
      final payload = (await _malformedTimestampBodyDefaultProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i60.MalformedTimestampBodyDefaultInput),
      ) as _i60.MalformedTimestampBodyDefaultInput);
      final input = _i60.MalformedTimestampBodyDefaultInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampBodyDefault(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _malformedTimestampBodyDefaultProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedTimestampBodyHttpDate(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampBodyHttpDateProtocol.contentType;
    try {
      final payload = (await _malformedTimestampBodyHttpDateProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i61.MalformedTimestampBodyHttpDateInput),
      ) as _i61.MalformedTimestampBodyHttpDateInput);
      final input = _i61.MalformedTimestampBodyHttpDateInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampBodyHttpDate(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedTimestampBodyHttpDateProtocol.wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedTimestampHeaderDateTime(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampHeaderDateTimeProtocol.contentType;
    try {
      final payload = (await _malformedTimestampHeaderDateTimeProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i62.MalformedTimestampHeaderDateTimeInputPayload),
      ) as _i62.MalformedTimestampHeaderDateTimeInputPayload);
      final input = _i62.MalformedTimestampHeaderDateTimeInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampHeaderDateTime(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedTimestampHeaderDateTimeProtocol
          .wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedTimestampHeaderDefault(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampHeaderDefaultProtocol.contentType;
    try {
      final payload = (await _malformedTimestampHeaderDefaultProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i63.MalformedTimestampHeaderDefaultInputPayload),
      ) as _i63.MalformedTimestampHeaderDefaultInputPayload);
      final input = _i63.MalformedTimestampHeaderDefaultInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampHeaderDefault(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedTimestampHeaderDefaultProtocol.wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedTimestampHeaderEpoch(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampHeaderEpochProtocol.contentType;
    try {
      final payload = (await _malformedTimestampHeaderEpochProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i64.MalformedTimestampHeaderEpochInputPayload),
      ) as _i64.MalformedTimestampHeaderEpochInputPayload);
      final input = _i64.MalformedTimestampHeaderEpochInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampHeaderEpoch(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _malformedTimestampHeaderEpochProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedTimestampPathDefault(
    _i97.Request request,
    String timestamp,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampPathDefaultProtocol.contentType;
    try {
      final payload = (await _malformedTimestampPathDefaultProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i65.MalformedTimestampPathDefaultInputPayload),
      ) as _i65.MalformedTimestampPathDefaultInputPayload);
      final input = _i65.MalformedTimestampPathDefaultInput.fromRequest(
        payload,
        awsRequest,
        labels: {'timestamp': timestamp},
      );
      final output = await service.malformedTimestampPathDefault(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _malformedTimestampPathDefaultProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedTimestampPathEpoch(
    _i97.Request request,
    String timestamp,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampPathEpochProtocol.contentType;
    try {
      final payload = (await _malformedTimestampPathEpochProtocol.wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i66.MalformedTimestampPathEpochInputPayload),
      ) as _i66.MalformedTimestampPathEpochInputPayload);
      final input = _i66.MalformedTimestampPathEpochInput.fromRequest(
        payload,
        awsRequest,
        labels: {'timestamp': timestamp},
      );
      final output = await service.malformedTimestampPathEpoch(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _malformedTimestampPathEpochProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedTimestampPathHttpDate(
    _i97.Request request,
    String timestamp,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampPathHttpDateProtocol.contentType;
    try {
      final payload = (await _malformedTimestampPathHttpDateProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i67.MalformedTimestampPathHttpDateInputPayload),
      ) as _i67.MalformedTimestampPathHttpDateInputPayload);
      final input = _i67.MalformedTimestampPathHttpDateInput.fromRequest(
        payload,
        awsRequest,
        labels: {'timestamp': timestamp},
      );
      final output = await service.malformedTimestampPathHttpDate(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedTimestampPathHttpDateProtocol.wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedTimestampQueryDefault(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampQueryDefaultProtocol.contentType;
    try {
      final payload = (await _malformedTimestampQueryDefaultProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i68.MalformedTimestampQueryDefaultInputPayload),
      ) as _i68.MalformedTimestampQueryDefaultInputPayload);
      final input = _i68.MalformedTimestampQueryDefaultInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampQueryDefault(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedTimestampQueryDefaultProtocol.wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedTimestampQueryEpoch(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampQueryEpochProtocol.contentType;
    try {
      final payload = (await _malformedTimestampQueryEpochProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i69.MalformedTimestampQueryEpochInputPayload),
      ) as _i69.MalformedTimestampQueryEpochInputPayload);
      final input = _i69.MalformedTimestampQueryEpochInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampQueryEpoch(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _malformedTimestampQueryEpochProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedTimestampQueryHttpDate(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampQueryHttpDateProtocol.contentType;
    try {
      final payload = (await _malformedTimestampQueryHttpDateProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i70.MalformedTimestampQueryHttpDateInputPayload),
      ) as _i70.MalformedTimestampQueryHttpDateInputPayload);
      final input = _i70.MalformedTimestampQueryHttpDateInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampQueryHttpDate(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedTimestampQueryHttpDateProtocol.wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> malformedUnion(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedUnionProtocol.contentType;
    try {
      final payload = (await _malformedUnionProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i71.MalformedUnionInput),
      ) as _i71.MalformedUnionInput);
      final input = _i71.MalformedUnionInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedUnion(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedUnionProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> mediaTypeHeader(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _mediaTypeHeaderProtocol.contentType;
    try {
      final payload =
          (await _mediaTypeHeaderProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i73.MediaTypeHeaderInputPayload),
      ) as _i73.MediaTypeHeaderInputPayload);
      final input = _i73.MediaTypeHeaderInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.mediaTypeHeader(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _mediaTypeHeaderProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i72.MediaTypeHeaderOutput,
          [FullType(_i72.MediaTypeHeaderOutputPayload)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> noInputAndNoOutput(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _noInputAndNoOutputProtocol.contentType;
    try {
      final payload =
          (await _noInputAndNoOutputProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.noInputAndNoOutput(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _noInputAndNoOutputProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> noInputAndOutput(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _noInputAndOutputProtocol.contentType;
    try {
      final payload =
          (await _noInputAndOutputProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.noInputAndOutput(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _noInputAndOutputProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i74.NoInputAndOutputOutput,
          [FullType(_i74.NoInputAndOutputOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> nullAndEmptyHeadersClient(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nullAndEmptyHeadersClientProtocol.contentType;
    try {
      final payload =
          (await _nullAndEmptyHeadersClientProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i75.NullAndEmptyHeadersIoPayload),
      ) as _i75.NullAndEmptyHeadersIoPayload);
      final input = _i75.NullAndEmptyHeadersIo.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.nullAndEmptyHeadersClient(
        input,
        context,
      );
      if (output.a != null) {
        context.response.headers['X-A'] = output.a!;
      }
      if (output.b != null) {
        context.response.headers['X-B'] = output.b!;
      }
      if (output.c != null) {
        context.response.headers['X-C'] =
            output.c!.map((el) => _i1.sanitizeHeader(el)).join(', ');
      }
      const statusCode = 200;
      final body =
          await _nullAndEmptyHeadersClientProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i75.NullAndEmptyHeadersIo,
          [FullType(_i75.NullAndEmptyHeadersIoPayload)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> nullAndEmptyHeadersServer(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nullAndEmptyHeadersServerProtocol.contentType;
    try {
      final payload =
          (await _nullAndEmptyHeadersServerProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i75.NullAndEmptyHeadersIoPayload),
      ) as _i75.NullAndEmptyHeadersIoPayload);
      final input = _i75.NullAndEmptyHeadersIo.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.nullAndEmptyHeadersServer(
        input,
        context,
      );
      if (output.a != null) {
        context.response.headers['X-A'] = output.a!;
      }
      if (output.b != null) {
        context.response.headers['X-B'] = output.b!;
      }
      if (output.c != null) {
        context.response.headers['X-C'] =
            output.c!.map((el) => _i1.sanitizeHeader(el)).join(', ');
      }
      const statusCode = 200;
      final body =
          await _nullAndEmptyHeadersServerProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i75.NullAndEmptyHeadersIo,
          [FullType(_i75.NullAndEmptyHeadersIoPayload)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> omitsNullSerializesEmptyString(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _omitsNullSerializesEmptyStringProtocol.contentType;
    try {
      final payload = (await _omitsNullSerializesEmptyStringProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i76.OmitsNullSerializesEmptyStringInputPayload),
      ) as _i76.OmitsNullSerializesEmptyStringInputPayload);
      final input = _i76.OmitsNullSerializesEmptyStringInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.omitsNullSerializesEmptyString(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _omitsNullSerializesEmptyStringProtocol.wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> omitsSerializingEmptyLists(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _omitsSerializingEmptyListsProtocol.contentType;
    try {
      final payload =
          (await _omitsSerializingEmptyListsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i77.OmitsSerializingEmptyListsInputPayload),
      ) as _i77.OmitsSerializingEmptyListsInputPayload);
      final input = _i77.OmitsSerializingEmptyListsInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.omitsSerializingEmptyLists(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _omitsSerializingEmptyListsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> postPlayerAction(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _postPlayerActionProtocol.contentType;
    try {
      final payload =
          (await _postPlayerActionProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i79.PostPlayerActionInput),
      ) as _i79.PostPlayerActionInput);
      final input = _i79.PostPlayerActionInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.postPlayerAction(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _postPlayerActionProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i78.PostPlayerActionOutput,
          [FullType(_i78.PostPlayerActionOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> postUnionWithJsonName(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _postUnionWithJsonNameProtocol.contentType;
    try {
      final payload =
          (await _postUnionWithJsonNameProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i81.PostUnionWithJsonNameInput),
      ) as _i81.PostUnionWithJsonNameInput);
      final input = _i81.PostUnionWithJsonNameInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.postUnionWithJsonName(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _postUnionWithJsonNameProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i80.PostUnionWithJsonNameOutput,
          [FullType(_i80.PostUnionWithJsonNameOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> queryIdempotencyTokenAutoFill(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _queryIdempotencyTokenAutoFillProtocol.contentType;
    try {
      final payload = (await _queryIdempotencyTokenAutoFillProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i82.QueryIdempotencyTokenAutoFillInputPayload),
      ) as _i82.QueryIdempotencyTokenAutoFillInputPayload);
      final input = _i82.QueryIdempotencyTokenAutoFillInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.queryIdempotencyTokenAutoFill(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _queryIdempotencyTokenAutoFillProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> queryParamsAsStringListMap(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _queryParamsAsStringListMapProtocol.contentType;
    try {
      final payload =
          (await _queryParamsAsStringListMapProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i83.QueryParamsAsStringListMapInputPayload),
      ) as _i83.QueryParamsAsStringListMapInputPayload);
      final input = _i83.QueryParamsAsStringListMapInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.queryParamsAsStringListMap(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _queryParamsAsStringListMapProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> queryPrecedence(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _queryPrecedenceProtocol.contentType;
    try {
      final payload =
          (await _queryPrecedenceProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i84.QueryPrecedenceInputPayload),
      ) as _i84.QueryPrecedenceInputPayload);
      final input = _i84.QueryPrecedenceInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.queryPrecedence(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _queryPrecedenceProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> recursiveShapes(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _recursiveShapesProtocol.contentType;
    try {
      final payload =
          (await _recursiveShapesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i85.RecursiveShapesInputOutput),
      ) as _i85.RecursiveShapesInputOutput);
      final input = _i85.RecursiveShapesInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.recursiveShapes(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _recursiveShapesProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i85.RecursiveShapesInputOutput,
          [FullType(_i85.RecursiveShapesInputOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> responseCodeHttpFallback(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _responseCodeHttpFallbackProtocol.contentType;
    try {
      final payload =
          (await _responseCodeHttpFallbackProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i86.ResponseCodeHttpFallbackInputOutput),
      ) as _i86.ResponseCodeHttpFallbackInputOutput);
      final input = _i86.ResponseCodeHttpFallbackInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.responseCodeHttpFallback(
        input,
        context,
      );
      const statusCode = 201;
      final body =
          await _responseCodeHttpFallbackProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i86.ResponseCodeHttpFallbackInputOutput,
          [FullType(_i86.ResponseCodeHttpFallbackInputOutput)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> responseCodeRequired(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _responseCodeRequiredProtocol.contentType;
    try {
      final payload =
          (await _responseCodeRequiredProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.responseCodeRequired(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _responseCodeRequiredProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i87.ResponseCodeRequiredOutput,
          [FullType(_i87.ResponseCodeRequiredOutputPayload)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> simpleScalarProperties(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _simpleScalarPropertiesProtocol.contentType;
    try {
      final payload =
          (await _simpleScalarPropertiesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i88.SimpleScalarPropertiesInputOutputPayload),
      ) as _i88.SimpleScalarPropertiesInputOutputPayload);
      final input = _i88.SimpleScalarPropertiesInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.simpleScalarProperties(
        input,
        context,
      );
      if (output.foo != null) {
        context.response.headers['X-Foo'] = output.foo!;
      }
      const statusCode = 200;
      final body =
          await _simpleScalarPropertiesProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i88.SimpleScalarPropertiesInputOutput,
          [FullType(_i88.SimpleScalarPropertiesInputOutputPayload)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> streamingTraits(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _streamingTraitsProtocol.contentType;
    try {
      final payload =
          (await _streamingTraitsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(
          _i4.Stream,
          [
            FullType(
              List,
              [FullType(int)],
            )
          ],
        ),
      ) as _i4.Stream<List<int>>?);
      final input = _i89.StreamingTraitsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.streamingTraits(
        input,
        context,
      );
      if (output.foo != null) {
        context.response.headers['X-Foo'] = output.foo!;
      }
      const statusCode = 200;
      final body = await _streamingTraitsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i89.StreamingTraitsInputOutput,
          [
            FullType.nullable(
              _i4.Stream,
              [
                FullType(
                  List,
                  [FullType(int)],
                )
              ],
            )
          ],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> streamingTraitsRequireLength(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _streamingTraitsRequireLengthProtocol.contentType;
    try {
      final payload = (await _streamingTraitsRequireLengthProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(
          _i4.Stream,
          [
            FullType(
              List,
              [FullType(int)],
            )
          ],
        ),
      ) as _i4.Stream<List<int>>?);
      final input = _i90.StreamingTraitsRequireLengthInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.streamingTraitsRequireLength(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _streamingTraitsRequireLengthProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> streamingTraitsWithMediaType(
      _i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _streamingTraitsWithMediaTypeProtocol.contentType;
    try {
      final payload = (await _streamingTraitsWithMediaTypeProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(
          _i4.Stream,
          [
            FullType(
              List,
              [FullType(int)],
            )
          ],
        ),
      ) as _i4.Stream<List<int>>?);
      final input = _i91.StreamingTraitsWithMediaTypeInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.streamingTraitsWithMediaType(
        input,
        context,
      );
      if (output.foo != null) {
        context.response.headers['X-Foo'] = output.foo!;
      }
      const statusCode = 200;
      final body =
          await _streamingTraitsWithMediaTypeProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i91.StreamingTraitsWithMediaTypeInputOutput,
          [
            FullType.nullable(
              _i4.Stream,
              [
                FullType(
                  List,
                  [FullType(int)],
                )
              ],
            )
          ],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> testBodyStructure(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _testBodyStructureProtocol.contentType;
    try {
      final payload =
          (await _testBodyStructureProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i92.TestBodyStructureInputOutputPayload),
      ) as _i92.TestBodyStructureInputOutputPayload);
      final input = _i92.TestBodyStructureInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.testBodyStructure(
        input,
        context,
      );
      if (output.testId != null) {
        context.response.headers['x-amz-test-id'] = output.testId!;
      }
      const statusCode = 200;
      final body = await _testBodyStructureProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i92.TestBodyStructureInputOutput,
          [FullType(_i92.TestBodyStructureInputOutputPayload)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> testNoPayload(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _testNoPayloadProtocol.contentType;
    try {
      final payload = (await _testNoPayloadProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i93.TestNoPayloadInputOutputPayload),
      ) as _i93.TestNoPayloadInputOutputPayload);
      final input = _i93.TestNoPayloadInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.testNoPayload(
        input,
        context,
      );
      if (output.testId != null) {
        context.response.headers['X-Amz-Test-Id'] = output.testId!;
      }
      const statusCode = 200;
      final body = await _testNoPayloadProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i93.TestNoPayloadInputOutput,
          [FullType(_i93.TestNoPayloadInputOutputPayload)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> testPayloadBlob(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _testPayloadBlobProtocol.contentType;
    try {
      final payload =
          (await _testPayloadBlobProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i100.Uint8List),
      ) as _i100.Uint8List?);
      final input = _i94.TestPayloadBlobInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.testPayloadBlob(
        input,
        context,
      );
      if (output.contentType != null) {
        context.response.headers['Content-Type'] = output.contentType!;
      }
      const statusCode = 200;
      final body = await _testPayloadBlobProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i94.TestPayloadBlobInputOutput,
          [FullType.nullable(_i100.Uint8List)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> testPayloadStructure(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _testPayloadStructureProtocol.contentType;
    try {
      final payload =
          (await _testPayloadStructureProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i102.PayloadConfig),
      ) as _i102.PayloadConfig?);
      final input = _i95.TestPayloadStructureInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.testPayloadStructure(
        input,
        context,
      );
      if (output.testId != null) {
        context.response.headers['x-amz-test-id'] = output.testId!;
      }
      const statusCode = 200;
      final body = await _testPayloadStructureProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i95.TestPayloadStructureInputOutput,
          [FullType.nullable(_i102.PayloadConfig)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> timestampFormatHeaders(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _timestampFormatHeadersProtocol.contentType;
    try {
      final payload =
          (await _timestampFormatHeadersProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i96.TimestampFormatHeadersIoPayload),
      ) as _i96.TimestampFormatHeadersIoPayload);
      final input = _i96.TimestampFormatHeadersIo.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.timestampFormatHeaders(
        input,
        context,
      );
      if (output.memberEpochSeconds != null) {
        context.response.headers['X-memberEpochSeconds'] =
            _i1.Timestamp(output.memberEpochSeconds!)
                .format(_i1.TimestampFormat.epochSeconds)
                .toString();
      }
      if (output.memberHttpDate != null) {
        context.response.headers['X-memberHttpDate'] =
            _i1.Timestamp(output.memberHttpDate!)
                .format(_i1.TimestampFormat.httpDate)
                .toString();
      }
      if (output.memberDateTime != null) {
        context.response.headers['X-memberDateTime'] =
            _i1.Timestamp(output.memberDateTime!)
                .format(_i1.TimestampFormat.dateTime)
                .toString();
      }
      if (output.defaultFormat != null) {
        context.response.headers['X-defaultFormat'] =
            _i1.Timestamp(output.defaultFormat!)
                .format(_i1.TimestampFormat.httpDate)
                .toString();
      }
      if (output.targetEpochSeconds != null) {
        context.response.headers['X-targetEpochSeconds'] =
            _i1.Timestamp(output.targetEpochSeconds!)
                .format(_i1.TimestampFormat.epochSeconds)
                .toString();
      }
      if (output.targetHttpDate != null) {
        context.response.headers['X-targetHttpDate'] =
            _i1.Timestamp(output.targetHttpDate!)
                .format(_i1.TimestampFormat.httpDate)
                .toString();
      }
      if (output.targetDateTime != null) {
        context.response.headers['X-targetDateTime'] =
            _i1.Timestamp(output.targetDateTime!)
                .format(_i1.TimestampFormat.dateTime)
                .toString();
      }
      const statusCode = 200;
      final body =
          await _timestampFormatHeadersProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i96.TimestampFormatHeadersIo,
          [FullType(_i96.TimestampFormatHeadersIoPayload)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i97.Response> unitInputAndOutput(_i97.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _unitInputAndOutputProtocol.contentType;
    try {
      final payload =
          (await _unitInputAndOutputProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.unitInputAndOutput(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _unitInputAndOutputProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i97.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }
}
