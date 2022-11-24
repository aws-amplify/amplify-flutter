// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library aws_json1_1_v1.json_protocol.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1_v1/src/json_protocol/model/aws_config.dart' as _i33;
import 'package:aws_json1_1_v1/src/json_protocol/model/client_config.dart'
    as _i30;
import 'package:aws_json1_1_v1/src/json_protocol/model/complex_error.dart'
    as _i3;
import 'package:aws_json1_1_v1/src/json_protocol/model/complex_nested_error_data.dart'
    as _i4;
import 'package:aws_json1_1_v1/src/json_protocol/model/empty_struct.dart'
    as _i14;
import 'package:aws_json1_1_v1/src/json_protocol/model/environment_config.dart'
    as _i25;
import 'package:aws_json1_1_v1/src/json_protocol/model/error_with_members.dart'
    as _i17;
import 'package:aws_json1_1_v1/src/json_protocol/model/error_without_members.dart'
    as _i18;
import 'package:aws_json1_1_v1/src/json_protocol/model/file_config_settings.dart'
    as _i28;
import 'package:aws_json1_1_v1/src/json_protocol/model/foo_enum.dart' as _i9;
import 'package:aws_json1_1_v1/src/json_protocol/model/foo_error.dart' as _i5;
import 'package:aws_json1_1_v1/src/json_protocol/model/greeting_struct.dart'
    as _i11;
import 'package:aws_json1_1_v1/src/json_protocol/model/greeting_with_errors_output.dart'
    as _i7;
import 'package:aws_json1_1_v1/src/json_protocol/model/host_label_input.dart'
    as _i2;
import 'package:aws_json1_1_v1/src/json_protocol/model/invalid_greeting.dart'
    as _i6;
import 'package:aws_json1_1_v1/src/json_protocol/model/json_enums_input_output.dart'
    as _i8;
import 'package:aws_json1_1_v1/src/json_protocol/model/kitchen_sink.dart'
    as _i13;
import 'package:aws_json1_1_v1/src/json_protocol/model/my_union.dart' as _i12;
import 'package:aws_json1_1_v1/src/json_protocol/model/null_operation_input_output.dart'
    as _i19;
import 'package:aws_json1_1_v1/src/json_protocol/model/operation_config.dart'
    as _i31;
import 'package:aws_json1_1_v1/src/json_protocol/model/operation_with_optional_input_output_input.dart'
    as _i20;
import 'package:aws_json1_1_v1/src/json_protocol/model/operation_with_optional_input_output_output.dart'
    as _i21;
import 'package:aws_json1_1_v1/src/json_protocol/model/put_and_get_inline_documents_input_output.dart'
    as _i22;
import 'package:aws_json1_1_v1/src/json_protocol/model/retry_config.dart'
    as _i29;
import 'package:aws_json1_1_v1/src/json_protocol/model/retry_mode.dart' as _i24;
import 'package:aws_json1_1_v1/src/json_protocol/model/s3_addressing_style.dart'
    as _i26;
import 'package:aws_json1_1_v1/src/json_protocol/model/s3_config.dart' as _i27;
import 'package:aws_json1_1_v1/src/json_protocol/model/scoped_config.dart'
    as _i32;
import 'package:aws_json1_1_v1/src/json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i23;
import 'package:aws_json1_1_v1/src/json_protocol/model/simple_struct.dart'
    as _i15;
import 'package:aws_json1_1_v1/src/json_protocol/model/struct_with_json_name.dart'
    as _i16;
import 'package:aws_json1_1_v1/src/json_protocol/model/union_input_output.dart'
    as _i10;
