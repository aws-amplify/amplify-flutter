// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_validation_protocol.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i38;

import 'package:built_collection/built_collection.dart' as _i37;
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i39;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/aws_config.dart'
    as _i36;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/client_config.dart'
    as _i33;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/enum_string.dart'
    as _i2;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/enum_union.dart'
    as _i3;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/environment_config.dart'
    as _i28;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/file_config_settings.dart'
    as _i31;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/foo_enum.dart'
    as _i17;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/foo_union.dart'
    as _i20;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/greeting_struct.dart'
    as _i19;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/integer_enum.dart'
    as _i18;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_enum_input.dart'
    as _i4;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_input.dart'
    as _i7;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_override_input.dart'
    as _i8;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_query_string_input.dart'
    as _i9;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_pattern_input.dart'
    as _i11;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_pattern_override_input.dart'
    as _i13;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_range_input.dart'
    as _i14;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_range_override_input.dart'
    as _i15;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_required_input.dart'
    as _i16;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_unique_items_input.dart'
    as _i21;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/operation_config.dart'
    as _i34;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/pattern_union.dart'
    as _i10;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/pattern_union_override.dart'
    as _i12;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_enum_string.dart'
    as _i23;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_structures_input.dart'
    as _i22;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_union_one.dart'
    as _i25;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_union_two.dart'
    as _i24;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/retry_config.dart'
    as _i32;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/retry_mode.dart'
    as _i27;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/s3_addressing_style.dart'
    as _i29;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/s3_config.dart'
    as _i30;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/scoped_config.dart'
    as _i35;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/sensitive_validation_input.dart'
    as _i26;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/validation_exception.dart'
    as _i6;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/validation_exception_field.dart'
    as _i5;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.EnumString.serializers,
  ..._i3.EnumUnion.serializers,
  ..._i4.MalformedEnumInput.serializers,
  ..._i5.ValidationExceptionField.serializers,
  ..._i6.ValidationException.serializers,
  ..._i7.MalformedLengthInput.serializers,
  ..._i8.MalformedLengthOverrideInput.serializers,
  ..._i9.MalformedLengthQueryStringInput.serializers,
  ..._i10.PatternUnion.serializers,
  ..._i11.MalformedPatternInput.serializers,
  ..._i12.PatternUnionOverride.serializers,
  ..._i13.MalformedPatternOverrideInput.serializers,
  ..._i14.MalformedRangeInput.serializers,
  ..._i15.MalformedRangeOverrideInput.serializers,
  ..._i16.MalformedRequiredInput.serializers,
  ..._i17.FooEnum.serializers,
  ..._i18.IntegerEnum.serializers,
  ..._i19.GreetingStruct.serializers,
  ..._i20.FooUnion.serializers,
  ..._i21.MalformedUniqueItemsInput.serializers,
  ..._i22.RecursiveStructuresInput.serializers,
  ..._i23.RecursiveEnumString.serializers,
  ..._i24.RecursiveUnionTwo.serializers,
  ..._i25.RecursiveUnionOne.serializers,
  ..._i26.SensitiveValidationInput.serializers,
  ..._i27.RetryMode.serializers,
  ..._i28.EnvironmentConfig.serializers,
  ..._i29.S3AddressingStyle.serializers,
  ..._i30.S3Config.serializers,
  ..._i31.FileConfigSettings.serializers,
  ..._i32.RetryConfig.serializers,
  ..._i33.ClientConfig.serializers,
  ..._i34.OperationConfig.serializers,
  ..._i35.ScopedConfig.serializers,
  ..._i36.AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i37.BuiltList,
    [FullType(_i2.EnumString)],
  ): _i37.ListBuilder<_i2.EnumString>.new,
  const FullType(
    _i37.BuiltMap,
    [
      FullType(_i2.EnumString),
      FullType(_i2.EnumString),
    ],
  ): _i37.MapBuilder<_i2.EnumString, _i2.EnumString>.new,
  const FullType(
    _i37.BuiltList,
    [FullType(_i5.ValidationExceptionField)],
  ): _i37.ListBuilder<_i5.ValidationExceptionField>.new,
  const FullType(
    _i37.BuiltList,
    [FullType(String)],
  ): _i37.ListBuilder<String>.new,
  const FullType(
    _i37.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i37.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i37.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i37.MapBuilder<String, String>.new,
  const FullType(
    _i37.BuiltSet,
    [FullType(_i38.Uint8List)],
  ): _i37.SetBuilder<_i38.Uint8List>.new,
  const FullType(
    _i37.BuiltSet,
    [FullType(bool)],
  ): _i37.SetBuilder<bool>.new,
  const FullType(
    _i37.BuiltSet,
    [FullType(String)],
  ): _i37.SetBuilder<String>.new,
  const FullType(
    _i37.BuiltSet,
    [FullType(int)],
  ): _i37.SetBuilder<int>.new,
  const FullType(
    _i37.BuiltSet,
    [FullType(_i39.Int64)],
  ): _i37.SetBuilder<_i39.Int64>.new,
  const FullType(
    _i37.BuiltSet,
    [FullType(DateTime)],
  ): _i37.SetBuilder<DateTime>.new,
  const FullType(
    _i37.BuiltSet,
    [FullType(_i17.FooEnum)],
  ): _i37.SetBuilder<_i17.FooEnum>.new,
  const FullType(
    _i37.BuiltSet,
    [FullType(_i18.IntegerEnum)],
  ): _i37.SetBuilder<_i18.IntegerEnum>.new,
  const FullType(
    _i37.BuiltSet,
    [
      FullType(
        _i37.BuiltList,
        [FullType(String)],
      )
    ],
  ): _i37.SetBuilder<_i37.BuiltList<String>>.new,
  const FullType(
    _i37.BuiltSet,
    [FullType(_i19.GreetingStruct)],
  ): _i37.SetBuilder<_i19.GreetingStruct>.new,
  const FullType(
    _i37.BuiltSet,
    [FullType(_i20.FooUnion)],
  ): _i37.SetBuilder<_i20.FooUnion>.new,
  const FullType(
    _i37.BuiltMap,
    [
      FullType(String),
      FullType(_i31.FileConfigSettings),
    ],
  ): _i37.MapBuilder<String, _i31.FileConfigSettings>.new,
};
