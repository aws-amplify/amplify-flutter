// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v1.rest_xml_protocol.rest_xml_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;
import 'dart:typed_data' as _i5;

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/common/serializers.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/all_query_string_types_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/body_with_xml_name_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/complex_error.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/constant_and_variable_query_string_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/constant_query_string_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/datetime_offsets_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/empty_input_and_empty_output_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/empty_input_and_empty_output_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/flattened_xml_map_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/flattened_xml_map_with_xml_name_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/flattened_xml_map_with_xml_namespace_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/fractional_seconds_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/greeting_with_errors_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/host_label_header_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/host_label_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_traits_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_traits_with_media_type_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_with_member_xml_name_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_with_structure_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_with_xml_name_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_with_xml_namespace_and_prefix_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_with_xml_namespace_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_prefix_headers_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_request_with_float_labels_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_request_with_greedy_label_in_path_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_request_with_labels_and_timestamp_format_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_request_with_labels_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_response_code_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/ignore_query_params_in_response_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/input_and_output_with_headers_io.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/invalid_greeting.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/nested_payload.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/nested_xml_maps_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/no_input_and_output_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/null_and_empty_headers_io.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/omits_null_serializes_empty_string_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_name.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_namespace.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_namespace_and_prefix.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/put_with_content_encoding_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/query_idempotency_token_auto_fill_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/query_params_as_string_list_map_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/query_precedence_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/recursive_shapes_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/simple_scalar_properties_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/timestamp_format_headers_io.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_attributes_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_attributes_on_payload_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_blobs_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_empty_strings_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_enums_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_int_enums_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_lists_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_maps_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_maps_xml_name_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_namespaces_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_timestamps_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_unions_input_output.dart';
import 'package:shelf/shelf.dart' as _i4;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class RestXmlProtocolServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final Router _router = () {
    final service = _RestXmlProtocolServer(this);
    final router = Router();
    router.add(
      'GET',
      r'/AllQueryStringTypesInput',
      service.allQueryStringTypes,
    );
    router.add(
      'PUT',
      r'/BodyWithXmlName',
      service.bodyWithXmlName,
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
      r'/EndpointWithHostLabelHeaderOperation',
      service.endpointWithHostLabelHeaderOperation,
    );
    router.add(
      'POST',
      r'/EndpointWithHostLabelOperation',
      service.endpointWithHostLabelOperation,
    );
    router.add(
      'POST',
      r'/FlattenedXmlMap',
      service.flattenedXmlMap,
    );
    router.add(
      'POST',
      r'/FlattenedXmlMapWithXmlName',
      service.flattenedXmlMapWithXmlName,
    );
    router.add(
      'POST',
      r'/FlattenedXmlMapWithXmlNamespace',
      service.flattenedXmlMapWithXmlNamespace,
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
      r'/HttpPayloadWithMemberXmlName',
      service.httpPayloadWithMemberXmlName,
    );
    router.add(
      'PUT',
      r'/HttpPayloadWithStructure',
      service.httpPayloadWithStructure,
    );
    router.add(
      'PUT',
      r'/HttpPayloadWithXmlName',
      service.httpPayloadWithXmlName,
    );
    router.add(
      'PUT',
      r'/HttpPayloadWithXmlNamespace',
      service.httpPayloadWithXmlNamespace,
    );
    router.add(
      'PUT',
      r'/HttpPayloadWithXmlNamespaceAndPrefix',
      service.httpPayloadWithXmlNamespaceAndPrefix,
    );
    router.add(
      'GET',
      r'/HttpPrefixHeaders',
      service.httpPrefixHeaders,
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
      'PUT',
      r'/HttpResponseCode',
      service.httpResponseCode,
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
      r'/NestedXmlMaps',
      service.nestedXmlMaps,
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
      'PUT',
      r'/SimpleScalarProperties',
      service.simpleScalarProperties,
    );
    router.add(
      'POST',
      r'/TimestampFormatHeaders',
      service.timestampFormatHeaders,
    );
    router.add(
      'PUT',
      r'/XmlAttributes',
      service.xmlAttributes,
    );
    router.add(
      'PUT',
      r'/XmlAttributesOnPayload',
      service.xmlAttributesOnPayload,
    );
    router.add(
      'POST',
      r'/XmlBlobs',
      service.xmlBlobs,
    );
    router.add(
      'POST',
      r'/XmlEmptyBlobs',
      service.xmlEmptyBlobs,
    );
    router.add(
      'PUT',
      r'/XmlEmptyLists',
      service.xmlEmptyLists,
    );
    router.add(
      'POST',
      r'/XmlEmptyMaps',
      service.xmlEmptyMaps,
    );
    router.add(
      'PUT',
      r'/XmlEmptyStrings',
      service.xmlEmptyStrings,
    );
    router.add(
      'PUT',
      r'/XmlEnums',
      service.xmlEnums,
    );
    router.add(
      'PUT',
      r'/XmlIntEnums',
      service.xmlIntEnums,
    );
    router.add(
      'PUT',
      r'/XmlLists',
      service.xmlLists,
    );
    router.add(
      'POST',
      r'/XmlMaps',
      service.xmlMaps,
    );
    router.add(
      'POST',
      r'/XmlMapsXmlName',
      service.xmlMapsXmlName,
    );
    router.add(
      'POST',
      r'/XmlNamespaces',
      service.xmlNamespaces,
    );
    router.add(
      'POST',
      r'/XmlTimestamps',
      service.xmlTimestamps,
    );
    router.add(
      'PUT',
      r'/XmlUnions',
      service.xmlUnions,
    );
    return router;
  }();

  _i3.Future<_i1.Unit> allQueryStringTypes(
    AllQueryStringTypesInput input,
    _i1.Context context,
  );
  _i3.Future<BodyWithXmlNameInputOutput> bodyWithXmlName(
    BodyWithXmlNameInputOutput input,
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
  _i3.Future<EmptyInputAndEmptyOutputOutput> emptyInputAndEmptyOutput(
    EmptyInputAndEmptyOutputInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> endpointOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> endpointWithHostLabelHeaderOperation(
    HostLabelHeaderInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> endpointWithHostLabelOperation(
    HostLabelInput input,
    _i1.Context context,
  );
  _i3.Future<FlattenedXmlMapInputOutput> flattenedXmlMap(
    FlattenedXmlMapInputOutput input,
    _i1.Context context,
  );
  _i3.Future<FlattenedXmlMapWithXmlNameInputOutput> flattenedXmlMapWithXmlName(
    FlattenedXmlMapWithXmlNameInputOutput input,
    _i1.Context context,
  );
  _i3.Future<FlattenedXmlMapWithXmlNamespaceOutput>
      flattenedXmlMapWithXmlNamespace(
    _i1.Unit input,
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
  _i3.Future<HttpPayloadTraitsInputOutput> httpPayloadTraits(
    HttpPayloadTraitsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<HttpPayloadTraitsWithMediaTypeInputOutput>
      httpPayloadTraitsWithMediaType(
    HttpPayloadTraitsWithMediaTypeInputOutput input,
    _i1.Context context,
  );
  _i3.Future<HttpPayloadWithMemberXmlNameInputOutput>
      httpPayloadWithMemberXmlName(
    HttpPayloadWithMemberXmlNameInputOutput input,
    _i1.Context context,
  );
  _i3.Future<HttpPayloadWithStructureInputOutput> httpPayloadWithStructure(
    HttpPayloadWithStructureInputOutput input,
    _i1.Context context,
  );
  _i3.Future<HttpPayloadWithXmlNameInputOutput> httpPayloadWithXmlName(
    HttpPayloadWithXmlNameInputOutput input,
    _i1.Context context,
  );
  _i3.Future<HttpPayloadWithXmlNamespaceInputOutput>
      httpPayloadWithXmlNamespace(
    HttpPayloadWithXmlNamespaceInputOutput input,
    _i1.Context context,
  );
  _i3.Future<HttpPayloadWithXmlNamespaceAndPrefixInputOutput>
      httpPayloadWithXmlNamespaceAndPrefix(
    HttpPayloadWithXmlNamespaceAndPrefixInputOutput input,
    _i1.Context context,
  );
  _i3.Future<HttpPrefixHeadersInputOutput> httpPrefixHeaders(
    HttpPrefixHeadersInputOutput input,
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
  _i3.Future<HttpResponseCodeOutput> httpResponseCode(
    _i1.Unit input,
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
  _i3.Future<NestedXmlMapsInputOutput> nestedXmlMaps(
    NestedXmlMapsInputOutput input,
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
  _i3.Future<SimpleScalarPropertiesInputOutput> simpleScalarProperties(
    SimpleScalarPropertiesInputOutput input,
    _i1.Context context,
  );
  _i3.Future<TimestampFormatHeadersIo> timestampFormatHeaders(
    TimestampFormatHeadersIo input,
    _i1.Context context,
  );
  _i3.Future<XmlAttributesInputOutput> xmlAttributes(
    XmlAttributesInputOutput input,
    _i1.Context context,
  );
  _i3.Future<XmlAttributesOnPayloadInputOutput> xmlAttributesOnPayload(
    XmlAttributesOnPayloadInputOutput input,
    _i1.Context context,
  );
  _i3.Future<XmlBlobsInputOutput> xmlBlobs(
    XmlBlobsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<XmlBlobsInputOutput> xmlEmptyBlobs(
    XmlBlobsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<XmlListsInputOutput> xmlEmptyLists(
    XmlListsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<XmlMapsInputOutput> xmlEmptyMaps(
    XmlMapsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<XmlEmptyStringsInputOutput> xmlEmptyStrings(
    XmlEmptyStringsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<XmlEnumsInputOutput> xmlEnums(
    XmlEnumsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<XmlIntEnumsInputOutput> xmlIntEnums(
    XmlIntEnumsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<XmlListsInputOutput> xmlLists(
    XmlListsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<XmlMapsInputOutput> xmlMaps(
    XmlMapsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<XmlMapsXmlNameInputOutput> xmlMapsXmlName(
    XmlMapsXmlNameInputOutput input,
    _i1.Context context,
  );
  _i3.Future<XmlNamespacesInputOutput> xmlNamespaces(
    XmlNamespacesInputOutput input,
    _i1.Context context,
  );
  _i3.Future<XmlTimestampsInputOutput> xmlTimestamps(
    XmlTimestampsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<XmlUnionsInputOutput> xmlUnions(
    XmlUnionsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<_i4.Response> call(_i4.Request request) => _router(request);
}

class _RestXmlProtocolServer extends _i1.HttpServer<RestXmlProtocolServerBase> {
  _RestXmlProtocolServer(this.service);

  @override
  final RestXmlProtocolServerBase service;

  late final _i1.HttpProtocol<
      AllQueryStringTypesInputPayload,
      AllQueryStringTypesInput,
      _i1.Unit,
      _i1.Unit> _allQueryStringTypesProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          BodyWithXmlNameInputOutput,
          BodyWithXmlNameInputOutput,
          BodyWithXmlNameInputOutput,
          BodyWithXmlNameInputOutput> _bodyWithXmlNameProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      ConstantAndVariableQueryStringInputPayload,
      ConstantAndVariableQueryStringInput,
      _i1.Unit,
      _i1.Unit> _constantAndVariableQueryStringProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      ConstantQueryStringInputPayload,
      ConstantQueryStringInput,
      _i1.Unit,
      _i1.Unit> _constantQueryStringProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, DatetimeOffsetsOutput,
      DatetimeOffsetsOutput> _datetimeOffsetsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          EmptyInputAndEmptyOutputInput,
          EmptyInputAndEmptyOutputInput,
          EmptyInputAndEmptyOutputOutput,
          EmptyInputAndEmptyOutputOutput> _emptyInputAndEmptyOutputProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _endpointOperationProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<HostLabelHeaderInputPayload, HostLabelHeaderInput,
          _i1.Unit, _i1.Unit> _endpointWithHostLabelHeaderOperationProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1
      .HttpProtocol<HostLabelInput, HostLabelInput, _i1.Unit, _i1.Unit>
      _endpointWithHostLabelOperationProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          FlattenedXmlMapInputOutput,
          FlattenedXmlMapInputOutput,
          FlattenedXmlMapInputOutput,
          FlattenedXmlMapInputOutput> _flattenedXmlMapProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          FlattenedXmlMapWithXmlNameInputOutput,
          FlattenedXmlMapWithXmlNameInputOutput,
          FlattenedXmlMapWithXmlNameInputOutput,
          FlattenedXmlMapWithXmlNameInputOutput>
      _flattenedXmlMapWithXmlNameProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i1.Unit,
          _i1.Unit,
          FlattenedXmlMapWithXmlNamespaceOutput,
          FlattenedXmlMapWithXmlNamespaceOutput>
      _flattenedXmlMapWithXmlNamespaceProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, FractionalSecondsOutput,
      FractionalSecondsOutput> _fractionalSecondsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit,
          GreetingWithErrorsOutputPayload, GreetingWithErrorsOutput>
      _greetingWithErrorsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i5.Uint8List, HttpPayloadTraitsInputOutput,
          _i5.Uint8List, HttpPayloadTraitsInputOutput>
      _httpPayloadTraitsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i5.Uint8List,
          HttpPayloadTraitsWithMediaTypeInputOutput,
          _i5.Uint8List,
          HttpPayloadTraitsWithMediaTypeInputOutput>
      _httpPayloadTraitsWithMediaTypeProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    mediaType: 'text/plain',
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          PayloadWithXmlName,
          HttpPayloadWithMemberXmlNameInputOutput,
          PayloadWithXmlName,
          HttpPayloadWithMemberXmlNameInputOutput>
      _httpPayloadWithMemberXmlNameProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          NestedPayload,
          HttpPayloadWithStructureInputOutput,
          NestedPayload,
          HttpPayloadWithStructureInputOutput>
      _httpPayloadWithStructureProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          PayloadWithXmlName,
          HttpPayloadWithXmlNameInputOutput,
          PayloadWithXmlName,
          HttpPayloadWithXmlNameInputOutput> _httpPayloadWithXmlNameProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          PayloadWithXmlNamespace,
          HttpPayloadWithXmlNamespaceInputOutput,
          PayloadWithXmlNamespace,
          HttpPayloadWithXmlNamespaceInputOutput>
      _httpPayloadWithXmlNamespaceProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          PayloadWithXmlNamespaceAndPrefix,
          HttpPayloadWithXmlNamespaceAndPrefixInputOutput,
          PayloadWithXmlNamespaceAndPrefix,
          HttpPayloadWithXmlNamespaceAndPrefixInputOutput>
      _httpPayloadWithXmlNamespaceAndPrefixProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          HttpPrefixHeadersInputOutputPayload,
          HttpPrefixHeadersInputOutput,
          HttpPrefixHeadersInputOutputPayload,
          HttpPrefixHeadersInputOutput> _httpPrefixHeadersProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      HttpRequestWithFloatLabelsInputPayload,
      HttpRequestWithFloatLabelsInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithFloatLabelsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      HttpRequestWithGreedyLabelInPathInputPayload,
      HttpRequestWithGreedyLabelInPathInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithGreedyLabelInPathProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      HttpRequestWithLabelsInputPayload,
      HttpRequestWithLabelsInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithLabelsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          HttpRequestWithLabelsAndTimestampFormatInputPayload,
          HttpRequestWithLabelsAndTimestampFormatInput,
          _i1.Unit,
          _i1.Unit> _httpRequestWithLabelsAndTimestampFormatProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, HttpResponseCodeOutputPayload,
      HttpResponseCodeOutput> _httpResponseCodeProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit,
          IgnoreQueryParamsInResponseOutput, IgnoreQueryParamsInResponseOutput>
      _ignoreQueryParamsInResponseProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          InputAndOutputWithHeadersIoPayload,
          InputAndOutputWithHeadersIo,
          InputAndOutputWithHeadersIoPayload,
          InputAndOutputWithHeadersIo> _inputAndOutputWithHeadersProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      NestedXmlMapsInputOutput,
      NestedXmlMapsInputOutput,
      NestedXmlMapsInputOutput,
      NestedXmlMapsInputOutput> _nestedXmlMapsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _noInputAndNoOutputProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, NoInputAndOutputOutput,
      NoInputAndOutputOutput> _noInputAndOutputProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          NullAndEmptyHeadersIoPayload,
          NullAndEmptyHeadersIo,
          NullAndEmptyHeadersIoPayload,
          NullAndEmptyHeadersIo> _nullAndEmptyHeadersClientProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          NullAndEmptyHeadersIoPayload,
          NullAndEmptyHeadersIo,
          NullAndEmptyHeadersIoPayload,
          NullAndEmptyHeadersIo> _nullAndEmptyHeadersServerProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      OmitsNullSerializesEmptyStringInputPayload,
      OmitsNullSerializesEmptyStringInput,
      _i1.Unit,
      _i1.Unit> _omitsNullSerializesEmptyStringProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      PutWithContentEncodingInputPayload,
      PutWithContentEncodingInput,
      _i1.Unit,
      _i1.Unit> _putWithContentEncodingProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      QueryIdempotencyTokenAutoFillInputPayload,
      QueryIdempotencyTokenAutoFillInput,
      _i1.Unit,
      _i1.Unit> _queryIdempotencyTokenAutoFillProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      QueryParamsAsStringListMapInputPayload,
      QueryParamsAsStringListMapInput,
      _i1.Unit,
      _i1.Unit> _queryParamsAsStringListMapProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<QueryPrecedenceInputPayload, QueryPrecedenceInput,
      _i1.Unit, _i1.Unit> _queryPrecedenceProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          RecursiveShapesInputOutput,
          RecursiveShapesInputOutput,
          RecursiveShapesInputOutput,
          RecursiveShapesInputOutput> _recursiveShapesProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          SimpleScalarPropertiesInputOutputPayload,
          SimpleScalarPropertiesInputOutput,
          SimpleScalarPropertiesInputOutputPayload,
          SimpleScalarPropertiesInputOutput> _simpleScalarPropertiesProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          TimestampFormatHeadersIoPayload,
          TimestampFormatHeadersIo,
          TimestampFormatHeadersIoPayload,
          TimestampFormatHeadersIo> _timestampFormatHeadersProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      XmlAttributesInputOutput,
      XmlAttributesInputOutput,
      XmlAttributesInputOutput,
      XmlAttributesInputOutput> _xmlAttributesProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          XmlAttributesInputOutput,
          XmlAttributesOnPayloadInputOutput,
          XmlAttributesInputOutput,
          XmlAttributesOnPayloadInputOutput> _xmlAttributesOnPayloadProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      XmlBlobsInputOutput,
      XmlBlobsInputOutput,
      XmlBlobsInputOutput,
      XmlBlobsInputOutput> _xmlBlobsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      XmlBlobsInputOutput,
      XmlBlobsInputOutput,
      XmlBlobsInputOutput,
      XmlBlobsInputOutput> _xmlEmptyBlobsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      XmlListsInputOutput,
      XmlListsInputOutput,
      XmlListsInputOutput,
      XmlListsInputOutput> _xmlEmptyListsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      XmlMapsInputOutput,
      XmlMapsInputOutput,
      XmlMapsInputOutput,
      XmlMapsInputOutput> _xmlEmptyMapsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          XmlEmptyStringsInputOutput,
          XmlEmptyStringsInputOutput,
          XmlEmptyStringsInputOutput,
          XmlEmptyStringsInputOutput> _xmlEmptyStringsProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      XmlEnumsInputOutput,
      XmlEnumsInputOutput,
      XmlEnumsInputOutput,
      XmlEnumsInputOutput> _xmlEnumsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      XmlIntEnumsInputOutput,
      XmlIntEnumsInputOutput,
      XmlIntEnumsInputOutput,
      XmlIntEnumsInputOutput> _xmlIntEnumsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      XmlListsInputOutput,
      XmlListsInputOutput,
      XmlListsInputOutput,
      XmlListsInputOutput> _xmlListsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      XmlMapsInputOutput,
      XmlMapsInputOutput,
      XmlMapsInputOutput,
      XmlMapsInputOutput> _xmlMapsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      XmlMapsXmlNameInputOutput,
      XmlMapsXmlNameInputOutput,
      XmlMapsXmlNameInputOutput,
      XmlMapsXmlNameInputOutput> _xmlMapsXmlNameProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      XmlNamespacesInputOutput,
      XmlNamespacesInputOutput,
      XmlNamespacesInputOutput,
      XmlNamespacesInputOutput> _xmlNamespacesProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      XmlTimestampsInputOutput,
      XmlTimestampsInputOutput,
      XmlTimestampsInputOutput,
      XmlTimestampsInputOutput> _xmlTimestampsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      XmlUnionsInputOutput,
      XmlUnionsInputOutput,
      XmlUnionsInputOutput,
      XmlUnionsInputOutput> _xmlUnionsProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
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

  _i3.Future<_i4.Response> bodyWithXmlName(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _bodyWithXmlNameProtocol.contentType;
    try {
      final payload =
          (await _bodyWithXmlNameProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(BodyWithXmlNameInputOutput),
      ) as BodyWithXmlNameInputOutput);
      final input = BodyWithXmlNameInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.bodyWithXmlName(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _bodyWithXmlNameProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          BodyWithXmlNameInputOutput,
          [FullType(BodyWithXmlNameInputOutput)],
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

  _i3.Future<_i4.Response> endpointWithHostLabelHeaderOperation(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _endpointWithHostLabelHeaderOperationProtocol.contentType;
    try {
      final payload = (await _endpointWithHostLabelHeaderOperationProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(HostLabelHeaderInputPayload),
      ) as HostLabelHeaderInputPayload);
      final input = HostLabelHeaderInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.endpointWithHostLabelHeaderOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _endpointWithHostLabelHeaderOperationProtocol
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

  _i3.Future<_i4.Response> flattenedXmlMap(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _flattenedXmlMapProtocol.contentType;
    try {
      final payload =
          (await _flattenedXmlMapProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(FlattenedXmlMapInputOutput),
      ) as FlattenedXmlMapInputOutput);
      final input = FlattenedXmlMapInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.flattenedXmlMap(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _flattenedXmlMapProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          FlattenedXmlMapInputOutput,
          [FullType(FlattenedXmlMapInputOutput)],
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

  _i3.Future<_i4.Response> flattenedXmlMapWithXmlName(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _flattenedXmlMapWithXmlNameProtocol.contentType;
    try {
      final payload =
          (await _flattenedXmlMapWithXmlNameProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(FlattenedXmlMapWithXmlNameInputOutput),
      ) as FlattenedXmlMapWithXmlNameInputOutput);
      final input = FlattenedXmlMapWithXmlNameInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.flattenedXmlMapWithXmlName(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _flattenedXmlMapWithXmlNameProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          FlattenedXmlMapWithXmlNameInputOutput,
          [FullType(FlattenedXmlMapWithXmlNameInputOutput)],
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

  _i3.Future<_i4.Response> flattenedXmlMapWithXmlNamespace(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _flattenedXmlMapWithXmlNamespaceProtocol.contentType;
    try {
      final payload = (await _flattenedXmlMapWithXmlNamespaceProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.flattenedXmlMapWithXmlNamespace(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _flattenedXmlMapWithXmlNamespaceProtocol.wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          FlattenedXmlMapWithXmlNamespaceOutput,
          [FullType(FlattenedXmlMapWithXmlNamespaceOutput)],
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

  _i3.Future<_i4.Response> httpPayloadTraits(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadTraitsProtocol.contentType;
    try {
      final payload =
          (await _httpPayloadTraitsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i5.Uint8List),
      ) as _i5.Uint8List?);
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
          [FullType.nullable(_i5.Uint8List)],
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
        specifiedType: const FullType.nullable(_i5.Uint8List),
      ) as _i5.Uint8List?);
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
          [FullType.nullable(_i5.Uint8List)],
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

  _i3.Future<_i4.Response> httpPayloadWithMemberXmlName(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithMemberXmlNameProtocol.contentType;
    try {
      final payload = (await _httpPayloadWithMemberXmlNameProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(PayloadWithXmlName),
      ) as PayloadWithXmlName?);
      final input = HttpPayloadWithMemberXmlNameInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPayloadWithMemberXmlName(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _httpPayloadWithMemberXmlNameProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          HttpPayloadWithMemberXmlNameInputOutput,
          [FullType.nullable(PayloadWithXmlName)],
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

  _i3.Future<_i4.Response> httpPayloadWithXmlName(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithXmlNameProtocol.contentType;
    try {
      final payload =
          (await _httpPayloadWithXmlNameProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(PayloadWithXmlName),
      ) as PayloadWithXmlName?);
      final input = HttpPayloadWithXmlNameInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPayloadWithXmlName(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _httpPayloadWithXmlNameProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          HttpPayloadWithXmlNameInputOutput,
          [FullType.nullable(PayloadWithXmlName)],
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

  _i3.Future<_i4.Response> httpPayloadWithXmlNamespace(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithXmlNamespaceProtocol.contentType;
    try {
      final payload = (await _httpPayloadWithXmlNamespaceProtocol.wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(PayloadWithXmlNamespace),
      ) as PayloadWithXmlNamespace?);
      final input = HttpPayloadWithXmlNamespaceInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPayloadWithXmlNamespace(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _httpPayloadWithXmlNamespaceProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          HttpPayloadWithXmlNamespaceInputOutput,
          [FullType.nullable(PayloadWithXmlNamespace)],
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

  _i3.Future<_i4.Response> httpPayloadWithXmlNamespaceAndPrefix(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithXmlNamespaceAndPrefixProtocol.contentType;
    try {
      final payload = (await _httpPayloadWithXmlNamespaceAndPrefixProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType.nullable(PayloadWithXmlNamespaceAndPrefix),
      ) as PayloadWithXmlNamespaceAndPrefix?);
      final input = HttpPayloadWithXmlNamespaceAndPrefixInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPayloadWithXmlNamespaceAndPrefix(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _httpPayloadWithXmlNamespaceAndPrefixProtocol
          .wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          HttpPayloadWithXmlNamespaceAndPrefixInputOutput,
          [FullType.nullable(PayloadWithXmlNamespaceAndPrefix)],
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
        specifiedType: const FullType(HttpPrefixHeadersInputOutputPayload),
      ) as HttpPrefixHeadersInputOutputPayload);
      final input = HttpPrefixHeadersInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPrefixHeaders(
        input,
        context,
      );
      if (output.foo != null) {
        context.response.headers['X-Foo'] = output.foo!;
      }
      const statusCode = 200;
      final body = await _httpPrefixHeadersProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          HttpPrefixHeadersInputOutput,
          [FullType(HttpPrefixHeadersInputOutputPayload)],
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

  _i3.Future<_i4.Response> nestedXmlMaps(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nestedXmlMapsProtocol.contentType;
    try {
      final payload = (await _nestedXmlMapsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(NestedXmlMapsInputOutput),
      ) as NestedXmlMapsInputOutput);
      final input = NestedXmlMapsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.nestedXmlMaps(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _nestedXmlMapsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          NestedXmlMapsInputOutput,
          [FullType(NestedXmlMapsInputOutput)],
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

  _i3.Future<_i4.Response> xmlAttributes(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlAttributesProtocol.contentType;
    try {
      final payload = (await _xmlAttributesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(XmlAttributesInputOutput),
      ) as XmlAttributesInputOutput);
      final input = XmlAttributesInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlAttributes(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _xmlAttributesProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          XmlAttributesInputOutput,
          [FullType(XmlAttributesInputOutput)],
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

  _i3.Future<_i4.Response> xmlAttributesOnPayload(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlAttributesOnPayloadProtocol.contentType;
    try {
      final payload =
          (await _xmlAttributesOnPayloadProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(XmlAttributesInputOutput),
      ) as XmlAttributesInputOutput?);
      final input = XmlAttributesOnPayloadInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlAttributesOnPayload(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _xmlAttributesOnPayloadProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          XmlAttributesOnPayloadInputOutput,
          [FullType.nullable(XmlAttributesInputOutput)],
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

  _i3.Future<_i4.Response> xmlBlobs(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlBlobsProtocol.contentType;
    try {
      final payload = (await _xmlBlobsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(XmlBlobsInputOutput),
      ) as XmlBlobsInputOutput);
      final input = XmlBlobsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlBlobs(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _xmlBlobsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          XmlBlobsInputOutput,
          [FullType(XmlBlobsInputOutput)],
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

  _i3.Future<_i4.Response> xmlEmptyBlobs(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlEmptyBlobsProtocol.contentType;
    try {
      final payload = (await _xmlEmptyBlobsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(XmlBlobsInputOutput),
      ) as XmlBlobsInputOutput);
      final input = XmlBlobsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlEmptyBlobs(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _xmlEmptyBlobsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          XmlBlobsInputOutput,
          [FullType(XmlBlobsInputOutput)],
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

  _i3.Future<_i4.Response> xmlEmptyLists(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlEmptyListsProtocol.contentType;
    try {
      final payload = (await _xmlEmptyListsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(XmlListsInputOutput),
      ) as XmlListsInputOutput);
      final input = XmlListsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlEmptyLists(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _xmlEmptyListsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          XmlListsInputOutput,
          [FullType(XmlListsInputOutput)],
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

  _i3.Future<_i4.Response> xmlEmptyMaps(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlEmptyMapsProtocol.contentType;
    try {
      final payload = (await _xmlEmptyMapsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(XmlMapsInputOutput),
      ) as XmlMapsInputOutput);
      final input = XmlMapsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlEmptyMaps(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _xmlEmptyMapsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          XmlMapsInputOutput,
          [FullType(XmlMapsInputOutput)],
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

  _i3.Future<_i4.Response> xmlEmptyStrings(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlEmptyStringsProtocol.contentType;
    try {
      final payload =
          (await _xmlEmptyStringsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(XmlEmptyStringsInputOutput),
      ) as XmlEmptyStringsInputOutput);
      final input = XmlEmptyStringsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlEmptyStrings(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _xmlEmptyStringsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          XmlEmptyStringsInputOutput,
          [FullType(XmlEmptyStringsInputOutput)],
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

  _i3.Future<_i4.Response> xmlEnums(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlEnumsProtocol.contentType;
    try {
      final payload = (await _xmlEnumsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(XmlEnumsInputOutput),
      ) as XmlEnumsInputOutput);
      final input = XmlEnumsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlEnums(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _xmlEnumsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          XmlEnumsInputOutput,
          [FullType(XmlEnumsInputOutput)],
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

  _i3.Future<_i4.Response> xmlIntEnums(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlIntEnumsProtocol.contentType;
    try {
      final payload = (await _xmlIntEnumsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(XmlIntEnumsInputOutput),
      ) as XmlIntEnumsInputOutput);
      final input = XmlIntEnumsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlIntEnums(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _xmlIntEnumsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          XmlIntEnumsInputOutput,
          [FullType(XmlIntEnumsInputOutput)],
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

  _i3.Future<_i4.Response> xmlLists(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlListsProtocol.contentType;
    try {
      final payload = (await _xmlListsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(XmlListsInputOutput),
      ) as XmlListsInputOutput);
      final input = XmlListsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlLists(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _xmlListsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          XmlListsInputOutput,
          [FullType(XmlListsInputOutput)],
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

  _i3.Future<_i4.Response> xmlMaps(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlMapsProtocol.contentType;
    try {
      final payload = (await _xmlMapsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(XmlMapsInputOutput),
      ) as XmlMapsInputOutput);
      final input = XmlMapsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlMaps(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _xmlMapsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          XmlMapsInputOutput,
          [FullType(XmlMapsInputOutput)],
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

  _i3.Future<_i4.Response> xmlMapsXmlName(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlMapsXmlNameProtocol.contentType;
    try {
      final payload = (await _xmlMapsXmlNameProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(XmlMapsXmlNameInputOutput),
      ) as XmlMapsXmlNameInputOutput);
      final input = XmlMapsXmlNameInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlMapsXmlName(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _xmlMapsXmlNameProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          XmlMapsXmlNameInputOutput,
          [FullType(XmlMapsXmlNameInputOutput)],
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

  _i3.Future<_i4.Response> xmlNamespaces(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlNamespacesProtocol.contentType;
    try {
      final payload = (await _xmlNamespacesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(XmlNamespacesInputOutput),
      ) as XmlNamespacesInputOutput);
      final input = XmlNamespacesInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlNamespaces(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _xmlNamespacesProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          XmlNamespacesInputOutput,
          [FullType(XmlNamespacesInputOutput)],
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

  _i3.Future<_i4.Response> xmlTimestamps(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlTimestampsProtocol.contentType;
    try {
      final payload = (await _xmlTimestampsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(XmlTimestampsInputOutput),
      ) as XmlTimestampsInputOutput);
      final input = XmlTimestampsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlTimestamps(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _xmlTimestampsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          XmlTimestampsInputOutput,
          [FullType(XmlTimestampsInputOutput)],
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

  _i3.Future<_i4.Response> xmlUnions(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlUnionsProtocol.contentType;
    try {
      final payload = (await _xmlUnionsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(XmlUnionsInputOutput),
      ) as XmlUnionsInputOutput);
      final input = XmlUnionsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlUnions(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _xmlUnionsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          XmlUnionsInputOutput,
          [FullType(XmlUnionsInputOutput)],
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
