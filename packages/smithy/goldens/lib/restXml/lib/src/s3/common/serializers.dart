// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_xml_v1.s3.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i24;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/s3/model/aws_config.dart' as _i6;
import 'package:rest_xml_v1/src/s3/model/bucket_location_constraint.dart'
    as _i4;
import 'package:rest_xml_v1/src/s3/model/client_config.dart' as _i11;
import 'package:rest_xml_v1/src/s3/model/common_prefix.dart' as _i17;
import 'package:rest_xml_v1/src/s3/model/encoding_type.dart' as _i19;
import 'package:rest_xml_v1/src/s3/model/environment_config.dart' as _i8;
import 'package:rest_xml_v1/src/s3/model/file_config_settings.dart' as _i9;
import 'package:rest_xml_v1/src/s3/model/get_bucket_location_output.dart'
    as _i2;
import 'package:rest_xml_v1/src/s3/model/get_bucket_location_request.dart'
    as _i3;
import 'package:rest_xml_v1/src/s3/model/list_objects_v2_output.dart' as _i14;
import 'package:rest_xml_v1/src/s3/model/list_objects_v2_request.dart' as _i5;
import 'package:rest_xml_v1/src/s3/model/no_such_bucket.dart' as _i18;
import 'package:rest_xml_v1/src/s3/model/object.dart' as _i15;
import 'package:rest_xml_v1/src/s3/model/object_storage_class.dart' as _i21;
import 'package:rest_xml_v1/src/s3/model/operation_config.dart' as _i13;
import 'package:rest_xml_v1/src/s3/model/owner.dart' as _i16;
import 'package:rest_xml_v1/src/s3/model/request_payer.dart' as _i20;
import 'package:rest_xml_v1/src/s3/model/retry_config.dart' as _i12;
import 'package:rest_xml_v1/src/s3/model/retry_mode.dart' as _i22;
import 'package:rest_xml_v1/src/s3/model/s3_addressing_style.dart' as _i23;
import 'package:rest_xml_v1/src/s3/model/s3_config.dart' as _i10;
import 'package:rest_xml_v1/src/s3/model/scoped_config.dart' as _i7;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.GetBucketLocationOutput.serializers,
  ..._i3.GetBucketLocationRequest.serializers,
  ..._i4.BucketLocationConstraint.serializers,
  ..._i5.ListObjectsV2Request.serializers,
  ..._i6.AwsConfig.serializers,
  ..._i7.ScopedConfig.serializers,
  ..._i8.EnvironmentConfig.serializers,
  ..._i9.FileConfigSettings.serializers,
  ..._i10.S3Config.serializers,
  ..._i11.ClientConfig.serializers,
  ..._i12.RetryConfig.serializers,
  ..._i13.OperationConfig.serializers,
  ..._i14.ListObjectsV2Output.serializers,
  ..._i15.S3Object.serializers,
  ..._i16.Owner.serializers,
  ..._i17.CommonPrefix.serializers,
  ..._i18.NoSuchBucket.serializers,
  ..._i19.EncodingType.serializers,
  ..._i20.RequestPayer.serializers,
  ..._i21.ObjectStorageClass.serializers,
  ..._i22.RetryMode.serializers,
  ..._i23.S3AddressingStyle.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i24.BuiltMap,
    [
      FullType(String),
      FullType(_i9.FileConfigSettings),
    ],
  ): _i24.MapBuilder<String, _i9.FileConfigSettings>.new,
  const FullType(
    _i24.BuiltList,
    [FullType(_i17.CommonPrefix)],
  ): _i24.ListBuilder<_i17.CommonPrefix>.new,
  const FullType(
    _i24.BuiltList,
    [FullType(_i15.S3Object)],
  ): _i24.ListBuilder<_i15.S3Object>.new,
};
