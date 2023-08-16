// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.rest_json_protocol.rest_json_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;
import 'dart:typed_data' as _i6;

import 'package:built_value/json_object.dart' as _i5;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/common/serializers.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/all_query_string_types_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/complex_error.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/constant_and_variable_query_string_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/constant_query_string_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/datetime_offsets_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/document_type_as_payload_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/document_type_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/empty_input_and_empty_output_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/empty_input_and_empty_output_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/enum_payload_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/foo_error.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/fractional_seconds_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/greeting_struct.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/greeting_with_errors_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/host_label_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_checksum_required_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_payload_traits_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_payload_traits_with_media_type_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_payload_with_structure_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_in_response_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_in_response_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_float_labels_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_greedy_label_in_path_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_labels_and_timestamp_format_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_labels_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_regex_literal_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_response_code_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/ignore_query_params_in_response_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/input_and_output_with_headers_io.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/invalid_greeting.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_blobs_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_enums_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_int_enums_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_lists_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_maps_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_timestamps_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_accept_with_generic_string_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_accept_with_payload_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_blob_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_boolean_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_byte_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_content_type_with_generic_string_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_content_type_with_payload_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_content_type_without_body_empty_input_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_double_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_float_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_integer_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_list_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_long_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_map_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_request_body_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_short_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_string_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_body_date_time_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_body_default_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_body_http_date_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_header_date_time_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_header_default_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_header_epoch_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_path_default_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_path_epoch_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_path_http_date_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_query_default_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_query_epoch_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_timestamp_query_http_date_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/malformed_union_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/media_type_header_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/media_type_header_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/nested_payload.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/no_input_and_output_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/null_and_empty_headers_io.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/omits_null_serializes_empty_string_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/omits_serializing_empty_lists_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/payload_config.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_player_action_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_player_action_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_union_with_json_name_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_union_with_json_name_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/put_with_content_encoding_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/query_idempotency_token_auto_fill_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/query_params_as_string_list_map_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/query_precedence_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/recursive_shapes_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/response_code_http_fallback_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/response_code_required_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/simple_scalar_properties_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/streaming_traits_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/streaming_traits_require_length_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/streaming_traits_with_media_type_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/string_enum.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/string_payload_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_body_structure_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_no_payload_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_payload_blob_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_payload_structure_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/timestamp_format_headers_io.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/union_input_output.dart';
import 'package:shelf/shelf.dart' as _i4;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class RestJsonProtocolServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
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
      r'/requestcompression/putcontentwithencoding',
      service.putWithContentEncoding,
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

  _i3.Future<_i1.Unit> allQueryStringTypes(
    AllQueryStringTypesInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> constantAndVariableQueryString(
    ConstantAndVariableQueryStringInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> constantQueryString(
    ConstantQueryStringInput input,
    _i1.Context context,
  );
  _i3.Future<DatetimeOffsetsOutput> datetimeOffsets(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<DocumentTypeInputOutput> documentType(
    DocumentTypeInputOutput input,
    _i1.Context context,
  );
  _i3.Future<DocumentTypeAsPayloadInputOutput> documentTypeAsPayload(
    DocumentTypeAsPayloadInputOutput input,
    _i1.Context context,
  );
  _i3.Future<EmptyInputAndEmptyOutputOutput> emptyInputAndEmptyOutput(
    EmptyInputAndEmptyOutputInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> endpointOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> endpointWithHostLabelOperation(
    HostLabelInput input,
    _i1.Context context,
  );
  _i3.Future<FractionalSecondsOutput> fractionalSeconds(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<GreetingWithErrorsOutput> greetingWithErrors(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> hostWithPathOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<HttpChecksumRequiredInputOutput> httpChecksumRequired(
    HttpChecksumRequiredInputOutput input,
    _i1.Context context,
  );
  _i3.Future<EnumPayloadInput> httpEnumPayload(
    EnumPayloadInput input,
    _i1.Context context,
  );
  _i3.Future<HttpPayloadTraitsInputOutput> httpPayloadTraits(
    HttpPayloadTraitsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<HttpPayloadTraitsWithMediaTypeInputOutput>
      httpPayloadTraitsWithMediaType(
    HttpPayloadTraitsWithMediaTypeInputOutput input,
    _i1.Context context,
  );
  _i3.Future<HttpPayloadWithStructureInputOutput> httpPayloadWithStructure(
    HttpPayloadWithStructureInputOutput input,
    _i1.Context context,
  );
  _i3.Future<HttpPrefixHeadersOutput> httpPrefixHeaders(
    HttpPrefixHeadersInput input,
    _i1.Context context,
  );
  _i3.Future<HttpPrefixHeadersInResponseOutput> httpPrefixHeadersInResponse(
    HttpPrefixHeadersInResponseInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> httpRequestWithFloatLabels(
    HttpRequestWithFloatLabelsInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> httpRequestWithGreedyLabelInPath(
    HttpRequestWithGreedyLabelInPathInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> httpRequestWithLabels(
    HttpRequestWithLabelsInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> httpRequestWithLabelsAndTimestampFormat(
    HttpRequestWithLabelsAndTimestampFormatInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> httpRequestWithRegexLiteral(
    HttpRequestWithRegexLiteralInput input,
    _i1.Context context,
  );
  _i3.Future<HttpResponseCodeOutput> httpResponseCode(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<StringPayloadInput> httpStringPayload(
    StringPayloadInput input,
    _i1.Context context,
  );
  _i3.Future<IgnoreQueryParamsInResponseOutput> ignoreQueryParamsInResponse(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<InputAndOutputWithHeadersIo> inputAndOutputWithHeaders(
    InputAndOutputWithHeadersIo input,
    _i1.Context context,
  );
  _i3.Future<JsonBlobsInputOutput> jsonBlobs(
    JsonBlobsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<JsonEnumsInputOutput> jsonEnums(
    JsonEnumsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<JsonIntEnumsInputOutput> jsonIntEnums(
    JsonIntEnumsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<JsonListsInputOutput> jsonLists(
    JsonListsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<JsonMapsInputOutput> jsonMaps(
    JsonMapsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<JsonTimestampsInputOutput> jsonTimestamps(
    JsonTimestampsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<UnionInputOutput> jsonUnions(
    UnionInputOutput input,
    _i1.Context context,
  );
  _i3.Future<GreetingStruct> malformedAcceptWithBody(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<MalformedAcceptWithGenericStringOutput>
      malformedAcceptWithGenericString(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<MalformedAcceptWithPayloadOutput> malformedAcceptWithPayload(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedBlob(
    MalformedBlobInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedBoolean(
    MalformedBooleanInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedByte(
    MalformedByteInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedContentTypeWithBody(
    GreetingStruct input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedContentTypeWithGenericString(
    MalformedContentTypeWithGenericStringInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedContentTypeWithPayload(
    MalformedContentTypeWithPayloadInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedContentTypeWithoutBody(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedContentTypeWithoutBodyEmptyInput(
    MalformedContentTypeWithoutBodyEmptyInputInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedDouble(
    MalformedDoubleInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedFloat(
    MalformedFloatInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedInteger(
    MalformedIntegerInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedList(
    MalformedListInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedLong(
    MalformedLongInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedMap(
    MalformedMapInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedRequestBody(
    MalformedRequestBodyInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedShort(
    MalformedShortInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedString(
    MalformedStringInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedTimestampBodyDateTime(
    MalformedTimestampBodyDateTimeInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedTimestampBodyDefault(
    MalformedTimestampBodyDefaultInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedTimestampBodyHttpDate(
    MalformedTimestampBodyHttpDateInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedTimestampHeaderDateTime(
    MalformedTimestampHeaderDateTimeInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedTimestampHeaderDefault(
    MalformedTimestampHeaderDefaultInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedTimestampHeaderEpoch(
    MalformedTimestampHeaderEpochInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedTimestampPathDefault(
    MalformedTimestampPathDefaultInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedTimestampPathEpoch(
    MalformedTimestampPathEpochInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedTimestampPathHttpDate(
    MalformedTimestampPathHttpDateInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedTimestampQueryDefault(
    MalformedTimestampQueryDefaultInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedTimestampQueryEpoch(
    MalformedTimestampQueryEpochInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedTimestampQueryHttpDate(
    MalformedTimestampQueryHttpDateInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedUnion(
    MalformedUnionInput input,
    _i1.Context context,
  );
  _i3.Future<MediaTypeHeaderOutput> mediaTypeHeader(
    MediaTypeHeaderInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> noInputAndNoOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<NoInputAndOutputOutput> noInputAndOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<NullAndEmptyHeadersIo> nullAndEmptyHeadersClient(
    NullAndEmptyHeadersIo input,
    _i1.Context context,
  );
  _i3.Future<NullAndEmptyHeadersIo> nullAndEmptyHeadersServer(
    NullAndEmptyHeadersIo input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> omitsNullSerializesEmptyString(
    OmitsNullSerializesEmptyStringInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> omitsSerializingEmptyLists(
    OmitsSerializingEmptyListsInput input,
    _i1.Context context,
  );
  _i3.Future<PostPlayerActionOutput> postPlayerAction(
    PostPlayerActionInput input,
    _i1.Context context,
  );
  _i3.Future<PostUnionWithJsonNameOutput> postUnionWithJsonName(
    PostUnionWithJsonNameInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> putWithContentEncoding(
    PutWithContentEncodingInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> queryIdempotencyTokenAutoFill(
    QueryIdempotencyTokenAutoFillInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> queryParamsAsStringListMap(
    QueryParamsAsStringListMapInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> queryPrecedence(
    QueryPrecedenceInput input,
    _i1.Context context,
  );
  _i3.Future<RecursiveShapesInputOutput> recursiveShapes(
    RecursiveShapesInputOutput input,
    _i1.Context context,
  );
  _i3.Future<ResponseCodeHttpFallbackInputOutput> responseCodeHttpFallback(
    ResponseCodeHttpFallbackInputOutput input,
    _i1.Context context,
  );
  _i3.Future<ResponseCodeRequiredOutput> responseCodeRequired(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<SimpleScalarPropertiesInputOutput> simpleScalarProperties(
    SimpleScalarPropertiesInputOutput input,
    _i1.Context context,
  );
  _i3.Future<StreamingTraitsInputOutput> streamingTraits(
    StreamingTraitsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> streamingTraitsRequireLength(
    StreamingTraitsRequireLengthInput input,
    _i1.Context context,
  );
  _i3.Future<StreamingTraitsWithMediaTypeInputOutput>
      streamingTraitsWithMediaType(
    StreamingTraitsWithMediaTypeInputOutput input,
    _i1.Context context,
  );
  _i3.Future<TestBodyStructureInputOutput> testBodyStructure(
    TestBodyStructureInputOutput input,
    _i1.Context context,
  );
  _i3.Future<TestNoPayloadInputOutput> testNoPayload(
    TestNoPayloadInputOutput input,
    _i1.Context context,
  );
  _i3.Future<TestPayloadBlobInputOutput> testPayloadBlob(
    TestPayloadBlobInputOutput input,
    _i1.Context context,
  );
  _i3.Future<TestPayloadStructureInputOutput> testPayloadStructure(
    TestPayloadStructureInputOutput input,
    _i1.Context context,
  );
  _i3.Future<TimestampFormatHeadersIo> timestampFormatHeaders(
    TimestampFormatHeadersIo input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> unitInputAndOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<_i4.Response> call(_i4.Request request) => _router(request);
}

class _RestJsonProtocolServer
    extends _i1.HttpServer<RestJsonProtocolServerBase> {
  _RestJsonProtocolServer(this.service);

  @override
  final RestJsonProtocolServerBase service;

  late final _i1.HttpProtocol<
      AllQueryStringTypesInputPayload,
      AllQueryStringTypesInput,
      _i1.Unit,
      _i1.Unit> _allQueryStringTypesProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      ConstantAndVariableQueryStringInputPayload,
      ConstantAndVariableQueryStringInput,
      _i1.Unit,
      _i1.Unit> _constantAndVariableQueryStringProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      ConstantQueryStringInputPayload,
      ConstantQueryStringInput,
      _i1.Unit,
      _i1.Unit> _constantQueryStringProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, DatetimeOffsetsOutput,
      DatetimeOffsetsOutput> _datetimeOffsetsProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      DocumentTypeInputOutput,
      DocumentTypeInputOutput,
      DocumentTypeInputOutput,
      DocumentTypeInputOutput> _documentTypeProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i5.JsonObject, DocumentTypeAsPayloadInputOutput,
          _i5.JsonObject, DocumentTypeAsPayloadInputOutput>
      _documentTypeAsPayloadProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          EmptyInputAndEmptyOutputInput,
          EmptyInputAndEmptyOutputInput,
          EmptyInputAndEmptyOutputOutput,
          EmptyInputAndEmptyOutputOutput> _emptyInputAndEmptyOutputProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _endpointOperationProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1
      .HttpProtocol<HostLabelInput, HostLabelInput, _i1.Unit, _i1.Unit>
      _endpointWithHostLabelOperationProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, FractionalSecondsOutput,
          FractionalSecondsOutput> _fractionalSecondsProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit,
          GreetingWithErrorsOutputPayload, GreetingWithErrorsOutput>
      _greetingWithErrorsProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _hostWithPathOperationProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          HttpChecksumRequiredInputOutput,
          HttpChecksumRequiredInputOutput,
          HttpChecksumRequiredInputOutput,
          HttpChecksumRequiredInputOutput> _httpChecksumRequiredProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1
      .HttpProtocol<StringEnum, EnumPayloadInput, StringEnum, EnumPayloadInput>
      _httpEnumPayloadProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i6.Uint8List, HttpPayloadTraitsInputOutput,
          _i6.Uint8List, HttpPayloadTraitsInputOutput>
      _httpPayloadTraitsProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          _i6.Uint8List,
          HttpPayloadTraitsWithMediaTypeInputOutput,
          _i6.Uint8List,
          HttpPayloadTraitsWithMediaTypeInputOutput>
      _httpPayloadTraitsWithMediaTypeProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
    mediaType: 'text/plain',
  );

  late final _i1.HttpProtocol<
          NestedPayload,
          HttpPayloadWithStructureInputOutput,
          NestedPayload,
          HttpPayloadWithStructureInputOutput>
      _httpPayloadWithStructureProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          HttpPrefixHeadersInputPayload,
          HttpPrefixHeadersInput,
          HttpPrefixHeadersOutputPayload,
          HttpPrefixHeadersOutput> _httpPrefixHeadersProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          HttpPrefixHeadersInResponseInput,
          HttpPrefixHeadersInResponseInput,
          HttpPrefixHeadersInResponseOutputPayload,
          HttpPrefixHeadersInResponseOutput>
      _httpPrefixHeadersInResponseProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      HttpRequestWithFloatLabelsInputPayload,
      HttpRequestWithFloatLabelsInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithFloatLabelsProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<HttpRequestWithGreedyLabelInPathInputPayload,
          HttpRequestWithGreedyLabelInPathInput, _i1.Unit, _i1.Unit>
      _httpRequestWithGreedyLabelInPathProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      HttpRequestWithLabelsInputPayload,
      HttpRequestWithLabelsInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithLabelsProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          HttpRequestWithLabelsAndTimestampFormatInputPayload,
          HttpRequestWithLabelsAndTimestampFormatInput,
          _i1.Unit,
          _i1.Unit> _httpRequestWithLabelsAndTimestampFormatProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      HttpRequestWithRegexLiteralInputPayload,
      HttpRequestWithRegexLiteralInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithRegexLiteralProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, HttpResponseCodeOutputPayload,
      HttpResponseCodeOutput> _httpResponseCodeProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1
      .HttpProtocol<String, StringPayloadInput, String, StringPayloadInput>
      _httpStringPayloadProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit,
          IgnoreQueryParamsInResponseOutput, IgnoreQueryParamsInResponseOutput>
      _ignoreQueryParamsInResponseProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          InputAndOutputWithHeadersIoPayload,
          InputAndOutputWithHeadersIo,
          InputAndOutputWithHeadersIoPayload,
          InputAndOutputWithHeadersIo> _inputAndOutputWithHeadersProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      JsonBlobsInputOutput,
      JsonBlobsInputOutput,
      JsonBlobsInputOutput,
      JsonBlobsInputOutput> _jsonBlobsProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      JsonEnumsInputOutput,
      JsonEnumsInputOutput,
      JsonEnumsInputOutput,
      JsonEnumsInputOutput> _jsonEnumsProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      JsonIntEnumsInputOutput,
      JsonIntEnumsInputOutput,
      JsonIntEnumsInputOutput,
      JsonIntEnumsInputOutput> _jsonIntEnumsProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      JsonListsInputOutput,
      JsonListsInputOutput,
      JsonListsInputOutput,
      JsonListsInputOutput> _jsonListsProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      JsonMapsInputOutput,
      JsonMapsInputOutput,
      JsonMapsInputOutput,
      JsonMapsInputOutput> _jsonMapsProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          JsonTimestampsInputOutput,
          JsonTimestampsInputOutput,
          JsonTimestampsInputOutput,
          JsonTimestampsInputOutput> _jsonTimestampsProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      UnionInputOutput,
      UnionInputOutput,
      UnionInputOutput,
      UnionInputOutput> _jsonUnionsProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1
      .HttpProtocol<_i1.Unit, _i1.Unit, GreetingStruct, GreetingStruct>
      _malformedAcceptWithBodyProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, String,
          MalformedAcceptWithGenericStringOutput>
      _malformedAcceptWithGenericStringProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i6.Uint8List,
          MalformedAcceptWithPayloadOutput>
      _malformedAcceptWithPayloadProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1
      .HttpProtocol<MalformedBlobInput, MalformedBlobInput, _i1.Unit, _i1.Unit>
      _malformedBlobProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedBooleanInputPayload,
      MalformedBooleanInput,
      _i1.Unit,
      _i1.Unit> _malformedBooleanProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<MalformedByteInputPayload, MalformedByteInput,
      _i1.Unit, _i1.Unit> _malformedByteProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1
      .HttpProtocol<GreetingStruct, GreetingStruct, _i1.Unit, _i1.Unit>
      _malformedContentTypeWithBodyProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<String,
          MalformedContentTypeWithGenericStringInput, _i1.Unit, _i1.Unit>
      _malformedContentTypeWithGenericStringProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i6.Uint8List,
          MalformedContentTypeWithPayloadInput, _i1.Unit, _i1.Unit>
      _malformedContentTypeWithPayloadProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
    mediaType: 'image/jpeg',
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _malformedContentTypeWithoutBodyProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          MalformedContentTypeWithoutBodyEmptyInputInputPayload,
          MalformedContentTypeWithoutBodyEmptyInputInput,
          _i1.Unit,
          _i1.Unit> _malformedContentTypeWithoutBodyEmptyInputProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<MalformedDoubleInputPayload, MalformedDoubleInput,
      _i1.Unit, _i1.Unit> _malformedDoubleProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<MalformedFloatInputPayload, MalformedFloatInput,
      _i1.Unit, _i1.Unit> _malformedFloatProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedIntegerInputPayload,
      MalformedIntegerInput,
      _i1.Unit,
      _i1.Unit> _malformedIntegerProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1
      .HttpProtocol<MalformedListInput, MalformedListInput, _i1.Unit, _i1.Unit>
      _malformedListProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<MalformedLongInputPayload, MalformedLongInput,
      _i1.Unit, _i1.Unit> _malformedLongProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1
      .HttpProtocol<MalformedMapInput, MalformedMapInput, _i1.Unit, _i1.Unit>
      _malformedMapProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedRequestBodyInput,
      MalformedRequestBodyInput,
      _i1.Unit,
      _i1.Unit> _malformedRequestBodyProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<MalformedShortInputPayload, MalformedShortInput,
      _i1.Unit, _i1.Unit> _malformedShortProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<MalformedStringInputPayload, MalformedStringInput,
      _i1.Unit, _i1.Unit> _malformedStringProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedTimestampBodyDateTimeInput,
      MalformedTimestampBodyDateTimeInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampBodyDateTimeProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedTimestampBodyDefaultInput,
      MalformedTimestampBodyDefaultInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampBodyDefaultProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedTimestampBodyHttpDateInput,
      MalformedTimestampBodyHttpDateInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampBodyHttpDateProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<MalformedTimestampHeaderDateTimeInputPayload,
          MalformedTimestampHeaderDateTimeInput, _i1.Unit, _i1.Unit>
      _malformedTimestampHeaderDateTimeProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<MalformedTimestampHeaderDefaultInputPayload,
          MalformedTimestampHeaderDefaultInput, _i1.Unit, _i1.Unit>
      _malformedTimestampHeaderDefaultProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedTimestampHeaderEpochInputPayload,
      MalformedTimestampHeaderEpochInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampHeaderEpochProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedTimestampPathDefaultInputPayload,
      MalformedTimestampPathDefaultInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampPathDefaultProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedTimestampPathEpochInputPayload,
      MalformedTimestampPathEpochInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampPathEpochProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedTimestampPathHttpDateInputPayload,
      MalformedTimestampPathHttpDateInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampPathHttpDateProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedTimestampQueryDefaultInputPayload,
      MalformedTimestampQueryDefaultInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampQueryDefaultProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedTimestampQueryEpochInputPayload,
      MalformedTimestampQueryEpochInput,
      _i1.Unit,
      _i1.Unit> _malformedTimestampQueryEpochProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<MalformedTimestampQueryHttpDateInputPayload,
          MalformedTimestampQueryHttpDateInput, _i1.Unit, _i1.Unit>
      _malformedTimestampQueryHttpDateProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<MalformedUnionInput, MalformedUnionInput,
      _i1.Unit, _i1.Unit> _malformedUnionProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MediaTypeHeaderInputPayload,
      MediaTypeHeaderInput,
      MediaTypeHeaderOutputPayload,
      MediaTypeHeaderOutput> _mediaTypeHeaderProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _noInputAndNoOutputProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, NoInputAndOutputOutput,
      NoInputAndOutputOutput> _noInputAndOutputProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          NullAndEmptyHeadersIoPayload,
          NullAndEmptyHeadersIo,
          NullAndEmptyHeadersIoPayload,
          NullAndEmptyHeadersIo> _nullAndEmptyHeadersClientProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          NullAndEmptyHeadersIoPayload,
          NullAndEmptyHeadersIo,
          NullAndEmptyHeadersIoPayload,
          NullAndEmptyHeadersIo> _nullAndEmptyHeadersServerProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      OmitsNullSerializesEmptyStringInputPayload,
      OmitsNullSerializesEmptyStringInput,
      _i1.Unit,
      _i1.Unit> _omitsNullSerializesEmptyStringProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      OmitsSerializingEmptyListsInputPayload,
      OmitsSerializingEmptyListsInput,
      _i1.Unit,
      _i1.Unit> _omitsSerializingEmptyListsProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      PostPlayerActionInput,
      PostPlayerActionInput,
      PostPlayerActionOutput,
      PostPlayerActionOutput> _postPlayerActionProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          PostUnionWithJsonNameInput,
          PostUnionWithJsonNameInput,
          PostUnionWithJsonNameOutput,
          PostUnionWithJsonNameOutput> _postUnionWithJsonNameProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      PutWithContentEncodingInputPayload,
      PutWithContentEncodingInput,
      _i1.Unit,
      _i1.Unit> _putWithContentEncodingProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      QueryIdempotencyTokenAutoFillInputPayload,
      QueryIdempotencyTokenAutoFillInput,
      _i1.Unit,
      _i1.Unit> _queryIdempotencyTokenAutoFillProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      QueryParamsAsStringListMapInputPayload,
      QueryParamsAsStringListMapInput,
      _i1.Unit,
      _i1.Unit> _queryParamsAsStringListMapProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<QueryPrecedenceInputPayload, QueryPrecedenceInput,
      _i1.Unit, _i1.Unit> _queryPrecedenceProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          RecursiveShapesInputOutput,
          RecursiveShapesInputOutput,
          RecursiveShapesInputOutput,
          RecursiveShapesInputOutput> _recursiveShapesProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          ResponseCodeHttpFallbackInputOutput,
          ResponseCodeHttpFallbackInputOutput,
          ResponseCodeHttpFallbackInputOutput,
          ResponseCodeHttpFallbackInputOutput>
      _responseCodeHttpFallbackProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit,
          ResponseCodeRequiredOutputPayload, ResponseCodeRequiredOutput>
      _responseCodeRequiredProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          SimpleScalarPropertiesInputOutputPayload,
          SimpleScalarPropertiesInputOutput,
          SimpleScalarPropertiesInputOutputPayload,
          SimpleScalarPropertiesInputOutput> _simpleScalarPropertiesProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i3.Stream<List<int>>, StreamingTraitsInputOutput,
          _i3.Stream<List<int>>, StreamingTraitsInputOutput>
      _streamingTraitsProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      _i3.Stream<List<int>>,
      StreamingTraitsRequireLengthInput,
      _i1.Unit,
      _i1.Unit> _streamingTraitsRequireLengthProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          _i3.Stream<List<int>>,
          StreamingTraitsWithMediaTypeInputOutput,
          _i3.Stream<List<int>>,
          StreamingTraitsWithMediaTypeInputOutput>
      _streamingTraitsWithMediaTypeProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
    mediaType: 'text/plain',
  );

  late final _i1.HttpProtocol<
          TestBodyStructureInputOutputPayload,
          TestBodyStructureInputOutput,
          TestBodyStructureInputOutputPayload,
          TestBodyStructureInputOutput> _testBodyStructureProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      TestNoPayloadInputOutputPayload,
      TestNoPayloadInputOutput,
      TestNoPayloadInputOutputPayload,
      TestNoPayloadInputOutput> _testNoPayloadProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i6.Uint8List, TestPayloadBlobInputOutput,
          _i6.Uint8List, TestPayloadBlobInputOutput> _testPayloadBlobProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<PayloadConfig, TestPayloadStructureInputOutput,
          PayloadConfig, TestPayloadStructureInputOutput>
      _testPayloadStructureProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          TimestampFormatHeadersIoPayload,
          TimestampFormatHeadersIo,
          TimestampFormatHeadersIoPayload,
          TimestampFormatHeadersIo> _timestampFormatHeadersProtocol =
      _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _unitInputAndOutputProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  _i3.Future<_i4.Response> allQueryStringTypes(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _allQueryStringTypesProtocol.contentType;
    try {
      final payload =
          (await _allQueryStringTypesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(AllQueryStringTypesInputPayload),
      ) as AllQueryStringTypesInputPayload);
      final input = AllQueryStringTypesInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> constantAndVariableQueryString(
      _i4.Request request) async {
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
            const FullType(ConstantAndVariableQueryStringInputPayload),
      ) as ConstantAndVariableQueryStringInputPayload);
      final input = ConstantAndVariableQueryStringInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> constantQueryString(
    _i4.Request request,
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
        specifiedType: const FullType(ConstantQueryStringInputPayload),
      ) as ConstantQueryStringInputPayload);
      final input = ConstantQueryStringInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> datetimeOffsets(_i4.Request request) async {
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
          DatetimeOffsetsOutput,
          [FullType(DatetimeOffsetsOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> documentType(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _documentTypeProtocol.contentType;
    try {
      final payload = (await _documentTypeProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(DocumentTypeInputOutput),
      ) as DocumentTypeInputOutput);
      final input = DocumentTypeInputOutput.fromRequest(
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
          DocumentTypeInputOutput,
          [FullType(DocumentTypeInputOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> documentTypeAsPayload(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _documentTypeAsPayloadProtocol.contentType;
    try {
      final payload =
          (await _documentTypeAsPayloadProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i5.JsonObject),
      ) as _i5.JsonObject?);
      final input = DocumentTypeAsPayloadInputOutput.fromRequest(
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
          DocumentTypeAsPayloadInputOutput,
          [FullType.nullable(_i5.JsonObject)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> emptyInputAndEmptyOutput(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _emptyInputAndEmptyOutputProtocol.contentType;
    try {
      final payload =
          (await _emptyInputAndEmptyOutputProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(EmptyInputAndEmptyOutputInput),
      ) as EmptyInputAndEmptyOutputInput);
      final input = EmptyInputAndEmptyOutputInput.fromRequest(
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
          EmptyInputAndEmptyOutputOutput,
          [FullType(EmptyInputAndEmptyOutputOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> endpointOperation(_i4.Request request) async {
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> endpointWithHostLabelOperation(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _endpointWithHostLabelOperationProtocol.contentType;
    try {
      final payload = (await _endpointWithHostLabelOperationProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(HostLabelInput),
      ) as HostLabelInput);
      final input = HostLabelInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> fractionalSeconds(_i4.Request request) async {
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
          FractionalSecondsOutput,
          [FullType(FractionalSecondsOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> greetingWithErrors(_i4.Request request) async {
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
          GreetingWithErrorsOutput,
          [FullType(GreetingWithErrorsOutputPayload)],
        ),
      );
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on ComplexError catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ComplexError';
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ComplexError,
          [FullType(ComplexErrorPayload)],
        ),
      );
      const statusCode = 403;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on FooError catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'FooError';
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          FooError,
          [FullType(FooError)],
        ),
      );
      const statusCode = 500;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on InvalidGreeting catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'InvalidGreeting';
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          InvalidGreeting,
          [FullType(InvalidGreeting)],
        ),
      );
      const statusCode = 400;
      return _i4.Response(
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

  _i3.Future<_i4.Response> hostWithPathOperation(_i4.Request request) async {
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> httpChecksumRequired(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpChecksumRequiredProtocol.contentType;
    try {
      final payload =
          (await _httpChecksumRequiredProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(HttpChecksumRequiredInputOutput),
      ) as HttpChecksumRequiredInputOutput);
      final input = HttpChecksumRequiredInputOutput.fromRequest(
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
          HttpChecksumRequiredInputOutput,
          [FullType(HttpChecksumRequiredInputOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> httpEnumPayload(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpEnumPayloadProtocol.contentType;
    try {
      final payload =
          (await _httpEnumPayloadProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(StringEnum),
      ) as StringEnum?);
      final input = EnumPayloadInput.fromRequest(
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
          EnumPayloadInput,
          [FullType.nullable(StringEnum)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> httpPayloadTraits(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadTraitsProtocol.contentType;
    try {
      final payload =
          (await _httpPayloadTraitsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i6.Uint8List),
      ) as _i6.Uint8List?);
      final input = HttpPayloadTraitsInputOutput.fromRequest(
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
          HttpPayloadTraitsInputOutput,
          [FullType.nullable(_i6.Uint8List)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> httpPayloadTraitsWithMediaType(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadTraitsWithMediaTypeProtocol.contentType;
    try {
      final payload = (await _httpPayloadTraitsWithMediaTypeProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i6.Uint8List),
      ) as _i6.Uint8List?);
      final input = HttpPayloadTraitsWithMediaTypeInputOutput.fromRequest(
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
          HttpPayloadTraitsWithMediaTypeInputOutput,
          [FullType.nullable(_i6.Uint8List)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> httpPayloadWithStructure(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithStructureProtocol.contentType;
    try {
      final payload =
          (await _httpPayloadWithStructureProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(NestedPayload),
      ) as NestedPayload?);
      final input = HttpPayloadWithStructureInputOutput.fromRequest(
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
          HttpPayloadWithStructureInputOutput,
          [FullType.nullable(NestedPayload)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> httpPrefixHeaders(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPrefixHeadersProtocol.contentType;
    try {
      final payload =
          (await _httpPrefixHeadersProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(HttpPrefixHeadersInputPayload),
      ) as HttpPrefixHeadersInputPayload);
      final input = HttpPrefixHeadersInput.fromRequest(
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
          HttpPrefixHeadersOutput,
          [FullType(HttpPrefixHeadersOutputPayload)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> httpPrefixHeadersInResponse(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPrefixHeadersInResponseProtocol.contentType;
    try {
      final payload = (await _httpPrefixHeadersInResponseProtocol.wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(HttpPrefixHeadersInResponseInput),
      ) as HttpPrefixHeadersInResponseInput);
      final input = HttpPrefixHeadersInResponseInput.fromRequest(
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
          HttpPrefixHeadersInResponseOutput,
          [FullType(HttpPrefixHeadersInResponseOutputPayload)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> httpRequestWithFloatLabels(
    _i4.Request request,
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
        specifiedType: const FullType(HttpRequestWithFloatLabelsInputPayload),
      ) as HttpRequestWithFloatLabelsInputPayload);
      final input = HttpRequestWithFloatLabelsInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> httpRequestWithGreedyLabelInPath(
    _i4.Request request,
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
            const FullType(HttpRequestWithGreedyLabelInPathInputPayload),
      ) as HttpRequestWithGreedyLabelInPathInputPayload);
      final input = HttpRequestWithGreedyLabelInPathInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> httpRequestWithLabels(
    _i4.Request request,
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
        specifiedType: const FullType(HttpRequestWithLabelsInputPayload),
      ) as HttpRequestWithLabelsInputPayload);
      final input = HttpRequestWithLabelsInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> httpRequestWithLabelsAndTimestampFormat(
    _i4.Request request,
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
        specifiedType:
            const FullType(HttpRequestWithLabelsAndTimestampFormatInputPayload),
      ) as HttpRequestWithLabelsAndTimestampFormatInputPayload);
      final input = HttpRequestWithLabelsAndTimestampFormatInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> httpRequestWithRegexLiteral(
    _i4.Request request,
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
        specifiedType: const FullType(HttpRequestWithRegexLiteralInputPayload),
      ) as HttpRequestWithRegexLiteralInputPayload);
      final input = HttpRequestWithRegexLiteralInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> httpResponseCode(_i4.Request request) async {
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
          HttpResponseCodeOutput,
          [FullType(HttpResponseCodeOutputPayload)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> httpStringPayload(_i4.Request request) async {
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
      final input = StringPayloadInput.fromRequest(
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
          StringPayloadInput,
          [FullType.nullable(String)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> ignoreQueryParamsInResponse(
      _i4.Request request) async {
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
          IgnoreQueryParamsInResponseOutput,
          [FullType(IgnoreQueryParamsInResponseOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> inputAndOutputWithHeaders(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _inputAndOutputWithHeadersProtocol.contentType;
    try {
      final payload =
          (await _inputAndOutputWithHeadersProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(InputAndOutputWithHeadersIoPayload),
      ) as InputAndOutputWithHeadersIoPayload);
      final input = InputAndOutputWithHeadersIo.fromRequest(
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
          InputAndOutputWithHeadersIo,
          [FullType(InputAndOutputWithHeadersIoPayload)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> jsonBlobs(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonBlobsProtocol.contentType;
    try {
      final payload = (await _jsonBlobsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(JsonBlobsInputOutput),
      ) as JsonBlobsInputOutput);
      final input = JsonBlobsInputOutput.fromRequest(
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
          JsonBlobsInputOutput,
          [FullType(JsonBlobsInputOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> jsonEnums(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonEnumsProtocol.contentType;
    try {
      final payload = (await _jsonEnumsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(JsonEnumsInputOutput),
      ) as JsonEnumsInputOutput);
      final input = JsonEnumsInputOutput.fromRequest(
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
          JsonEnumsInputOutput,
          [FullType(JsonEnumsInputOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> jsonIntEnums(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _jsonIntEnumsProtocol.contentType;
    try {
      final payload = (await _jsonIntEnumsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(JsonIntEnumsInputOutput),
      ) as JsonIntEnumsInputOutput);
      final input = JsonIntEnumsInputOutput.fromRequest(
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
          JsonIntEnumsInputOutput,
          [FullType(JsonIntEnumsInputOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> jsonLists(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonListsProtocol.contentType;
    try {
      final payload = (await _jsonListsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(JsonListsInputOutput),
      ) as JsonListsInputOutput);
      final input = JsonListsInputOutput.fromRequest(
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
          JsonListsInputOutput,
          [FullType(JsonListsInputOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> jsonMaps(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonMapsProtocol.contentType;
    try {
      final payload = (await _jsonMapsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(JsonMapsInputOutput),
      ) as JsonMapsInputOutput);
      final input = JsonMapsInputOutput.fromRequest(
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
          JsonMapsInputOutput,
          [FullType(JsonMapsInputOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> jsonTimestamps(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _jsonTimestampsProtocol.contentType;
    try {
      final payload = (await _jsonTimestampsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(JsonTimestampsInputOutput),
      ) as JsonTimestampsInputOutput);
      final input = JsonTimestampsInputOutput.fromRequest(
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
          JsonTimestampsInputOutput,
          [FullType(JsonTimestampsInputOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> jsonUnions(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonUnionsProtocol.contentType;
    try {
      final payload = (await _jsonUnionsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(UnionInputOutput),
      ) as UnionInputOutput);
      final input = UnionInputOutput.fromRequest(
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
          UnionInputOutput,
          [FullType(UnionInputOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedAcceptWithBody(_i4.Request request) async {
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
          GreetingStruct,
          [FullType(GreetingStruct)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedAcceptWithGenericString(
      _i4.Request request) async {
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
          MalformedAcceptWithGenericStringOutput,
          [FullType.nullable(String)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedAcceptWithPayload(
      _i4.Request request) async {
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
          MalformedAcceptWithPayloadOutput,
          [FullType.nullable(_i6.Uint8List)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedBlob(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedBlobProtocol.contentType;
    try {
      final payload = (await _malformedBlobProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedBlobInput),
      ) as MalformedBlobInput);
      final input = MalformedBlobInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedBoolean(
    _i4.Request request,
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
        specifiedType: const FullType(MalformedBooleanInputPayload),
      ) as MalformedBooleanInputPayload);
      final input = MalformedBooleanInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedByte(
    _i4.Request request,
    String byteInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedByteProtocol.contentType;
    try {
      final payload = (await _malformedByteProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedByteInputPayload),
      ) as MalformedByteInputPayload);
      final input = MalformedByteInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedContentTypeWithBody(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedContentTypeWithBodyProtocol.contentType;
    try {
      final payload = (await _malformedContentTypeWithBodyProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(GreetingStruct),
      ) as GreetingStruct);
      final input = GreetingStruct.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedContentTypeWithGenericString(
      _i4.Request request) async {
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
      final input = MalformedContentTypeWithGenericStringInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedContentTypeWithPayload(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedContentTypeWithPayloadProtocol.contentType;
    try {
      final payload = (await _malformedContentTypeWithPayloadProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i6.Uint8List),
      ) as _i6.Uint8List?);
      final input = MalformedContentTypeWithPayloadInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedContentTypeWithoutBody(
      _i4.Request request) async {
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedContentTypeWithoutBodyEmptyInput(
      _i4.Request request) async {
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
            MalformedContentTypeWithoutBodyEmptyInputInputPayload),
      ) as MalformedContentTypeWithoutBodyEmptyInputInputPayload);
      final input = MalformedContentTypeWithoutBodyEmptyInputInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedDouble(
    _i4.Request request,
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
        specifiedType: const FullType(MalformedDoubleInputPayload),
      ) as MalformedDoubleInputPayload);
      final input = MalformedDoubleInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedFloat(
    _i4.Request request,
    String floatInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedFloatProtocol.contentType;
    try {
      final payload = (await _malformedFloatProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedFloatInputPayload),
      ) as MalformedFloatInputPayload);
      final input = MalformedFloatInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedInteger(
    _i4.Request request,
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
        specifiedType: const FullType(MalformedIntegerInputPayload),
      ) as MalformedIntegerInputPayload);
      final input = MalformedIntegerInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedList(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedListProtocol.contentType;
    try {
      final payload = (await _malformedListProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedListInput),
      ) as MalformedListInput);
      final input = MalformedListInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedLong(
    _i4.Request request,
    String longInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedLongProtocol.contentType;
    try {
      final payload = (await _malformedLongProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedLongInputPayload),
      ) as MalformedLongInputPayload);
      final input = MalformedLongInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedMap(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedMapProtocol.contentType;
    try {
      final payload = (await _malformedMapProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedMapInput),
      ) as MalformedMapInput);
      final input = MalformedMapInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedRequestBody(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedRequestBodyProtocol.contentType;
    try {
      final payload =
          (await _malformedRequestBodyProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedRequestBodyInput),
      ) as MalformedRequestBodyInput);
      final input = MalformedRequestBodyInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedShort(
    _i4.Request request,
    String shortInPath,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedShortProtocol.contentType;
    try {
      final payload = (await _malformedShortProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedShortInputPayload),
      ) as MalformedShortInputPayload);
      final input = MalformedShortInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedString(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedStringProtocol.contentType;
    try {
      final payload =
          (await _malformedStringProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedStringInputPayload),
      ) as MalformedStringInputPayload);
      final input = MalformedStringInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedTimestampBodyDateTime(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampBodyDateTimeProtocol.contentType;
    try {
      final payload = (await _malformedTimestampBodyDateTimeProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedTimestampBodyDateTimeInput),
      ) as MalformedTimestampBodyDateTimeInput);
      final input = MalformedTimestampBodyDateTimeInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedTimestampBodyDefault(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampBodyDefaultProtocol.contentType;
    try {
      final payload = (await _malformedTimestampBodyDefaultProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedTimestampBodyDefaultInput),
      ) as MalformedTimestampBodyDefaultInput);
      final input = MalformedTimestampBodyDefaultInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedTimestampBodyHttpDate(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampBodyHttpDateProtocol.contentType;
    try {
      final payload = (await _malformedTimestampBodyHttpDateProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedTimestampBodyHttpDateInput),
      ) as MalformedTimestampBodyHttpDateInput);
      final input = MalformedTimestampBodyHttpDateInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedTimestampHeaderDateTime(
      _i4.Request request) async {
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
            const FullType(MalformedTimestampHeaderDateTimeInputPayload),
      ) as MalformedTimestampHeaderDateTimeInputPayload);
      final input = MalformedTimestampHeaderDateTimeInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedTimestampHeaderDefault(
      _i4.Request request) async {
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
            const FullType(MalformedTimestampHeaderDefaultInputPayload),
      ) as MalformedTimestampHeaderDefaultInputPayload);
      final input = MalformedTimestampHeaderDefaultInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedTimestampHeaderEpoch(
      _i4.Request request) async {
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
            const FullType(MalformedTimestampHeaderEpochInputPayload),
      ) as MalformedTimestampHeaderEpochInputPayload);
      final input = MalformedTimestampHeaderEpochInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedTimestampPathDefault(
    _i4.Request request,
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
            const FullType(MalformedTimestampPathDefaultInputPayload),
      ) as MalformedTimestampPathDefaultInputPayload);
      final input = MalformedTimestampPathDefaultInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedTimestampPathEpoch(
    _i4.Request request,
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
        specifiedType: const FullType(MalformedTimestampPathEpochInputPayload),
      ) as MalformedTimestampPathEpochInputPayload);
      final input = MalformedTimestampPathEpochInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedTimestampPathHttpDate(
    _i4.Request request,
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
            const FullType(MalformedTimestampPathHttpDateInputPayload),
      ) as MalformedTimestampPathHttpDateInputPayload);
      final input = MalformedTimestampPathHttpDateInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedTimestampQueryDefault(
      _i4.Request request) async {
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
            const FullType(MalformedTimestampQueryDefaultInputPayload),
      ) as MalformedTimestampQueryDefaultInputPayload);
      final input = MalformedTimestampQueryDefaultInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedTimestampQueryEpoch(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedTimestampQueryEpochProtocol.contentType;
    try {
      final payload = (await _malformedTimestampQueryEpochProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedTimestampQueryEpochInputPayload),
      ) as MalformedTimestampQueryEpochInputPayload);
      final input = MalformedTimestampQueryEpochInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedTimestampQueryHttpDate(
      _i4.Request request) async {
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
            const FullType(MalformedTimestampQueryHttpDateInputPayload),
      ) as MalformedTimestampQueryHttpDateInputPayload);
      final input = MalformedTimestampQueryHttpDateInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> malformedUnion(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedUnionProtocol.contentType;
    try {
      final payload = (await _malformedUnionProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedUnionInput),
      ) as MalformedUnionInput);
      final input = MalformedUnionInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> mediaTypeHeader(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _mediaTypeHeaderProtocol.contentType;
    try {
      final payload =
          (await _mediaTypeHeaderProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MediaTypeHeaderInputPayload),
      ) as MediaTypeHeaderInputPayload);
      final input = MediaTypeHeaderInput.fromRequest(
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
          MediaTypeHeaderOutput,
          [FullType(MediaTypeHeaderOutputPayload)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> noInputAndNoOutput(_i4.Request request) async {
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> noInputAndOutput(_i4.Request request) async {
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
          NoInputAndOutputOutput,
          [FullType(NoInputAndOutputOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> nullAndEmptyHeadersClient(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nullAndEmptyHeadersClientProtocol.contentType;
    try {
      final payload =
          (await _nullAndEmptyHeadersClientProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(NullAndEmptyHeadersIoPayload),
      ) as NullAndEmptyHeadersIoPayload);
      final input = NullAndEmptyHeadersIo.fromRequest(
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
          NullAndEmptyHeadersIo,
          [FullType(NullAndEmptyHeadersIoPayload)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> nullAndEmptyHeadersServer(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nullAndEmptyHeadersServerProtocol.contentType;
    try {
      final payload =
          (await _nullAndEmptyHeadersServerProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(NullAndEmptyHeadersIoPayload),
      ) as NullAndEmptyHeadersIoPayload);
      final input = NullAndEmptyHeadersIo.fromRequest(
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
          NullAndEmptyHeadersIo,
          [FullType(NullAndEmptyHeadersIoPayload)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> omitsNullSerializesEmptyString(
      _i4.Request request) async {
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
            const FullType(OmitsNullSerializesEmptyStringInputPayload),
      ) as OmitsNullSerializesEmptyStringInputPayload);
      final input = OmitsNullSerializesEmptyStringInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> omitsSerializingEmptyLists(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _omitsSerializingEmptyListsProtocol.contentType;
    try {
      final payload =
          (await _omitsSerializingEmptyListsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(OmitsSerializingEmptyListsInputPayload),
      ) as OmitsSerializingEmptyListsInputPayload);
      final input = OmitsSerializingEmptyListsInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> postPlayerAction(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _postPlayerActionProtocol.contentType;
    try {
      final payload =
          (await _postPlayerActionProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(PostPlayerActionInput),
      ) as PostPlayerActionInput);
      final input = PostPlayerActionInput.fromRequest(
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
          PostPlayerActionOutput,
          [FullType(PostPlayerActionOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> postUnionWithJsonName(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _postUnionWithJsonNameProtocol.contentType;
    try {
      final payload =
          (await _postUnionWithJsonNameProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(PostUnionWithJsonNameInput),
      ) as PostUnionWithJsonNameInput);
      final input = PostUnionWithJsonNameInput.fromRequest(
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
          PostUnionWithJsonNameOutput,
          [FullType(PostUnionWithJsonNameOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> putWithContentEncoding(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _putWithContentEncodingProtocol.contentType;
    try {
      final payload =
          (await _putWithContentEncodingProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(PutWithContentEncodingInputPayload),
      ) as PutWithContentEncodingInputPayload);
      final input = PutWithContentEncodingInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.putWithContentEncoding(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _putWithContentEncodingProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> queryIdempotencyTokenAutoFill(
      _i4.Request request) async {
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
            const FullType(QueryIdempotencyTokenAutoFillInputPayload),
      ) as QueryIdempotencyTokenAutoFillInputPayload);
      final input = QueryIdempotencyTokenAutoFillInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> queryParamsAsStringListMap(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _queryParamsAsStringListMapProtocol.contentType;
    try {
      final payload =
          (await _queryParamsAsStringListMapProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(QueryParamsAsStringListMapInputPayload),
      ) as QueryParamsAsStringListMapInputPayload);
      final input = QueryParamsAsStringListMapInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> queryPrecedence(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _queryPrecedenceProtocol.contentType;
    try {
      final payload =
          (await _queryPrecedenceProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(QueryPrecedenceInputPayload),
      ) as QueryPrecedenceInputPayload);
      final input = QueryPrecedenceInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> recursiveShapes(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _recursiveShapesProtocol.contentType;
    try {
      final payload =
          (await _recursiveShapesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(RecursiveShapesInputOutput),
      ) as RecursiveShapesInputOutput);
      final input = RecursiveShapesInputOutput.fromRequest(
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
          RecursiveShapesInputOutput,
          [FullType(RecursiveShapesInputOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> responseCodeHttpFallback(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _responseCodeHttpFallbackProtocol.contentType;
    try {
      final payload =
          (await _responseCodeHttpFallbackProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(ResponseCodeHttpFallbackInputOutput),
      ) as ResponseCodeHttpFallbackInputOutput);
      final input = ResponseCodeHttpFallbackInputOutput.fromRequest(
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
          ResponseCodeHttpFallbackInputOutput,
          [FullType(ResponseCodeHttpFallbackInputOutput)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> responseCodeRequired(_i4.Request request) async {
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
          ResponseCodeRequiredOutput,
          [FullType(ResponseCodeRequiredOutputPayload)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> simpleScalarProperties(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _simpleScalarPropertiesProtocol.contentType;
    try {
      final payload =
          (await _simpleScalarPropertiesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(SimpleScalarPropertiesInputOutputPayload),
      ) as SimpleScalarPropertiesInputOutputPayload);
      final input = SimpleScalarPropertiesInputOutput.fromRequest(
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
          SimpleScalarPropertiesInputOutput,
          [FullType(SimpleScalarPropertiesInputOutputPayload)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> streamingTraits(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _streamingTraitsProtocol.contentType;
    try {
      final payload =
          (await _streamingTraitsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(
          _i3.Stream,
          [
            FullType(
              List,
              [FullType(int)],
            )
          ],
        ),
      ) as _i3.Stream<List<int>>);
      final input = StreamingTraitsInputOutput.fromRequest(
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
          StreamingTraitsInputOutput,
          [
            FullType(
              _i3.Stream,
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> streamingTraitsRequireLength(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _streamingTraitsRequireLengthProtocol.contentType;
    try {
      final payload = (await _streamingTraitsRequireLengthProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(
          _i3.Stream,
          [
            FullType(
              List,
              [FullType(int)],
            )
          ],
        ),
      ) as _i3.Stream<List<int>>);
      final input = StreamingTraitsRequireLengthInput.fromRequest(
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> streamingTraitsWithMediaType(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _streamingTraitsWithMediaTypeProtocol.contentType;
    try {
      final payload = (await _streamingTraitsWithMediaTypeProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(
          _i3.Stream,
          [
            FullType(
              List,
              [FullType(int)],
            )
          ],
        ),
      ) as _i3.Stream<List<int>>);
      final input = StreamingTraitsWithMediaTypeInputOutput.fromRequest(
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
          StreamingTraitsWithMediaTypeInputOutput,
          [
            FullType(
              _i3.Stream,
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
      return _i4.Response(
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

  _i3.Future<_i4.Response> testBodyStructure(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _testBodyStructureProtocol.contentType;
    try {
      final payload =
          (await _testBodyStructureProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(TestBodyStructureInputOutputPayload),
      ) as TestBodyStructureInputOutputPayload);
      final input = TestBodyStructureInputOutput.fromRequest(
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
          TestBodyStructureInputOutput,
          [FullType(TestBodyStructureInputOutputPayload)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> testNoPayload(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _testNoPayloadProtocol.contentType;
    try {
      final payload = (await _testNoPayloadProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(TestNoPayloadInputOutputPayload),
      ) as TestNoPayloadInputOutputPayload);
      final input = TestNoPayloadInputOutput.fromRequest(
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
          TestNoPayloadInputOutput,
          [FullType(TestNoPayloadInputOutputPayload)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> testPayloadBlob(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _testPayloadBlobProtocol.contentType;
    try {
      final payload =
          (await _testPayloadBlobProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i6.Uint8List),
      ) as _i6.Uint8List?);
      final input = TestPayloadBlobInputOutput.fromRequest(
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
          TestPayloadBlobInputOutput,
          [FullType.nullable(_i6.Uint8List)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> testPayloadStructure(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _testPayloadStructureProtocol.contentType;
    try {
      final payload =
          (await _testPayloadStructureProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(PayloadConfig),
      ) as PayloadConfig?);
      final input = TestPayloadStructureInputOutput.fromRequest(
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
          TestPayloadStructureInputOutput,
          [FullType.nullable(PayloadConfig)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> timestampFormatHeaders(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _timestampFormatHeadersProtocol.contentType;
    try {
      final payload =
          (await _timestampFormatHeadersProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(TimestampFormatHeadersIoPayload),
      ) as TimestampFormatHeadersIoPayload);
      final input = TimestampFormatHeadersIo.fromRequest(
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
          TimestampFormatHeadersIo,
          [FullType(TimestampFormatHeadersIoPayload)],
        ),
      );
      return _i4.Response(
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

  _i3.Future<_i4.Response> unitInputAndOutput(_i4.Request request) async {
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
      return _i4.Response(
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
