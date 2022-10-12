// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library custom_v2.s3.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i14;
import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/s3/model/aws_config.dart' as _i13;
import 'package:custom_v2/src/s3/model/client_config.dart' as _i10;
import 'package:custom_v2/src/s3/model/environment_config.dart' as _i5;
import 'package:custom_v2/src/s3/model/file_config_settings.dart' as _i8;
import 'package:custom_v2/src/s3/model/get_object_output.dart' as _i2;
import 'package:custom_v2/src/s3/model/get_object_request.dart' as _i3;
import 'package:custom_v2/src/s3/model/operation_config.dart' as _i11;
import 'package:custom_v2/src/s3/model/retry_config.dart' as _i9;
import 'package:custom_v2/src/s3/model/retry_mode.dart' as _i4;
import 'package:custom_v2/src/s3/model/s3_addressing_style.dart' as _i6;
import 'package:custom_v2/src/s3/model/s3_config.dart' as _i7;
import 'package:custom_v2/src/s3/model/scoped_config.dart' as _i12;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.GetObjectOutput.serializers,
  ..._i3.GetObjectRequest.serializers,
  ..._i4.RetryMode.serializers,
  ..._i5.EnvironmentConfig.serializers,
  ..._i6.S3AddressingStyle.serializers,
  ..._i7.S3Config.serializers,
  ..._i8.FileConfigSettings.serializers,
  ..._i9.RetryConfig.serializers,
  ..._i10.ClientConfig.serializers,
  ..._i11.OperationConfig.serializers,
  ..._i12.ScopedConfig.serializers,
  ..._i13.AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i14.BuiltMap,
    [
      FullType(String),
      FullType(_i8.FileConfigSettings),
    ],
  ): _i14.MapBuilder<String, _i8.FileConfigSettings>.new
};
