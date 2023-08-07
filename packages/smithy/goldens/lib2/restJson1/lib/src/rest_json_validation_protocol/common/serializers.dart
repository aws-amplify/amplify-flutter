// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.rest_json_validation_protocol.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i40;

import 'package:built_collection/built_collection.dart' as _i39;
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i41;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/aws_config.dart'
    as _i38;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/client_config.dart'
    as _i35;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/enum_string.dart'
    as _i2;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/enum_trait_string.dart'
    as _i3;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/enum_union.dart'
    as _i4;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/environment_config.dart'
    as _i30;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/file_config_settings.dart'
    as _i33;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/foo_enum.dart'
    as _i18;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/foo_union.dart'
    as _i22;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/greeting_struct.dart'
    as _i20;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/integer_enum.dart'
    as _i19;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_enum_input.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_input.dart'
    as _i8;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_override_input.dart'
    as _i9;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_query_string_input.dart'
    as _i10;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_pattern_input.dart'
    as _i12;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_pattern_override_input.dart'
    as _i14;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_range_input.dart'
    as _i15;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_range_override_input.dart'
    as _i16;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_required_input.dart'
    as _i17;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_unique_items_input.dart'
    as _i23;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/missing_key_structure.dart'
    as _i21;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/operation_config.dart'
    as _i36;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/pattern_union.dart'
    as _i11;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/pattern_union_override.dart'
    as _i13;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_enum_string.dart'
    as _i25;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_structures_input.dart'
    as _i24;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_union_one.dart'
    as _i27;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_union_two.dart'
    as _i26;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/retry_config.dart'
    as _i34;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/retry_mode.dart'
    as _i29;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/s3_addressing_style.dart'
    as _i31;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/s3_config.dart'
    as _i32;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/scoped_config.dart'
    as _i37;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/sensitive_validation_input.dart'
    as _i28;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/validation_exception.dart'
    as _i7;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/validation_exception_field.dart'
    as _i6;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.EnumString.serializers,
  ..._i3.EnumTraitString.serializers,
  ..._i4.EnumUnion.serializers,
  ..._i5.MalformedEnumInput.serializers,
  ..._i6.ValidationExceptionField.serializers,
  ..._i7.ValidationException.serializers,
  ..._i8.MalformedLengthInput.serializers,
  ..._i9.MalformedLengthOverrideInput.serializers,
  ..._i10.MalformedLengthQueryStringInput.serializers,
  ..._i11.PatternUnion.serializers,
  ..._i12.MalformedPatternInput.serializers,
  ..._i13.PatternUnionOverride.serializers,
  ..._i14.MalformedPatternOverrideInput.serializers,
  ..._i15.MalformedRangeInput.serializers,
  ..._i16.MalformedRangeOverrideInput.serializers,
  ..._i17.MalformedRequiredInput.serializers,
  ..._i18.FooEnum.serializers,
  ..._i19.IntegerEnum.serializers,
  ..._i20.GreetingStruct.serializers,
  ..._i21.MissingKeyStructure.serializers,
  ..._i22.FooUnion.serializers,
  ..._i23.MalformedUniqueItemsInput.serializers,
  ..._i24.RecursiveStructuresInput.serializers,
  ..._i25.RecursiveEnumString.serializers,
  ..._i26.RecursiveUnionTwo.serializers,
  ..._i27.RecursiveUnionOne.serializers,
  ..._i28.SensitiveValidationInput.serializers,
  ..._i29.RetryMode.serializers,
  ..._i30.EnvironmentConfig.serializers,
  ..._i31.S3AddressingStyle.serializers,
  ..._i32.S3Config.serializers,
  ..._i33.FileConfigSettings.serializers,
  ..._i34.RetryConfig.serializers,
  ..._i35.ClientConfig.serializers,
  ..._i36.OperationConfig.serializers,
  ..._i37.ScopedConfig.serializers,
  ..._i38.AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i39.BuiltList,
    [FullType(_i2.EnumString)],
  ): _i39.ListBuilder<_i2.EnumString>.new,
  const FullType(
    _i39.BuiltMap,
    [
      FullType(_i2.EnumString),
      FullType(_i2.EnumString),
    ],
  ): _i39.MapBuilder<_i2.EnumString, _i2.EnumString>.new,
  const FullType(
    _i39.BuiltList,
    [FullType(_i6.ValidationExceptionField)],
  ): _i39.ListBuilder<_i6.ValidationExceptionField>.new,
  const FullType(
    _i39.BuiltList,
    [FullType(String)],
  ): _i39.ListBuilder<String>.new,
  const FullType(
    _i39.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i39.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i39.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i39.MapBuilder<String, String>.new,
  const FullType(
    _i39.BuiltSet,
    [FullType(_i40.Uint8List)],
  ): _i39.SetBuilder<_i40.Uint8List>.new,
  const FullType(
    _i39.BuiltSet,
    [FullType(bool)],
  ): _i39.SetBuilder<bool>.new,
  const FullType(
    _i39.BuiltSet,
    [FullType(String)],
  ): _i39.SetBuilder<String>.new,
  const FullType(
    _i39.BuiltSet,
    [FullType(int)],
  ): _i39.SetBuilder<int>.new,
  const FullType(
    _i39.BuiltSet,
    [FullType(_i41.Int64)],
  ): _i39.SetBuilder<_i41.Int64>.new,
  const FullType(
    _i39.BuiltSet,
    [FullType(DateTime)],
  ): _i39.SetBuilder<DateTime>.new,
  const FullType(
    _i39.BuiltSet,
    [FullType(_i18.FooEnum)],
  ): _i39.SetBuilder<_i18.FooEnum>.new,
  const FullType(
    _i39.BuiltSet,
    [FullType(_i19.IntegerEnum)],
  ): _i39.SetBuilder<_i19.IntegerEnum>.new,
  const FullType(
    _i39.BuiltSet,
    [
      FullType(
        _i39.BuiltList,
        [FullType(String)],
      )
    ],
  ): _i39.SetBuilder<_i39.BuiltList<String>>.new,
  const FullType(
    _i39.BuiltSet,
    [FullType(_i20.GreetingStruct)],
  ): _i39.SetBuilder<_i20.GreetingStruct>.new,
  const FullType(
    _i39.BuiltSet,
    [FullType(_i21.MissingKeyStructure)],
  ): _i39.SetBuilder<_i21.MissingKeyStructure>.new,
  const FullType(
    _i39.BuiltSet,
    [FullType(_i22.FooUnion)],
  ): _i39.SetBuilder<_i22.FooUnion>.new,
  const FullType(
    _i39.BuiltMap,
    [
      FullType(String),
      FullType(_i33.FileConfigSettings),
    ],
  ): _i39.MapBuilder<String, _i33.FileConfigSettings>.new,
};
