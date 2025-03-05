// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.glacier.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/glacier/model/archive_creation_output.dart';
import 'package:rest_json1_v2/src/glacier/model/aws_config.dart';
import 'package:rest_json1_v2/src/glacier/model/client_config.dart';
import 'package:rest_json1_v2/src/glacier/model/environment_config.dart';
import 'package:rest_json1_v2/src/glacier/model/file_config_settings.dart';
import 'package:rest_json1_v2/src/glacier/model/invalid_parameter_value_exception.dart';
import 'package:rest_json1_v2/src/glacier/model/missing_parameter_value_exception.dart';
import 'package:rest_json1_v2/src/glacier/model/operation_config.dart';
import 'package:rest_json1_v2/src/glacier/model/request_timeout_exception.dart';
import 'package:rest_json1_v2/src/glacier/model/resource_not_found_exception.dart';
import 'package:rest_json1_v2/src/glacier/model/retry_config.dart';
import 'package:rest_json1_v2/src/glacier/model/retry_mode.dart';
import 'package:rest_json1_v2/src/glacier/model/s3_addressing_style.dart';
import 'package:rest_json1_v2/src/glacier/model/s3_config.dart';
import 'package:rest_json1_v2/src/glacier/model/scoped_config.dart';
import 'package:rest_json1_v2/src/glacier/model/service_unavailable_exception.dart';
import 'package:rest_json1_v2/src/glacier/model/upload_archive_input.dart';
import 'package:rest_json1_v2/src/glacier/model/upload_multipart_part_input.dart';
import 'package:rest_json1_v2/src/glacier/model/upload_multipart_part_output.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...UploadArchiveInput.serializers,
  ...ArchiveCreationOutput.serializers,
  ...InvalidParameterValueException.serializers,
  ...MissingParameterValueException.serializers,
  ...RequestTimeoutException.serializers,
  ...ResourceNotFoundException.serializers,
  ...ServiceUnavailableException.serializers,
  ...UploadMultipartPartInput.serializers,
  ...UploadMultipartPartOutput.serializers,
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
