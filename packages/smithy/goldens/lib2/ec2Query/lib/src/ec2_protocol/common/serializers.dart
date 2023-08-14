// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library ec2_query_v2.ec2_protocol.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/aws_config.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/client_config.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/complex_error.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/complex_nested_error_data.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/datetime_offsets_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/empty_input_and_empty_output_input.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/empty_input_and_empty_output_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/environment_config.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/file_config_settings.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/foo_enum.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/fractional_seconds_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/greeting_struct.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/greeting_with_errors_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/host_label_input.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/ignores_wrapping_xml_name_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/integer_enum.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/invalid_greeting.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/nested_struct_with_list.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/nested_structures_input.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/no_input_and_output_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/operation_config.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/query_idempotency_token_auto_fill_input.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/query_lists_input.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/query_timestamps_input.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/recursive_xml_shapes_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/recursive_xml_shapes_output_nested1.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/recursive_xml_shapes_output_nested2.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/retry_config.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/retry_mode.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/s3_addressing_style.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/s3_config.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/scoped_config.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/simple_input_params_input.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/simple_scalar_xml_properties_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/struct_arg.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/structure_list_member.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_blobs_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_enums_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_int_enums_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_lists_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_namespace_nested.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_namespaces_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_timestamps_output.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...DatetimeOffsetsOutput.serializers,
  ...EmptyInputAndEmptyOutputInput.serializers,
  ...EmptyInputAndEmptyOutputOutput.serializers,
  ...HostLabelInput.serializers,
  ...FractionalSecondsOutput.serializers,
  ...GreetingWithErrorsOutput.serializers,
  ...ComplexError.serializers,
  ...ComplexNestedErrorData.serializers,
  ...InvalidGreeting.serializers,
  ...IgnoresWrappingXmlNameOutput.serializers,
  ...NestedStructuresInput.serializers,
  ...StructArg.serializers,
  ...NoInputAndOutputOutput.serializers,
  ...QueryIdempotencyTokenAutoFillInput.serializers,
  ...QueryListsInput.serializers,
  ...GreetingStruct.serializers,
  ...NestedStructWithList.serializers,
  ...QueryTimestampsInput.serializers,
  ...RecursiveXmlShapesOutput.serializers,
  ...RecursiveXmlShapesOutputNested1.serializers,
  ...RecursiveXmlShapesOutputNested2.serializers,
  ...SimpleInputParamsInput.serializers,
  ...FooEnum.serializers,
  ...SimpleScalarXmlPropertiesOutput.serializers,
  ...XmlBlobsOutput.serializers,
  ...XmlListsOutput.serializers,
  ...StructureListMember.serializers,
  ...IntegerEnum.serializers,
  ...XmlEnumsOutput.serializers,
  ...XmlIntEnumsOutput.serializers,
  ...XmlNamespacesOutput.serializers,
  ...XmlNamespaceNested.serializers,
  ...XmlTimestampsOutput.serializers,
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
    _i2.BuiltList,
    [FullType(GreetingStruct)],
  ): _i2.ListBuilder<GreetingStruct>.new,
  const FullType(
    _i2.BuiltSet,
    [FullType(String)],
  ): _i2.SetBuilder<String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(int)],
  ): _i2.ListBuilder<int>.new,
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
    _i2.BuiltList,
    [FullType(IntegerEnum)],
  ): _i2.ListBuilder<IntegerEnum>.new,
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
    _i2.BuiltSet,
    [FullType(FooEnum)],
  ): _i2.SetBuilder<FooEnum>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(FooEnum),
    ],
  ): _i2.MapBuilder<String, FooEnum>.new,
  const FullType(
    _i2.BuiltSet,
    [FullType(IntegerEnum)],
  ): _i2.SetBuilder<IntegerEnum>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(IntegerEnum),
    ],
  ): _i2.MapBuilder<String, IntegerEnum>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(FileConfigSettings),
    ],
  ): _i2.MapBuilder<String, FileConfigSettings>.new,
};
