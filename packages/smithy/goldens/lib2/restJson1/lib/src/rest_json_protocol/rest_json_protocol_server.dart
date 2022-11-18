// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.rest_json_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;
import 'dart:typed_data' as _i96;

import 'package:built_value/json_object.dart' as _i94;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/common/serializers.dart'
    as _i3;
import 'package:rest_json1_v2/src/rest_json_protocol/model/all_query_string_types_input.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/model/complex_error.dart'
    as _i99;
import 'package:rest_json1_v2/src/rest_json_protocol/model/constant_and_variable_query_string_input.dart'
    as _i6;
import 'package:rest_json1_v2/src/rest_json_protocol/model/constant_query_string_input.dart'
    as _i7;
import 'package:rest_json1_v2/src/rest_json_protocol/model/document_type_as_payload_input_output.dart'
    as _i9;
import 'package:rest_json1_v2/src/rest_json_protocol/model/document_type_input_output.dart'
    as _i8;
import 'package:rest_json1_v2/src/rest_json_protocol/model/empty_input_and_empty_output_input.dart'
    as _i11;
import 'package:rest_json1_v2/src/rest_json_protocol/model/empty_input_and_empty_output_output.dart'
    as _i10;
import 'package:rest_json1_v2/src/rest_json_protocol/model/enum_payload_input.dart'
    as _i15;
import 'package:rest_json1_v2/src/rest_json_protocol/model/foo_error.dart'
    as _i100;
import 'package:rest_json1_v2/src/rest_json_protocol/model/greeting_struct.dart'
    as _i39;
import 'package:rest_json1_v2/src/rest_json_protocol/model/greeting_with_errors_output.dart'
    as _i13;
import 'package:rest_json1_v2/src/rest_json_protocol/model/host_label_input.dart'
    as _i12;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_checksum_required_input_output.dart'
    as _i14;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_payload_traits_input_output.dart'
    as _i16;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_payload_traits_with_media_type_input_output.dart'
    as _i17;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_payload_with_structure_input_output.dart'
    as _i18;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_in_response_input.dart'
    as _i22;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_in_response_output.dart'
    as _i21;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_input.dart'
    as _i20;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_output.dart'
    as _i19;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_float_labels_input.dart'
    as _i23;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_greedy_label_in_path_input.dart'
    as _i24;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_labels_and_timestamp_format_input.dart'
    as _i26;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_labels_input.dart'
    as _i25;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_regex_literal_input.dart'
    as _i27;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_response_code_output.dart'
    as _i28;
import 'package:rest_json1_v2/src/rest_json_protocol/model/ignore_query_params_in_response_output.dart'
    as _i30;
import 'package:rest_json1_v2/src/rest_json_protocol/model/input_and_output_with_headers_io.dart'
    as _i31;
import 'package:rest_json1_v2/src/rest_json_protocol/model/invalid_greeting.dart'
    as _i101;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_blobs_input_output.dart'
    as _i32;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_enums_input_output.dart'
    as _i33;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_int_enums_input_output.dart'
    as _i34;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_lists_input_output.dart'
    as _i35;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_maps_input_output.dart'
    as _i36;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_timestamps_input_output.dart'
    as _i37;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_accept_with_generic_string_output.dart'
    as _i40;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_accept_with_payload_output.dart'
    as _i41;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_blob_input.dart'
    as _i42;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_boolean_input.dart'
    as _i43;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_byte_input.dart'
    as _i44;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_content_type_with_generic_string_input.dart'
    as _i45;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_content_type_with_payload_input.dart'
    as _i46;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_double_input.dart'
    as _i47;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_float_input.dart'
    as _i48;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_integer_input.dart'
    as _i49;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_list_input.dart'
    as _i50;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_long_input.dart'
    as _i51;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_map_input.dart'
    as _i52;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_request_body_input.dart'
    as _i53;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_short_input.dart'
    as _i54;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_string_input.dart'
    as _i55;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_body_date_time_input.dart'
    as _i56;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_body_default_input.dart'
    as _i57;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_body_http_date_input.dart'
    as _i58;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_header_date_time_input.dart'
    as _i59;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_header_default_input.dart'
    as _i60;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_header_epoch_input.dart'
    as _i61;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_path_default_input.dart'
    as _i62;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_path_epoch_input.dart'
    as _i63;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_path_http_date_input.dart'
    as _i64;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_query_default_input.dart'
    as _i65;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_query_epoch_input.dart'
    as _i66;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_query_http_date_input.dart'
    as _i67;
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_union_input.dart'
    as _i68;
import 'package:rest_json1_v2/src/rest_json_protocol/model/media_type_header_input.dart'
    as _i70;
import 'package:rest_json1_v2/src/rest_json_protocol/model/media_type_header_output.dart'
    as _i69;
import 'package:rest_json1_v2/src/rest_json_protocol/model/nested_payload.dart'
    as _i97;
import 'package:rest_json1_v2/src/rest_json_protocol/model/no_input_and_output_output.dart'
    as _i71;
import 'package:rest_json1_v2/src/rest_json_protocol/model/null_and_empty_headers_io.dart'
    as _i72;
import 'package:rest_json1_v2/src/rest_json_protocol/model/omits_null_serializes_empty_string_input.dart'
    as _i73;
import 'package:rest_json1_v2/src/rest_json_protocol/model/payload_config.dart'
    as _i98;
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_player_action_input.dart'
    as _i75;
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_player_action_output.dart'
    as _i74;
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_union_with_json_name_input.dart'
    as _i77;
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_union_with_json_name_output.dart'
    as _i76;
import 'package:rest_json1_v2/src/rest_json_protocol/model/query_idempotency_token_auto_fill_input.dart'
    as _i78;
import 'package:rest_json1_v2/src/rest_json_protocol/model/query_params_as_string_list_map_input.dart'
    as _i79;
import 'package:rest_json1_v2/src/rest_json_protocol/model/query_precedence_input.dart'
    as _i80;
import 'package:rest_json1_v2/src/rest_json_protocol/model/recursive_shapes_input_output.dart'
    as _i81;
import 'package:rest_json1_v2/src/rest_json_protocol/model/response_code_http_fallback_input_output.dart'
    as _i82;
import 'package:rest_json1_v2/src/rest_json_protocol/model/response_code_required_output.dart'
    as _i83;
import 'package:rest_json1_v2/src/rest_json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i84;
import 'package:rest_json1_v2/src/rest_json_protocol/model/streaming_traits_input_output.dart'
    as _i85;
import 'package:rest_json1_v2/src/rest_json_protocol/model/streaming_traits_require_length_input.dart'
    as _i86;
import 'package:rest_json1_v2/src/rest_json_protocol/model/streaming_traits_with_media_type_input_output.dart'
    as _i87;
import 'package:rest_json1_v2/src/rest_json_protocol/model/string_enum.dart'
    as _i95;
import 'package:rest_json1_v2/src/rest_json_protocol/model/string_payload_input.dart'
    as _i29;
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_body_structure_input_output.dart'
    as _i88;
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_no_payload_input_output.dart'
    as _i89;
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_payload_blob_input_output.dart'
    as _i90;
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_payload_structure_input_output.dart'
    as _i91;
import 'package:rest_json1_v2/src/rest_json_protocol/model/timestamp_format_headers_io.dart'
    as _i92;
import 'package:rest_json1_v2/src/rest_json_protocol/model/union_input_output.dart'
    as _i38;
