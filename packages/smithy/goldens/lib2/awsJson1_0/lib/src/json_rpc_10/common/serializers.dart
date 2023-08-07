// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_0_v2.json_rpc_10.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_0_v2/src/json_rpc_10/model/aws_config.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/client_config.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/complex_error.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/complex_nested_error_data.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/empty_input_and_empty_output_input.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/empty_input_and_empty_output_output.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/endpoint_with_host_label_operation_input.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/environment_config.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/file_config_settings.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/foo_enum.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/foo_error.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/greeting_struct.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/greeting_with_errors_input.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/greeting_with_errors_output.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/integer_enum.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/invalid_greeting.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/json_unions_input.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/json_unions_output.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/my_union.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/no_input_and_output_output.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/operation_config.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/put_with_content_encoding_input.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/retry_config.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/retry_mode.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/s3_addressing_style.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/s3_config.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/scoped_config.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/simple_scalar_properties_input.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/simple_scalar_properties_output.dart';
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...EmptyInputAndEmptyOutputInput.serializers,
  ...EmptyInputAndEmptyOutputOutput.serializers,
  ...EndpointWithHostLabelOperationInput.serializers,
  ...ComplexError.serializers,
  ...ComplexNestedErrorData.serializers,
  ...FooError.serializers,
  ...InvalidGreeting.serializers,
  ...GreetingWithErrorsInput.serializers,
  ...GreetingWithErrorsOutput.serializers,
  ...JsonUnionsInput.serializers,
  ...JsonUnionsOutput.serializers,
  ...FooEnum.serializers,
  ...IntegerEnum.serializers,
  ...GreetingStruct.serializers,
  ...MyUnion.serializers,
  ...NoInputAndOutputOutput.serializers,
  ...PutWithContentEncodingInput.serializers,
  ...SimpleScalarPropertiesInput.serializers,
  ...SimpleScalarPropertiesOutput.serializers,
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
      FullType(FileConfigSettings),
    ],
  ): _i2.MapBuilder<String, FileConfigSettings>.new,
};
