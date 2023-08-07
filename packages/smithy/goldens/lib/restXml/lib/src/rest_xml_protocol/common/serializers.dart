// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v1.rest_xml_protocol.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/all_query_string_types_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/aws_config.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/body_with_xml_name_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/client_config.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/complex_error.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/complex_nested_error_data.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/constant_and_variable_query_string_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/constant_query_string_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/datetime_offsets_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/empty_input_and_empty_output_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/empty_input_and_empty_output_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/environment_config.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/file_config_settings.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/flattened_xml_map_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/flattened_xml_map_with_xml_name_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/flattened_xml_map_with_xml_namespace_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/foo_enum.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/fractional_seconds_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/greeting_struct.dart';
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
import 'package:rest_xml_v1/src/rest_xml_protocol/model/operation_config.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_name.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_namespace.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_namespace_and_prefix.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/put_with_content_encoding_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/query_idempotency_token_auto_fill_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/query_params_as_string_list_map_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/query_precedence_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/recursive_shapes_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/recursive_shapes_input_output_nested1.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/recursive_shapes_input_output_nested2.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/retry_config.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/retry_mode.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/s3_addressing_style.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/s3_config.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/scoped_config.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/simple_scalar_properties_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/structure_list_member.dart';
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
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_namespace_nested.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_namespaces_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_nested_union_struct.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_timestamps_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_union_shape.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_unions_input_output.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...AllQueryStringTypesInput.serializers,
  ...FooEnum.serializers,
  ...BodyWithXmlNameInputOutput.serializers,
  ...PayloadWithXmlName.serializers,
  ...ConstantAndVariableQueryStringInput.serializers,
  ...ConstantQueryStringInput.serializers,
  ...DatetimeOffsetsOutput.serializers,
  ...EmptyInputAndEmptyOutputInput.serializers,
  ...EmptyInputAndEmptyOutputOutput.serializers,
  ...HostLabelHeaderInput.serializers,
  ...HostLabelInput.serializers,
  ...FlattenedXmlMapInputOutput.serializers,
  ...FlattenedXmlMapWithXmlNameInputOutput.serializers,
  ...FlattenedXmlMapWithXmlNamespaceOutput.serializers,
  ...FractionalSecondsOutput.serializers,
  ...GreetingWithErrorsOutput.serializers,
  ...ComplexError.serializers,
  ...ComplexNestedErrorData.serializers,
  ...InvalidGreeting.serializers,
  ...HttpPayloadTraitsInputOutput.serializers,
  ...HttpPayloadTraitsWithMediaTypeInputOutput.serializers,
  ...HttpPayloadWithMemberXmlNameInputOutput.serializers,
  ...HttpPayloadWithStructureInputOutput.serializers,
  ...NestedPayload.serializers,
  ...HttpPayloadWithXmlNameInputOutput.serializers,
  ...HttpPayloadWithXmlNamespaceInputOutput.serializers,
  ...PayloadWithXmlNamespace.serializers,
  ...HttpPayloadWithXmlNamespaceAndPrefixInputOutput.serializers,
  ...PayloadWithXmlNamespaceAndPrefix.serializers,
  ...HttpPrefixHeadersInputOutput.serializers,
  ...HttpRequestWithFloatLabelsInput.serializers,
  ...HttpRequestWithGreedyLabelInPathInput.serializers,
  ...HttpRequestWithLabelsInput.serializers,
  ...HttpRequestWithLabelsAndTimestampFormatInput.serializers,
  ...HttpResponseCodeOutput.serializers,
  ...IgnoreQueryParamsInResponseOutput.serializers,
  ...InputAndOutputWithHeadersIo.serializers,
  ...NestedXmlMapsInputOutput.serializers,
  ...NoInputAndOutputOutput.serializers,
  ...NullAndEmptyHeadersIo.serializers,
  ...OmitsNullSerializesEmptyStringInput.serializers,
  ...PutWithContentEncodingInput.serializers,
  ...QueryIdempotencyTokenAutoFillInput.serializers,
  ...QueryParamsAsStringListMapInput.serializers,
  ...QueryPrecedenceInput.serializers,
  ...RecursiveShapesInputOutput.serializers,
  ...RecursiveShapesInputOutputNested1.serializers,
  ...RecursiveShapesInputOutputNested2.serializers,
  ...SimpleScalarPropertiesInputOutput.serializers,
  ...TimestampFormatHeadersIo.serializers,
  ...XmlAttributesInputOutput.serializers,
  ...XmlAttributesOnPayloadInputOutput.serializers,
  ...XmlBlobsInputOutput.serializers,
  ...XmlListsInputOutput.serializers,
  ...StructureListMember.serializers,
  ...XmlMapsInputOutput.serializers,
  ...GreetingStruct.serializers,
  ...XmlEmptyStringsInputOutput.serializers,
  ...XmlEnumsInputOutput.serializers,
  ...XmlIntEnumsInputOutput.serializers,
  ...XmlMapsXmlNameInputOutput.serializers,
  ...XmlNamespacesInputOutput.serializers,
  ...XmlNamespaceNested.serializers,
  ...XmlTimestampsInputOutput.serializers,
  ...XmlUnionsInputOutput.serializers,
  ...XmlNestedUnionStruct.serializers,
  ...XmlUnionShape.serializers,
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
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.MapBuilder<String, String>.new,
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
      FullType(
        _i2.BuiltMap,
        [
          FullType(String),
          FullType(FooEnum),
        ],
      ),
    ],
  ): _i2.MapBuilder<String, _i2.BuiltMap<String, FooEnum>>.new,
  const FullType(
    _i2.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.ListMultimapBuilder<String, String>.new,
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
    _i2.BuiltSet,
    [FullType(FooEnum)],
  ): _i2.SetBuilder<FooEnum>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(int),
    ],
  ): _i2.MapBuilder<String, int>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(FileConfigSettings),
    ],
  ): _i2.MapBuilder<String, FileConfigSettings>.new,
};
