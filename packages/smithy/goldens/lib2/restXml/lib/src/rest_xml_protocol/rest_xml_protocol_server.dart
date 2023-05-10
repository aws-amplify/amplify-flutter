// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v2.rest_xml_protocol.rest_xml_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;
import 'dart:typed_data' as _i57;

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/common/serializers.dart'
    as _i3;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/all_query_string_types_input.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/body_with_xml_name_input_output.dart'
    as _i6;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/complex_error.dart'
    as _i62;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/constant_and_variable_query_string_input.dart'
    as _i7;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/constant_query_string_input.dart'
    as _i8;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/datetime_offsets_output.dart'
    as _i9;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/empty_input_and_empty_output_input.dart'
    as _i11;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/empty_input_and_empty_output_output.dart'
    as _i10;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/flattened_xml_map_input_output.dart'
    as _i14;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/flattened_xml_map_with_xml_name_input_output.dart'
    as _i15;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/flattened_xml_map_with_xml_namespace_output.dart'
    as _i16;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/fractional_seconds_output.dart'
    as _i17;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/greeting_with_errors_output.dart'
    as _i18;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/host_label_header_input.dart'
    as _i12;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/host_label_input.dart'
    as _i13;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_traits_input_output.dart'
    as _i19;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_traits_with_media_type_input_output.dart'
    as _i20;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_member_xml_name_input_output.dart'
    as _i21;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_structure_input_output.dart'
    as _i22;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_xml_name_input_output.dart'
    as _i23;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_xml_namespace_and_prefix_input_output.dart'
    as _i25;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_xml_namespace_input_output.dart'
    as _i24;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_prefix_headers_input_output.dart'
    as _i26;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_float_labels_input.dart'
    as _i27;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_greedy_label_in_path_input.dart'
    as _i28;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_labels_and_timestamp_format_input.dart'
    as _i30;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_labels_input.dart'
    as _i29;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_response_code_output.dart'
    as _i31;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/ignore_query_params_in_response_output.dart'
    as _i32;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/input_and_output_with_headers_io.dart'
    as _i33;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/invalid_greeting.dart'
    as _i63;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/nested_payload.dart'
    as _i59;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/nested_xml_maps_input_output.dart'
    as _i34;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/no_input_and_output_output.dart'
    as _i35;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/null_and_empty_headers_io.dart'
    as _i36;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/omits_null_serializes_empty_string_input.dart'
    as _i37;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/payload_with_xml_name.dart'
    as _i58;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/payload_with_xml_namespace.dart'
    as _i60;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/payload_with_xml_namespace_and_prefix.dart'
    as _i61;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/query_idempotency_token_auto_fill_input.dart'
    as _i38;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/query_params_as_string_list_map_input.dart'
    as _i39;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/query_precedence_input.dart'
    as _i40;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/recursive_shapes_input_output.dart'
    as _i41;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/simple_scalar_properties_input_output.dart'
    as _i42;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/timestamp_format_headers_io.dart'
    as _i43;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_attributes_input_output.dart'
    as _i44;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_attributes_on_payload_input_output.dart'
    as _i45;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_blobs_input_output.dart'
    as _i46;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_empty_strings_input_output.dart'
    as _i49;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_enums_input_output.dart'
    as _i50;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_int_enums_input_output.dart'
    as _i51;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_lists_input_output.dart'
    as _i47;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_maps_input_output.dart'
    as _i48;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_maps_xml_name_input_output.dart'
    as _i52;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_namespaces_input_output.dart'
    as _i53;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_timestamps_input_output.dart'
    as _i54;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_unions_input_output.dart'
    as _i55;
