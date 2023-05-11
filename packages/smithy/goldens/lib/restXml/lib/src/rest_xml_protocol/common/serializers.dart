// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v1.rest_xml_protocol.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i78;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/all_query_string_types_input.dart'
    as _i2;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/aws_config.dart'
    as _i77;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/body_with_xml_name_input_output.dart'
    as _i4;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/client_config.dart'
    as _i74;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/complex_error.dart'
    as _i18;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/complex_nested_error_data.dart'
    as _i19;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/constant_and_variable_query_string_input.dart'
    as _i6;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/constant_query_string_input.dart'
    as _i7;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/datetime_offsets_output.dart'
    as _i8;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/empty_input_and_empty_output_input.dart'
    as _i9;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/empty_input_and_empty_output_output.dart'
    as _i10;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/environment_config.dart'
    as _i69;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/file_config_settings.dart'
    as _i72;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/flattened_xml_map_input_output.dart'
    as _i13;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/flattened_xml_map_with_xml_name_input_output.dart'
    as _i14;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/flattened_xml_map_with_xml_namespace_output.dart'
    as _i15;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/foo_enum.dart' as _i3;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/fractional_seconds_output.dart'
    as _i16;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/greeting_struct.dart'
    as _i57;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/greeting_with_errors_output.dart'
    as _i17;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/host_label_header_input.dart'
    as _i11;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/host_label_input.dart'
    as _i12;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_traits_input_output.dart'
    as _i21;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_traits_with_media_type_input_output.dart'
    as _i22;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_with_member_xml_name_input_output.dart'
    as _i23;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_with_structure_input_output.dart'
    as _i24;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_with_xml_name_input_output.dart'
    as _i26;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_with_xml_namespace_and_prefix_input_output.dart'
    as _i29;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_with_xml_namespace_input_output.dart'
    as _i27;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_prefix_headers_input_output.dart'
    as _i31;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_request_with_float_labels_input.dart'
    as _i32;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_request_with_greedy_label_in_path_input.dart'
    as _i33;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_request_with_labels_and_timestamp_format_input.dart'
    as _i35;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_request_with_labels_input.dart'
    as _i34;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_response_code_output.dart'
    as _i36;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/ignore_query_params_in_response_output.dart'
    as _i37;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/input_and_output_with_headers_io.dart'
    as _i38;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/invalid_greeting.dart'
    as _i20;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/nested_payload.dart'
    as _i25;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/nested_xml_maps_input_output.dart'
    as _i39;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/no_input_and_output_output.dart'
    as _i40;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/null_and_empty_headers_io.dart'
    as _i41;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/omits_null_serializes_empty_string_input.dart'
    as _i42;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/operation_config.dart'
    as _i75;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_name.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_namespace.dart'
    as _i28;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_namespace_and_prefix.dart'
    as _i30;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/query_idempotency_token_auto_fill_input.dart'
    as _i43;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/query_params_as_string_list_map_input.dart'
    as _i44;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/query_precedence_input.dart'
    as _i45;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/recursive_shapes_input_output.dart'
    as _i46;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/recursive_shapes_input_output_nested1.dart'
    as _i47;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/recursive_shapes_input_output_nested2.dart'
    as _i48;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/retry_config.dart'
    as _i73;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/retry_mode.dart'
    as _i68;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/s3_addressing_style.dart'
    as _i70;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/s3_config.dart' as _i71;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/scoped_config.dart'
    as _i76;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/simple_scalar_properties_input_output.dart'
    as _i49;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/structure_list_member.dart'
    as _i55;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/timestamp_format_headers_io.dart'
    as _i50;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_attributes_input_output.dart'
    as _i51;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_attributes_on_payload_input_output.dart'
    as _i52;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_blobs_input_output.dart'
    as _i53;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_empty_strings_input_output.dart'
    as _i58;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_enums_input_output.dart'
    as _i59;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_int_enums_input_output.dart'
    as _i60;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_lists_input_output.dart'
    as _i54;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_maps_input_output.dart'
    as _i56;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_maps_xml_name_input_output.dart'
    as _i61;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_namespace_nested.dart'
    as _i63;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_namespaces_input_output.dart'
    as _i62;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_nested_union_struct.dart'
    as _i66;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_timestamps_input_output.dart'
    as _i64;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_union_shape.dart'
    as _i67;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_unions_input_output.dart'
    as _i65;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.AllQueryStringTypesInput.serializers,
  ..._i3.FooEnum.serializers,
  ..._i4.BodyWithXmlNameInputOutput.serializers,
  ..._i5.PayloadWithXmlName.serializers,
  ..._i6.ConstantAndVariableQueryStringInput.serializers,
  ..._i7.ConstantQueryStringInput.serializers,
  ..._i8.DatetimeOffsetsOutput.serializers,
  ..._i9.EmptyInputAndEmptyOutputInput.serializers,
  ..._i10.EmptyInputAndEmptyOutputOutput.serializers,
  ..._i11.HostLabelHeaderInput.serializers,
  ..._i12.HostLabelInput.serializers,
  ..._i13.FlattenedXmlMapInputOutput.serializers,
  ..._i14.FlattenedXmlMapWithXmlNameInputOutput.serializers,
  ..._i15.FlattenedXmlMapWithXmlNamespaceOutput.serializers,
  ..._i16.FractionalSecondsOutput.serializers,
  ..._i17.GreetingWithErrorsOutput.serializers,
  ..._i18.ComplexError.serializers,
  ..._i19.ComplexNestedErrorData.serializers,
  ..._i20.InvalidGreeting.serializers,
  ..._i21.HttpPayloadTraitsInputOutput.serializers,
  ..._i22.HttpPayloadTraitsWithMediaTypeInputOutput.serializers,
  ..._i23.HttpPayloadWithMemberXmlNameInputOutput.serializers,
  ..._i24.HttpPayloadWithStructureInputOutput.serializers,
  ..._i25.NestedPayload.serializers,
  ..._i26.HttpPayloadWithXmlNameInputOutput.serializers,
  ..._i27.HttpPayloadWithXmlNamespaceInputOutput.serializers,
  ..._i28.PayloadWithXmlNamespace.serializers,
  ..._i29.HttpPayloadWithXmlNamespaceAndPrefixInputOutput.serializers,
  ..._i30.PayloadWithXmlNamespaceAndPrefix.serializers,
  ..._i31.HttpPrefixHeadersInputOutput.serializers,
  ..._i32.HttpRequestWithFloatLabelsInput.serializers,
  ..._i33.HttpRequestWithGreedyLabelInPathInput.serializers,
  ..._i34.HttpRequestWithLabelsInput.serializers,
  ..._i35.HttpRequestWithLabelsAndTimestampFormatInput.serializers,
  ..._i36.HttpResponseCodeOutput.serializers,
  ..._i37.IgnoreQueryParamsInResponseOutput.serializers,
  ..._i38.InputAndOutputWithHeadersIo.serializers,
  ..._i39.NestedXmlMapsInputOutput.serializers,
  ..._i40.NoInputAndOutputOutput.serializers,
  ..._i41.NullAndEmptyHeadersIo.serializers,
  ..._i42.OmitsNullSerializesEmptyStringInput.serializers,
  ..._i43.QueryIdempotencyTokenAutoFillInput.serializers,
  ..._i44.QueryParamsAsStringListMapInput.serializers,
  ..._i45.QueryPrecedenceInput.serializers,
  ..._i46.RecursiveShapesInputOutput.serializers,
  ..._i47.RecursiveShapesInputOutputNested1.serializers,
  ..._i48.RecursiveShapesInputOutputNested2.serializers,
  ..._i49.SimpleScalarPropertiesInputOutput.serializers,
  ..._i50.TimestampFormatHeadersIo.serializers,
  ..._i51.XmlAttributesInputOutput.serializers,
  ..._i52.XmlAttributesOnPayloadInputOutput.serializers,
  ..._i53.XmlBlobsInputOutput.serializers,
  ..._i54.XmlListsInputOutput.serializers,
  ..._i55.StructureListMember.serializers,
  ..._i56.XmlMapsInputOutput.serializers,
  ..._i57.GreetingStruct.serializers,
  ..._i58.XmlEmptyStringsInputOutput.serializers,
  ..._i59.XmlEnumsInputOutput.serializers,
  ..._i60.XmlIntEnumsInputOutput.serializers,
  ..._i61.XmlMapsXmlNameInputOutput.serializers,
  ..._i62.XmlNamespacesInputOutput.serializers,
  ..._i63.XmlNamespaceNested.serializers,
  ..._i64.XmlTimestampsInputOutput.serializers,
  ..._i65.XmlUnionsInputOutput.serializers,
  ..._i66.XmlNestedUnionStruct.serializers,
  ..._i67.XmlUnionShape.serializers,
  ..._i68.RetryMode.serializers,
  ..._i69.EnvironmentConfig.serializers,
  ..._i70.S3AddressingStyle.serializers,
  ..._i71.S3Config.serializers,
  ..._i72.FileConfigSettings.serializers,
  ..._i73.RetryConfig.serializers,
  ..._i74.ClientConfig.serializers,
  ..._i75.OperationConfig.serializers,
  ..._i76.ScopedConfig.serializers,
  ..._i77.AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i78.BuiltList,
    [FullType(String)],
  ): _i78.ListBuilder<String>.new,
  const FullType(
    _i78.BuiltSet,
    [FullType(String)],
  ): _i78.SetBuilder<String>.new,
  const FullType(
    _i78.BuiltList,
    [FullType(int)],
  ): _i78.ListBuilder<int>.new,
  const FullType(
    _i78.BuiltSet,
    [FullType(int)],
  ): _i78.SetBuilder<int>.new,
  const FullType(
    _i78.BuiltList,
    [FullType(double)],
  ): _i78.ListBuilder<double>.new,
  const FullType(
    _i78.BuiltList,
    [FullType(bool)],
  ): _i78.ListBuilder<bool>.new,
  const FullType(
    _i78.BuiltList,
    [FullType(DateTime)],
  ): _i78.ListBuilder<DateTime>.new,
  const FullType(
    _i78.BuiltList,
    [FullType(_i3.FooEnum)],
  ): _i78.ListBuilder<_i3.FooEnum>.new,
  const FullType(
    _i78.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i78.MapBuilder<String, String>.new,
  const FullType(
    _i78.BuiltMap,
    [
      FullType(String),
      FullType(_i3.FooEnum),
    ],
  ): _i78.MapBuilder<String, _i3.FooEnum>.new,
  const FullType(
    _i78.BuiltMap,
    [
      FullType(String),
      FullType(
        _i78.BuiltMap,
        [
          FullType(String),
          FullType(_i3.FooEnum),
        ],
      ),
    ],
  ): _i78.MapBuilder<String, _i78.BuiltMap<String, _i3.FooEnum>>.new,
  const FullType(
    _i78.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i78.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i78.BuiltList,
    [
      FullType(
        _i78.BuiltList,
        [FullType(String)],
      )
    ],
  ): _i78.ListBuilder<_i78.BuiltList<String>>.new,
  const FullType(
    _i78.BuiltList,
    [FullType(_i55.StructureListMember)],
  ): _i78.ListBuilder<_i55.StructureListMember>.new,
  const FullType(
    _i78.BuiltMap,
    [
      FullType(String),
      FullType(_i57.GreetingStruct),
    ],
  ): _i78.MapBuilder<String, _i57.GreetingStruct>.new,
  const FullType(
    _i78.BuiltSet,
    [FullType(_i3.FooEnum)],
  ): _i78.SetBuilder<_i3.FooEnum>.new,
  const FullType(
    _i78.BuiltMap,
    [
      FullType(String),
      FullType(int),
    ],
  ): _i78.MapBuilder<String, int>.new,
  const FullType(
    _i78.BuiltMap,
    [
      FullType(String),
      FullType(_i72.FileConfigSettings),
    ],
  ): _i78.MapBuilder<String, _i72.FileConfigSettings>.new,
};
