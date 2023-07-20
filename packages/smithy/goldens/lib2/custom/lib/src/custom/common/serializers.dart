// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library custom_v2.custom.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i22;
import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/custom/model/aws_config.dart' as _i21;
import 'package:custom_v2/src/custom/model/checksum_algorithm.dart' as _i6;
import 'package:custom_v2/src/custom/model/client_config.dart' as _i18;
import 'package:custom_v2/src/custom/model/default_enum.dart' as _i4;
import 'package:custom_v2/src/custom/model/default_values_input.dart' as _i2;
import 'package:custom_v2/src/custom/model/default_values_output.dart' as _i3;
import 'package:custom_v2/src/custom/model/environment_config.dart' as _i13;
import 'package:custom_v2/src/custom/model/file_config_settings.dart' as _i16;
import 'package:custom_v2/src/custom/model/http_checksum_not_required_with_member_input.dart'
    as _i5;
import 'package:custom_v2/src/custom/model/http_checksum_really_not_required_input.dart'
    as _i7;
import 'package:custom_v2/src/custom/model/http_checksum_really_required_input.dart'
    as _i8;
import 'package:custom_v2/src/custom/model/http_checksum_required_input.dart'
    as _i9;
import 'package:custom_v2/src/custom/model/http_checksum_required_with_member_input.dart'
    as _i10;
import 'package:custom_v2/src/custom/model/nested_collections_input.dart'
    as _i11;
import 'package:custom_v2/src/custom/model/operation_config.dart' as _i19;
import 'package:custom_v2/src/custom/model/retry_config.dart' as _i17;
import 'package:custom_v2/src/custom/model/retry_mode.dart' as _i12;
import 'package:custom_v2/src/custom/model/s3_addressing_style.dart' as _i14;
import 'package:custom_v2/src/custom/model/s3_config.dart' as _i15;
import 'package:custom_v2/src/custom/model/scoped_config.dart' as _i20;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.DefaultValuesInput.serializers,
  ..._i3.DefaultValuesOutput.serializers,
  ..._i4.DefaultEnum.serializers,
  ..._i5.HttpChecksumNotRequiredWithMemberInput.serializers,
  ..._i6.ChecksumAlgorithm.serializers,
  ..._i7.HttpChecksumReallyNotRequiredInput.serializers,
  ..._i8.HttpChecksumReallyRequiredInput.serializers,
  ..._i9.HttpChecksumRequiredInput.serializers,
  ..._i10.HttpChecksumRequiredWithMemberInput.serializers,
  ..._i11.NestedCollectionsInput.serializers,
  ..._i12.RetryMode.serializers,
  ..._i13.EnvironmentConfig.serializers,
  ..._i14.S3AddressingStyle.serializers,
  ..._i15.S3Config.serializers,
  ..._i16.FileConfigSettings.serializers,
  ..._i17.RetryConfig.serializers,
  ..._i18.ClientConfig.serializers,
  ..._i19.OperationConfig.serializers,
  ..._i20.ScopedConfig.serializers,
  ..._i21.AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i22.BuiltList,
    [FullType(String)],
  ): _i22.ListBuilder<String>.new,
  const FullType(
    _i22.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i22.MapBuilder<String, String>.new,
  const FullType(
    _i22.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i22.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i22.BuiltListMultimap,
    [
      FullType(String),
      FullType.nullable(
        _i22.BuiltListMultimap,
        [
          FullType(String),
          FullType(String),
        ],
      ),
    ],
  ): _i22.ListMultimapBuilder<String, _i22.BuiltListMultimap<String, String>?>
      .new,
  const FullType(
    _i22.BuiltMap,
    [
      FullType(String),
      FullType(_i16.FileConfigSettings),
    ],
  ): _i22.MapBuilder<String, _i16.FileConfigSettings>.new,
};
