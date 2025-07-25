// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_json1_v2.rest_json_validation_protocol.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/aws_config.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/client_config.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/enum_string.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/enum_trait_string.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/enum_union.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/environment_config.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/file_config_settings.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/foo_enum.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/foo_union.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/greeting_struct.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/integer_enum.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_enum_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_override_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_query_string_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_pattern_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_pattern_override_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_range_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_range_override_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_required_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_unique_items_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/missing_key_structure.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/operation_config.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/pattern_union.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/pattern_union_override.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_enum_string.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_structures_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_union_one.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_union_two.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/retry_config.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/retry_mode.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/s3_addressing_style.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/s3_config.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/scoped_config.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/sensitive_validation_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/validation_exception.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/validation_exception_field.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...EnumString.serializers,
  ...EnumTraitString.serializers,
  ...EnumUnion.serializers,
  ...MalformedEnumInput.serializers,
  ...ValidationExceptionField.serializers,
  ...ValidationException.serializers,
  ...MalformedLengthInput.serializers,
  ...MalformedLengthOverrideInput.serializers,
  ...MalformedLengthQueryStringInput.serializers,
  ...PatternUnion.serializers,
  ...MalformedPatternInput.serializers,
  ...PatternUnionOverride.serializers,
  ...MalformedPatternOverrideInput.serializers,
  ...MalformedRangeInput.serializers,
  ...MalformedRangeOverrideInput.serializers,
  ...MalformedRequiredInput.serializers,
  ...FooEnum.serializers,
  ...IntegerEnum.serializers,
  ...GreetingStruct.serializers,
  ...MissingKeyStructure.serializers,
  ...FooUnion.serializers,
  ...MalformedUniqueItemsInput.serializers,
  ...RecursiveStructuresInput.serializers,
  ...RecursiveEnumString.serializers,
  ...RecursiveUnionTwo.serializers,
  ...RecursiveUnionOne.serializers,
  ...SensitiveValidationInput.serializers,
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
  const FullType(_i2.BuiltList, [FullType(EnumString)]):
      _i2.ListBuilder<EnumString>.new,
  const FullType(_i2.BuiltMap, [FullType(EnumString), FullType(EnumString)]):
      _i2.MapBuilder<EnumString, EnumString>.new,
  const FullType(_i2.BuiltList, [FullType(ValidationExceptionField)]):
      _i2.ListBuilder<ValidationExceptionField>.new,
  const FullType(_i2.BuiltList, [FullType(String)]):
      _i2.ListBuilder<String>.new,
  const FullType(_i2.BuiltListMultimap, [FullType(String), FullType(String)]):
      _i2.ListMultimapBuilder<String, String>.new,
  const FullType(_i2.BuiltMap, [FullType(String), FullType(String)]):
      _i2.MapBuilder<String, String>.new,
  const FullType(_i2.BuiltSet, [FullType(_i3.Uint8List)]):
      _i2.SetBuilder<_i3.Uint8List>.new,
  const FullType(_i2.BuiltSet, [FullType(bool)]): _i2.SetBuilder<bool>.new,
  const FullType(_i2.BuiltSet, [FullType(String)]): _i2.SetBuilder<String>.new,
  const FullType(_i2.BuiltSet, [FullType(int)]): _i2.SetBuilder<int>.new,
  const FullType(_i2.BuiltSet, [FullType(_i4.Int64)]):
      _i2.SetBuilder<_i4.Int64>.new,
  const FullType(_i2.BuiltSet, [FullType(DateTime)]):
      _i2.SetBuilder<DateTime>.new,
  const FullType(_i2.BuiltSet, [FullType(FooEnum)]):
      _i2.SetBuilder<FooEnum>.new,
  const FullType(_i2.BuiltSet, [FullType(IntegerEnum)]):
      _i2.SetBuilder<IntegerEnum>.new,
  const FullType(_i2.BuiltSet, [
    FullType(_i2.BuiltList, [FullType(String)]),
  ]): _i2.SetBuilder<_i2.BuiltList<String>>.new,
  const FullType(_i2.BuiltSet, [FullType(GreetingStruct)]):
      _i2.SetBuilder<GreetingStruct>.new,
  const FullType(_i2.BuiltSet, [FullType(MissingKeyStructure)]):
      _i2.SetBuilder<MissingKeyStructure>.new,
  const FullType(_i2.BuiltSet, [FullType(FooUnion)]):
      _i2.SetBuilder<FooUnion>.new,
  const FullType(_i2.BuiltMap, [
    FullType(String),
    FullType(FileConfigSettings),
  ]): _i2.MapBuilder<String, FileConfigSettings>.new,
};