import 'package:shelf/shelf.dart' as _i93;
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
  _i4.Future<_i8.DocumentTypeInputOutput> documentType(
    _i8.DocumentTypeInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i9.DocumentTypeAsPayloadInputOutput> documentTypeAsPayload(
    _i9.DocumentTypeAsPayloadInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i10.EmptyInputAndEmptyOutputOutput> emptyInputAndEmptyOutput(
    _i11.EmptyInputAndEmptyOutputInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> endpointOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> endpointWithHostLabelOperation(
    _i12.HostLabelInput input,
    _i1.Context context,
  );
  _i4.Future<_i13.GreetingWithErrorsOutput> greetingWithErrors(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> hostWithPathOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i14.HttpChecksumRequiredInputOutput> httpChecksumRequired(
    _i14.HttpChecksumRequiredInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i15.EnumPayloadInput> httpEnumPayload(
    _i15.EnumPayloadInput input,
    _i1.Context context,
  );
  _i4.Future<_i16.HttpPayloadTraitsInputOutput> httpPayloadTraits(
    _i16.HttpPayloadTraitsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i17.HttpPayloadTraitsWithMediaTypeInputOutput>
      httpPayloadTraitsWithMediaType(
    _i17.HttpPayloadTraitsWithMediaTypeInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i18.HttpPayloadWithStructureInputOutput> httpPayloadWithStructure(
    _i18.HttpPayloadWithStructureInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i19.HttpPrefixHeadersOutput> httpPrefixHeaders(
    _i20.HttpPrefixHeadersInput input,
    _i1.Context context,
  );
  _i4.Future<_i21.HttpPrefixHeadersInResponseOutput>
      httpPrefixHeadersInResponse(
    _i22.HttpPrefixHeadersInResponseInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpRequestWithFloatLabels(
    _i23.HttpRequestWithFloatLabelsInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpRequestWithGreedyLabelInPath(
    _i24.HttpRequestWithGreedyLabelInPathInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpRequestWithLabels(
    _i25.HttpRequestWithLabelsInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpRequestWithLabelsAndTimestampFormat(
    _i26.HttpRequestWithLabelsAndTimestampFormatInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpRequestWithRegexLiteral(
    _i27.HttpRequestWithRegexLiteralInput input,
    _i1.Context context,
  );
  _i4.Future<_i28.HttpResponseCodeOutput> httpResponseCode(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i29.StringPayloadInput> httpStringPayload(
    _i29.StringPayloadInput input,
    _i1.Context context,
  );
  _i4.Future<_i30.IgnoreQueryParamsInResponseOutput>
      ignoreQueryParamsInResponse(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i31.InputAndOutputWithHeadersIo> inputAndOutputWithHeaders(
    _i31.InputAndOutputWithHeadersIo input,
    _i1.Context context,
  );
  _i4.Future<_i32.JsonBlobsInputOutput> jsonBlobs(
    _i32.JsonBlobsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i33.JsonEnumsInputOutput> jsonEnums(
    _i33.JsonEnumsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i34.JsonIntEnumsInputOutput> jsonIntEnums(
    _i34.JsonIntEnumsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i35.JsonListsInputOutput> jsonLists(
    _i35.JsonListsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i36.JsonMapsInputOutput> jsonMaps(
    _i36.JsonMapsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i37.JsonTimestampsInputOutput> jsonTimestamps(
    _i37.JsonTimestampsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i38.UnionInputOutput> jsonUnions(
    _i38.UnionInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i39.GreetingStruct> malformedAcceptWithBody(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i40.MalformedAcceptWithGenericStringOutput>
      malformedAcceptWithGenericString(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i41.MalformedAcceptWithPayloadOutput> malformedAcceptWithPayload(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedBlob(
    _i42.MalformedBlobInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedBoolean(
    _i43.MalformedBooleanInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedByte(
    _i44.MalformedByteInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedContentTypeWithBody(
    _i39.GreetingStruct input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedContentTypeWithGenericString(
    _i45.MalformedContentTypeWithGenericStringInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedContentTypeWithPayload(
    _i46.MalformedContentTypeWithPayloadInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedContentTypeWithoutBody(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedDouble(
    _i47.MalformedDoubleInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedFloat(
    _i48.MalformedFloatInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedInteger(
    _i49.MalformedIntegerInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedList(
    _i50.MalformedListInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedLong(
    _i51.MalformedLongInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedMap(
    _i52.MalformedMapInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedRequestBody(
    _i53.MalformedRequestBodyInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedShort(
    _i54.MalformedShortInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedString(
    _i55.MalformedStringInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampBodyDateTime(
    _i56.MalformedTimestampBodyDateTimeInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampBodyDefault(
    _i57.MalformedTimestampBodyDefaultInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampBodyHttpDate(
    _i58.MalformedTimestampBodyHttpDateInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampHeaderDateTime(
    _i59.MalformedTimestampHeaderDateTimeInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampHeaderDefault(
    _i60.MalformedTimestampHeaderDefaultInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampHeaderEpoch(
    _i61.MalformedTimestampHeaderEpochInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampPathDefault(
    _i62.MalformedTimestampPathDefaultInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampPathEpoch(
    _i63.MalformedTimestampPathEpochInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampPathHttpDate(
    _i64.MalformedTimestampPathHttpDateInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampQueryDefault(
    _i65.MalformedTimestampQueryDefaultInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampQueryEpoch(
    _i66.MalformedTimestampQueryEpochInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedTimestampQueryHttpDate(
    _i67.MalformedTimestampQueryHttpDateInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> malformedUnion(
    _i68.MalformedUnionInput input,
    _i1.Context context,
  );
  _i4.Future<_i69.MediaTypeHeaderOutput> mediaTypeHeader(
    _i70.MediaTypeHeaderInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> noInputAndNoOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i71.NoInputAndOutputOutput> noInputAndOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i72.NullAndEmptyHeadersIo> nullAndEmptyHeadersClient(
    _i72.NullAndEmptyHeadersIo input,
    _i1.Context context,
  );
  _i4.Future<_i72.NullAndEmptyHeadersIo> nullAndEmptyHeadersServer(
    _i72.NullAndEmptyHeadersIo input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> omitsNullSerializesEmptyString(
    _i73.OmitsNullSerializesEmptyStringInput input,
    _i1.Context context,
  );
  _i4.Future<_i74.PostPlayerActionOutput> postPlayerAction(
    _i75.PostPlayerActionInput input,
    _i1.Context context,
  );
  _i4.Future<_i76.PostUnionWithJsonNameOutput> postUnionWithJsonName(
    _i77.PostUnionWithJsonNameInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> queryIdempotencyTokenAutoFill(
    _i78.QueryIdempotencyTokenAutoFillInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> queryParamsAsStringListMap(
    _i79.QueryParamsAsStringListMapInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> queryPrecedence(
    _i80.QueryPrecedenceInput input,
    _i1.Context context,
  );
  _i4.Future<_i81.RecursiveShapesInputOutput> recursiveShapes(
    _i81.RecursiveShapesInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i82.ResponseCodeHttpFallbackInputOutput> responseCodeHttpFallback(
    _i82.ResponseCodeHttpFallbackInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i83.ResponseCodeRequiredOutput> responseCodeRequired(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i84.SimpleScalarPropertiesInputOutput> simpleScalarProperties(
    _i84.SimpleScalarPropertiesInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i85.StreamingTraitsInputOutput> streamingTraits(
    _i85.StreamingTraitsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> streamingTraitsRequireLength(
    _i86.StreamingTraitsRequireLengthInput input,
    _i1.Context context,
  );
  _i4.Future<_i87.StreamingTraitsWithMediaTypeInputOutput>
      streamingTraitsWithMediaType(
    _i87.StreamingTraitsWithMediaTypeInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i88.TestBodyStructureInputOutput> testBodyStructure(
    _i88.TestBodyStructureInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i89.TestNoPayloadInputOutput> testNoPayload(
    _i89.TestNoPayloadInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i90.TestPayloadBlobInputOutput> testPayloadBlob(
    _i90.TestPayloadBlobInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i91.TestPayloadStructureInputOutput> testPayloadStructure(
    _i91.TestPayloadStructureInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i92.TimestampFormatHeadersIo> timestampFormatHeaders(
    _i92.TimestampFormatHeadersIo input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> unitInputAndOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i93.Response> call(_i93.Request request) => _router(request);
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

  late final _i1.HttpProtocol<
          _i8.DocumentTypeInputOutput,
          _i8.DocumentTypeInputOutput,
          _i8.DocumentTypeInputOutput,
          _i8.DocumentTypeInputOutput> _documentTypeProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i94.JsonObject,
          _i9.DocumentTypeAsPayloadInputOutput,
          _i94.JsonObject,
          _i9.DocumentTypeAsPayloadInputOutput> _documentTypeAsPayloadProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i11.EmptyInputAndEmptyOutputInput,
          _i11.EmptyInputAndEmptyOutputInput,
          _i10.EmptyInputAndEmptyOutputOutput,
          _i10.EmptyInputAndEmptyOutputOutput>
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
      _i12.HostLabelInput,
      _i12.HostLabelInput,
      _i1.Unit,
      _i1.Unit> _endpointWithHostLabelOperationProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit,
          _i13.GreetingWithErrorsOutputPayload, _i13.GreetingWithErrorsOutput>
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
          _i14.HttpChecksumRequiredInputOutput,
          _i14.HttpChecksumRequiredInputOutput,
          _i14.HttpChecksumRequiredInputOutput,
          _i14.HttpChecksumRequiredInputOutput> _httpChecksumRequiredProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i95.StringEnum,
      _i15.EnumPayloadInput,
      _i95.StringEnum,
      _i15.EnumPayloadInput> _httpEnumPayloadProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i96.Uint8List, _i16.HttpPayloadTraitsInputOutput,
          _i96.Uint8List, _i16.HttpPayloadTraitsInputOutput>
      _httpPayloadTraitsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i96.Uint8List,
          _i17.HttpPayloadTraitsWithMediaTypeInputOutput,
          _i96.Uint8List,
          _i17.HttpPayloadTraitsWithMediaTypeInputOutput>
      _httpPayloadTraitsWithMediaTypeProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    mediaType: 'text/plain',
  );

  late final _i1.HttpProtocol<
          _i97.NestedPayload,
          _i18.HttpPayloadWithStructureInputOutput,
          _i97.NestedPayload,
          _i18.HttpPayloadWithStructureInputOutput>
      _httpPayloadWithStructureProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i20.HttpPrefixHeadersInputPayload,
          _i20.HttpPrefixHeadersInput,
          _i19.HttpPrefixHeadersOutputPayload,
          _i19.HttpPrefixHeadersOutput> _httpPrefixHeadersProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i22.HttpPrefixHeadersInResponseInput,
          _i22.HttpPrefixHeadersInResponseInput,
          _i21.HttpPrefixHeadersInResponseOutputPayload,
          _i21.HttpPrefixHeadersInResponseOutput>
      _httpPrefixHeadersInResponseProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i23.HttpRequestWithFloatLabelsInputPayload,
      _i23.HttpRequestWithFloatLabelsInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithFloatLabelsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i24.HttpRequestWithGreedyLabelInPathInputPayload,
          _i24.HttpRequestWithGreedyLabelInPathInput, _i1.Unit, _i1.Unit>
      _httpRequestWithGreedyLabelInPathProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i25.HttpRequestWithLabelsInputPayload,
      _i25.HttpRequestWithLabelsInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithLabelsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i26.HttpRequestWithLabelsAndTimestampFormatInputPayload,
          _i26.HttpRequestWithLabelsAndTimestampFormatInput,
          _i1.Unit,
          _i1.Unit> _httpRequestWithLabelsAndTimestampFormatProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i27.HttpRequestWithRegexLiteralInputPayload,
      _i27.HttpRequestWithRegexLiteralInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithRegexLiteralProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit,
          _i28.HttpResponseCodeOutputPayload, _i28.HttpResponseCodeOutput>
      _httpResponseCodeProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<String, _i29.StringPayloadInput, String,
          _i29.StringPayloadInput> _httpStringPayloadProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i1.Unit,
          _i1.Unit,
          _i30.IgnoreQueryParamsInResponseOutput,
          _i30.IgnoreQueryParamsInResponseOutput>
      _ignoreQueryParamsInResponseProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i31.InputAndOutputWithHeadersIoPayload,
          _i31.InputAndOutputWithHeadersIo,
          _i31.InputAndOutputWithHeadersIoPayload,
          _i31.InputAndOutputWithHeadersIo> _inputAndOutputWithHeadersProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i32.JsonBlobsInputOutput,
      _i32.JsonBlobsInputOutput,
      _i32.JsonBlobsInputOutput,
      _i32.JsonBlobsInputOutput> _jsonBlobsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i33.JsonEnumsInputOutput,
      _i33.JsonEnumsInputOutput,
      _i33.JsonEnumsInputOutput,
      _i33.JsonEnumsInputOutput> _jsonEnumsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i34.JsonIntEnumsInputOutput,
          _i34.JsonIntEnumsInputOutput,
          _i34.JsonIntEnumsInputOutput,
          _i34.JsonIntEnumsInputOutput> _jsonIntEnumsProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i35.JsonListsInputOutput,
      _i35.JsonListsInputOutput,
      _i35.JsonListsInputOutput,
      _i35.JsonListsInputOutput> _jsonListsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i36.JsonMapsInputOutput,
      _i36.JsonMapsInputOutput,
      _i36.JsonMapsInputOutput,
      _i36.JsonMapsInputOutput> _jsonMapsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i37.JsonTimestampsInputOutput,
          _i37.JsonTimestampsInputOutput,
          _i37.JsonTimestampsInputOutput,
          _i37.JsonTimestampsInputOutput> _jsonTimestampsProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i38.UnionInputOutput,
      _i38.UnionInputOutput,
      _i38.UnionInputOutput,
      _i38.UnionInputOutput> _jsonUnionsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i39.GreetingStruct,
          _i39.GreetingStruct> _malformedAcceptWithBodyProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, String,
          _i40.MalformedAcceptWithGenericStringOutput>
      _malformedAcceptWithGenericStringProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i96.Uint8List,
          _i41.MalformedAcceptWithPayloadOutput>
      _malformedAcceptWithPayloadProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i42.MalformedBlobInput, _i42.MalformedBlobInput,
      _i1.Unit, _i1.Unit> _malformedBlobProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i43.MalformedBooleanInputPayload,
      _i43.MalformedBooleanInput,
      _i1.Unit,
      _i1.Unit> _malformedBooleanProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i44.MalformedByteInputPayload,
      _i44.MalformedByteInput,
      _i1.Unit,
      _i1.Unit> _malformedByteProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i39.GreetingStruct,
      _i39.GreetingStruct,
      _i1.Unit,
      _i1.Unit> _malformedContentTypeWithBodyProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<String,
          _i45.MalformedContentTypeWithGenericStringInput, _i1.Unit, _i1.Unit>
      _malformedContentTypeWithGenericStringProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i96.Uint8List,
          _i46.MalformedContentTypeWithPayloadInput, _i1.Unit, _i1.Unit>
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
      _i47.MalformedDoubleInputPayload,
      _i47.MalformedDoubleInput,
      _i1.Unit,
      _i1.Unit> _malformedDoubleProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i48.MalformedFloatInputPayload,
      _i48.MalformedFloatInput,
      _i1.Unit,
      _i1.Unit> _malformedFloatProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i49.MalformedIntegerInputPayload,
      _i49.MalformedIntegerInput,
      _i1.Unit,
      _i1.Unit> _malformedIntegerProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i50.MalformedListInput, _i50.MalformedListInput,
      _i1.Unit, _i1.Unit> _malformedListProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i51.MalformedLongInputPayload,
      _i51.MalformedLongInput,
      _i1.Unit,
      _i1.Unit> _malformedLongProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i52.MalformedMapInput, _i52.MalformedMapInput,
      _i1.Unit, _i1.Unit> _malformedMapProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i53.MalformedRequestBodyInput,
      _i53.MalformedRequestBodyInput,
      _i1.Unit,
      _i1.Unit> _malformedRequestBodyProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i54.MalformedShortInputPayload,
      _i54.MalformedShortInput,
      _i1.Unit,
      _i1.Unit> _malformedShortProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i55.MalformedStringInputPayload,
      _i55.MalformedStringInput,
      _i1.Unit,
      _i1.Unit> _malformedStringProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i56.MalformedTimestampBodyDateTimeInput,
      _i56.MalformedTimestampBodyDateTimeInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampBodyDateTimeProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i57.MalformedTimestampBodyDefaultInput,
      _i57.MalformedTimestampBodyDefaultInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampBodyDefaultProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i58.MalformedTimestampBodyHttpDateInput,
      _i58.MalformedTimestampBodyHttpDateInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampBodyHttpDateProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i59.MalformedTimestampHeaderDateTimeInputPayload,
          _i59.MalformedTimestampHeaderDateTimeInput, _i1.Unit, _i1.Unit>
      _malformedTimestampHeaderDateTimeProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i60.MalformedTimestampHeaderDefaultInputPayload,
          _i60.MalformedTimestampHeaderDefaultInput, _i1.Unit, _i1.Unit>
      _malformedTimestampHeaderDefaultProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i61.MalformedTimestampHeaderEpochInputPayload,
      _i61.MalformedTimestampHeaderEpochInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampHeaderEpochProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i62.MalformedTimestampPathDefaultInputPayload,
      _i62.MalformedTimestampPathDefaultInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampPathDefaultProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i63.MalformedTimestampPathEpochInputPayload,
      _i63.MalformedTimestampPathEpochInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampPathEpochProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i64.MalformedTimestampPathHttpDateInputPayload,
      _i64.MalformedTimestampPathHttpDateInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampPathHttpDateProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i65.MalformedTimestampQueryDefaultInputPayload,
      _i65.MalformedTimestampQueryDefaultInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampQueryDefaultProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i66.MalformedTimestampQueryEpochInputPayload,
      _i66.MalformedTimestampQueryEpochInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampQueryEpochProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i67.MalformedTimestampQueryHttpDateInputPayload,
          _i67.MalformedTimestampQueryHttpDateInput, _i1.Unit, _i1.Unit>
      _malformedTimestampQueryHttpDateProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i68.MalformedUnionInput,
      _i68.MalformedUnionInput,
      _i1.Unit,
      _i1.Unit> _malformedUnionProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i70.MediaTypeHeaderInputPayload,
          _i70.MediaTypeHeaderInput,
          _i69.MediaTypeHeaderOutputPayload,
          _i69.MediaTypeHeaderOutput> _mediaTypeHeaderProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _noInputAndNoOutputProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i71.NoInputAndOutputOutput,
          _i71.NoInputAndOutputOutput> _noInputAndOutputProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i72.NullAndEmptyHeadersIoPayload,
          _i72.NullAndEmptyHeadersIo,
          _i72.NullAndEmptyHeadersIoPayload,
          _i72.NullAndEmptyHeadersIo> _nullAndEmptyHeadersClientProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i72.NullAndEmptyHeadersIoPayload,
          _i72.NullAndEmptyHeadersIo,
          _i72.NullAndEmptyHeadersIoPayload,
          _i72.NullAndEmptyHeadersIo> _nullAndEmptyHeadersServerProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i73.OmitsNullSerializesEmptyStringInputPayload,
      _i73.OmitsNullSerializesEmptyStringInput,
      _i1.Unit,
      _i1.Unit> _omitsNullSerializesEmptyStringProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i75.PostPlayerActionInput,
          _i75.PostPlayerActionInput,
          _i74.PostPlayerActionOutput,
          _i74.PostPlayerActionOutput> _postPlayerActionProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i77.PostUnionWithJsonNameInput,
          _i77.PostUnionWithJsonNameInput,
          _i76.PostUnionWithJsonNameOutput,
          _i76.PostUnionWithJsonNameOutput> _postUnionWithJsonNameProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i78.QueryIdempotencyTokenAutoFillInputPayload,
      _i78.QueryIdempotencyTokenAutoFillInput,
      _i1.Unit,
      _i1.Unit> _queryIdempotencyTokenAutoFillProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i79.QueryParamsAsStringListMapInputPayload,
      _i79.QueryParamsAsStringListMapInput,
      _i1.Unit,
      _i1.Unit> _queryParamsAsStringListMapProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i80.QueryPrecedenceInputPayload,
      _i80.QueryPrecedenceInput,
      _i1.Unit,
      _i1.Unit> _queryPrecedenceProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i81.RecursiveShapesInputOutput,
          _i81.RecursiveShapesInputOutput,
          _i81.RecursiveShapesInputOutput,
          _i81.RecursiveShapesInputOutput> _recursiveShapesProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i82.ResponseCodeHttpFallbackInputOutput,
          _i82.ResponseCodeHttpFallbackInputOutput,
          _i82.ResponseCodeHttpFallbackInputOutput,
          _i82.ResponseCodeHttpFallbackInputOutput>
      _responseCodeHttpFallbackProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i1.Unit,
          _i1.Unit,
          _i83.ResponseCodeRequiredOutputPayload,
          _i83.ResponseCodeRequiredOutput> _responseCodeRequiredProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i84.SimpleScalarPropertiesInputOutputPayload,
          _i84.SimpleScalarPropertiesInputOutput,
          _i84.SimpleScalarPropertiesInputOutputPayload,
          _i84.SimpleScalarPropertiesInputOutput>
      _simpleScalarPropertiesProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i4.Stream<List<int>>,
          _i85.StreamingTraitsInputOutput,
          _i4.Stream<List<int>>,
          _i85.StreamingTraitsInputOutput> _streamingTraitsProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i4.Stream<List<int>>,
      _i86.StreamingTraitsRequireLengthInput,
      _i1.Unit,
      _i1.Unit> _streamingTraitsRequireLengthProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i4.Stream<List<int>>,
          _i87.StreamingTraitsWithMediaTypeInputOutput,
          _i4.Stream<List<int>>,
          _i87.StreamingTraitsWithMediaTypeInputOutput>
      _streamingTraitsWithMediaTypeProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    mediaType: 'text/plain',
  );

  late final _i1.HttpProtocol<
          _i88.TestBodyStructureInputOutputPayload,
          _i88.TestBodyStructureInputOutput,
          _i88.TestBodyStructureInputOutputPayload,
          _i88.TestBodyStructureInputOutput> _testBodyStructureProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i89.TestNoPayloadInputOutputPayload,
          _i89.TestNoPayloadInputOutput,
          _i89.TestNoPayloadInputOutputPayload,
          _i89.TestNoPayloadInputOutput> _testNoPayloadProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i96.Uint8List, _i90.TestPayloadBlobInputOutput,
          _i96.Uint8List, _i90.TestPayloadBlobInputOutput>
      _testPayloadBlobProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i98.PayloadConfig,
          _i91.TestPayloadStructureInputOutput,
          _i98.PayloadConfig,
          _i91.TestPayloadStructureInputOutput> _testPayloadStructureProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i92.TimestampFormatHeadersIoPayload,
          _i92.TimestampFormatHeadersIo,
          _i92.TimestampFormatHeadersIoPayload,
          _i92.TimestampFormatHeadersIo> _timestampFormatHeadersProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _unitInputAndOutputProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  _i4.Future<_i93.Response> allQueryStringTypes(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _allQueryStringTypesProtocol.contentType;
    try {
      final payload = (await _allQueryStringTypesProtocol.deserialize(
        awsRequest.split(),
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
      final body = _allQueryStringTypesProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> constantAndVariableQueryString(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _constantAndVariableQueryStringProtocol.contentType;
    try {
      final payload =
          (await _constantAndVariableQueryStringProtocol.deserialize(
        awsRequest.split(),
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
      final body = _constantAndVariableQueryStringProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> constantQueryString(
    _i93.Request request,
    String hello,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _constantQueryStringProtocol.contentType;
    try {
      final payload = (await _constantQueryStringProtocol.deserialize(
        awsRequest.split(),
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
      final body = _constantQueryStringProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> documentType(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _documentTypeProtocol.contentType;
    try {
      final payload = (await _documentTypeProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i8.DocumentTypeInputOutput),
      ) as _i8.DocumentTypeInputOutput);
      final input = _i8.DocumentTypeInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.documentType(
        input,
        context,
      );
      const statusCode = 200;
      final body = _documentTypeProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i8.DocumentTypeInputOutput,
          [FullType(_i8.DocumentTypeInputOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> documentTypeAsPayload(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _documentTypeAsPayloadProtocol.contentType;
    try {
      final payload = (await _documentTypeAsPayloadProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(_i94.JsonObject),
      ) as _i94.JsonObject?);
      final input = _i9.DocumentTypeAsPayloadInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.documentTypeAsPayload(
        input,
        context,
      );
      const statusCode = 200;
      final body = _documentTypeAsPayloadProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i9.DocumentTypeAsPayloadInputOutput,
          [FullType.nullable(_i94.JsonObject)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> emptyInputAndEmptyOutput(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _emptyInputAndEmptyOutputProtocol.contentType;
    try {
      final payload = (await _emptyInputAndEmptyOutputProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i11.EmptyInputAndEmptyOutputInput),
      ) as _i11.EmptyInputAndEmptyOutputInput);
      final input = _i11.EmptyInputAndEmptyOutputInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.emptyInputAndEmptyOutput(
        input,
        context,
      );
      const statusCode = 200;
      final body = _emptyInputAndEmptyOutputProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i10.EmptyInputAndEmptyOutputOutput,
          [FullType(_i10.EmptyInputAndEmptyOutputOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> endpointOperation(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _endpointOperationProtocol.contentType;
    try {
      final payload = (await _endpointOperationProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.endpointOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = _endpointOperationProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> endpointWithHostLabelOperation(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _endpointWithHostLabelOperationProtocol.contentType;
    try {
      final payload =
          (await _endpointWithHostLabelOperationProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i12.HostLabelInput),
      ) as _i12.HostLabelInput);
      final input = _i12.HostLabelInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.endpointWithHostLabelOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = _endpointWithHostLabelOperationProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> greetingWithErrors(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _greetingWithErrorsProtocol.contentType;
    try {
      final payload = (await _greetingWithErrorsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.greetingWithErrors(
        input,
        context,
      );
      const statusCode = 200;
      final body = _greetingWithErrorsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i13.GreetingWithErrorsOutput,
          [FullType(_i13.GreetingWithErrorsOutputPayload)],
        ),
      );
      return _i93.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i99.ComplexError catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ComplexError';
      final body = _greetingWithErrorsProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i99.ComplexError,
          [FullType(_i99.ComplexErrorPayload)],
        ),
      );
      const statusCode = 403;
      return _i93.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i100.FooError catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'FooError';
      final body = _greetingWithErrorsProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i100.FooError,
          [FullType(_i100.FooError)],
        ),
      );
      const statusCode = 500;
      return _i93.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i101.InvalidGreeting catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'InvalidGreeting';
      final body = _greetingWithErrorsProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i101.InvalidGreeting,
          [FullType(_i101.InvalidGreeting)],
        ),
      );
      const statusCode = 400;
      return _i93.Response(
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

  _i4.Future<_i93.Response> hostWithPathOperation(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _hostWithPathOperationProtocol.contentType;
    try {
      final payload = (await _hostWithPathOperationProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.hostWithPathOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = _hostWithPathOperationProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> httpChecksumRequired(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpChecksumRequiredProtocol.contentType;
    try {
      final payload = (await _httpChecksumRequiredProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i14.HttpChecksumRequiredInputOutput),
      ) as _i14.HttpChecksumRequiredInputOutput);
      final input = _i14.HttpChecksumRequiredInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpChecksumRequired(
        input,
        context,
      );
      const statusCode = 200;
      final body = _httpChecksumRequiredProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i14.HttpChecksumRequiredInputOutput,
          [FullType(_i14.HttpChecksumRequiredInputOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> httpEnumPayload(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpEnumPayloadProtocol.contentType;
    try {
      final payload = (await _httpEnumPayloadProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(_i95.StringEnum),
      ) as _i95.StringEnum?);
      final input = _i15.EnumPayloadInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpEnumPayload(
        input,
        context,
      );
      const statusCode = 200;
      final body = _httpEnumPayloadProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i15.EnumPayloadInput,
          [FullType.nullable(_i95.StringEnum)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> httpPayloadTraits(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadTraitsProtocol.contentType;
    try {
      final payload = (await _httpPayloadTraitsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(_i96.Uint8List),
      ) as _i96.Uint8List?);
      final input = _i16.HttpPayloadTraitsInputOutput.fromRequest(
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
      final body = _httpPayloadTraitsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i16.HttpPayloadTraitsInputOutput,
          [FullType.nullable(_i96.Uint8List)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> httpPayloadTraitsWithMediaType(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadTraitsWithMediaTypeProtocol.contentType;
    try {
      final payload =
          (await _httpPayloadTraitsWithMediaTypeProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(_i96.Uint8List),
      ) as _i96.Uint8List?);
      final input = _i17.HttpPayloadTraitsWithMediaTypeInputOutput.fromRequest(
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
      final body = _httpPayloadTraitsWithMediaTypeProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i17.HttpPayloadTraitsWithMediaTypeInputOutput,
          [FullType.nullable(_i96.Uint8List)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> httpPayloadWithStructure(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithStructureProtocol.contentType;
    try {
      final payload = (await _httpPayloadWithStructureProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(_i97.NestedPayload),
      ) as _i97.NestedPayload?);
      final input = _i18.HttpPayloadWithStructureInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPayloadWithStructure(
        input,
        context,
      );
      const statusCode = 200;
      final body = _httpPayloadWithStructureProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i18.HttpPayloadWithStructureInputOutput,
          [FullType.nullable(_i97.NestedPayload)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> httpPrefixHeaders(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPrefixHeadersProtocol.contentType;
    try {
      final payload = (await _httpPrefixHeadersProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i20.HttpPrefixHeadersInputPayload),
      ) as _i20.HttpPrefixHeadersInputPayload);
      final input = _i20.HttpPrefixHeadersInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPrefixHeaders(
        input,
        context,
      );
      const statusCode = 200;
      final body = _httpPrefixHeadersProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i19.HttpPrefixHeadersOutput,
          [FullType(_i19.HttpPrefixHeadersOutputPayload)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> httpPrefixHeadersInResponse(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPrefixHeadersInResponseProtocol.contentType;
    try {
      final payload = (await _httpPrefixHeadersInResponseProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i22.HttpPrefixHeadersInResponseInput),
      ) as _i22.HttpPrefixHeadersInResponseInput);
      final input = _i22.HttpPrefixHeadersInResponseInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPrefixHeadersInResponse(
        input,
        context,
      );
      const statusCode = 200;
      final body = _httpPrefixHeadersInResponseProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i21.HttpPrefixHeadersInResponseOutput,
          [FullType(_i21.HttpPrefixHeadersInResponseOutputPayload)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> httpRequestWithFloatLabels(
    _i93.Request request,
    String float,
    String double,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpRequestWithFloatLabelsProtocol.contentType;
    try {
      final payload = (await _httpRequestWithFloatLabelsProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i23.HttpRequestWithFloatLabelsInputPayload),
      ) as _i23.HttpRequestWithFloatLabelsInputPayload);
      final input = _i23.HttpRequestWithFloatLabelsInput.fromRequest(
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
      final body = _httpRequestWithFloatLabelsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> httpRequestWithGreedyLabelInPath(
    _i93.Request request,
    String foo,
    String baz,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpRequestWithGreedyLabelInPathProtocol.contentType;
    try {
      final payload =
          (await _httpRequestWithGreedyLabelInPathProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i24.HttpRequestWithGreedyLabelInPathInputPayload),
      ) as _i24.HttpRequestWithGreedyLabelInPathInputPayload);
      final input = _i24.HttpRequestWithGreedyLabelInPathInput.fromRequest(
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
      final body = _httpRequestWithGreedyLabelInPathProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> httpRequestWithLabels(
    _i93.Request request,
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
      final payload = (await _httpRequestWithLabelsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i25.HttpRequestWithLabelsInputPayload),
      ) as _i25.HttpRequestWithLabelsInputPayload);
      final input = _i25.HttpRequestWithLabelsInput.fromRequest(
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
      final body = _httpRequestWithLabelsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> httpRequestWithLabelsAndTimestampFormat(
    _i93.Request request,
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
      final payload =
          (await _httpRequestWithLabelsAndTimestampFormatProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(
            _i26.HttpRequestWithLabelsAndTimestampFormatInputPayload),
      ) as _i26.HttpRequestWithLabelsAndTimestampFormatInputPayload);
      final input =
          _i26.HttpRequestWithLabelsAndTimestampFormatInput.fromRequest(
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
      final body = _httpRequestWithLabelsAndTimestampFormatProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> httpRequestWithRegexLiteral(
    _i93.Request request,
    String str,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpRequestWithRegexLiteralProtocol.contentType;
    try {
      final payload = (await _httpRequestWithRegexLiteralProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i27.HttpRequestWithRegexLiteralInputPayload),
      ) as _i27.HttpRequestWithRegexLiteralInputPayload);
      final input = _i27.HttpRequestWithRegexLiteralInput.fromRequest(
        payload,
        awsRequest,
        labels: {'str': str},
      );
      final output = await service.httpRequestWithRegexLiteral(
        input,
        context,
      );
      const statusCode = 200;
      final body = _httpRequestWithRegexLiteralProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> httpResponseCode(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpResponseCodeProtocol.contentType;
    try {
      final payload = (await _httpResponseCodeProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.httpResponseCode(
        input,
        context,
      );
      const statusCode = 200;
      final body = _httpResponseCodeProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i28.HttpResponseCodeOutput,
          [FullType(_i28.HttpResponseCodeOutputPayload)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> httpStringPayload(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpStringPayloadProtocol.contentType;
    try {
      final payload = (await _httpStringPayloadProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(String),
      ) as String?);
      final input = _i29.StringPayloadInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpStringPayload(
        input,
        context,
      );
      const statusCode = 200;
      final body = _httpStringPayloadProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i29.StringPayloadInput,
          [FullType.nullable(String)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> ignoreQueryParamsInResponse(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _ignoreQueryParamsInResponseProtocol.contentType;
    try {
      final payload = (await _ignoreQueryParamsInResponseProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.ignoreQueryParamsInResponse(
        input,
        context,
      );
      const statusCode = 200;
      final body = _ignoreQueryParamsInResponseProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i30.IgnoreQueryParamsInResponseOutput,
          [FullType(_i30.IgnoreQueryParamsInResponseOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> inputAndOutputWithHeaders(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _inputAndOutputWithHeadersProtocol.contentType;
    try {
      final payload = (await _inputAndOutputWithHeadersProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i31.InputAndOutputWithHeadersIoPayload),
      ) as _i31.InputAndOutputWithHeadersIoPayload);
      final input = _i31.InputAndOutputWithHeadersIo.fromRequest(
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
      final body = _inputAndOutputWithHeadersProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i31.InputAndOutputWithHeadersIo,
          [FullType(_i31.InputAndOutputWithHeadersIoPayload)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> jsonBlobs(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonBlobsProtocol.contentType;
    try {
      final payload = (await _jsonBlobsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i32.JsonBlobsInputOutput),
      ) as _i32.JsonBlobsInputOutput);
      final input = _i32.JsonBlobsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonBlobs(
        input,
        context,
      );
      const statusCode = 200;
      final body = _jsonBlobsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i32.JsonBlobsInputOutput,
          [FullType(_i32.JsonBlobsInputOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> jsonEnums(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonEnumsProtocol.contentType;
    try {
      final payload = (await _jsonEnumsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i33.JsonEnumsInputOutput),
      ) as _i33.JsonEnumsInputOutput);
      final input = _i33.JsonEnumsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonEnums(
        input,
        context,
      );
      const statusCode = 200;
      final body = _jsonEnumsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i33.JsonEnumsInputOutput,
          [FullType(_i33.JsonEnumsInputOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> jsonIntEnums(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _jsonIntEnumsProtocol.contentType;
    try {
      final payload = (await _jsonIntEnumsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i34.JsonIntEnumsInputOutput),
      ) as _i34.JsonIntEnumsInputOutput);
      final input = _i34.JsonIntEnumsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonIntEnums(
        input,
        context,
      );
      const statusCode = 200;
      final body = _jsonIntEnumsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i34.JsonIntEnumsInputOutput,
          [FullType(_i34.JsonIntEnumsInputOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> jsonLists(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonListsProtocol.contentType;
    try {
      final payload = (await _jsonListsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i35.JsonListsInputOutput),
      ) as _i35.JsonListsInputOutput);
      final input = _i35.JsonListsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonLists(
        input,
        context,
      );
      const statusCode = 200;
      final body = _jsonListsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i35.JsonListsInputOutput,
          [FullType(_i35.JsonListsInputOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> jsonMaps(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonMapsProtocol.contentType;
    try {
      final payload = (await _jsonMapsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i36.JsonMapsInputOutput),
      ) as _i36.JsonMapsInputOutput);
      final input = _i36.JsonMapsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonMaps(
        input,
        context,
      );
      const statusCode = 200;
      final body = _jsonMapsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i36.JsonMapsInputOutput,
          [FullType(_i36.JsonMapsInputOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> jsonTimestamps(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _jsonTimestampsProtocol.contentType;
    try {
      final payload = (await _jsonTimestampsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i37.JsonTimestampsInputOutput),
      ) as _i37.JsonTimestampsInputOutput);
      final input = _i37.JsonTimestampsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonTimestamps(
        input,
        context,
      );
      const statusCode = 200;
      final body = _jsonTimestampsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i37.JsonTimestampsInputOutput,
          [FullType(_i37.JsonTimestampsInputOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> jsonUnions(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonUnionsProtocol.contentType;
    try {
      final payload = (await _jsonUnionsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i38.UnionInputOutput),
      ) as _i38.UnionInputOutput);
      final input = _i38.UnionInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonUnions(
        input,
        context,
      );
      const statusCode = 200;
      final body = _jsonUnionsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i38.UnionInputOutput,
          [FullType(_i38.UnionInputOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedAcceptWithBody(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedAcceptWithBodyProtocol.contentType;
    try {
      final payload = (await _malformedAcceptWithBodyProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.malformedAcceptWithBody(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedAcceptWithBodyProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i39.GreetingStruct,
          [FullType(_i39.GreetingStruct)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedAcceptWithGenericString(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedAcceptWithGenericStringProtocol.contentType;
    try {
      final payload =
          (await _malformedAcceptWithGenericStringProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.malformedAcceptWithGenericString(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedAcceptWithGenericStringProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i40.MalformedAcceptWithGenericStringOutput,
          [FullType.nullable(String)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedAcceptWithPayload(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedAcceptWithPayloadProtocol.contentType;
    try {
      final payload = (await _malformedAcceptWithPayloadProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.malformedAcceptWithPayload(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedAcceptWithPayloadProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i41.MalformedAcceptWithPayloadOutput,
          [FullType.nullable(_i96.Uint8List)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedBlob(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedBlobProtocol.contentType;
    try {
      final payload = (await _malformedBlobProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i42.MalformedBlobInput),
      ) as _i42.MalformedBlobInput);
      final input = _i42.MalformedBlobInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedBlob(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedBlobProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedBoolean(
    _i93.Request request,
    String booleanInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedBooleanProtocol.contentType;
    try {
      final payload = (await _malformedBooleanProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i43.MalformedBooleanInputPayload),
      ) as _i43.MalformedBooleanInputPayload);
      final input = _i43.MalformedBooleanInput.fromRequest(
        payload,
        awsRequest,
        labels: {'booleanInPath': booleanInPath},
      );
      final output = await service.malformedBoolean(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedBooleanProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedByte(
    _i93.Request request,
    String byteInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedByteProtocol.contentType;
    try {
      final payload = (await _malformedByteProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i44.MalformedByteInputPayload),
      ) as _i44.MalformedByteInputPayload);
      final input = _i44.MalformedByteInput.fromRequest(
        payload,
        awsRequest,
        labels: {'byteInPath': byteInPath},
      );
      final output = await service.malformedByte(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedByteProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedContentTypeWithBody(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedContentTypeWithBodyProtocol.contentType;
    try {
      final payload = (await _malformedContentTypeWithBodyProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i39.GreetingStruct),
      ) as _i39.GreetingStruct);
      final input = _i39.GreetingStruct.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedContentTypeWithBody(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedContentTypeWithBodyProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedContentTypeWithGenericString(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedContentTypeWithGenericStringProtocol.contentType;
    try {
      final payload =
          (await _malformedContentTypeWithGenericStringProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(String),
      ) as String?);
      final input = _i45.MalformedContentTypeWithGenericStringInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedContentTypeWithGenericString(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedContentTypeWithGenericStringProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedContentTypeWithPayload(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedContentTypeWithPayloadProtocol.contentType;
    try {
      final payload =
          (await _malformedContentTypeWithPayloadProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(_i96.Uint8List),
      ) as _i96.Uint8List?);
      final input = _i46.MalformedContentTypeWithPayloadInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedContentTypeWithPayload(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedContentTypeWithPayloadProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedContentTypeWithoutBody(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedContentTypeWithoutBodyProtocol.contentType;
    try {
      final payload =
          (await _malformedContentTypeWithoutBodyProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.malformedContentTypeWithoutBody(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedContentTypeWithoutBodyProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedDouble(
    _i93.Request request,
    String doubleInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedDoubleProtocol.contentType;
    try {
      final payload = (await _malformedDoubleProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i47.MalformedDoubleInputPayload),
      ) as _i47.MalformedDoubleInputPayload);
      final input = _i47.MalformedDoubleInput.fromRequest(
        payload,
        awsRequest,
        labels: {'doubleInPath': doubleInPath},
      );
      final output = await service.malformedDouble(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedDoubleProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedFloat(
    _i93.Request request,
    String floatInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedFloatProtocol.contentType;
    try {
      final payload = (await _malformedFloatProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i48.MalformedFloatInputPayload),
      ) as _i48.MalformedFloatInputPayload);
      final input = _i48.MalformedFloatInput.fromRequest(
        payload,
        awsRequest,
        labels: {'floatInPath': floatInPath},
      );
      final output = await service.malformedFloat(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedFloatProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedInteger(
    _i93.Request request,
    String integerInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedIntegerProtocol.contentType;
    try {
      final payload = (await _malformedIntegerProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i49.MalformedIntegerInputPayload),
      ) as _i49.MalformedIntegerInputPayload);
      final input = _i49.MalformedIntegerInput.fromRequest(
        payload,
        awsRequest,
        labels: {'integerInPath': integerInPath},
      );
      final output = await service.malformedInteger(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedIntegerProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedList(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedListProtocol.contentType;
    try {
      final payload = (await _malformedListProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i50.MalformedListInput),
      ) as _i50.MalformedListInput);
      final input = _i50.MalformedListInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedList(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedListProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedLong(
    _i93.Request request,
    String longInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedLongProtocol.contentType;
    try {
      final payload = (await _malformedLongProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i51.MalformedLongInputPayload),
      ) as _i51.MalformedLongInputPayload);
      final input = _i51.MalformedLongInput.fromRequest(
        payload,
        awsRequest,
        labels: {'longInPath': longInPath},
      );
      final output = await service.malformedLong(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedLongProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedMap(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedMapProtocol.contentType;
    try {
      final payload = (await _malformedMapProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i52.MalformedMapInput),
      ) as _i52.MalformedMapInput);
      final input = _i52.MalformedMapInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedMap(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedMapProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedRequestBody(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedRequestBodyProtocol.contentType;
    try {
      final payload = (await _malformedRequestBodyProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i53.MalformedRequestBodyInput),
      ) as _i53.MalformedRequestBodyInput);
      final input = _i53.MalformedRequestBodyInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedRequestBody(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedRequestBodyProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedShort(
    _i93.Request request,
    String shortInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedShortProtocol.contentType;
    try {
      final payload = (await _malformedShortProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i54.MalformedShortInputPayload),
      ) as _i54.MalformedShortInputPayload);
      final input = _i54.MalformedShortInput.fromRequest(
        payload,
        awsRequest,
        labels: {'shortInPath': shortInPath},
      );
      final output = await service.malformedShort(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedShortProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedString(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedStringProtocol.contentType;
    try {
      final payload = (await _malformedStringProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i55.MalformedStringInputPayload),
      ) as _i55.MalformedStringInputPayload);
      final input = _i55.MalformedStringInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedString(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedStringProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedTimestampBodyDateTime(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampBodyDateTimeProtocol.contentType;
    try {
      final payload =
          (await _malformedTimestampBodyDateTimeProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i56.MalformedTimestampBodyDateTimeInput),
      ) as _i56.MalformedTimestampBodyDateTimeInput);
      final input = _i56.MalformedTimestampBodyDateTimeInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampBodyDateTime(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedTimestampBodyDateTimeProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedTimestampBodyDefault(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampBodyDefaultProtocol.contentType;
    try {
      final payload = (await _malformedTimestampBodyDefaultProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i57.MalformedTimestampBodyDefaultInput),
      ) as _i57.MalformedTimestampBodyDefaultInput);
      final input = _i57.MalformedTimestampBodyDefaultInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampBodyDefault(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedTimestampBodyDefaultProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedTimestampBodyHttpDate(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampBodyHttpDateProtocol.contentType;
    try {
      final payload =
          (await _malformedTimestampBodyHttpDateProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i58.MalformedTimestampBodyHttpDateInput),
      ) as _i58.MalformedTimestampBodyHttpDateInput);
      final input = _i58.MalformedTimestampBodyHttpDateInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampBodyHttpDate(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedTimestampBodyHttpDateProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedTimestampHeaderDateTime(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampHeaderDateTimeProtocol.contentType;
    try {
      final payload =
          (await _malformedTimestampHeaderDateTimeProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i59.MalformedTimestampHeaderDateTimeInputPayload),
      ) as _i59.MalformedTimestampHeaderDateTimeInputPayload);
      final input = _i59.MalformedTimestampHeaderDateTimeInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampHeaderDateTime(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedTimestampHeaderDateTimeProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedTimestampHeaderDefault(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampHeaderDefaultProtocol.contentType;
    try {
      final payload =
          (await _malformedTimestampHeaderDefaultProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i60.MalformedTimestampHeaderDefaultInputPayload),
      ) as _i60.MalformedTimestampHeaderDefaultInputPayload);
      final input = _i60.MalformedTimestampHeaderDefaultInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampHeaderDefault(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedTimestampHeaderDefaultProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedTimestampHeaderEpoch(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampHeaderEpochProtocol.contentType;
    try {
      final payload = (await _malformedTimestampHeaderEpochProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i61.MalformedTimestampHeaderEpochInputPayload),
      ) as _i61.MalformedTimestampHeaderEpochInputPayload);
      final input = _i61.MalformedTimestampHeaderEpochInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampHeaderEpoch(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedTimestampHeaderEpochProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedTimestampPathDefault(
    _i93.Request request,
    String timestamp,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampPathDefaultProtocol.contentType;
    try {
      final payload = (await _malformedTimestampPathDefaultProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i62.MalformedTimestampPathDefaultInputPayload),
      ) as _i62.MalformedTimestampPathDefaultInputPayload);
      final input = _i62.MalformedTimestampPathDefaultInput.fromRequest(
        payload,
        awsRequest,
        labels: {'timestamp': timestamp},
      );
      final output = await service.malformedTimestampPathDefault(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedTimestampPathDefaultProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedTimestampPathEpoch(
    _i93.Request request,
    String timestamp,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampPathEpochProtocol.contentType;
    try {
      final payload = (await _malformedTimestampPathEpochProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i63.MalformedTimestampPathEpochInputPayload),
      ) as _i63.MalformedTimestampPathEpochInputPayload);
      final input = _i63.MalformedTimestampPathEpochInput.fromRequest(
        payload,
        awsRequest,
        labels: {'timestamp': timestamp},
      );
      final output = await service.malformedTimestampPathEpoch(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedTimestampPathEpochProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedTimestampPathHttpDate(
    _i93.Request request,
    String timestamp,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampPathHttpDateProtocol.contentType;
    try {
      final payload =
          (await _malformedTimestampPathHttpDateProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i64.MalformedTimestampPathHttpDateInputPayload),
      ) as _i64.MalformedTimestampPathHttpDateInputPayload);
      final input = _i64.MalformedTimestampPathHttpDateInput.fromRequest(
        payload,
        awsRequest,
        labels: {'timestamp': timestamp},
      );
      final output = await service.malformedTimestampPathHttpDate(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedTimestampPathHttpDateProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedTimestampQueryDefault(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampQueryDefaultProtocol.contentType;
    try {
      final payload =
          (await _malformedTimestampQueryDefaultProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i65.MalformedTimestampQueryDefaultInputPayload),
      ) as _i65.MalformedTimestampQueryDefaultInputPayload);
      final input = _i65.MalformedTimestampQueryDefaultInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampQueryDefault(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedTimestampQueryDefaultProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedTimestampQueryEpoch(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampQueryEpochProtocol.contentType;
    try {
      final payload = (await _malformedTimestampQueryEpochProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i66.MalformedTimestampQueryEpochInputPayload),
      ) as _i66.MalformedTimestampQueryEpochInputPayload);
      final input = _i66.MalformedTimestampQueryEpochInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampQueryEpoch(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedTimestampQueryEpochProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedTimestampQueryHttpDate(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampQueryHttpDateProtocol.contentType;
    try {
      final payload =
          (await _malformedTimestampQueryHttpDateProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i67.MalformedTimestampQueryHttpDateInputPayload),
      ) as _i67.MalformedTimestampQueryHttpDateInputPayload);
      final input = _i67.MalformedTimestampQueryHttpDateInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedTimestampQueryHttpDate(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedTimestampQueryHttpDateProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> malformedUnion(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedUnionProtocol.contentType;
    try {
      final payload = (await _malformedUnionProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i68.MalformedUnionInput),
      ) as _i68.MalformedUnionInput);
      final input = _i68.MalformedUnionInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedUnion(
        input,
        context,
      );
      const statusCode = 200;
      final body = _malformedUnionProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> mediaTypeHeader(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _mediaTypeHeaderProtocol.contentType;
    try {
      final payload = (await _mediaTypeHeaderProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i70.MediaTypeHeaderInputPayload),
      ) as _i70.MediaTypeHeaderInputPayload);
      final input = _i70.MediaTypeHeaderInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.mediaTypeHeader(
        input,
        context,
      );
      const statusCode = 200;
      final body = _mediaTypeHeaderProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i69.MediaTypeHeaderOutput,
          [FullType(_i69.MediaTypeHeaderOutputPayload)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> noInputAndNoOutput(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _noInputAndNoOutputProtocol.contentType;
    try {
      final payload = (await _noInputAndNoOutputProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.noInputAndNoOutput(
        input,
        context,
      );
      const statusCode = 200;
      final body = _noInputAndNoOutputProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> noInputAndOutput(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _noInputAndOutputProtocol.contentType;
    try {
      final payload = (await _noInputAndOutputProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.noInputAndOutput(
        input,
        context,
      );
      const statusCode = 200;
      final body = _noInputAndOutputProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i71.NoInputAndOutputOutput,
          [FullType(_i71.NoInputAndOutputOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> nullAndEmptyHeadersClient(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nullAndEmptyHeadersClientProtocol.contentType;
    try {
      final payload = (await _nullAndEmptyHeadersClientProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i72.NullAndEmptyHeadersIoPayload),
      ) as _i72.NullAndEmptyHeadersIoPayload);
      final input = _i72.NullAndEmptyHeadersIo.fromRequest(
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
      final body = _nullAndEmptyHeadersClientProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i72.NullAndEmptyHeadersIo,
          [FullType(_i72.NullAndEmptyHeadersIoPayload)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> nullAndEmptyHeadersServer(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nullAndEmptyHeadersServerProtocol.contentType;
    try {
      final payload = (await _nullAndEmptyHeadersServerProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i72.NullAndEmptyHeadersIoPayload),
      ) as _i72.NullAndEmptyHeadersIoPayload);
      final input = _i72.NullAndEmptyHeadersIo.fromRequest(
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
      final body = _nullAndEmptyHeadersServerProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i72.NullAndEmptyHeadersIo,
          [FullType(_i72.NullAndEmptyHeadersIoPayload)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> omitsNullSerializesEmptyString(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _omitsNullSerializesEmptyStringProtocol.contentType;
    try {
      final payload =
          (await _omitsNullSerializesEmptyStringProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i73.OmitsNullSerializesEmptyStringInputPayload),
      ) as _i73.OmitsNullSerializesEmptyStringInputPayload);
      final input = _i73.OmitsNullSerializesEmptyStringInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.omitsNullSerializesEmptyString(
        input,
        context,
      );
      const statusCode = 200;
      final body = _omitsNullSerializesEmptyStringProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> postPlayerAction(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _postPlayerActionProtocol.contentType;
    try {
      final payload = (await _postPlayerActionProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i75.PostPlayerActionInput),
      ) as _i75.PostPlayerActionInput);
      final input = _i75.PostPlayerActionInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.postPlayerAction(
        input,
        context,
      );
      const statusCode = 200;
      final body = _postPlayerActionProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i74.PostPlayerActionOutput,
          [FullType(_i74.PostPlayerActionOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> postUnionWithJsonName(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _postUnionWithJsonNameProtocol.contentType;
    try {
      final payload = (await _postUnionWithJsonNameProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i77.PostUnionWithJsonNameInput),
      ) as _i77.PostUnionWithJsonNameInput);
      final input = _i77.PostUnionWithJsonNameInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.postUnionWithJsonName(
        input,
        context,
      );
      const statusCode = 200;
      final body = _postUnionWithJsonNameProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i76.PostUnionWithJsonNameOutput,
          [FullType(_i76.PostUnionWithJsonNameOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> queryIdempotencyTokenAutoFill(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _queryIdempotencyTokenAutoFillProtocol.contentType;
    try {
      final payload = (await _queryIdempotencyTokenAutoFillProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i78.QueryIdempotencyTokenAutoFillInputPayload),
      ) as _i78.QueryIdempotencyTokenAutoFillInputPayload);
      final input = _i78.QueryIdempotencyTokenAutoFillInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.queryIdempotencyTokenAutoFill(
        input,
        context,
      );
      const statusCode = 200;
      final body = _queryIdempotencyTokenAutoFillProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> queryParamsAsStringListMap(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _queryParamsAsStringListMapProtocol.contentType;
    try {
      final payload = (await _queryParamsAsStringListMapProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i79.QueryParamsAsStringListMapInputPayload),
      ) as _i79.QueryParamsAsStringListMapInputPayload);
      final input = _i79.QueryParamsAsStringListMapInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.queryParamsAsStringListMap(
        input,
        context,
      );
      const statusCode = 200;
      final body = _queryParamsAsStringListMapProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> queryPrecedence(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _queryPrecedenceProtocol.contentType;
    try {
      final payload = (await _queryPrecedenceProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i80.QueryPrecedenceInputPayload),
      ) as _i80.QueryPrecedenceInputPayload);
      final input = _i80.QueryPrecedenceInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.queryPrecedence(
        input,
        context,
      );
      const statusCode = 200;
      final body = _queryPrecedenceProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> recursiveShapes(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _recursiveShapesProtocol.contentType;
    try {
      final payload = (await _recursiveShapesProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i81.RecursiveShapesInputOutput),
      ) as _i81.RecursiveShapesInputOutput);
      final input = _i81.RecursiveShapesInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.recursiveShapes(
        input,
        context,
      );
      const statusCode = 200;
      final body = _recursiveShapesProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i81.RecursiveShapesInputOutput,
          [FullType(_i81.RecursiveShapesInputOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> responseCodeHttpFallback(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _responseCodeHttpFallbackProtocol.contentType;
    try {
      final payload = (await _responseCodeHttpFallbackProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i82.ResponseCodeHttpFallbackInputOutput),
      ) as _i82.ResponseCodeHttpFallbackInputOutput);
      final input = _i82.ResponseCodeHttpFallbackInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.responseCodeHttpFallback(
        input,
        context,
      );
      const statusCode = 201;
      final body = _responseCodeHttpFallbackProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i82.ResponseCodeHttpFallbackInputOutput,
          [FullType(_i82.ResponseCodeHttpFallbackInputOutput)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> responseCodeRequired(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _responseCodeRequiredProtocol.contentType;
    try {
      final payload = (await _responseCodeRequiredProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.responseCodeRequired(
        input,
        context,
      );
      const statusCode = 200;
      final body = _responseCodeRequiredProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i83.ResponseCodeRequiredOutput,
          [FullType(_i83.ResponseCodeRequiredOutputPayload)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> simpleScalarProperties(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _simpleScalarPropertiesProtocol.contentType;
    try {
      final payload = (await _simpleScalarPropertiesProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i84.SimpleScalarPropertiesInputOutputPayload),
      ) as _i84.SimpleScalarPropertiesInputOutputPayload);
      final input = _i84.SimpleScalarPropertiesInputOutput.fromRequest(
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
      final body = _simpleScalarPropertiesProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i84.SimpleScalarPropertiesInputOutput,
          [FullType(_i84.SimpleScalarPropertiesInputOutputPayload)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> streamingTraits(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _streamingTraitsProtocol.contentType;
    try {
      final payload = (await _streamingTraitsProtocol.deserialize(
        awsRequest.split(),
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
      final input = _i85.StreamingTraitsInputOutput.fromRequest(
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
      final body = _streamingTraitsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i85.StreamingTraitsInputOutput,
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
      return _i93.Response(
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

  _i4.Future<_i93.Response> streamingTraitsRequireLength(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _streamingTraitsRequireLengthProtocol.contentType;
    try {
      final payload = (await _streamingTraitsRequireLengthProtocol.deserialize(
        awsRequest.split(),
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
      final input = _i86.StreamingTraitsRequireLengthInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.streamingTraitsRequireLength(
        input,
        context,
      );
      const statusCode = 200;
      final body = _streamingTraitsRequireLengthProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> streamingTraitsWithMediaType(
      _i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _streamingTraitsWithMediaTypeProtocol.contentType;
    try {
      final payload = (await _streamingTraitsWithMediaTypeProtocol.deserialize(
        awsRequest.split(),
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
      final input = _i87.StreamingTraitsWithMediaTypeInputOutput.fromRequest(
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
      final body = _streamingTraitsWithMediaTypeProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i87.StreamingTraitsWithMediaTypeInputOutput,
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
      return _i93.Response(
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

  _i4.Future<_i93.Response> testBodyStructure(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _testBodyStructureProtocol.contentType;
    try {
      final payload = (await _testBodyStructureProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i88.TestBodyStructureInputOutputPayload),
      ) as _i88.TestBodyStructureInputOutputPayload);
      final input = _i88.TestBodyStructureInputOutput.fromRequest(
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
      final body = _testBodyStructureProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i88.TestBodyStructureInputOutput,
          [FullType(_i88.TestBodyStructureInputOutputPayload)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> testNoPayload(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _testNoPayloadProtocol.contentType;
    try {
      final payload = (await _testNoPayloadProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i89.TestNoPayloadInputOutputPayload),
      ) as _i89.TestNoPayloadInputOutputPayload);
      final input = _i89.TestNoPayloadInputOutput.fromRequest(
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
      final body = _testNoPayloadProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i89.TestNoPayloadInputOutput,
          [FullType(_i89.TestNoPayloadInputOutputPayload)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> testPayloadBlob(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _testPayloadBlobProtocol.contentType;
    try {
      final payload = (await _testPayloadBlobProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(_i96.Uint8List),
      ) as _i96.Uint8List?);
      final input = _i90.TestPayloadBlobInputOutput.fromRequest(
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
      final body = _testPayloadBlobProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i90.TestPayloadBlobInputOutput,
          [FullType.nullable(_i96.Uint8List)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> testPayloadStructure(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _testPayloadStructureProtocol.contentType;
    try {
      final payload = (await _testPayloadStructureProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(_i98.PayloadConfig),
      ) as _i98.PayloadConfig?);
      final input = _i91.TestPayloadStructureInputOutput.fromRequest(
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
      final body = _testPayloadStructureProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i91.TestPayloadStructureInputOutput,
          [FullType.nullable(_i98.PayloadConfig)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> timestampFormatHeaders(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _timestampFormatHeadersProtocol.contentType;
    try {
      final payload = (await _timestampFormatHeadersProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i92.TimestampFormatHeadersIoPayload),
      ) as _i92.TimestampFormatHeadersIoPayload);
      final input = _i92.TimestampFormatHeadersIo.fromRequest(
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
      final body = _timestampFormatHeadersProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i92.TimestampFormatHeadersIo,
          [FullType(_i92.TimestampFormatHeadersIoPayload)],
        ),
      );
      return _i93.Response(
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

  _i4.Future<_i93.Response> unitInputAndOutput(_i93.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _unitInputAndOutputProtocol.contentType;
    try {
      final payload = (await _unitInputAndOutputProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.unitInputAndOutput(
        input,
        context,
      );
      const statusCode = 200;
      final body = _unitInputAndOutputProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i93.Response(
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