import 'package:shelf/shelf.dart' as _i56;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class RestXmlProtocolServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
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

  _i4.Future<_i1.Unit> allQueryStringTypes(
    _i5.AllQueryStringTypesInput input,
    _i1.Context context,
  );
  _i4.Future<_i6.BodyWithXmlNameInputOutput> bodyWithXmlName(
    _i6.BodyWithXmlNameInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> constantAndVariableQueryString(
    _i7.ConstantAndVariableQueryStringInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> constantQueryString(
    _i8.ConstantQueryStringInput input,
    _i1.Context context,
  );
  _i4.Future<_i9.DatetimeOffsetsOutput> datetimeOffsets(
    _i1.Unit input,
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
  _i4.Future<_i1.Unit> endpointWithHostLabelHeaderOperation(
    _i12.HostLabelHeaderInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> endpointWithHostLabelOperation(
    _i13.HostLabelInput input,
    _i1.Context context,
  );
  _i4.Future<_i14.FlattenedXmlMapInputOutput> flattenedXmlMap(
    _i14.FlattenedXmlMapInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i15.FlattenedXmlMapWithXmlNameInputOutput>
      flattenedXmlMapWithXmlName(
    _i15.FlattenedXmlMapWithXmlNameInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i16.FlattenedXmlMapWithXmlNamespaceOutput>
      flattenedXmlMapWithXmlNamespace(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i17.FractionalSecondsOutput> fractionalSeconds(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i18.GreetingWithErrorsOutput> greetingWithErrors(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i19.HttpPayloadTraitsInputOutput> httpPayloadTraits(
    _i19.HttpPayloadTraitsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i20.HttpPayloadTraitsWithMediaTypeInputOutput>
      httpPayloadTraitsWithMediaType(
    _i20.HttpPayloadTraitsWithMediaTypeInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i21.HttpPayloadWithMemberXmlNameInputOutput>
      httpPayloadWithMemberXmlName(
    _i21.HttpPayloadWithMemberXmlNameInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i22.HttpPayloadWithStructureInputOutput> httpPayloadWithStructure(
    _i22.HttpPayloadWithStructureInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i23.HttpPayloadWithXmlNameInputOutput> httpPayloadWithXmlName(
    _i23.HttpPayloadWithXmlNameInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i24.HttpPayloadWithXmlNamespaceInputOutput>
      httpPayloadWithXmlNamespace(
    _i24.HttpPayloadWithXmlNamespaceInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i25.HttpPayloadWithXmlNamespaceAndPrefixInputOutput>
      httpPayloadWithXmlNamespaceAndPrefix(
    _i25.HttpPayloadWithXmlNamespaceAndPrefixInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i26.HttpPrefixHeadersInputOutput> httpPrefixHeaders(
    _i26.HttpPrefixHeadersInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpRequestWithFloatLabels(
    _i27.HttpRequestWithFloatLabelsInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpRequestWithGreedyLabelInPath(
    _i28.HttpRequestWithGreedyLabelInPathInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpRequestWithLabels(
    _i29.HttpRequestWithLabelsInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpRequestWithLabelsAndTimestampFormat(
    _i30.HttpRequestWithLabelsAndTimestampFormatInput input,
    _i1.Context context,
  );
  _i4.Future<_i31.HttpResponseCodeOutput> httpResponseCode(
    _i1.Unit input,
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
  _i4.Future<_i34.NestedXmlMapsInputOutput> nestedXmlMaps(
    _i34.NestedXmlMapsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> noInputAndNoOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i35.NoInputAndOutputOutput> noInputAndOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i36.NullAndEmptyHeadersIo> nullAndEmptyHeadersClient(
    _i36.NullAndEmptyHeadersIo input,
    _i1.Context context,
  );
  _i4.Future<_i36.NullAndEmptyHeadersIo> nullAndEmptyHeadersServer(
    _i36.NullAndEmptyHeadersIo input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> omitsNullSerializesEmptyString(
    _i37.OmitsNullSerializesEmptyStringInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> queryIdempotencyTokenAutoFill(
    _i38.QueryIdempotencyTokenAutoFillInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> queryParamsAsStringListMap(
    _i39.QueryParamsAsStringListMapInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> queryPrecedence(
    _i40.QueryPrecedenceInput input,
    _i1.Context context,
  );
  _i4.Future<_i41.RecursiveShapesInputOutput> recursiveShapes(
    _i41.RecursiveShapesInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i42.SimpleScalarPropertiesInputOutput> simpleScalarProperties(
    _i42.SimpleScalarPropertiesInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i43.TimestampFormatHeadersIo> timestampFormatHeaders(
    _i43.TimestampFormatHeadersIo input,
    _i1.Context context,
  );
  _i4.Future<_i44.XmlAttributesInputOutput> xmlAttributes(
    _i44.XmlAttributesInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i45.XmlAttributesOnPayloadInputOutput> xmlAttributesOnPayload(
    _i45.XmlAttributesOnPayloadInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i46.XmlBlobsInputOutput> xmlBlobs(
    _i46.XmlBlobsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i46.XmlBlobsInputOutput> xmlEmptyBlobs(
    _i46.XmlBlobsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i47.XmlListsInputOutput> xmlEmptyLists(
    _i47.XmlListsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i48.XmlMapsInputOutput> xmlEmptyMaps(
    _i48.XmlMapsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i49.XmlEmptyStringsInputOutput> xmlEmptyStrings(
    _i49.XmlEmptyStringsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i50.XmlEnumsInputOutput> xmlEnums(
    _i50.XmlEnumsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i51.XmlIntEnumsInputOutput> xmlIntEnums(
    _i51.XmlIntEnumsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i47.XmlListsInputOutput> xmlLists(
    _i47.XmlListsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i48.XmlMapsInputOutput> xmlMaps(
    _i48.XmlMapsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i52.XmlMapsXmlNameInputOutput> xmlMapsXmlName(
    _i52.XmlMapsXmlNameInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i53.XmlNamespacesInputOutput> xmlNamespaces(
    _i53.XmlNamespacesInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i54.XmlTimestampsInputOutput> xmlTimestamps(
    _i54.XmlTimestampsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i55.XmlUnionsInputOutput> xmlUnions(
    _i55.XmlUnionsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i56.Response> call(_i56.Request request) => _router(request);
}

class _RestXmlProtocolServer extends _i1.HttpServer<RestXmlProtocolServerBase> {
  _RestXmlProtocolServer(this.service);

  @override
  final RestXmlProtocolServerBase service;

  late final _i1.HttpProtocol<
      _i5.AllQueryStringTypesInputPayload,
      _i5.AllQueryStringTypesInput,
      _i1.Unit,
      _i1.Unit> _allQueryStringTypesProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i6.BodyWithXmlNameInputOutput,
          _i6.BodyWithXmlNameInputOutput,
          _i6.BodyWithXmlNameInputOutput,
          _i6.BodyWithXmlNameInputOutput> _bodyWithXmlNameProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i7.ConstantAndVariableQueryStringInputPayload,
      _i7.ConstantAndVariableQueryStringInput,
      _i1.Unit,
      _i1.Unit> _constantAndVariableQueryStringProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i8.ConstantQueryStringInputPayload,
      _i8.ConstantQueryStringInput,
      _i1.Unit,
      _i1.Unit> _constantQueryStringProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i9.DatetimeOffsetsOutput,
      _i9.DatetimeOffsetsOutput> _datetimeOffsetsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i11.EmptyInputAndEmptyOutputInput,
          _i11.EmptyInputAndEmptyOutputInput,
          _i10.EmptyInputAndEmptyOutputOutput,
          _i10.EmptyInputAndEmptyOutputOutput>
      _emptyInputAndEmptyOutputProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _endpointOperationProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i12.HostLabelHeaderInputPayload,
          _i12.HostLabelHeaderInput, _i1.Unit, _i1.Unit>
      _endpointWithHostLabelHeaderOperationProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i13.HostLabelInput,
      _i13.HostLabelInput,
      _i1.Unit,
      _i1.Unit> _endpointWithHostLabelOperationProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i14.FlattenedXmlMapInputOutput,
          _i14.FlattenedXmlMapInputOutput,
          _i14.FlattenedXmlMapInputOutput,
          _i14.FlattenedXmlMapInputOutput> _flattenedXmlMapProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i15.FlattenedXmlMapWithXmlNameInputOutput,
          _i15.FlattenedXmlMapWithXmlNameInputOutput,
          _i15.FlattenedXmlMapWithXmlNameInputOutput,
          _i15.FlattenedXmlMapWithXmlNameInputOutput>
      _flattenedXmlMapWithXmlNameProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i1.Unit,
          _i1.Unit,
          _i16.FlattenedXmlMapWithXmlNamespaceOutput,
          _i16.FlattenedXmlMapWithXmlNamespaceOutput>
      _flattenedXmlMapWithXmlNamespaceProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i17.FractionalSecondsOutput,
          _i17.FractionalSecondsOutput> _fractionalSecondsProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit,
          _i18.GreetingWithErrorsOutputPayload, _i18.GreetingWithErrorsOutput>
      _greetingWithErrorsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i57.Uint8List, _i19.HttpPayloadTraitsInputOutput,
          _i57.Uint8List, _i19.HttpPayloadTraitsInputOutput>
      _httpPayloadTraitsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i57.Uint8List,
          _i20.HttpPayloadTraitsWithMediaTypeInputOutput,
          _i57.Uint8List,
          _i20.HttpPayloadTraitsWithMediaTypeInputOutput>
      _httpPayloadTraitsWithMediaTypeProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    mediaType: 'text/plain',
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i58.PayloadWithXmlName,
          _i21.HttpPayloadWithMemberXmlNameInputOutput,
          _i58.PayloadWithXmlName,
          _i21.HttpPayloadWithMemberXmlNameInputOutput>
      _httpPayloadWithMemberXmlNameProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i59.NestedPayload,
          _i22.HttpPayloadWithStructureInputOutput,
          _i59.NestedPayload,
          _i22.HttpPayloadWithStructureInputOutput>
      _httpPayloadWithStructureProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i58.PayloadWithXmlName,
          _i23.HttpPayloadWithXmlNameInputOutput,
          _i58.PayloadWithXmlName,
          _i23.HttpPayloadWithXmlNameInputOutput>
      _httpPayloadWithXmlNameProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i60.PayloadWithXmlNamespace,
          _i24.HttpPayloadWithXmlNamespaceInputOutput,
          _i60.PayloadWithXmlNamespace,
          _i24.HttpPayloadWithXmlNamespaceInputOutput>
      _httpPayloadWithXmlNamespaceProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i61.PayloadWithXmlNamespaceAndPrefix,
          _i25.HttpPayloadWithXmlNamespaceAndPrefixInputOutput,
          _i61.PayloadWithXmlNamespaceAndPrefix,
          _i25.HttpPayloadWithXmlNamespaceAndPrefixInputOutput>
      _httpPayloadWithXmlNamespaceAndPrefixProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i26.HttpPrefixHeadersInputOutputPayload,
          _i26.HttpPrefixHeadersInputOutput,
          _i26.HttpPrefixHeadersInputOutputPayload,
          _i26.HttpPrefixHeadersInputOutput> _httpPrefixHeadersProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i27.HttpRequestWithFloatLabelsInputPayload,
      _i27.HttpRequestWithFloatLabelsInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithFloatLabelsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i28.HttpRequestWithGreedyLabelInPathInputPayload,
      _i28.HttpRequestWithGreedyLabelInPathInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithGreedyLabelInPathProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i29.HttpRequestWithLabelsInputPayload,
      _i29.HttpRequestWithLabelsInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithLabelsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i30.HttpRequestWithLabelsAndTimestampFormatInputPayload,
          _i30.HttpRequestWithLabelsAndTimestampFormatInput,
          _i1.Unit,
          _i1.Unit> _httpRequestWithLabelsAndTimestampFormatProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit,
          _i31.HttpResponseCodeOutputPayload, _i31.HttpResponseCodeOutput>
      _httpResponseCodeProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i1.Unit,
          _i1.Unit,
          _i32.IgnoreQueryParamsInResponseOutput,
          _i32.IgnoreQueryParamsInResponseOutput>
      _ignoreQueryParamsInResponseProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i33.InputAndOutputWithHeadersIoPayload,
          _i33.InputAndOutputWithHeadersIo,
          _i33.InputAndOutputWithHeadersIoPayload,
          _i33.InputAndOutputWithHeadersIo> _inputAndOutputWithHeadersProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i34.NestedXmlMapsInputOutput,
          _i34.NestedXmlMapsInputOutput,
          _i34.NestedXmlMapsInputOutput,
          _i34.NestedXmlMapsInputOutput> _nestedXmlMapsProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _noInputAndNoOutputProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i35.NoInputAndOutputOutput,
          _i35.NoInputAndOutputOutput> _noInputAndOutputProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i36.NullAndEmptyHeadersIoPayload,
          _i36.NullAndEmptyHeadersIo,
          _i36.NullAndEmptyHeadersIoPayload,
          _i36.NullAndEmptyHeadersIo> _nullAndEmptyHeadersClientProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i36.NullAndEmptyHeadersIoPayload,
          _i36.NullAndEmptyHeadersIo,
          _i36.NullAndEmptyHeadersIoPayload,
          _i36.NullAndEmptyHeadersIo> _nullAndEmptyHeadersServerProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i37.OmitsNullSerializesEmptyStringInputPayload,
      _i37.OmitsNullSerializesEmptyStringInput,
      _i1.Unit,
      _i1.Unit> _omitsNullSerializesEmptyStringProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i38.QueryIdempotencyTokenAutoFillInputPayload,
      _i38.QueryIdempotencyTokenAutoFillInput,
      _i1.Unit,
      _i1.Unit> _queryIdempotencyTokenAutoFillProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i39.QueryParamsAsStringListMapInputPayload,
      _i39.QueryParamsAsStringListMapInput,
      _i1.Unit,
      _i1.Unit> _queryParamsAsStringListMapProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i40.QueryPrecedenceInputPayload,
      _i40.QueryPrecedenceInput,
      _i1.Unit,
      _i1.Unit> _queryPrecedenceProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i41.RecursiveShapesInputOutput,
          _i41.RecursiveShapesInputOutput,
          _i41.RecursiveShapesInputOutput,
          _i41.RecursiveShapesInputOutput> _recursiveShapesProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i42.SimpleScalarPropertiesInputOutputPayload,
          _i42.SimpleScalarPropertiesInputOutput,
          _i42.SimpleScalarPropertiesInputOutputPayload,
          _i42.SimpleScalarPropertiesInputOutput>
      _simpleScalarPropertiesProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i43.TimestampFormatHeadersIoPayload,
          _i43.TimestampFormatHeadersIo,
          _i43.TimestampFormatHeadersIoPayload,
          _i43.TimestampFormatHeadersIo> _timestampFormatHeadersProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i44.XmlAttributesInputOutput,
          _i44.XmlAttributesInputOutput,
          _i44.XmlAttributesInputOutput,
          _i44.XmlAttributesInputOutput> _xmlAttributesProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i44.XmlAttributesInputOutput,
          _i45.XmlAttributesOnPayloadInputOutput,
          _i44.XmlAttributesInputOutput,
          _i45.XmlAttributesOnPayloadInputOutput>
      _xmlAttributesOnPayloadProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i46.XmlBlobsInputOutput,
      _i46.XmlBlobsInputOutput,
      _i46.XmlBlobsInputOutput,
      _i46.XmlBlobsInputOutput> _xmlBlobsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i46.XmlBlobsInputOutput,
      _i46.XmlBlobsInputOutput,
      _i46.XmlBlobsInputOutput,
      _i46.XmlBlobsInputOutput> _xmlEmptyBlobsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i47.XmlListsInputOutput,
      _i47.XmlListsInputOutput,
      _i47.XmlListsInputOutput,
      _i47.XmlListsInputOutput> _xmlEmptyListsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i48.XmlMapsInputOutput,
      _i48.XmlMapsInputOutput,
      _i48.XmlMapsInputOutput,
      _i48.XmlMapsInputOutput> _xmlEmptyMapsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i49.XmlEmptyStringsInputOutput,
          _i49.XmlEmptyStringsInputOutput,
          _i49.XmlEmptyStringsInputOutput,
          _i49.XmlEmptyStringsInputOutput> _xmlEmptyStringsProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i50.XmlEnumsInputOutput,
      _i50.XmlEnumsInputOutput,
      _i50.XmlEnumsInputOutput,
      _i50.XmlEnumsInputOutput> _xmlEnumsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i51.XmlIntEnumsInputOutput,
      _i51.XmlIntEnumsInputOutput,
      _i51.XmlIntEnumsInputOutput,
      _i51.XmlIntEnumsInputOutput> _xmlIntEnumsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i47.XmlListsInputOutput,
      _i47.XmlListsInputOutput,
      _i47.XmlListsInputOutput,
      _i47.XmlListsInputOutput> _xmlListsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i48.XmlMapsInputOutput,
      _i48.XmlMapsInputOutput,
      _i48.XmlMapsInputOutput,
      _i48.XmlMapsInputOutput> _xmlMapsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i52.XmlMapsXmlNameInputOutput,
          _i52.XmlMapsXmlNameInputOutput,
          _i52.XmlMapsXmlNameInputOutput,
          _i52.XmlMapsXmlNameInputOutput> _xmlMapsXmlNameProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i53.XmlNamespacesInputOutput,
          _i53.XmlNamespacesInputOutput,
          _i53.XmlNamespacesInputOutput,
          _i53.XmlNamespacesInputOutput> _xmlNamespacesProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i54.XmlTimestampsInputOutput,
          _i54.XmlTimestampsInputOutput,
          _i54.XmlTimestampsInputOutput,
          _i54.XmlTimestampsInputOutput> _xmlTimestampsProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i55.XmlUnionsInputOutput,
      _i55.XmlUnionsInputOutput,
      _i55.XmlUnionsInputOutput,
      _i55.XmlUnionsInputOutput> _xmlUnionsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  _i4.Future<_i56.Response> allQueryStringTypes(_i56.Request request) async {
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> bodyWithXmlName(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _bodyWithXmlNameProtocol.contentType;
    try {
      final payload =
          (await _bodyWithXmlNameProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i6.BodyWithXmlNameInputOutput),
      ) as _i6.BodyWithXmlNameInputOutput);
      final input = _i6.BodyWithXmlNameInputOutput.fromRequest(
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
          _i6.BodyWithXmlNameInputOutput,
          [FullType(_i6.BodyWithXmlNameInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> constantAndVariableQueryString(
      _i56.Request request) async {
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
            const FullType(_i7.ConstantAndVariableQueryStringInputPayload),
      ) as _i7.ConstantAndVariableQueryStringInputPayload);
      final input = _i7.ConstantAndVariableQueryStringInput.fromRequest(
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> constantQueryString(
    _i56.Request request,
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
        specifiedType: const FullType(_i8.ConstantQueryStringInputPayload),
      ) as _i8.ConstantQueryStringInputPayload);
      final input = _i8.ConstantQueryStringInput.fromRequest(
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> datetimeOffsets(_i56.Request request) async {
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
          _i9.DatetimeOffsetsOutput,
          [FullType(_i9.DatetimeOffsetsOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> emptyInputAndEmptyOutput(
      _i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _emptyInputAndEmptyOutputProtocol.contentType;
    try {
      final payload =
          (await _emptyInputAndEmptyOutputProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
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
      final body =
          await _emptyInputAndEmptyOutputProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i10.EmptyInputAndEmptyOutputOutput,
          [FullType(_i10.EmptyInputAndEmptyOutputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> endpointOperation(_i56.Request request) async {
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> endpointWithHostLabelHeaderOperation(
      _i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _endpointWithHostLabelHeaderOperationProtocol.contentType;
    try {
      final payload = (await _endpointWithHostLabelHeaderOperationProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i12.HostLabelHeaderInputPayload),
      ) as _i12.HostLabelHeaderInputPayload);
      final input = _i12.HostLabelHeaderInput.fromRequest(
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> endpointWithHostLabelOperation(
      _i56.Request request) async {
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> flattenedXmlMap(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _flattenedXmlMapProtocol.contentType;
    try {
      final payload =
          (await _flattenedXmlMapProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i14.FlattenedXmlMapInputOutput),
      ) as _i14.FlattenedXmlMapInputOutput);
      final input = _i14.FlattenedXmlMapInputOutput.fromRequest(
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
          _i14.FlattenedXmlMapInputOutput,
          [FullType(_i14.FlattenedXmlMapInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> flattenedXmlMapWithXmlName(
      _i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _flattenedXmlMapWithXmlNameProtocol.contentType;
    try {
      final payload =
          (await _flattenedXmlMapWithXmlNameProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i15.FlattenedXmlMapWithXmlNameInputOutput),
      ) as _i15.FlattenedXmlMapWithXmlNameInputOutput);
      final input = _i15.FlattenedXmlMapWithXmlNameInputOutput.fromRequest(
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
          _i15.FlattenedXmlMapWithXmlNameInputOutput,
          [FullType(_i15.FlattenedXmlMapWithXmlNameInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> flattenedXmlMapWithXmlNamespace(
      _i56.Request request) async {
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
          _i16.FlattenedXmlMapWithXmlNamespaceOutput,
          [FullType(_i16.FlattenedXmlMapWithXmlNamespaceOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> fractionalSeconds(_i56.Request request) async {
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
          _i17.FractionalSecondsOutput,
          [FullType(_i17.FractionalSecondsOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> greetingWithErrors(_i56.Request request) async {
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
          _i18.GreetingWithErrorsOutput,
          [FullType(_i18.GreetingWithErrorsOutputPayload)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i62.ComplexError catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ComplexError';
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          _i62.ComplexError,
          [FullType(_i62.ComplexErrorPayload)],
        ),
      );
      const statusCode = 403;
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i63.InvalidGreeting catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'InvalidGreeting';
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          _i63.InvalidGreeting,
          [FullType(_i63.InvalidGreeting)],
        ),
      );
      const statusCode = 400;
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> httpPayloadTraits(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadTraitsProtocol.contentType;
    try {
      final payload =
          (await _httpPayloadTraitsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i57.Uint8List),
      ) as _i57.Uint8List?);
      final input = _i19.HttpPayloadTraitsInputOutput.fromRequest(
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
          _i19.HttpPayloadTraitsInputOutput,
          [FullType.nullable(_i57.Uint8List)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> httpPayloadTraitsWithMediaType(
      _i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadTraitsWithMediaTypeProtocol.contentType;
    try {
      final payload = (await _httpPayloadTraitsWithMediaTypeProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i57.Uint8List),
      ) as _i57.Uint8List?);
      final input = _i20.HttpPayloadTraitsWithMediaTypeInputOutput.fromRequest(
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
          _i20.HttpPayloadTraitsWithMediaTypeInputOutput,
          [FullType.nullable(_i57.Uint8List)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> httpPayloadWithMemberXmlName(
      _i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithMemberXmlNameProtocol.contentType;
    try {
      final payload = (await _httpPayloadWithMemberXmlNameProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i58.PayloadWithXmlName),
      ) as _i58.PayloadWithXmlName?);
      final input = _i21.HttpPayloadWithMemberXmlNameInputOutput.fromRequest(
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
          _i21.HttpPayloadWithMemberXmlNameInputOutput,
          [FullType.nullable(_i58.PayloadWithXmlName)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> httpPayloadWithStructure(
      _i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithStructureProtocol.contentType;
    try {
      final payload =
          (await _httpPayloadWithStructureProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i59.NestedPayload),
      ) as _i59.NestedPayload?);
      final input = _i22.HttpPayloadWithStructureInputOutput.fromRequest(
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
          _i22.HttpPayloadWithStructureInputOutput,
          [FullType.nullable(_i59.NestedPayload)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> httpPayloadWithXmlName(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithXmlNameProtocol.contentType;
    try {
      final payload =
          (await _httpPayloadWithXmlNameProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i58.PayloadWithXmlName),
      ) as _i58.PayloadWithXmlName?);
      final input = _i23.HttpPayloadWithXmlNameInputOutput.fromRequest(
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
          _i23.HttpPayloadWithXmlNameInputOutput,
          [FullType.nullable(_i58.PayloadWithXmlName)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> httpPayloadWithXmlNamespace(
      _i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithXmlNamespaceProtocol.contentType;
    try {
      final payload = (await _httpPayloadWithXmlNamespaceProtocol.wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i60.PayloadWithXmlNamespace),
      ) as _i60.PayloadWithXmlNamespace?);
      final input = _i24.HttpPayloadWithXmlNamespaceInputOutput.fromRequest(
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
          _i24.HttpPayloadWithXmlNamespaceInputOutput,
          [FullType.nullable(_i60.PayloadWithXmlNamespace)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> httpPayloadWithXmlNamespaceAndPrefix(
      _i56.Request request) async {
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
            const FullType.nullable(_i61.PayloadWithXmlNamespaceAndPrefix),
      ) as _i61.PayloadWithXmlNamespaceAndPrefix?);
      final input =
          _i25.HttpPayloadWithXmlNamespaceAndPrefixInputOutput.fromRequest(
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
          _i25.HttpPayloadWithXmlNamespaceAndPrefixInputOutput,
          [FullType.nullable(_i61.PayloadWithXmlNamespaceAndPrefix)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> httpPrefixHeaders(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPrefixHeadersProtocol.contentType;
    try {
      final payload =
          (await _httpPrefixHeadersProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i26.HttpPrefixHeadersInputOutputPayload),
      ) as _i26.HttpPrefixHeadersInputOutputPayload);
      final input = _i26.HttpPrefixHeadersInputOutput.fromRequest(
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
          _i26.HttpPrefixHeadersInputOutput,
          [FullType(_i26.HttpPrefixHeadersInputOutputPayload)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> httpRequestWithFloatLabels(
    _i56.Request request,
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
            const FullType(_i27.HttpRequestWithFloatLabelsInputPayload),
      ) as _i27.HttpRequestWithFloatLabelsInputPayload);
      final input = _i27.HttpRequestWithFloatLabelsInput.fromRequest(
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> httpRequestWithGreedyLabelInPath(
    _i56.Request request,
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
            const FullType(_i28.HttpRequestWithGreedyLabelInPathInputPayload),
      ) as _i28.HttpRequestWithGreedyLabelInPathInputPayload);
      final input = _i28.HttpRequestWithGreedyLabelInPathInput.fromRequest(
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> httpRequestWithLabels(
    _i56.Request request,
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
        specifiedType: const FullType(_i29.HttpRequestWithLabelsInputPayload),
      ) as _i29.HttpRequestWithLabelsInputPayload);
      final input = _i29.HttpRequestWithLabelsInput.fromRequest(
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> httpRequestWithLabelsAndTimestampFormat(
    _i56.Request request,
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
            _i30.HttpRequestWithLabelsAndTimestampFormatInputPayload),
      ) as _i30.HttpRequestWithLabelsAndTimestampFormatInputPayload);
      final input =
          _i30.HttpRequestWithLabelsAndTimestampFormatInput.fromRequest(
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> httpResponseCode(_i56.Request request) async {
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
          _i31.HttpResponseCodeOutput,
          [FullType(_i31.HttpResponseCodeOutputPayload)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> ignoreQueryParamsInResponse(
      _i56.Request request) async {
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> inputAndOutputWithHeaders(
      _i56.Request request) async {
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
      const statusCode = 200;
      final body =
          await _inputAndOutputWithHeadersProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i33.InputAndOutputWithHeadersIo,
          [FullType(_i33.InputAndOutputWithHeadersIoPayload)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> nestedXmlMaps(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nestedXmlMapsProtocol.contentType;
    try {
      final payload = (await _nestedXmlMapsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i34.NestedXmlMapsInputOutput),
      ) as _i34.NestedXmlMapsInputOutput);
      final input = _i34.NestedXmlMapsInputOutput.fromRequest(
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
          _i34.NestedXmlMapsInputOutput,
          [FullType(_i34.NestedXmlMapsInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> noInputAndNoOutput(_i56.Request request) async {
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> noInputAndOutput(_i56.Request request) async {
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
          _i35.NoInputAndOutputOutput,
          [FullType(_i35.NoInputAndOutputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> nullAndEmptyHeadersClient(
      _i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nullAndEmptyHeadersClientProtocol.contentType;
    try {
      final payload =
          (await _nullAndEmptyHeadersClientProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i36.NullAndEmptyHeadersIoPayload),
      ) as _i36.NullAndEmptyHeadersIoPayload);
      final input = _i36.NullAndEmptyHeadersIo.fromRequest(
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
          _i36.NullAndEmptyHeadersIo,
          [FullType(_i36.NullAndEmptyHeadersIoPayload)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> nullAndEmptyHeadersServer(
      _i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nullAndEmptyHeadersServerProtocol.contentType;
    try {
      final payload =
          (await _nullAndEmptyHeadersServerProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i36.NullAndEmptyHeadersIoPayload),
      ) as _i36.NullAndEmptyHeadersIoPayload);
      final input = _i36.NullAndEmptyHeadersIo.fromRequest(
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
          _i36.NullAndEmptyHeadersIo,
          [FullType(_i36.NullAndEmptyHeadersIoPayload)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> omitsNullSerializesEmptyString(
      _i56.Request request) async {
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
            const FullType(_i37.OmitsNullSerializesEmptyStringInputPayload),
      ) as _i37.OmitsNullSerializesEmptyStringInputPayload);
      final input = _i37.OmitsNullSerializesEmptyStringInput.fromRequest(
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> queryIdempotencyTokenAutoFill(
      _i56.Request request) async {
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
            const FullType(_i38.QueryIdempotencyTokenAutoFillInputPayload),
      ) as _i38.QueryIdempotencyTokenAutoFillInputPayload);
      final input = _i38.QueryIdempotencyTokenAutoFillInput.fromRequest(
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> queryParamsAsStringListMap(
      _i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _queryParamsAsStringListMapProtocol.contentType;
    try {
      final payload =
          (await _queryParamsAsStringListMapProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i39.QueryParamsAsStringListMapInputPayload),
      ) as _i39.QueryParamsAsStringListMapInputPayload);
      final input = _i39.QueryParamsAsStringListMapInput.fromRequest(
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> queryPrecedence(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _queryPrecedenceProtocol.contentType;
    try {
      final payload =
          (await _queryPrecedenceProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i40.QueryPrecedenceInputPayload),
      ) as _i40.QueryPrecedenceInputPayload);
      final input = _i40.QueryPrecedenceInput.fromRequest(
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
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> recursiveShapes(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _recursiveShapesProtocol.contentType;
    try {
      final payload =
          (await _recursiveShapesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i41.RecursiveShapesInputOutput),
      ) as _i41.RecursiveShapesInputOutput);
      final input = _i41.RecursiveShapesInputOutput.fromRequest(
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
          _i41.RecursiveShapesInputOutput,
          [FullType(_i41.RecursiveShapesInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> simpleScalarProperties(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _simpleScalarPropertiesProtocol.contentType;
    try {
      final payload =
          (await _simpleScalarPropertiesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i42.SimpleScalarPropertiesInputOutputPayload),
      ) as _i42.SimpleScalarPropertiesInputOutputPayload);
      final input = _i42.SimpleScalarPropertiesInputOutput.fromRequest(
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
          _i42.SimpleScalarPropertiesInputOutput,
          [FullType(_i42.SimpleScalarPropertiesInputOutputPayload)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> timestampFormatHeaders(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _timestampFormatHeadersProtocol.contentType;
    try {
      final payload =
          (await _timestampFormatHeadersProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i43.TimestampFormatHeadersIoPayload),
      ) as _i43.TimestampFormatHeadersIoPayload);
      final input = _i43.TimestampFormatHeadersIo.fromRequest(
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
          _i43.TimestampFormatHeadersIo,
          [FullType(_i43.TimestampFormatHeadersIoPayload)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> xmlAttributes(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlAttributesProtocol.contentType;
    try {
      final payload = (await _xmlAttributesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i44.XmlAttributesInputOutput),
      ) as _i44.XmlAttributesInputOutput);
      final input = _i44.XmlAttributesInputOutput.fromRequest(
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
          _i44.XmlAttributesInputOutput,
          [FullType(_i44.XmlAttributesInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> xmlAttributesOnPayload(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlAttributesOnPayloadProtocol.contentType;
    try {
      final payload =
          (await _xmlAttributesOnPayloadProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i44.XmlAttributesInputOutput),
      ) as _i44.XmlAttributesInputOutput?);
      final input = _i45.XmlAttributesOnPayloadInputOutput.fromRequest(
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
          _i45.XmlAttributesOnPayloadInputOutput,
          [FullType.nullable(_i44.XmlAttributesInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> xmlBlobs(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlBlobsProtocol.contentType;
    try {
      final payload = (await _xmlBlobsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i46.XmlBlobsInputOutput),
      ) as _i46.XmlBlobsInputOutput);
      final input = _i46.XmlBlobsInputOutput.fromRequest(
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
          _i46.XmlBlobsInputOutput,
          [FullType(_i46.XmlBlobsInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> xmlEmptyBlobs(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlEmptyBlobsProtocol.contentType;
    try {
      final payload = (await _xmlEmptyBlobsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i46.XmlBlobsInputOutput),
      ) as _i46.XmlBlobsInputOutput);
      final input = _i46.XmlBlobsInputOutput.fromRequest(
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
          _i46.XmlBlobsInputOutput,
          [FullType(_i46.XmlBlobsInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> xmlEmptyLists(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlEmptyListsProtocol.contentType;
    try {
      final payload = (await _xmlEmptyListsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i47.XmlListsInputOutput),
      ) as _i47.XmlListsInputOutput);
      final input = _i47.XmlListsInputOutput.fromRequest(
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
          _i47.XmlListsInputOutput,
          [FullType(_i47.XmlListsInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> xmlEmptyMaps(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlEmptyMapsProtocol.contentType;
    try {
      final payload = (await _xmlEmptyMapsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i48.XmlMapsInputOutput),
      ) as _i48.XmlMapsInputOutput);
      final input = _i48.XmlMapsInputOutput.fromRequest(
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
          _i48.XmlMapsInputOutput,
          [FullType(_i48.XmlMapsInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> xmlEmptyStrings(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlEmptyStringsProtocol.contentType;
    try {
      final payload =
          (await _xmlEmptyStringsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i49.XmlEmptyStringsInputOutput),
      ) as _i49.XmlEmptyStringsInputOutput);
      final input = _i49.XmlEmptyStringsInputOutput.fromRequest(
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
          _i49.XmlEmptyStringsInputOutput,
          [FullType(_i49.XmlEmptyStringsInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> xmlEnums(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlEnumsProtocol.contentType;
    try {
      final payload = (await _xmlEnumsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i50.XmlEnumsInputOutput),
      ) as _i50.XmlEnumsInputOutput);
      final input = _i50.XmlEnumsInputOutput.fromRequest(
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
          _i50.XmlEnumsInputOutput,
          [FullType(_i50.XmlEnumsInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> xmlIntEnums(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlIntEnumsProtocol.contentType;
    try {
      final payload = (await _xmlIntEnumsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i51.XmlIntEnumsInputOutput),
      ) as _i51.XmlIntEnumsInputOutput);
      final input = _i51.XmlIntEnumsInputOutput.fromRequest(
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
          _i51.XmlIntEnumsInputOutput,
          [FullType(_i51.XmlIntEnumsInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> xmlLists(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlListsProtocol.contentType;
    try {
      final payload = (await _xmlListsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i47.XmlListsInputOutput),
      ) as _i47.XmlListsInputOutput);
      final input = _i47.XmlListsInputOutput.fromRequest(
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
          _i47.XmlListsInputOutput,
          [FullType(_i47.XmlListsInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> xmlMaps(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlMapsProtocol.contentType;
    try {
      final payload = (await _xmlMapsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i48.XmlMapsInputOutput),
      ) as _i48.XmlMapsInputOutput);
      final input = _i48.XmlMapsInputOutput.fromRequest(
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
          _i48.XmlMapsInputOutput,
          [FullType(_i48.XmlMapsInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> xmlMapsXmlName(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlMapsXmlNameProtocol.contentType;
    try {
      final payload = (await _xmlMapsXmlNameProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i52.XmlMapsXmlNameInputOutput),
      ) as _i52.XmlMapsXmlNameInputOutput);
      final input = _i52.XmlMapsXmlNameInputOutput.fromRequest(
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
          _i52.XmlMapsXmlNameInputOutput,
          [FullType(_i52.XmlMapsXmlNameInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> xmlNamespaces(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlNamespacesProtocol.contentType;
    try {
      final payload = (await _xmlNamespacesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i53.XmlNamespacesInputOutput),
      ) as _i53.XmlNamespacesInputOutput);
      final input = _i53.XmlNamespacesInputOutput.fromRequest(
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
          _i53.XmlNamespacesInputOutput,
          [FullType(_i53.XmlNamespacesInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> xmlTimestamps(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlTimestampsProtocol.contentType;
    try {
      final payload = (await _xmlTimestampsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i54.XmlTimestampsInputOutput),
      ) as _i54.XmlTimestampsInputOutput);
      final input = _i54.XmlTimestampsInputOutput.fromRequest(
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
          _i54.XmlTimestampsInputOutput,
          [FullType(_i54.XmlTimestampsInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i56.Response> xmlUnions(_i56.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlUnionsProtocol.contentType;
    try {
      final payload = (await _xmlUnionsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i55.XmlUnionsInputOutput),
      ) as _i55.XmlUnionsInputOutput);
      final input = _i55.XmlUnionsInputOutput.fromRequest(
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
          _i55.XmlUnionsInputOutput,
          [FullType(_i55.XmlUnionsInputOutput)],
        ),
      );
      return _i56.Response(
        statusCode,
        body: body,
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
