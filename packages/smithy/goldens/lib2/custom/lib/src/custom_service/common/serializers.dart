// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library custom_v2.custom_service.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i19;
import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/custom_service/model/aws_config.dart' as _i18;
import 'package:custom_v2/src/custom_service/model/checksum_algorithm.dart'
    as _i3;
import 'package:custom_v2/src/custom_service/model/client_config.dart' as _i15;
import 'package:custom_v2/src/custom_service/model/environment_config.dart'
    as _i10;
import 'package:custom_v2/src/custom_service/model/file_config_settings.dart'
    as _i13;
import 'package:custom_v2/src/custom_service/model/http_checksum_not_required_with_member_input.dart'
    as _i2;
import 'package:custom_v2/src/custom_service/model/http_checksum_really_not_required_input.dart'
    as _i4;
import 'package:custom_v2/src/custom_service/model/http_checksum_really_required_input.dart'
    as _i5;
import 'package:custom_v2/src/custom_service/model/http_checksum_required_input.dart'
    as _i6;
import 'package:custom_v2/src/custom_service/model/http_checksum_required_with_member_input.dart'
    as _i7;
import 'package:custom_v2/src/custom_service/model/nested_collections_input.dart'
    as _i8;
import 'package:custom_v2/src/custom_service/model/operation_config.dart'
    as _i16;
import 'package:custom_v2/src/custom_service/model/retry_config.dart' as _i14;
import 'package:custom_v2/src/custom_service/model/retry_mode.dart' as _i9;
import 'package:custom_v2/src/custom_service/model/s3_addressing_style.dart'
    as _i11;
import 'package:custom_v2/src/custom_service/model/s3_config.dart' as _i12;
import 'package:custom_v2/src/custom_service/model/scoped_config.dart' as _i17;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.HttpChecksumNotRequiredWithMemberInput.serializers,
  ..._i3.ChecksumAlgorithm.serializers,
  ..._i4.HttpChecksumReallyNotRequiredInput.serializers,
  ..._i5.HttpChecksumReallyRequiredInput.serializers,
  ..._i6.HttpChecksumRequiredInput.serializers,
  ..._i7.HttpChecksumRequiredWithMemberInput.serializers,
  ..._i8.NestedCollectionsInput.serializers,
  ..._i9.RetryMode.serializers,
  ..._i10.EnvironmentConfig.serializers,
  ..._i11.S3AddressingStyle.serializers,
  ..._i12.S3Config.serializers,
  ..._i13.FileConfigSettings.serializers,
  ..._i14.RetryConfig.serializers,
  ..._i15.ClientConfig.serializers,
  ..._i16.OperationConfig.serializers,
  ..._i17.ScopedConfig.serializers,
  ..._i18.AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i19.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i19.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i19.BuiltListMultimap,
    [
      FullType(String),
      FullType.nullable(
        _i19.BuiltListMultimap,
        [
          FullType(String),
          FullType(String),
        ],
      ),
    ],
  ): _i19.ListMultimapBuilder<String, _i19.BuiltListMultimap<String, String>?>
      .new,
  const FullType(
    _i19.BuiltMap,
    [
      FullType(String),
      FullType(_i13.FileConfigSettings),
    ],
  ): _i19.MapBuilder<String, _i13.FileConfigSettings>.new,
};
