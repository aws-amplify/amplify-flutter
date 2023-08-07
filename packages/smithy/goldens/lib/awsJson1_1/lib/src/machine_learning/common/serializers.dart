// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_1_v1.machine_learning.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1_v1/src/machine_learning/model/aws_config.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/client_config.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/details_attributes.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/environment_config.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/file_config_settings.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/internal_server_exception.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/invalid_input_exception.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/limit_exceeded_exception.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/operation_config.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/predict_input.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/predict_output.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/prediction.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/predictor_not_mounted_exception.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/resource_not_found_exception.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/retry_config.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/retry_mode.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/s3_addressing_style.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/s3_config.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/scoped_config.dart';
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...PredictInput.serializers,
  ...PredictOutput.serializers,
  ...Prediction.serializers,
  ...InternalServerException.serializers,
  ...InvalidInputException.serializers,
  ...LimitExceededException.serializers,
  ...PredictorNotMountedException.serializers,
  ...ResourceNotFoundException.serializers,
  ...DetailsAttributes.serializers,
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
      FullType(double),
    ],
  ): _i2.MapBuilder<String, double>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(DetailsAttributes),
      FullType(String),
    ],
  ): _i2.MapBuilder<DetailsAttributes, String>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(FileConfigSettings),
    ],
  ): _i2.MapBuilder<String, FileConfigSettings>.new,
};
