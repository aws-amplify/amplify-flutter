// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library aws_json1_0_v2.json_rpc_10.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_0_v2/src/json_rpc_10/model/aws_config.dart' as _i28;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/client_config.dart'
    as _i25;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/complex_error.dart' as _i5;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/complex_nested_error_data.dart'
    as _i6;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/empty_input_and_empty_output_input.dart'
    as _i2;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/empty_input_and_empty_output_output.dart'
    as _i3;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/endpoint_with_host_label_operation_input.dart'
    as _i4;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/environment_config.dart'
    as _i20;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/file_config_settings.dart'
    as _i23;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/foo_enum.dart' as _i13;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/foo_error.dart' as _i7;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/greeting_struct.dart'
    as _i14;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/greeting_with_errors_input.dart'
    as _i9;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/greeting_with_errors_output.dart'
    as _i10;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/invalid_greeting.dart'
    as _i8;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/json_unions_input.dart'
    as _i11;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/json_unions_output.dart'
    as _i12;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/my_union.dart' as _i15;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/no_input_and_output_output.dart'
    as _i16;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/operation_config.dart'
    as _i26;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/retry_config.dart' as _i24;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/retry_mode.dart' as _i19;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/s3_addressing_style.dart'
    as _i21;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/s3_config.dart' as _i22;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/scoped_config.dart'
    as _i27;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/simple_scalar_properties_input.dart'
    as _i17;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/simple_scalar_properties_output.dart'
    as _i18;
import 'package:built_collection/built_collection.dart' as _i29;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.EmptyInputAndEmptyOutputInput.serializers,
  ..._i3.EmptyInputAndEmptyOutputOutput.serializers,
  ..._i4.EndpointWithHostLabelOperationInput.serializers,
  ..._i5.ComplexError.serializers,
  ..._i6.ComplexNestedErrorData.serializers,
  ..._i7.FooError.serializers,
  ..._i8.InvalidGreeting.serializers,
  ..._i9.GreetingWithErrorsInput.serializers,
  ..._i10.GreetingWithErrorsOutput.serializers,
  ..._i11.JsonUnionsInput.serializers,
  ..._i12.JsonUnionsOutput.serializers,
  ..._i13.FooEnum.serializers,
  ..._i14.GreetingStruct.serializers,
  ..._i15.MyUnion.serializers,
  ..._i16.NoInputAndOutputOutput.serializers,
  ..._i17.SimpleScalarPropertiesInput.serializers,
  ..._i18.SimpleScalarPropertiesOutput.serializers,
  ..._i19.RetryMode.serializers,
  ..._i20.EnvironmentConfig.serializers,
  ..._i21.S3AddressingStyle.serializers,
  ..._i22.S3Config.serializers,
  ..._i23.FileConfigSettings.serializers,
  ..._i24.RetryConfig.serializers,
  ..._i25.ClientConfig.serializers,
  ..._i26.OperationConfig.serializers,
  ..._i27.ScopedConfig.serializers,
  ..._i28.AwsConfig.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(_i29.BuiltList, [FullType(String)]):
      _i29.ListBuilder<String>.new,
  const FullType(_i29.BuiltMap, [FullType(String), FullType(String)]):
      _i29.MapBuilder<String, String>.new,
  const FullType(
          _i29.BuiltMap, [FullType(String), FullType(_i23.FileConfigSettings)]):
      _i29.MapBuilder<String, _i23.FileConfigSettings>.new
};
