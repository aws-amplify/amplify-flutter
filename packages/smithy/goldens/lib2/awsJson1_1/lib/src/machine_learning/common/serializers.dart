// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library aws_json1_1_v2.machine_learning.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1_v2/src/machine_learning/model/aws_config.dart'
    as _i20;
import 'package:aws_json1_1_v2/src/machine_learning/model/client_config.dart'
    as _i17;
import 'package:aws_json1_1_v2/src/machine_learning/model/details_attributes.dart'
    as _i10;
import 'package:aws_json1_1_v2/src/machine_learning/model/environment_config.dart'
    as _i12;
import 'package:aws_json1_1_v2/src/machine_learning/model/file_config_settings.dart'
    as _i15;
import 'package:aws_json1_1_v2/src/machine_learning/model/internal_server_exception.dart'
    as _i5;
import 'package:aws_json1_1_v2/src/machine_learning/model/invalid_input_exception.dart'
    as _i6;
import 'package:aws_json1_1_v2/src/machine_learning/model/limit_exceeded_exception.dart'
    as _i7;
import 'package:aws_json1_1_v2/src/machine_learning/model/operation_config.dart'
    as _i18;
import 'package:aws_json1_1_v2/src/machine_learning/model/predict_input.dart'
    as _i2;
import 'package:aws_json1_1_v2/src/machine_learning/model/predict_output.dart'
    as _i3;
import 'package:aws_json1_1_v2/src/machine_learning/model/prediction.dart'
    as _i4;
import 'package:aws_json1_1_v2/src/machine_learning/model/predictor_not_mounted_exception.dart'
    as _i8;
import 'package:aws_json1_1_v2/src/machine_learning/model/resource_not_found_exception.dart'
    as _i9;
import 'package:aws_json1_1_v2/src/machine_learning/model/retry_config.dart'
    as _i16;
import 'package:aws_json1_1_v2/src/machine_learning/model/retry_mode.dart'
    as _i11;
import 'package:aws_json1_1_v2/src/machine_learning/model/s3_addressing_style.dart'
    as _i13;
import 'package:aws_json1_1_v2/src/machine_learning/model/s3_config.dart'
    as _i14;
import 'package:aws_json1_1_v2/src/machine_learning/model/scoped_config.dart'
    as _i19;
import 'package:built_collection/built_collection.dart' as _i21;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.PredictInput.serializers,
  ..._i3.PredictOutput.serializers,
  ..._i4.Prediction.serializers,
  ..._i5.InternalServerException.serializers,
  ..._i6.InvalidInputException.serializers,
  ..._i7.LimitExceededException.serializers,
  ..._i8.PredictorNotMountedException.serializers,
  ..._i9.ResourceNotFoundException.serializers,
  ..._i10.DetailsAttributes.serializers,
  ..._i11.RetryMode.serializers,
  ..._i12.EnvironmentConfig.serializers,
  ..._i13.S3AddressingStyle.serializers,
  ..._i14.S3Config.serializers,
  ..._i15.FileConfigSettings.serializers,
  ..._i16.RetryConfig.serializers,
  ..._i17.ClientConfig.serializers,
  ..._i18.OperationConfig.serializers,
  ..._i19.ScopedConfig.serializers,
  ..._i20.AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i21.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i21.MapBuilder<String, String>.new,
  const FullType(
    _i21.BuiltMap,
    [
      FullType(_i10.DetailsAttributes),
      FullType(String),
    ],
  ): _i21.MapBuilder<_i10.DetailsAttributes, String>.new,
  const FullType(
    _i21.BuiltMap,
    [
      FullType(String),
      FullType(double),
    ],
  ): _i21.MapBuilder<String, double>.new,
  const FullType(
    _i21.BuiltMap,
    [
      FullType(String),
      FullType(_i15.FileConfigSettings),
    ],
  ): _i21.MapBuilder<String, _i15.FileConfigSettings>.new,
};
