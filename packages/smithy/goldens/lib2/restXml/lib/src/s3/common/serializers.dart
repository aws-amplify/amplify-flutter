// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v2.s3.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i26;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/s3/model/aws_config.dart' as _i3;
import 'package:rest_xml_v2/src/s3/model/bucket_location_constraint.dart'
    as _i14;
import 'package:rest_xml_v2/src/s3/model/client_config.dart' as _i8;
import 'package:rest_xml_v2/src/s3/model/common_prefix.dart' as _i19;
import 'package:rest_xml_v2/src/s3/model/delete_object_tagging_output.dart'
    as _i11;
import 'package:rest_xml_v2/src/s3/model/delete_object_tagging_request.dart'
    as _i2;
import 'package:rest_xml_v2/src/s3/model/encoding_type.dart' as _i21;
import 'package:rest_xml_v2/src/s3/model/environment_config.dart' as _i5;
import 'package:rest_xml_v2/src/s3/model/file_config_settings.dart' as _i6;
import 'package:rest_xml_v2/src/s3/model/get_bucket_location_output.dart'
    as _i12;
import 'package:rest_xml_v2/src/s3/model/get_bucket_location_request.dart'
    as _i13;
import 'package:rest_xml_v2/src/s3/model/list_objects_v2_output.dart' as _i16;
import 'package:rest_xml_v2/src/s3/model/list_objects_v2_request.dart' as _i15;
import 'package:rest_xml_v2/src/s3/model/no_such_bucket.dart' as _i20;
import 'package:rest_xml_v2/src/s3/model/object.dart' as _i17;
import 'package:rest_xml_v2/src/s3/model/object_storage_class.dart' as _i23;
import 'package:rest_xml_v2/src/s3/model/operation_config.dart' as _i10;
import 'package:rest_xml_v2/src/s3/model/owner.dart' as _i18;
import 'package:rest_xml_v2/src/s3/model/request_payer.dart' as _i22;
import 'package:rest_xml_v2/src/s3/model/retry_config.dart' as _i9;
import 'package:rest_xml_v2/src/s3/model/retry_mode.dart' as _i24;
import 'package:rest_xml_v2/src/s3/model/s3_addressing_style.dart' as _i25;
import 'package:rest_xml_v2/src/s3/model/s3_config.dart' as _i7;
import 'package:rest_xml_v2/src/s3/model/scoped_config.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.DeleteObjectTaggingRequest.serializers,
  ..._i3.AwsConfig.serializers,
  ..._i4.ScopedConfig.serializers,
  ..._i5.EnvironmentConfig.serializers,
  ..._i6.FileConfigSettings.serializers,
  ..._i7.S3Config.serializers,
  ..._i8.ClientConfig.serializers,
  ..._i9.RetryConfig.serializers,
  ..._i10.OperationConfig.serializers,
  ..._i11.DeleteObjectTaggingOutput.serializers,
  ..._i12.GetBucketLocationOutput.serializers,
  ..._i13.GetBucketLocationRequest.serializers,
  ..._i14.BucketLocationConstraint.serializers,
  ..._i15.ListObjectsV2Request.serializers,
  ..._i16.ListObjectsV2Output.serializers,
  ..._i17.S3Object.serializers,
  ..._i18.Owner.serializers,
  ..._i19.CommonPrefix.serializers,
  ..._i20.NoSuchBucket.serializers,
  ..._i21.EncodingType.serializers,
  ..._i22.RequestPayer.serializers,
  ..._i23.ObjectStorageClass.serializers,
  ..._i24.RetryMode.serializers,
  ..._i25.S3AddressingStyle.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i26.BuiltMap,
    [
      FullType(String),
      FullType(_i6.FileConfigSettings),
    ],
  ): _i26.MapBuilder<String, _i6.FileConfigSettings>.new,
  const FullType(
    _i26.BuiltList,
    [FullType(_i17.S3Object)],
  ): _i26.ListBuilder<_i17.S3Object>.new,
  const FullType(
    _i26.BuiltList,
    [FullType(_i19.CommonPrefix)],
  ): _i26.ListBuilder<_i19.CommonPrefix>.new,
};
