// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_xml_v2.rest_xml_protocol.rest_xml_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;
import 'dart:typed_data' as _i54;

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/common/serializers.dart'
    as _i3;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/all_query_string_types_input.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/body_with_xml_name_input_output.dart'
    as _i6;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/complex_error.dart'
    as _i59;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/constant_and_variable_query_string_input.dart'
    as _i7;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/constant_query_string_input.dart'
    as _i8;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/empty_input_and_empty_output_input.dart'
    as _i10;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/empty_input_and_empty_output_output.dart'
    as _i9;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/flattened_xml_map_input_output.dart'
    as _i13;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/flattened_xml_map_with_xml_name_input_output.dart'
    as _i14;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/flattened_xml_map_with_xml_namespace_output.dart'
    as _i15;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/greeting_with_errors_output.dart'
    as _i16;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/host_label_header_input.dart'
    as _i11;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/host_label_input.dart'
    as _i12;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_traits_input_output.dart'
    as _i17;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_traits_with_media_type_input_output.dart'
    as _i18;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_member_xml_name_input_output.dart'
    as _i19;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_structure_input_output.dart'
    as _i20;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_xml_name_input_output.dart'
    as _i21;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_xml_namespace_and_prefix_input_output.dart'
    as _i23;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_xml_namespace_input_output.dart'
    as _i22;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_prefix_headers_input_output.dart'
    as _i24;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_float_labels_input.dart'
    as _i25;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_greedy_label_in_path_input.dart'
    as _i26;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_labels_and_timestamp_format_input.dart'
    as _i28;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_labels_input.dart'
    as _i27;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_response_code_output.dart'
    as _i29;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/ignore_query_params_in_response_output.dart'
    as _i30;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/input_and_output_with_headers_io.dart'
    as _i31;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/invalid_greeting.dart'
    as _i60;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/nested_payload.dart'
    as _i56;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/nested_xml_maps_input_output.dart'
    as _i32;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/no_input_and_output_output.dart'
    as _i33;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/null_and_empty_headers_io.dart'
    as _i34;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/omits_null_serializes_empty_string_input.dart'
    as _i35;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/payload_with_xml_name.dart'
    as _i55;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/payload_with_xml_namespace.dart'
    as _i57;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/payload_with_xml_namespace_and_prefix.dart'
    as _i58;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/query_idempotency_token_auto_fill_input.dart'
    as _i36;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/query_params_as_string_list_map_input.dart'
    as _i37;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/query_precedence_input.dart'
    as _i38;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/recursive_shapes_input_output.dart'
    as _i39;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/simple_scalar_properties_input_output.dart'
    as _i40;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/timestamp_format_headers_io.dart'
    as _i41;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_attributes_input_output.dart'
    as _i42;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_attributes_on_payload_input_output.dart'
    as _i43;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_blobs_input_output.dart'
    as _i44;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_empty_strings_input_output.dart'
    as _i47;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_enums_input_output.dart'
    as _i48;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_lists_input_output.dart'
    as _i45;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_maps_input_output.dart'
    as _i46;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_maps_xml_name_input_output.dart'
    as _i49;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_namespaces_input_output.dart'
    as _i50;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_timestamps_input_output.dart'
    as _i51;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_unions_input_output.dart'
    as _i52;
