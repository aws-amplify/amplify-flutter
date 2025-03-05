// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library custom_v2.s3.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/s3/model/aws_config.dart';
import 'package:custom_v2/src/s3/model/client_config.dart';
import 'package:custom_v2/src/s3/model/copy_object_error.dart';
import 'package:custom_v2/src/s3/model/copy_object_output.dart';
import 'package:custom_v2/src/s3/model/copy_object_request.dart';
import 'package:custom_v2/src/s3/model/copy_object_result.dart';
import 'package:custom_v2/src/s3/model/environment_config.dart';
import 'package:custom_v2/src/s3/model/file_config_settings.dart';
import 'package:custom_v2/src/s3/model/get_object_output.dart';
import 'package:custom_v2/src/s3/model/get_object_request.dart';
import 'package:custom_v2/src/s3/model/operation_config.dart';
import 'package:custom_v2/src/s3/model/retry_config.dart';
import 'package:custom_v2/src/s3/model/retry_mode.dart';
import 'package:custom_v2/src/s3/model/s3_addressing_style.dart';
import 'package:custom_v2/src/s3/model/s3_config.dart';
import 'package:custom_v2/src/s3/model/scoped_config.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...CopyObjectOutput.serializers,
  ...CopyObjectResult.serializers,
  ...CopyObjectError.serializers,
  ...CopyObjectRequest.serializers,
  ...GetObjectOutput.serializers,
  ...GetObjectRequest.serializers,
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
      FullType(FileConfigSettings),
    ],
  ): _i2.MapBuilder<String, FileConfigSettings>.new
};
