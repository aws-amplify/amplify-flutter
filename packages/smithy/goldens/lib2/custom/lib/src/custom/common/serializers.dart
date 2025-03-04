// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library custom_v2.custom.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/custom/model/aws_config.dart';
import 'package:custom_v2/src/custom/model/checksum_algorithm.dart';
import 'package:custom_v2/src/custom/model/client_config.dart';
import 'package:custom_v2/src/custom/model/default_enum.dart';
import 'package:custom_v2/src/custom/model/default_values_input.dart';
import 'package:custom_v2/src/custom/model/default_values_output.dart';
import 'package:custom_v2/src/custom/model/environment_config.dart';
import 'package:custom_v2/src/custom/model/file_config_settings.dart';
import 'package:custom_v2/src/custom/model/http_checksum_not_required_with_member_input.dart';
import 'package:custom_v2/src/custom/model/http_checksum_really_not_required_input.dart';
import 'package:custom_v2/src/custom/model/http_checksum_really_required_input.dart';
import 'package:custom_v2/src/custom/model/http_checksum_required_input.dart';
import 'package:custom_v2/src/custom/model/http_checksum_required_with_member_input.dart';
import 'package:custom_v2/src/custom/model/nested_collections_input.dart';
import 'package:custom_v2/src/custom/model/operation_config.dart';
import 'package:custom_v2/src/custom/model/retry_config.dart';
import 'package:custom_v2/src/custom/model/retry_mode.dart';
import 'package:custom_v2/src/custom/model/s3_addressing_style.dart';
import 'package:custom_v2/src/custom/model/s3_config.dart';
import 'package:custom_v2/src/custom/model/scoped_config.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...DefaultValuesInput.serializers,
  ...DefaultValuesOutput.serializers,
  ...DefaultEnum.serializers,
  ...HttpChecksumNotRequiredWithMemberInput.serializers,
  ...ChecksumAlgorithm.serializers,
  ...HttpChecksumReallyNotRequiredInput.serializers,
  ...HttpChecksumReallyRequiredInput.serializers,
  ...HttpChecksumRequiredInput.serializers,
  ...HttpChecksumRequiredWithMemberInput.serializers,
  ...NestedCollectionsInput.serializers,
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
    _i2.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltListMultimap,
    [
      FullType(String),
      FullType.nullable(
        _i2.BuiltListMultimap,
        [
          FullType(String),
          FullType(String),
        ],
      ),
    ],
  ): _i2.ListMultimapBuilder<String, _i2.BuiltListMultimap<String, String>?>
      .new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(FileConfigSettings),
    ],
  ): _i2.MapBuilder<String, FileConfigSettings>.new,
};