import 'package:shelf/shelf.dart' as _i53;
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
  _i4.Future<_i9.EmptyInputAndEmptyOutputOutput> emptyInputAndEmptyOutput(
    _i10.EmptyInputAndEmptyOutputInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> endpointOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> endpointWithHostLabelHeaderOperation(
    _i11.HostLabelHeaderInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> endpointWithHostLabelOperation(
    _i12.HostLabelInput input,
    _i1.Context context,
  );
  _i4.Future<_i13.FlattenedXmlMapInputOutput> flattenedXmlMap(
    _i13.FlattenedXmlMapInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i14.FlattenedXmlMapWithXmlNameInputOutput>
      flattenedXmlMapWithXmlName(
    _i14.FlattenedXmlMapWithXmlNameInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i15.FlattenedXmlMapWithXmlNamespaceOutput>
      flattenedXmlMapWithXmlNamespace(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i16.GreetingWithErrorsOutput> greetingWithErrors(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i17.HttpPayloadTraitsInputOutput> httpPayloadTraits(
    _i17.HttpPayloadTraitsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i18.HttpPayloadTraitsWithMediaTypeInputOutput>
      httpPayloadTraitsWithMediaType(
    _i18.HttpPayloadTraitsWithMediaTypeInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i19.HttpPayloadWithMemberXmlNameInputOutput>
      httpPayloadWithMemberXmlName(
    _i19.HttpPayloadWithMemberXmlNameInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i20.HttpPayloadWithStructureInputOutput> httpPayloadWithStructure(
    _i20.HttpPayloadWithStructureInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i21.HttpPayloadWithXmlNameInputOutput> httpPayloadWithXmlName(
    _i21.HttpPayloadWithXmlNameInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i22.HttpPayloadWithXmlNamespaceInputOutput>
      httpPayloadWithXmlNamespace(
    _i22.HttpPayloadWithXmlNamespaceInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i23.HttpPayloadWithXmlNamespaceAndPrefixInputOutput>
      httpPayloadWithXmlNamespaceAndPrefix(
    _i23.HttpPayloadWithXmlNamespaceAndPrefixInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i24.HttpPrefixHeadersInputOutput> httpPrefixHeaders(
    _i24.HttpPrefixHeadersInputOutput input,
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
  _i4.Future<_i29.HttpResponseCodeOutput> httpResponseCode(
    _i1.Unit input,
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
  _i4.Future<_i32.NestedXmlMapsInputOutput> nestedXmlMaps(
    _i32.NestedXmlMapsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> noInputAndNoOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i33.NoInputAndOutputOutput> noInputAndOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i34.NullAndEmptyHeadersIo> nullAndEmptyHeadersClient(
    _i34.NullAndEmptyHeadersIo input,
    _i1.Context context,
  );
  _i4.Future<_i34.NullAndEmptyHeadersIo> nullAndEmptyHeadersServer(
    _i34.NullAndEmptyHeadersIo input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> omitsNullSerializesEmptyString(
    _i35.OmitsNullSerializesEmptyStringInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> queryIdempotencyTokenAutoFill(
    _i36.QueryIdempotencyTokenAutoFillInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> queryParamsAsStringListMap(
    _i37.QueryParamsAsStringListMapInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> queryPrecedence(
    _i38.QueryPrecedenceInput input,
    _i1.Context context,
  );
  _i4.Future<_i39.RecursiveShapesInputOutput> recursiveShapes(
    _i39.RecursiveShapesInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i40.SimpleScalarPropertiesInputOutput> simpleScalarProperties(
    _i40.SimpleScalarPropertiesInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i41.TimestampFormatHeadersIo> timestampFormatHeaders(
    _i41.TimestampFormatHeadersIo input,
    _i1.Context context,
  );
  _i4.Future<_i42.XmlAttributesInputOutput> xmlAttributes(
    _i42.XmlAttributesInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i43.XmlAttributesOnPayloadInputOutput> xmlAttributesOnPayload(
    _i43.XmlAttributesOnPayloadInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i44.XmlBlobsInputOutput> xmlBlobs(
    _i44.XmlBlobsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i44.XmlBlobsInputOutput> xmlEmptyBlobs(
    _i44.XmlBlobsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i45.XmlListsInputOutput> xmlEmptyLists(
    _i45.XmlListsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i46.XmlMapsInputOutput> xmlEmptyMaps(
    _i46.XmlMapsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i47.XmlEmptyStringsInputOutput> xmlEmptyStrings(
    _i47.XmlEmptyStringsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i48.XmlEnumsInputOutput> xmlEnums(
    _i48.XmlEnumsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i45.XmlListsInputOutput> xmlLists(
    _i45.XmlListsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i46.XmlMapsInputOutput> xmlMaps(
    _i46.XmlMapsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i49.XmlMapsXmlNameInputOutput> xmlMapsXmlName(
    _i49.XmlMapsXmlNameInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i50.XmlNamespacesInputOutput> xmlNamespaces(
    _i50.XmlNamespacesInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i51.XmlTimestampsInputOutput> xmlTimestamps(
    _i51.XmlTimestampsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i52.XmlUnionsInputOutput> xmlUnions(
    _i52.XmlUnionsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i53.Response> call(_i53.Request request) => _router(request);
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

  late final _i1.HttpProtocol<
          _i10.EmptyInputAndEmptyOutputInput,
          _i10.EmptyInputAndEmptyOutputInput,
          _i9.EmptyInputAndEmptyOutputOutput,
          _i9.EmptyInputAndEmptyOutputOutput>
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

  late final _i1.HttpProtocol<_i11.HostLabelHeaderInputPayload,
          _i11.HostLabelHeaderInput, _i1.Unit, _i1.Unit>
      _endpointWithHostLabelHeaderOperationProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i12.HostLabelInput,
      _i12.HostLabelInput,
      _i1.Unit,
      _i1.Unit> _endpointWithHostLabelOperationProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i13.FlattenedXmlMapInputOutput,
          _i13.FlattenedXmlMapInputOutput,
          _i13.FlattenedXmlMapInputOutput,
          _i13.FlattenedXmlMapInputOutput> _flattenedXmlMapProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i14.FlattenedXmlMapWithXmlNameInputOutput,
          _i14.FlattenedXmlMapWithXmlNameInputOutput,
          _i14.FlattenedXmlMapWithXmlNameInputOutput,
          _i14.FlattenedXmlMapWithXmlNameInputOutput>
      _flattenedXmlMapWithXmlNameProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i1.Unit,
          _i1.Unit,
          _i15.FlattenedXmlMapWithXmlNamespaceOutput,
          _i15.FlattenedXmlMapWithXmlNamespaceOutput>
      _flattenedXmlMapWithXmlNamespaceProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit,
          _i16.GreetingWithErrorsOutputPayload, _i16.GreetingWithErrorsOutput>
      _greetingWithErrorsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i54.Uint8List, _i17.HttpPayloadTraitsInputOutput,
          _i54.Uint8List, _i17.HttpPayloadTraitsInputOutput>
      _httpPayloadTraitsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i54.Uint8List,
          _i18.HttpPayloadTraitsWithMediaTypeInputOutput,
          _i54.Uint8List,
          _i18.HttpPayloadTraitsWithMediaTypeInputOutput>
      _httpPayloadTraitsWithMediaTypeProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    mediaType: 'text/plain',
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i55.PayloadWithXmlName,
          _i19.HttpPayloadWithMemberXmlNameInputOutput,
          _i55.PayloadWithXmlName,
          _i19.HttpPayloadWithMemberXmlNameInputOutput>
      _httpPayloadWithMemberXmlNameProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i56.NestedPayload,
          _i20.HttpPayloadWithStructureInputOutput,
          _i56.NestedPayload,
          _i20.HttpPayloadWithStructureInputOutput>
      _httpPayloadWithStructureProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i55.PayloadWithXmlName,
          _i21.HttpPayloadWithXmlNameInputOutput,
          _i55.PayloadWithXmlName,
          _i21.HttpPayloadWithXmlNameInputOutput>
      _httpPayloadWithXmlNameProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i57.PayloadWithXmlNamespace,
          _i22.HttpPayloadWithXmlNamespaceInputOutput,
          _i57.PayloadWithXmlNamespace,
          _i22.HttpPayloadWithXmlNamespaceInputOutput>
      _httpPayloadWithXmlNamespaceProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i58.PayloadWithXmlNamespaceAndPrefix,
          _i23.HttpPayloadWithXmlNamespaceAndPrefixInputOutput,
          _i58.PayloadWithXmlNamespaceAndPrefix,
          _i23.HttpPayloadWithXmlNamespaceAndPrefixInputOutput>
      _httpPayloadWithXmlNamespaceAndPrefixProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i24.HttpPrefixHeadersInputOutputPayload,
          _i24.HttpPrefixHeadersInputOutput,
          _i24.HttpPrefixHeadersInputOutputPayload,
          _i24.HttpPrefixHeadersInputOutput> _httpPrefixHeadersProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i25.HttpRequestWithFloatLabelsInputPayload,
      _i25.HttpRequestWithFloatLabelsInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithFloatLabelsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i26.HttpRequestWithGreedyLabelInPathInputPayload,
      _i26.HttpRequestWithGreedyLabelInPathInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithGreedyLabelInPathProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i27.HttpRequestWithLabelsInputPayload,
      _i27.HttpRequestWithLabelsInput,
      _i1.Unit,
      _i1.Unit> _httpRequestWithLabelsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i28.HttpRequestWithLabelsAndTimestampFormatInputPayload,
          _i28.HttpRequestWithLabelsAndTimestampFormatInput,
          _i1.Unit,
          _i1.Unit> _httpRequestWithLabelsAndTimestampFormatProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit,
          _i29.HttpResponseCodeOutputPayload, _i29.HttpResponseCodeOutput>
      _httpResponseCodeProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i1.Unit,
          _i1.Unit,
          _i30.IgnoreQueryParamsInResponseOutput,
          _i30.IgnoreQueryParamsInResponseOutput>
      _ignoreQueryParamsInResponseProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i31.InputAndOutputWithHeadersIoPayload,
          _i31.InputAndOutputWithHeadersIo,
          _i31.InputAndOutputWithHeadersIoPayload,
          _i31.InputAndOutputWithHeadersIo> _inputAndOutputWithHeadersProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i32.NestedXmlMapsInputOutput,
          _i32.NestedXmlMapsInputOutput,
          _i32.NestedXmlMapsInputOutput,
          _i32.NestedXmlMapsInputOutput> _nestedXmlMapsProtocol =
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

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i33.NoInputAndOutputOutput,
          _i33.NoInputAndOutputOutput> _noInputAndOutputProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i34.NullAndEmptyHeadersIoPayload,
          _i34.NullAndEmptyHeadersIo,
          _i34.NullAndEmptyHeadersIoPayload,
          _i34.NullAndEmptyHeadersIo> _nullAndEmptyHeadersClientProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i34.NullAndEmptyHeadersIoPayload,
          _i34.NullAndEmptyHeadersIo,
          _i34.NullAndEmptyHeadersIoPayload,
          _i34.NullAndEmptyHeadersIo> _nullAndEmptyHeadersServerProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i35.OmitsNullSerializesEmptyStringInputPayload,
      _i35.OmitsNullSerializesEmptyStringInput,
      _i1.Unit,
      _i1.Unit> _omitsNullSerializesEmptyStringProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i36.QueryIdempotencyTokenAutoFillInputPayload,
      _i36.QueryIdempotencyTokenAutoFillInput,
      _i1.Unit,
      _i1.Unit> _queryIdempotencyTokenAutoFillProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i37.QueryParamsAsStringListMapInputPayload,
      _i37.QueryParamsAsStringListMapInput,
      _i1.Unit,
      _i1.Unit> _queryParamsAsStringListMapProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i38.QueryPrecedenceInputPayload,
      _i38.QueryPrecedenceInput,
      _i1.Unit,
      _i1.Unit> _queryPrecedenceProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i39.RecursiveShapesInputOutput,
          _i39.RecursiveShapesInputOutput,
          _i39.RecursiveShapesInputOutput,
          _i39.RecursiveShapesInputOutput> _recursiveShapesProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i40.SimpleScalarPropertiesInputOutputPayload,
          _i40.SimpleScalarPropertiesInputOutput,
          _i40.SimpleScalarPropertiesInputOutputPayload,
          _i40.SimpleScalarPropertiesInputOutput>
      _simpleScalarPropertiesProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i41.TimestampFormatHeadersIoPayload,
          _i41.TimestampFormatHeadersIo,
          _i41.TimestampFormatHeadersIoPayload,
          _i41.TimestampFormatHeadersIo> _timestampFormatHeadersProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i42.XmlAttributesInputOutput,
          _i42.XmlAttributesInputOutput,
          _i42.XmlAttributesInputOutput,
          _i42.XmlAttributesInputOutput> _xmlAttributesProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i42.XmlAttributesInputOutput,
          _i43.XmlAttributesOnPayloadInputOutput,
          _i42.XmlAttributesInputOutput,
          _i43.XmlAttributesOnPayloadInputOutput>
      _xmlAttributesOnPayloadProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i44.XmlBlobsInputOutput,
      _i44.XmlBlobsInputOutput,
      _i44.XmlBlobsInputOutput,
      _i44.XmlBlobsInputOutput> _xmlBlobsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i44.XmlBlobsInputOutput,
      _i44.XmlBlobsInputOutput,
      _i44.XmlBlobsInputOutput,
      _i44.XmlBlobsInputOutput> _xmlEmptyBlobsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i45.XmlListsInputOutput,
      _i45.XmlListsInputOutput,
      _i45.XmlListsInputOutput,
      _i45.XmlListsInputOutput> _xmlEmptyListsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i46.XmlMapsInputOutput,
      _i46.XmlMapsInputOutput,
      _i46.XmlMapsInputOutput,
      _i46.XmlMapsInputOutput> _xmlEmptyMapsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i47.XmlEmptyStringsInputOutput,
          _i47.XmlEmptyStringsInputOutput,
          _i47.XmlEmptyStringsInputOutput,
          _i47.XmlEmptyStringsInputOutput> _xmlEmptyStringsProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i48.XmlEnumsInputOutput,
      _i48.XmlEnumsInputOutput,
      _i48.XmlEnumsInputOutput,
      _i48.XmlEnumsInputOutput> _xmlEnumsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i45.XmlListsInputOutput,
      _i45.XmlListsInputOutput,
      _i45.XmlListsInputOutput,
      _i45.XmlListsInputOutput> _xmlListsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i46.XmlMapsInputOutput,
      _i46.XmlMapsInputOutput,
      _i46.XmlMapsInputOutput,
      _i46.XmlMapsInputOutput> _xmlMapsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i49.XmlMapsXmlNameInputOutput,
          _i49.XmlMapsXmlNameInputOutput,
          _i49.XmlMapsXmlNameInputOutput,
          _i49.XmlMapsXmlNameInputOutput> _xmlMapsXmlNameProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i50.XmlNamespacesInputOutput,
          _i50.XmlNamespacesInputOutput,
          _i50.XmlNamespacesInputOutput,
          _i50.XmlNamespacesInputOutput> _xmlNamespacesProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
          _i51.XmlTimestampsInputOutput,
          _i51.XmlTimestampsInputOutput,
          _i51.XmlTimestampsInputOutput,
          _i51.XmlTimestampsInputOutput> _xmlTimestampsProtocol =
      _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  late final _i1.HttpProtocol<
      _i52.XmlUnionsInputOutput,
      _i52.XmlUnionsInputOutput,
      _i52.XmlUnionsInputOutput,
      _i52.XmlUnionsInputOutput> _xmlUnionsProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: false,
  );

  _i4.Future<_i53.Response> allQueryStringTypes(_i53.Request request) async {
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
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> bodyWithXmlName(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _bodyWithXmlNameProtocol.contentType;
    try {
      final payload = (await _bodyWithXmlNameProtocol.deserialize(
        awsRequest.split(),
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
      final body = _bodyWithXmlNameProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i6.BodyWithXmlNameInputOutput,
          [FullType(_i6.BodyWithXmlNameInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> constantAndVariableQueryString(
      _i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _constantAndVariableQueryStringProtocol.contentType;
    try {
      final payload =
          (await _constantAndVariableQueryStringProtocol.deserialize(
        awsRequest.split(),
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
      final body = _constantAndVariableQueryStringProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> constantQueryString(
    _i53.Request request,
    String hello,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _constantQueryStringProtocol.contentType;
    try {
      final payload = (await _constantQueryStringProtocol.deserialize(
        awsRequest.split(),
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
      final body = _constantQueryStringProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> emptyInputAndEmptyOutput(
      _i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _emptyInputAndEmptyOutputProtocol.contentType;
    try {
      final payload = (await _emptyInputAndEmptyOutputProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i10.EmptyInputAndEmptyOutputInput),
      ) as _i10.EmptyInputAndEmptyOutputInput);
      final input = _i10.EmptyInputAndEmptyOutputInput.fromRequest(
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
          _i9.EmptyInputAndEmptyOutputOutput,
          [FullType(_i9.EmptyInputAndEmptyOutputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> endpointOperation(_i53.Request request) async {
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
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> endpointWithHostLabelHeaderOperation(
      _i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _endpointWithHostLabelHeaderOperationProtocol.contentType;
    try {
      final payload =
          (await _endpointWithHostLabelHeaderOperationProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i11.HostLabelHeaderInputPayload),
      ) as _i11.HostLabelHeaderInputPayload);
      final input = _i11.HostLabelHeaderInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.endpointWithHostLabelHeaderOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = _endpointWithHostLabelHeaderOperationProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> endpointWithHostLabelOperation(
      _i53.Request request) async {
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
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> flattenedXmlMap(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _flattenedXmlMapProtocol.contentType;
    try {
      final payload = (await _flattenedXmlMapProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i13.FlattenedXmlMapInputOutput),
      ) as _i13.FlattenedXmlMapInputOutput);
      final input = _i13.FlattenedXmlMapInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.flattenedXmlMap(
        input,
        context,
      );
      const statusCode = 200;
      final body = _flattenedXmlMapProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i13.FlattenedXmlMapInputOutput,
          [FullType(_i13.FlattenedXmlMapInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> flattenedXmlMapWithXmlName(
      _i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _flattenedXmlMapWithXmlNameProtocol.contentType;
    try {
      final payload = (await _flattenedXmlMapWithXmlNameProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i14.FlattenedXmlMapWithXmlNameInputOutput),
      ) as _i14.FlattenedXmlMapWithXmlNameInputOutput);
      final input = _i14.FlattenedXmlMapWithXmlNameInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.flattenedXmlMapWithXmlName(
        input,
        context,
      );
      const statusCode = 200;
      final body = _flattenedXmlMapWithXmlNameProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i14.FlattenedXmlMapWithXmlNameInputOutput,
          [FullType(_i14.FlattenedXmlMapWithXmlNameInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> flattenedXmlMapWithXmlNamespace(
      _i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _flattenedXmlMapWithXmlNamespaceProtocol.contentType;
    try {
      final payload =
          (await _flattenedXmlMapWithXmlNamespaceProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.flattenedXmlMapWithXmlNamespace(
        input,
        context,
      );
      const statusCode = 200;
      final body = _flattenedXmlMapWithXmlNamespaceProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i15.FlattenedXmlMapWithXmlNamespaceOutput,
          [FullType(_i15.FlattenedXmlMapWithXmlNamespaceOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> greetingWithErrors(_i53.Request request) async {
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
          _i16.GreetingWithErrorsOutput,
          [FullType(_i16.GreetingWithErrorsOutputPayload)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i59.ComplexError catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ComplexError';
      final body = _greetingWithErrorsProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i59.ComplexError,
          [FullType(_i59.ComplexErrorPayload)],
        ),
      );
      const statusCode = 403;
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i60.InvalidGreeting catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'InvalidGreeting';
      final body = _greetingWithErrorsProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i60.InvalidGreeting,
          [FullType(_i60.InvalidGreeting)],
        ),
      );
      const statusCode = 400;
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> httpPayloadTraits(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadTraitsProtocol.contentType;
    try {
      final payload = (await _httpPayloadTraitsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(_i54.Uint8List),
      ) as _i54.Uint8List?);
      final input = _i17.HttpPayloadTraitsInputOutput.fromRequest(
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
          _i17.HttpPayloadTraitsInputOutput,
          [FullType.nullable(_i54.Uint8List)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> httpPayloadTraitsWithMediaType(
      _i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadTraitsWithMediaTypeProtocol.contentType;
    try {
      final payload =
          (await _httpPayloadTraitsWithMediaTypeProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(_i54.Uint8List),
      ) as _i54.Uint8List?);
      final input = _i18.HttpPayloadTraitsWithMediaTypeInputOutput.fromRequest(
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
          _i18.HttpPayloadTraitsWithMediaTypeInputOutput,
          [FullType.nullable(_i54.Uint8List)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> httpPayloadWithMemberXmlName(
      _i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithMemberXmlNameProtocol.contentType;
    try {
      final payload = (await _httpPayloadWithMemberXmlNameProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(_i55.PayloadWithXmlName),
      ) as _i55.PayloadWithXmlName?);
      final input = _i19.HttpPayloadWithMemberXmlNameInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPayloadWithMemberXmlName(
        input,
        context,
      );
      const statusCode = 200;
      final body = _httpPayloadWithMemberXmlNameProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i19.HttpPayloadWithMemberXmlNameInputOutput,
          [FullType.nullable(_i55.PayloadWithXmlName)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> httpPayloadWithStructure(
      _i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithStructureProtocol.contentType;
    try {
      final payload = (await _httpPayloadWithStructureProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(_i56.NestedPayload),
      ) as _i56.NestedPayload?);
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
      final body = _httpPayloadWithStructureProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i20.HttpPayloadWithStructureInputOutput,
          [FullType.nullable(_i56.NestedPayload)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> httpPayloadWithXmlName(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithXmlNameProtocol.contentType;
    try {
      final payload = (await _httpPayloadWithXmlNameProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(_i55.PayloadWithXmlName),
      ) as _i55.PayloadWithXmlName?);
      final input = _i21.HttpPayloadWithXmlNameInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPayloadWithXmlName(
        input,
        context,
      );
      const statusCode = 200;
      final body = _httpPayloadWithXmlNameProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i21.HttpPayloadWithXmlNameInputOutput,
          [FullType.nullable(_i55.PayloadWithXmlName)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> httpPayloadWithXmlNamespace(
      _i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithXmlNamespaceProtocol.contentType;
    try {
      final payload = (await _httpPayloadWithXmlNamespaceProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(_i57.PayloadWithXmlNamespace),
      ) as _i57.PayloadWithXmlNamespace?);
      final input = _i22.HttpPayloadWithXmlNamespaceInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPayloadWithXmlNamespace(
        input,
        context,
      );
      const statusCode = 200;
      final body = _httpPayloadWithXmlNamespaceProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i22.HttpPayloadWithXmlNamespaceInputOutput,
          [FullType.nullable(_i57.PayloadWithXmlNamespace)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> httpPayloadWithXmlNamespaceAndPrefix(
      _i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPayloadWithXmlNamespaceAndPrefixProtocol.contentType;
    try {
      final payload =
          (await _httpPayloadWithXmlNamespaceAndPrefixProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType.nullable(_i58.PayloadWithXmlNamespaceAndPrefix),
      ) as _i58.PayloadWithXmlNamespaceAndPrefix?);
      final input =
          _i23.HttpPayloadWithXmlNamespaceAndPrefixInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpPayloadWithXmlNamespaceAndPrefix(
        input,
        context,
      );
      const statusCode = 200;
      final body = _httpPayloadWithXmlNamespaceAndPrefixProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i23.HttpPayloadWithXmlNamespaceAndPrefixInputOutput,
          [FullType.nullable(_i58.PayloadWithXmlNamespaceAndPrefix)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> httpPrefixHeaders(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpPrefixHeadersProtocol.contentType;
    try {
      final payload = (await _httpPrefixHeadersProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i24.HttpPrefixHeadersInputOutputPayload),
      ) as _i24.HttpPrefixHeadersInputOutputPayload);
      final input = _i24.HttpPrefixHeadersInputOutput.fromRequest(
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
      final body = _httpPrefixHeadersProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i24.HttpPrefixHeadersInputOutput,
          [FullType(_i24.HttpPrefixHeadersInputOutputPayload)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> httpRequestWithFloatLabels(
    _i53.Request request,
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
      final body = _httpRequestWithFloatLabelsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> httpRequestWithGreedyLabelInPath(
    _i53.Request request,
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
      final body = _httpRequestWithGreedyLabelInPathProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> httpRequestWithLabels(
    _i53.Request request,
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
      final body = _httpRequestWithLabelsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> httpRequestWithLabelsAndTimestampFormat(
    _i53.Request request,
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
      final body = _httpRequestWithLabelsAndTimestampFormatProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> httpResponseCode(_i53.Request request) async {
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
          _i29.HttpResponseCodeOutput,
          [FullType(_i29.HttpResponseCodeOutputPayload)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> ignoreQueryParamsInResponse(
      _i53.Request request) async {
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
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> inputAndOutputWithHeaders(
      _i53.Request request) async {
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
      const statusCode = 200;
      final body = _inputAndOutputWithHeadersProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i31.InputAndOutputWithHeadersIo,
          [FullType(_i31.InputAndOutputWithHeadersIoPayload)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> nestedXmlMaps(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nestedXmlMapsProtocol.contentType;
    try {
      final payload = (await _nestedXmlMapsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i32.NestedXmlMapsInputOutput),
      ) as _i32.NestedXmlMapsInputOutput);
      final input = _i32.NestedXmlMapsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.nestedXmlMaps(
        input,
        context,
      );
      const statusCode = 200;
      final body = _nestedXmlMapsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i32.NestedXmlMapsInputOutput,
          [FullType(_i32.NestedXmlMapsInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> noInputAndNoOutput(_i53.Request request) async {
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
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> noInputAndOutput(_i53.Request request) async {
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
          _i33.NoInputAndOutputOutput,
          [FullType(_i33.NoInputAndOutputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> nullAndEmptyHeadersClient(
      _i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nullAndEmptyHeadersClientProtocol.contentType;
    try {
      final payload = (await _nullAndEmptyHeadersClientProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i34.NullAndEmptyHeadersIoPayload),
      ) as _i34.NullAndEmptyHeadersIoPayload);
      final input = _i34.NullAndEmptyHeadersIo.fromRequest(
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
          _i34.NullAndEmptyHeadersIo,
          [FullType(_i34.NullAndEmptyHeadersIoPayload)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> nullAndEmptyHeadersServer(
      _i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nullAndEmptyHeadersServerProtocol.contentType;
    try {
      final payload = (await _nullAndEmptyHeadersServerProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i34.NullAndEmptyHeadersIoPayload),
      ) as _i34.NullAndEmptyHeadersIoPayload);
      final input = _i34.NullAndEmptyHeadersIo.fromRequest(
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
          _i34.NullAndEmptyHeadersIo,
          [FullType(_i34.NullAndEmptyHeadersIoPayload)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> omitsNullSerializesEmptyString(
      _i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _omitsNullSerializesEmptyStringProtocol.contentType;
    try {
      final payload =
          (await _omitsNullSerializesEmptyStringProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i35.OmitsNullSerializesEmptyStringInputPayload),
      ) as _i35.OmitsNullSerializesEmptyStringInputPayload);
      final input = _i35.OmitsNullSerializesEmptyStringInput.fromRequest(
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
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> queryIdempotencyTokenAutoFill(
      _i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _queryIdempotencyTokenAutoFillProtocol.contentType;
    try {
      final payload = (await _queryIdempotencyTokenAutoFillProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i36.QueryIdempotencyTokenAutoFillInputPayload),
      ) as _i36.QueryIdempotencyTokenAutoFillInputPayload);
      final input = _i36.QueryIdempotencyTokenAutoFillInput.fromRequest(
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
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> queryParamsAsStringListMap(
      _i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _queryParamsAsStringListMapProtocol.contentType;
    try {
      final payload = (await _queryParamsAsStringListMapProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i37.QueryParamsAsStringListMapInputPayload),
      ) as _i37.QueryParamsAsStringListMapInputPayload);
      final input = _i37.QueryParamsAsStringListMapInput.fromRequest(
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
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> queryPrecedence(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _queryPrecedenceProtocol.contentType;
    try {
      final payload = (await _queryPrecedenceProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i38.QueryPrecedenceInputPayload),
      ) as _i38.QueryPrecedenceInputPayload);
      final input = _i38.QueryPrecedenceInput.fromRequest(
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
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> recursiveShapes(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _recursiveShapesProtocol.contentType;
    try {
      final payload = (await _recursiveShapesProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i39.RecursiveShapesInputOutput),
      ) as _i39.RecursiveShapesInputOutput);
      final input = _i39.RecursiveShapesInputOutput.fromRequest(
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
          _i39.RecursiveShapesInputOutput,
          [FullType(_i39.RecursiveShapesInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> simpleScalarProperties(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _simpleScalarPropertiesProtocol.contentType;
    try {
      final payload = (await _simpleScalarPropertiesProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i40.SimpleScalarPropertiesInputOutputPayload),
      ) as _i40.SimpleScalarPropertiesInputOutputPayload);
      final input = _i40.SimpleScalarPropertiesInputOutput.fromRequest(
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
          _i40.SimpleScalarPropertiesInputOutput,
          [FullType(_i40.SimpleScalarPropertiesInputOutputPayload)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> timestampFormatHeaders(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _timestampFormatHeadersProtocol.contentType;
    try {
      final payload = (await _timestampFormatHeadersProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i41.TimestampFormatHeadersIoPayload),
      ) as _i41.TimestampFormatHeadersIoPayload);
      final input = _i41.TimestampFormatHeadersIo.fromRequest(
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
          _i41.TimestampFormatHeadersIo,
          [FullType(_i41.TimestampFormatHeadersIoPayload)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> xmlAttributes(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlAttributesProtocol.contentType;
    try {
      final payload = (await _xmlAttributesProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i42.XmlAttributesInputOutput),
      ) as _i42.XmlAttributesInputOutput);
      final input = _i42.XmlAttributesInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlAttributes(
        input,
        context,
      );
      const statusCode = 200;
      final body = _xmlAttributesProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i42.XmlAttributesInputOutput,
          [FullType(_i42.XmlAttributesInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> xmlAttributesOnPayload(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlAttributesOnPayloadProtocol.contentType;
    try {
      final payload = (await _xmlAttributesOnPayloadProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(_i42.XmlAttributesInputOutput),
      ) as _i42.XmlAttributesInputOutput?);
      final input = _i43.XmlAttributesOnPayloadInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlAttributesOnPayload(
        input,
        context,
      );
      const statusCode = 200;
      final body = _xmlAttributesOnPayloadProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i43.XmlAttributesOnPayloadInputOutput,
          [FullType.nullable(_i42.XmlAttributesInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> xmlBlobs(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlBlobsProtocol.contentType;
    try {
      final payload = (await _xmlBlobsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i44.XmlBlobsInputOutput),
      ) as _i44.XmlBlobsInputOutput);
      final input = _i44.XmlBlobsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlBlobs(
        input,
        context,
      );
      const statusCode = 200;
      final body = _xmlBlobsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i44.XmlBlobsInputOutput,
          [FullType(_i44.XmlBlobsInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> xmlEmptyBlobs(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlEmptyBlobsProtocol.contentType;
    try {
      final payload = (await _xmlEmptyBlobsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i44.XmlBlobsInputOutput),
      ) as _i44.XmlBlobsInputOutput);
      final input = _i44.XmlBlobsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlEmptyBlobs(
        input,
        context,
      );
      const statusCode = 200;
      final body = _xmlEmptyBlobsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i44.XmlBlobsInputOutput,
          [FullType(_i44.XmlBlobsInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> xmlEmptyLists(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlEmptyListsProtocol.contentType;
    try {
      final payload = (await _xmlEmptyListsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i45.XmlListsInputOutput),
      ) as _i45.XmlListsInputOutput);
      final input = _i45.XmlListsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlEmptyLists(
        input,
        context,
      );
      const statusCode = 200;
      final body = _xmlEmptyListsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i45.XmlListsInputOutput,
          [FullType(_i45.XmlListsInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> xmlEmptyMaps(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlEmptyMapsProtocol.contentType;
    try {
      final payload = (await _xmlEmptyMapsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i46.XmlMapsInputOutput),
      ) as _i46.XmlMapsInputOutput);
      final input = _i46.XmlMapsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlEmptyMaps(
        input,
        context,
      );
      const statusCode = 200;
      final body = _xmlEmptyMapsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i46.XmlMapsInputOutput,
          [FullType(_i46.XmlMapsInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> xmlEmptyStrings(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlEmptyStringsProtocol.contentType;
    try {
      final payload = (await _xmlEmptyStringsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i47.XmlEmptyStringsInputOutput),
      ) as _i47.XmlEmptyStringsInputOutput);
      final input = _i47.XmlEmptyStringsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlEmptyStrings(
        input,
        context,
      );
      const statusCode = 200;
      final body = _xmlEmptyStringsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i47.XmlEmptyStringsInputOutput,
          [FullType(_i47.XmlEmptyStringsInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> xmlEnums(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlEnumsProtocol.contentType;
    try {
      final payload = (await _xmlEnumsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i48.XmlEnumsInputOutput),
      ) as _i48.XmlEnumsInputOutput);
      final input = _i48.XmlEnumsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlEnums(
        input,
        context,
      );
      const statusCode = 200;
      final body = _xmlEnumsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i48.XmlEnumsInputOutput,
          [FullType(_i48.XmlEnumsInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> xmlLists(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlListsProtocol.contentType;
    try {
      final payload = (await _xmlListsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i45.XmlListsInputOutput),
      ) as _i45.XmlListsInputOutput);
      final input = _i45.XmlListsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlLists(
        input,
        context,
      );
      const statusCode = 200;
      final body = _xmlListsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i45.XmlListsInputOutput,
          [FullType(_i45.XmlListsInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> xmlMaps(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlMapsProtocol.contentType;
    try {
      final payload = (await _xmlMapsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i46.XmlMapsInputOutput),
      ) as _i46.XmlMapsInputOutput);
      final input = _i46.XmlMapsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlMaps(
        input,
        context,
      );
      const statusCode = 200;
      final body = _xmlMapsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i46.XmlMapsInputOutput,
          [FullType(_i46.XmlMapsInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> xmlMapsXmlName(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlMapsXmlNameProtocol.contentType;
    try {
      final payload = (await _xmlMapsXmlNameProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i49.XmlMapsXmlNameInputOutput),
      ) as _i49.XmlMapsXmlNameInputOutput);
      final input = _i49.XmlMapsXmlNameInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlMapsXmlName(
        input,
        context,
      );
      const statusCode = 200;
      final body = _xmlMapsXmlNameProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i49.XmlMapsXmlNameInputOutput,
          [FullType(_i49.XmlMapsXmlNameInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> xmlNamespaces(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlNamespacesProtocol.contentType;
    try {
      final payload = (await _xmlNamespacesProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i50.XmlNamespacesInputOutput),
      ) as _i50.XmlNamespacesInputOutput);
      final input = _i50.XmlNamespacesInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlNamespaces(
        input,
        context,
      );
      const statusCode = 200;
      final body = _xmlNamespacesProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i50.XmlNamespacesInputOutput,
          [FullType(_i50.XmlNamespacesInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> xmlTimestamps(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _xmlTimestampsProtocol.contentType;
    try {
      final payload = (await _xmlTimestampsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i51.XmlTimestampsInputOutput),
      ) as _i51.XmlTimestampsInputOutput);
      final input = _i51.XmlTimestampsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlTimestamps(
        input,
        context,
      );
      const statusCode = 200;
      final body = _xmlTimestampsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i51.XmlTimestampsInputOutput,
          [FullType(_i51.XmlTimestampsInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i53.Response> xmlUnions(_i53.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _xmlUnionsProtocol.contentType;
    try {
      final payload = (await _xmlUnionsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i52.XmlUnionsInputOutput),
      ) as _i52.XmlUnionsInputOutput);
      final input = _i52.XmlUnionsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.xmlUnions(
        input,
        context,
      );
      const statusCode = 200;
      final body = _xmlUnionsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i52.XmlUnionsInputOutput,
          [FullType(_i52.XmlUnionsInputOutput)],
        ),
      );
      return _i53.Response(
        statusCode,
        body: body,
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
