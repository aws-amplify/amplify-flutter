// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_1_v2.json_protocol.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1_v2/src/json_protocol/model/aws_config.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/client_config.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/complex_error.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/complex_nested_error_data.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/datetime_offsets_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/empty_struct.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/environment_config.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/error_with_members.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/error_without_members.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/file_config_settings.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/foo_enum.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/foo_error.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/fractional_seconds_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/greeting_struct.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/greeting_with_errors_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/host_label_input.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/integer_enum.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/invalid_greeting.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/json_enums_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/json_int_enums_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/kitchen_sink.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/my_union.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/null_operation_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/operation_config.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/operation_with_optional_input_output_input.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/operation_with_optional_input_output_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/put_and_get_inline_documents_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/put_with_content_encoding_input.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/retry_config.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/retry_mode.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/s3_addressing_style.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/s3_config.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/scoped_config.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/simple_scalar_properties_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/simple_struct.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/struct_with_json_name.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/union_input_output.dart';
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...DatetimeOffsetsOutput.serializers,
  ...HostLabelInput.serializers,
  ...FractionalSecondsOutput.serializers,
  ...ComplexError.serializers,
  ...ComplexNestedErrorData.serializers,
  ...FooError.serializers,
  ...InvalidGreeting.serializers,
  ...GreetingWithErrorsOutput.serializers,
  ...JsonEnumsInputOutput.serializers,
  ...FooEnum.serializers,
  ...JsonIntEnumsInputOutput.serializers,
  ...IntegerEnum.serializers,
  ...UnionInputOutput.serializers,
  ...GreetingStruct.serializers,
  ...MyUnion.serializers,
  ...KitchenSink.serializers,
  ...EmptyStruct.serializers,
  ...SimpleStruct.serializers,
  ...StructWithJsonName.serializers,
  ...ErrorWithMembers.serializers,
  ...ErrorWithoutMembers.serializers,
  ...NullOperationInputOutput.serializers,
  ...OperationWithOptionalInputOutputInput.serializers,
  ...OperationWithOptionalInputOutputOutput.serializers,
  ...PutAndGetInlineDocumentsInputOutput.serializers,
  ...PutWithContentEncodingInput.serializers,
  ...SimpleScalarPropertiesInputOutput.serializers,
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
    [FullType(FooEnum)],
  ): _i2.ListBuilder<FooEnum>.new,
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
    _i2.BuiltList,
    [FullType(IntegerEnum)],
  ): _i2.ListBuilder<IntegerEnum>.new,
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
    _i2.BuiltList,
    [FullType(String)],
  ): _i2.ListBuilder<String>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.MapBuilder<String, String>.new,
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
    [
      FullType(
        _i2.BuiltMap,
        [
          FullType(String),
          FullType(String),
        ],
      )
    ],
  ): _i2.ListBuilder<_i2.BuiltMap<String, String>>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SimpleStruct)],
  ): _i2.ListBuilder<SimpleStruct>.new,
  const FullType(
    _i2.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(
        _i2.BuiltMap,
        [
          FullType(String),
          FullType(String),
        ],
      ),
    ],
  ): _i2.MapBuilder<String, _i2.BuiltMap<String, String>>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(SimpleStruct),
    ],
  ): _i2.MapBuilder<String, SimpleStruct>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(KitchenSink)],
  ): _i2.ListBuilder<KitchenSink>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(KitchenSink),
    ],
  ): _i2.MapBuilder<String, KitchenSink>.new,
  const FullType(
    _i2.BuiltList,
    [FullType.nullable(String)],
  ): _i2.ListBuilder<String?>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType.nullable(String),
    ],
  ): _i2.MapBuilder<String, String?>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(FileConfigSettings),
    ],
  ): _i2.MapBuilder<String, FileConfigSettings>.new,
};
