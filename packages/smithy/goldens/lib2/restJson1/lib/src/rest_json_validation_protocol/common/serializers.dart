// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i32;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/aws_config.dart'
    as _i31;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/client_config.dart'
    as _i28;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/enum_string.dart'
    as _i2;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/enum_union.dart'
    as _i3;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/environment_config.dart'
    as _i23;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/file_config_settings.dart'
    as _i26;
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
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/operation_config.dart'
    as _i29;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/pattern_union.dart'
    as _i10;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/pattern_union_override.dart'
    as _i12;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_enum_string.dart'
    as _i18;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_structures_input.dart'
    as _i17;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_union_one.dart'
    as _i20;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_union_two.dart'
    as _i19;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/retry_config.dart'
    as _i27;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/retry_mode.dart'
    as _i22;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/s3_addressing_style.dart'
    as _i24;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/s3_config.dart'
    as _i25;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/scoped_config.dart'
    as _i30;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/sensitive_validation_input.dart'
    as _i21;
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
  ..._i17.RecursiveStructuresInput.serializers,
  ..._i18.RecursiveEnumString.serializers,
  ..._i19.RecursiveUnionTwo.serializers,
  ..._i20.RecursiveUnionOne.serializers,
  ..._i21.SensitiveValidationInput.serializers,
  ..._i22.RetryMode.serializers,
  ..._i23.EnvironmentConfig.serializers,
  ..._i24.S3AddressingStyle.serializers,
  ..._i25.S3Config.serializers,
  ..._i26.FileConfigSettings.serializers,
  ..._i27.RetryConfig.serializers,
  ..._i28.ClientConfig.serializers,
  ..._i29.OperationConfig.serializers,
  ..._i30.ScopedConfig.serializers,
  ..._i31.AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i32.BuiltList,
    [FullType(_i2.EnumString)],
  ): _i32.ListBuilder<_i2.EnumString>.new,
  const FullType(
    _i32.BuiltMap,
    [
      FullType(_i2.EnumString),
      FullType(_i2.EnumString),
    ],
  ): _i32.MapBuilder<_i2.EnumString, _i2.EnumString>.new,
  const FullType(
    _i32.BuiltList,
    [FullType(_i5.ValidationExceptionField)],
  ): _i32.ListBuilder<_i5.ValidationExceptionField>.new,
  const FullType(
    _i32.BuiltList,
    [FullType(String)],
  ): _i32.ListBuilder<String>.new,
  const FullType(
    _i32.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i32.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i32.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i32.MapBuilder<String, String>.new,
  const FullType(
    _i32.BuiltMap,
    [
      FullType(String),
      FullType(_i26.FileConfigSettings),
    ],
  ): _i32.MapBuilder<String, _i26.FileConfigSettings>.new,
};
