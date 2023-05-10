// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_json1_1_v2.json_protocol.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1_v2/src/json_protocol/model/aws_config.dart' as _i37;
import 'package:aws_json1_1_v2/src/json_protocol/model/client_config.dart'
    as _i34;
import 'package:aws_json1_1_v2/src/json_protocol/model/complex_error.dart'
    as _i5;
import 'package:aws_json1_1_v2/src/json_protocol/model/complex_nested_error_data.dart'
    as _i6;
import 'package:aws_json1_1_v2/src/json_protocol/model/datetime_offsets_output.dart'
    as _i2;
import 'package:aws_json1_1_v2/src/json_protocol/model/empty_struct.dart'
    as _i18;
import 'package:aws_json1_1_v2/src/json_protocol/model/environment_config.dart'
    as _i29;
import 'package:aws_json1_1_v2/src/json_protocol/model/error_with_members.dart'
    as _i21;
import 'package:aws_json1_1_v2/src/json_protocol/model/error_without_members.dart'
    as _i22;
import 'package:aws_json1_1_v2/src/json_protocol/model/file_config_settings.dart'
    as _i32;
import 'package:aws_json1_1_v2/src/json_protocol/model/foo_enum.dart' as _i11;
import 'package:aws_json1_1_v2/src/json_protocol/model/foo_error.dart' as _i7;
import 'package:aws_json1_1_v2/src/json_protocol/model/fractional_seconds_output.dart'
    as _i4;
import 'package:aws_json1_1_v2/src/json_protocol/model/greeting_struct.dart'
    as _i15;
import 'package:aws_json1_1_v2/src/json_protocol/model/greeting_with_errors_output.dart'
    as _i9;
import 'package:aws_json1_1_v2/src/json_protocol/model/host_label_input.dart'
    as _i3;
import 'package:aws_json1_1_v2/src/json_protocol/model/integer_enum.dart'
    as _i13;
import 'package:aws_json1_1_v2/src/json_protocol/model/invalid_greeting.dart'
    as _i8;
import 'package:aws_json1_1_v2/src/json_protocol/model/json_enums_input_output.dart'
    as _i10;
import 'package:aws_json1_1_v2/src/json_protocol/model/json_int_enums_input_output.dart'
    as _i12;
import 'package:aws_json1_1_v2/src/json_protocol/model/kitchen_sink.dart'
    as _i17;
import 'package:aws_json1_1_v2/src/json_protocol/model/my_union.dart' as _i16;
import 'package:aws_json1_1_v2/src/json_protocol/model/null_operation_input_output.dart'
    as _i23;
import 'package:aws_json1_1_v2/src/json_protocol/model/operation_config.dart'
    as _i35;
import 'package:aws_json1_1_v2/src/json_protocol/model/operation_with_optional_input_output_input.dart'
    as _i24;
import 'package:aws_json1_1_v2/src/json_protocol/model/operation_with_optional_input_output_output.dart'
    as _i25;
import 'package:aws_json1_1_v2/src/json_protocol/model/put_and_get_inline_documents_input_output.dart'
    as _i26;
import 'package:aws_json1_1_v2/src/json_protocol/model/retry_config.dart'
    as _i33;
import 'package:aws_json1_1_v2/src/json_protocol/model/retry_mode.dart' as _i28;
import 'package:aws_json1_1_v2/src/json_protocol/model/s3_addressing_style.dart'
    as _i30;
import 'package:aws_json1_1_v2/src/json_protocol/model/s3_config.dart' as _i31;
import 'package:aws_json1_1_v2/src/json_protocol/model/scoped_config.dart'
    as _i36;
import 'package:aws_json1_1_v2/src/json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i27;
import 'package:aws_json1_1_v2/src/json_protocol/model/simple_struct.dart'
    as _i19;
import 'package:aws_json1_1_v2/src/json_protocol/model/struct_with_json_name.dart'
    as _i20;
import 'package:aws_json1_1_v2/src/json_protocol/model/union_input_output.dart'
    as _i14;
