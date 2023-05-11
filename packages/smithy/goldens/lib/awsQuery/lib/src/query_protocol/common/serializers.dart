// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v1.query_protocol.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v1/src/query_protocol/model/aws_config.dart' as _i52;
import 'package:aws_query_v1/src/query_protocol/model/client_config.dart'
    as _i49;
import 'package:aws_query_v1/src/query_protocol/model/complex_error.dart'
    as _i12;
import 'package:aws_query_v1/src/query_protocol/model/complex_nested_error_data.dart'
    as _i13;
import 'package:aws_query_v1/src/query_protocol/model/custom_code_error.dart'
    as _i14;
import 'package:aws_query_v1/src/query_protocol/model/datetime_offsets_output.dart'
    as _i2;
import 'package:aws_query_v1/src/query_protocol/model/empty_input_and_empty_output_input.dart'
    as _i3;
import 'package:aws_query_v1/src/query_protocol/model/empty_input_and_empty_output_output.dart'
    as _i4;
import 'package:aws_query_v1/src/query_protocol/model/environment_config.dart'
    as _i44;
import 'package:aws_query_v1/src/query_protocol/model/file_config_settings.dart'
    as _i47;
import 'package:aws_query_v1/src/query_protocol/model/flattened_xml_map_output.dart'
    as _i6;
import 'package:aws_query_v1/src/query_protocol/model/flattened_xml_map_with_xml_name_output.dart'
    as _i8;
import 'package:aws_query_v1/src/query_protocol/model/flattened_xml_map_with_xml_namespace_output.dart'
    as _i9;
import 'package:aws_query_v1/src/query_protocol/model/foo_enum.dart' as _i7;
import 'package:aws_query_v1/src/query_protocol/model/fractional_seconds_output.dart'
    as _i10;
import 'package:aws_query_v1/src/query_protocol/model/greeting_struct.dart'
    as _i23;
import 'package:aws_query_v1/src/query_protocol/model/greeting_with_errors_output.dart'
    as _i11;
import 'package:aws_query_v1/src/query_protocol/model/host_label_input.dart'
    as _i5;
import 'package:aws_query_v1/src/query_protocol/model/ignores_wrapping_xml_name_output.dart'
    as _i16;
import 'package:aws_query_v1/src/query_protocol/model/invalid_greeting.dart'
    as _i15;
import 'package:aws_query_v1/src/query_protocol/model/nested_struct_with_list.dart'
    as _i24;
import 'package:aws_query_v1/src/query_protocol/model/nested_struct_with_map.dart'
    as _i26;
import 'package:aws_query_v1/src/query_protocol/model/nested_structures_input.dart'
    as _i17;
import 'package:aws_query_v1/src/query_protocol/model/no_input_and_output_input.dart'
    as _i19;
import 'package:aws_query_v1/src/query_protocol/model/no_input_and_output_output.dart'
    as _i20;
import 'package:aws_query_v1/src/query_protocol/model/operation_config.dart'
    as _i50;
import 'package:aws_query_v1/src/query_protocol/model/query_idempotency_token_auto_fill_input.dart'
    as _i21;
import 'package:aws_query_v1/src/query_protocol/model/query_lists_input.dart'
    as _i22;
import 'package:aws_query_v1/src/query_protocol/model/query_maps_input.dart'
    as _i25;
import 'package:aws_query_v1/src/query_protocol/model/query_timestamps_input.dart'
    as _i27;
import 'package:aws_query_v1/src/query_protocol/model/recursive_xml_shapes_output.dart'
    as _i28;
import 'package:aws_query_v1/src/query_protocol/model/recursive_xml_shapes_output_nested1.dart'
    as _i29;
import 'package:aws_query_v1/src/query_protocol/model/recursive_xml_shapes_output_nested2.dart'
    as _i30;
import 'package:aws_query_v1/src/query_protocol/model/retry_config.dart'
    as _i48;
import 'package:aws_query_v1/src/query_protocol/model/retry_mode.dart' as _i43;
import 'package:aws_query_v1/src/query_protocol/model/s3_addressing_style.dart'
    as _i45;
import 'package:aws_query_v1/src/query_protocol/model/s3_config.dart' as _i46;
import 'package:aws_query_v1/src/query_protocol/model/scoped_config.dart'
    as _i51;
import 'package:aws_query_v1/src/query_protocol/model/simple_input_params_input.dart'
    as _i31;
import 'package:aws_query_v1/src/query_protocol/model/simple_scalar_xml_properties_output.dart'
    as _i32;
import 'package:aws_query_v1/src/query_protocol/model/struct_arg.dart' as _i18;
import 'package:aws_query_v1/src/query_protocol/model/structure_list_member.dart'
    as _i35;
import 'package:aws_query_v1/src/query_protocol/model/xml_blobs_output.dart'
    as _i33;
import 'package:aws_query_v1/src/query_protocol/model/xml_enums_output.dart'
    as _i37;
import 'package:aws_query_v1/src/query_protocol/model/xml_int_enums_output.dart'
    as _i38;
import 'package:aws_query_v1/src/query_protocol/model/xml_lists_output.dart'
    as _i34;
import 'package:aws_query_v1/src/query_protocol/model/xml_maps_output.dart'
    as _i36;
import 'package:aws_query_v1/src/query_protocol/model/xml_maps_xml_name_output.dart'
    as _i39;
import 'package:aws_query_v1/src/query_protocol/model/xml_namespace_nested.dart'
    as _i41;
import 'package:aws_query_v1/src/query_protocol/model/xml_namespaces_output.dart'
    as _i40;
