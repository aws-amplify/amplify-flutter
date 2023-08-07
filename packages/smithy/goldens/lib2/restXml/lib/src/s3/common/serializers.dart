// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v2.s3.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/s3/model/aws_config.dart';
import 'package:rest_xml_v2/src/s3/model/bucket_location_constraint.dart';
import 'package:rest_xml_v2/src/s3/model/client_config.dart';
import 'package:rest_xml_v2/src/s3/model/common_prefix.dart';
import 'package:rest_xml_v2/src/s3/model/delete_object_tagging_output.dart';
import 'package:rest_xml_v2/src/s3/model/delete_object_tagging_request.dart';
import 'package:rest_xml_v2/src/s3/model/encoding_type.dart';
import 'package:rest_xml_v2/src/s3/model/environment_config.dart';
import 'package:rest_xml_v2/src/s3/model/file_config_settings.dart';
import 'package:rest_xml_v2/src/s3/model/get_bucket_location_output.dart';
import 'package:rest_xml_v2/src/s3/model/get_bucket_location_request.dart';
import 'package:rest_xml_v2/src/s3/model/list_objects_v2_output.dart';
import 'package:rest_xml_v2/src/s3/model/list_objects_v2_request.dart';
import 'package:rest_xml_v2/src/s3/model/no_such_bucket.dart';
import 'package:rest_xml_v2/src/s3/model/object.dart';
import 'package:rest_xml_v2/src/s3/model/object_storage_class.dart';
import 'package:rest_xml_v2/src/s3/model/operation_config.dart';
import 'package:rest_xml_v2/src/s3/model/owner.dart';
import 'package:rest_xml_v2/src/s3/model/request_payer.dart';
import 'package:rest_xml_v2/src/s3/model/retry_config.dart';
import 'package:rest_xml_v2/src/s3/model/retry_mode.dart';
import 'package:rest_xml_v2/src/s3/model/s3_addressing_style.dart';
import 'package:rest_xml_v2/src/s3/model/s3_config.dart';
import 'package:rest_xml_v2/src/s3/model/scoped_config.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...DeleteObjectTaggingRequest.serializers,
  ...AwsConfig.serializers,
  ...ScopedConfig.serializers,
  ...EnvironmentConfig.serializers,
  ...FileConfigSettings.serializers,
  ...S3Config.serializers,
  ...ClientConfig.serializers,
  ...RetryConfig.serializers,
  ...OperationConfig.serializers,
  ...DeleteObjectTaggingOutput.serializers,
  ...GetBucketLocationOutput.serializers,
  ...GetBucketLocationRequest.serializers,
  ...BucketLocationConstraint.serializers,
  ...ListObjectsV2Request.serializers,
  ...ListObjectsV2Output.serializers,
  ...S3Object.serializers,
  ...Owner.serializers,
  ...CommonPrefix.serializers,
  ...NoSuchBucket.serializers,
  ...EncodingType.serializers,
  ...RequestPayer.serializers,
  ...ObjectStorageClass.serializers,
  ...RetryMode.serializers,
  ...S3AddressingStyle.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(FileConfigSettings),
    ],
  ): _i2.MapBuilder<String, FileConfigSettings>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(S3Object)],
  ): _i2.ListBuilder<S3Object>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CommonPrefix)],
  ): _i2.ListBuilder<CommonPrefix>.new,
};