import 'package:built_collection/built_collection.dart' as _i38;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.DatetimeOffsetsOutput.serializers,
  ..._i3.HostLabelInput.serializers,
  ..._i4.FractionalSecondsOutput.serializers,
  ..._i5.ComplexError.serializers,
  ..._i6.ComplexNestedErrorData.serializers,
  ..._i7.FooError.serializers,
  ..._i8.InvalidGreeting.serializers,
  ..._i9.GreetingWithErrorsOutput.serializers,
  ..._i10.JsonEnumsInputOutput.serializers,
  ..._i11.FooEnum.serializers,
  ..._i12.JsonIntEnumsInputOutput.serializers,
  ..._i13.IntegerEnum.serializers,
  ..._i14.UnionInputOutput.serializers,
  ..._i15.GreetingStruct.serializers,
  ..._i16.MyUnion.serializers,
  ..._i17.KitchenSink.serializers,
  ..._i18.EmptyStruct.serializers,
  ..._i19.SimpleStruct.serializers,
  ..._i20.StructWithJsonName.serializers,
  ..._i21.ErrorWithMembers.serializers,
  ..._i22.ErrorWithoutMembers.serializers,
  ..._i23.NullOperationInputOutput.serializers,
  ..._i24.OperationWithOptionalInputOutputInput.serializers,
  ..._i25.OperationWithOptionalInputOutputOutput.serializers,
  ..._i26.PutAndGetInlineDocumentsInputOutput.serializers,
  ..._i27.SimpleScalarPropertiesInputOutput.serializers,
  ..._i28.RetryMode.serializers,
  ..._i29.EnvironmentConfig.serializers,
  ..._i30.S3AddressingStyle.serializers,
  ..._i31.S3Config.serializers,
  ..._i32.FileConfigSettings.serializers,
  ..._i33.RetryConfig.serializers,
  ..._i34.ClientConfig.serializers,
  ..._i35.OperationConfig.serializers,
  ..._i36.ScopedConfig.serializers,
  ..._i37.AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i38.BuiltList,
    [FullType(_i11.FooEnum)],
  ): _i38.ListBuilder<_i11.FooEnum>.new,
  const FullType(
    _i38.BuiltSet,
    [FullType(_i11.FooEnum)],
  ): _i38.SetBuilder<_i11.FooEnum>.new,
  const FullType(
    _i38.BuiltMap,
    [
      FullType(String),
      FullType(_i11.FooEnum),
    ],
  ): _i38.MapBuilder<String, _i11.FooEnum>.new,
  const FullType(
    _i38.BuiltList,
    [FullType(_i13.IntegerEnum)],
  ): _i38.ListBuilder<_i13.IntegerEnum>.new,
  const FullType(
    _i38.BuiltSet,
    [FullType(_i13.IntegerEnum)],
  ): _i38.SetBuilder<_i13.IntegerEnum>.new,
  const FullType(
    _i38.BuiltMap,
    [
      FullType(String),
      FullType(_i13.IntegerEnum),
    ],
  ): _i38.MapBuilder<String, _i13.IntegerEnum>.new,
  const FullType(
    _i38.BuiltList,
    [FullType(String)],
  ): _i38.ListBuilder<String>.new,
  const FullType(
    _i38.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i38.MapBuilder<String, String>.new,
  const FullType(
    _i38.BuiltList,
    [
      FullType(
        _i38.BuiltList,
        [FullType(String)],
      )
    ],
  ): _i38.ListBuilder<_i38.BuiltList<String>>.new,
  const FullType(
    _i38.BuiltList,
    [
      FullType(
        _i38.BuiltMap,
        [
          FullType(String),
          FullType(String),
        ],
      )
    ],
  ): _i38.ListBuilder<_i38.BuiltMap<String, String>>.new,
  const FullType(
    _i38.BuiltList,
    [FullType(_i19.SimpleStruct)],
  ): _i38.ListBuilder<_i19.SimpleStruct>.new,
  const FullType(
    _i38.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i38.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i38.BuiltMap,
    [
      FullType(String),
      FullType(
        _i38.BuiltMap,
        [
          FullType(String),
          FullType(String),
        ],
      ),
    ],
  ): _i38.MapBuilder<String, _i38.BuiltMap<String, String>>.new,
  const FullType(
    _i38.BuiltMap,
    [
      FullType(String),
      FullType(_i19.SimpleStruct),
    ],
  ): _i38.MapBuilder<String, _i19.SimpleStruct>.new,
  const FullType(
    _i38.BuiltList,
    [FullType(_i17.KitchenSink)],
  ): _i38.ListBuilder<_i17.KitchenSink>.new,
  const FullType(
    _i38.BuiltMap,
    [
      FullType(String),
      FullType(_i17.KitchenSink),
    ],
  ): _i38.MapBuilder<String, _i17.KitchenSink>.new,
  const FullType(
    _i38.BuiltList,
    [FullType.nullable(String)],
  ): _i38.ListBuilder<String?>.new,
  const FullType(
    _i38.BuiltMap,
    [
      FullType(String),
      FullType.nullable(String),
    ],
  ): _i38.MapBuilder<String, String?>.new,
  const FullType(
    _i38.BuiltMap,
    [
      FullType(String),
      FullType(_i32.FileConfigSettings),
    ],
  ): _i38.MapBuilder<String, _i32.FileConfigSettings>.new,
};