import 'package:aws_query_v1/src/query_protocol/model/xml_timestamps_output.dart'
    as _i42;
import 'package:built_collection/built_collection.dart' as _i53;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.DatetimeOffsetsOutput.serializers,
  ..._i3.EmptyInputAndEmptyOutputInput.serializers,
  ..._i4.EmptyInputAndEmptyOutputOutput.serializers,
  ..._i5.HostLabelInput.serializers,
  ..._i6.FlattenedXmlMapOutput.serializers,
  ..._i7.FooEnum.serializers,
  ..._i8.FlattenedXmlMapWithXmlNameOutput.serializers,
  ..._i9.FlattenedXmlMapWithXmlNamespaceOutput.serializers,
  ..._i10.FractionalSecondsOutput.serializers,
  ..._i11.GreetingWithErrorsOutput.serializers,
  ..._i12.ComplexError.serializers,
  ..._i13.ComplexNestedErrorData.serializers,
  ..._i14.CustomCodeError.serializers,
  ..._i15.InvalidGreeting.serializers,
  ..._i16.IgnoresWrappingXmlNameOutput.serializers,
  ..._i17.NestedStructuresInput.serializers,
  ..._i18.StructArg.serializers,
  ..._i19.NoInputAndOutputInput.serializers,
  ..._i20.NoInputAndOutputOutput.serializers,
  ..._i21.QueryIdempotencyTokenAutoFillInput.serializers,
  ..._i22.QueryListsInput.serializers,
  ..._i23.GreetingStruct.serializers,
  ..._i24.NestedStructWithList.serializers,
  ..._i25.QueryMapsInput.serializers,
  ..._i26.NestedStructWithMap.serializers,
  ..._i27.QueryTimestampsInput.serializers,
  ..._i28.RecursiveXmlShapesOutput.serializers,
  ..._i29.RecursiveXmlShapesOutputNested1.serializers,
  ..._i30.RecursiveXmlShapesOutputNested2.serializers,
  ..._i31.SimpleInputParamsInput.serializers,
  ..._i32.SimpleScalarXmlPropertiesOutput.serializers,
  ..._i33.XmlBlobsOutput.serializers,
  ..._i34.XmlListsOutput.serializers,
  ..._i35.StructureListMember.serializers,
  ..._i36.XmlMapsOutput.serializers,
  ..._i37.XmlEnumsOutput.serializers,
  ..._i38.XmlIntEnumsOutput.serializers,
  ..._i39.XmlMapsXmlNameOutput.serializers,
  ..._i40.XmlNamespacesOutput.serializers,
  ..._i41.XmlNamespaceNested.serializers,
  ..._i42.XmlTimestampsOutput.serializers,
  ..._i43.RetryMode.serializers,
  ..._i44.EnvironmentConfig.serializers,
  ..._i45.S3AddressingStyle.serializers,
  ..._i46.S3Config.serializers,
  ..._i47.FileConfigSettings.serializers,
  ..._i48.RetryConfig.serializers,
  ..._i49.ClientConfig.serializers,
  ..._i50.OperationConfig.serializers,
  ..._i51.ScopedConfig.serializers,
  ..._i52.AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i53.BuiltMap,
    [
      FullType(String),
      FullType(_i7.FooEnum),
    ],
  ): _i53.MapBuilder<String, _i7.FooEnum>.new,
  const FullType(
    _i53.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i53.MapBuilder<String, String>.new,
  const FullType(
    _i53.BuiltList,
    [FullType(String)],
  ): _i53.ListBuilder<String>.new,
  const FullType(
    _i53.BuiltList,
    [FullType(_i23.GreetingStruct)],
  ): _i53.ListBuilder<_i23.GreetingStruct>.new,
  const FullType(
    _i53.BuiltMap,
    [
      FullType(String),
      FullType(_i23.GreetingStruct),
    ],
  ): _i53.MapBuilder<String, _i23.GreetingStruct>.new,
  const FullType(
    _i53.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i53.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i53.BuiltSet,
    [FullType(String)],
  ): _i53.SetBuilder<String>.new,
  const FullType(
    _i53.BuiltList,
    [FullType(int)],
  ): _i53.ListBuilder<int>.new,
  const FullType(
    _i53.BuiltList,
    [FullType(bool)],
  ): _i53.ListBuilder<bool>.new,
  const FullType(
    _i53.BuiltList,
    [FullType(DateTime)],
  ): _i53.ListBuilder<DateTime>.new,
  const FullType(
    _i53.BuiltList,
    [FullType(_i7.FooEnum)],
  ): _i53.ListBuilder<_i7.FooEnum>.new,
  const FullType(
    _i53.BuiltList,
    [
      FullType(
        _i53.BuiltList,
        [FullType(String)],
      )
    ],
  ): _i53.ListBuilder<_i53.BuiltList<String>>.new,
  const FullType(
    _i53.BuiltList,
    [FullType(_i35.StructureListMember)],
  ): _i53.ListBuilder<_i35.StructureListMember>.new,
  const FullType(
    _i53.BuiltSet,
    [FullType(_i7.FooEnum)],
  ): _i53.SetBuilder<_i7.FooEnum>.new,
  const FullType(
    _i53.BuiltSet,
    [FullType(int)],
  ): _i53.SetBuilder<int>.new,
  const FullType(
    _i53.BuiltMap,
    [
      FullType(String),
      FullType(int),
    ],
  ): _i53.MapBuilder<String, int>.new,
  const FullType(
    _i53.BuiltMap,
    [
      FullType(String),
      FullType(_i47.FileConfigSettings),
    ],
  ): _i53.MapBuilder<String, _i47.FileConfigSettings>.new,
};