import 'package:built_collection/built_collection.dart' as _i34;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.HostLabelInput.serializers,
  ..._i3.ComplexError.serializers,
  ..._i4.ComplexNestedErrorData.serializers,
  ..._i5.FooError.serializers,
  ..._i6.InvalidGreeting.serializers,
  ..._i7.GreetingWithErrorsOutput.serializers,
  ..._i8.JsonEnumsInputOutput.serializers,
  ..._i9.FooEnum.serializers,
  ..._i10.UnionInputOutput.serializers,
  ..._i11.GreetingStruct.serializers,
  ..._i12.MyUnion.serializers,
  ..._i13.KitchenSink.serializers,
  ..._i14.EmptyStruct.serializers,
  ..._i15.SimpleStruct.serializers,
  ..._i16.StructWithJsonName.serializers,
  ..._i17.ErrorWithMembers.serializers,
  ..._i18.ErrorWithoutMembers.serializers,
  ..._i19.NullOperationInputOutput.serializers,
  ..._i20.OperationWithOptionalInputOutputInput.serializers,
  ..._i21.OperationWithOptionalInputOutputOutput.serializers,
  ..._i22.PutAndGetInlineDocumentsInputOutput.serializers,
  ..._i23.SimpleScalarPropertiesInputOutput.serializers,
  ..._i24.RetryMode.serializers,
  ..._i25.EnvironmentConfig.serializers,
  ..._i26.S3AddressingStyle.serializers,
  ..._i27.S3Config.serializers,
  ..._i28.FileConfigSettings.serializers,
  ..._i29.RetryConfig.serializers,
  ..._i30.ClientConfig.serializers,
  ..._i31.OperationConfig.serializers,
  ..._i32.ScopedConfig.serializers,
  ..._i33.AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i34.BuiltList,
    [FullType(_i9.FooEnum)],
  ): _i34.ListBuilder<_i9.FooEnum>.new,
  const FullType(
    _i34.BuiltMap,
    [
      FullType(String),
      FullType(_i9.FooEnum),
    ],
  ): _i34.MapBuilder<String, _i9.FooEnum>.new,
  const FullType(
    _i34.BuiltSet,
    [FullType(_i9.FooEnum)],
  ): _i34.SetBuilder<_i9.FooEnum>.new,
  const FullType(
    _i34.BuiltList,
    [FullType(String)],
  ): _i34.ListBuilder<String>.new,
  const FullType(
    _i34.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i34.MapBuilder<String, String>.new,
  const FullType(
    _i34.BuiltList,
    [
      FullType(
        _i34.BuiltList,
        [FullType(String)],
      )
    ],
  ): _i34.ListBuilder<_i34.BuiltList<String>>.new,
  const FullType(
    _i34.BuiltList,
    [
      FullType(
        _i34.BuiltMap,
        [
          FullType(String),
          FullType(String),
        ],
      )
    ],
  ): _i34.ListBuilder<_i34.BuiltMap<String, String>>.new,
  const FullType(
    _i34.BuiltList,
    [FullType(_i15.SimpleStruct)],
  ): _i34.ListBuilder<_i15.SimpleStruct>.new,
  const FullType(
    _i34.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i34.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i34.BuiltMap,
    [
      FullType(String),
      FullType(
        _i34.BuiltMap,
        [
          FullType(String),
          FullType(String),
        ],
      ),
    ],
  ): _i34.MapBuilder<String, _i34.BuiltMap<String, String>>.new,
  const FullType(
    _i34.BuiltMap,
    [
      FullType(String),
      FullType(_i15.SimpleStruct),
    ],
  ): _i34.MapBuilder<String, _i15.SimpleStruct>.new,
  const FullType(
    _i34.BuiltList,
    [FullType(_i13.KitchenSink)],
  ): _i34.ListBuilder<_i13.KitchenSink>.new,
  const FullType(
    _i34.BuiltMap,
    [
      FullType(String),
      FullType(_i13.KitchenSink),
    ],
  ): _i34.MapBuilder<String, _i13.KitchenSink>.new,
  const FullType(
    _i34.BuiltList,
    [FullType.nullable(String)],
  ): _i34.ListBuilder<String?>.new,
  const FullType(
    _i34.BuiltMap,
    [
      FullType(String),
      FullType.nullable(String),
    ],
  ): _i34.MapBuilder<String, String?>.new,
  const FullType(
    _i34.BuiltMap,
    [
      FullType(String),
      FullType(_i28.FileConfigSettings),
    ],
  ): _i34.MapBuilder<String, _i28.FileConfigSettings>.new,
};
