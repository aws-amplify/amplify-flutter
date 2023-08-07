// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/abort_multipart_upload_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/abort_multipart_upload_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/archive_status.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_mode.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/common_prefix.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/complete_multipart_upload_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/complete_multipart_upload_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/completed_multipart_upload.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/completed_part.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/compression_type.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/continuation_event.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_object_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_object_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_object_result.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_part_result.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/create_multipart_upload_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/create_multipart_upload_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/csv_input.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/csv_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete_object_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete_object_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete_objects_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete_objects_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/deleted_object.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/encoding_type.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/end_event.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/error.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/expression_type.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/file_header_info.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/get_object_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/get_object_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/head_object_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/head_object_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/initiator.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/input_serialization.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/intelligent_tiering_access_tier.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/invalid_object_state.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/json_input.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/json_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/json_type.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_multipart_uploads_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_multipart_uploads_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_objects_v2_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_objects_v2_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_parts_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_parts_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/metadata_directive.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/multipart_upload.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/no_such_bucket.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/no_such_key.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/no_such_upload.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/not_found.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_canned_acl.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_identifier.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_legal_hold_status.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_mode.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_not_in_active_tier_error.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_storage_class.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/optional_object_attributes.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/output_serialization.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/owner.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/parquet_input.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/part.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/progress.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/progress_event.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/put_object_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/put_object_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/quote_fields.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/records_event.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/replication_status.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_charged.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_progress.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/restore_status.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/scan_range.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/select_object_content_event_stream.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/select_object_content_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/select_object_content_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/server_side_encryption.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/stats.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/stats_event.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/storage_class.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/tagging_directive.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/upload_part_copy_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/upload_part_copy_request.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/upload_part_output.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/upload_part_request.dart';
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...RequestPayer.serializers,
  ...AbortMultipartUploadRequest.serializers,
  ...RequestCharged.serializers,
  ...AbortMultipartUploadOutput.serializers,
  ...NoSuchUpload.serializers,
  ...CompletedPart.serializers,
  ...CompletedMultipartUpload.serializers,
  ...CompleteMultipartUploadRequest.serializers,
  ...ServerSideEncryption.serializers,
  ...CompleteMultipartUploadOutput.serializers,
  ...ObjectCannedAcl.serializers,
  ...ChecksumAlgorithm.serializers,
  ...MetadataDirective.serializers,
  ...TaggingDirective.serializers,
  ...StorageClass.serializers,
  ...ObjectLockMode.serializers,
  ...ObjectLockLegalHoldStatus.serializers,
  ...CopyObjectRequest.serializers,
  ...CopyObjectResult.serializers,
  ...CopyObjectOutput.serializers,
  ...ObjectNotInActiveTierError.serializers,
  ...CreateMultipartUploadRequest.serializers,
  ...CreateMultipartUploadOutput.serializers,
  ...DeleteObjectRequest.serializers,
  ...DeleteObjectOutput.serializers,
  ...ObjectIdentifier.serializers,
  ...Delete.serializers,
  ...DeleteObjectsRequest.serializers,
  ...DeletedObject.serializers,
  ...Error.serializers,
  ...DeleteObjectsOutput.serializers,
  ...ChecksumMode.serializers,
  ...GetObjectRequest.serializers,
  ...ReplicationStatus.serializers,
  ...GetObjectOutput.serializers,
  ...IntelligentTieringAccessTier.serializers,
  ...InvalidObjectState.serializers,
  ...NoSuchKey.serializers,
  ...HeadObjectRequest.serializers,
  ...ArchiveStatus.serializers,
  ...HeadObjectOutput.serializers,
  ...NotFound.serializers,
  ...EncodingType.serializers,
  ...ListMultipartUploadsRequest.serializers,
  ...Owner.serializers,
  ...Initiator.serializers,
  ...MultipartUpload.serializers,
  ...CommonPrefix.serializers,
  ...ListMultipartUploadsOutput.serializers,
  ...OptionalObjectAttributes.serializers,
  ...ListObjectsV2Request.serializers,
  ...ObjectStorageClass.serializers,
  ...RestoreStatus.serializers,
  ...S3Object.serializers,
  ...ListObjectsV2Output.serializers,
  ...NoSuchBucket.serializers,
  ...ListPartsRequest.serializers,
  ...Part.serializers,
  ...ListPartsOutput.serializers,
  ...PutObjectRequest.serializers,
  ...PutObjectOutput.serializers,
  ...ExpressionType.serializers,
  ...RequestProgress.serializers,
  ...FileHeaderInfo.serializers,
  ...CsvInput.serializers,
  ...CompressionType.serializers,
  ...JsonType.serializers,
  ...JsonInput.serializers,
  ...ParquetInput.serializers,
  ...InputSerialization.serializers,
  ...QuoteFields.serializers,
  ...CsvOutput.serializers,
  ...JsonOutput.serializers,
  ...OutputSerialization.serializers,
  ...ScanRange.serializers,
  ...SelectObjectContentRequest.serializers,
  ...RecordsEvent.serializers,
  ...Stats.serializers,
  ...StatsEvent.serializers,
  ...Progress.serializers,
  ...ProgressEvent.serializers,
  ...ContinuationEvent.serializers,
  ...EndEvent.serializers,
  ...SelectObjectContentEventStream.serializers,
  ...SelectObjectContentOutput.serializers,
  ...UploadPartRequest.serializers,
  ...UploadPartOutput.serializers,
  ...UploadPartCopyRequest.serializers,
  ...CopyPartResult.serializers,
  ...UploadPartCopyOutput.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltList,
    [FullType(CompletedPart)],
  ): _i2.ListBuilder<CompletedPart>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.MapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ObjectIdentifier)],
  ): _i2.ListBuilder<ObjectIdentifier>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DeletedObject)],
  ): _i2.ListBuilder<DeletedObject>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Error)],
  ): _i2.ListBuilder<Error>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CommonPrefix)],
  ): _i2.ListBuilder<CommonPrefix>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(MultipartUpload)],
  ): _i2.ListBuilder<MultipartUpload>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(OptionalObjectAttributes)],
  ): _i2.ListBuilder<OptionalObjectAttributes>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ChecksumAlgorithm)],
  ): _i2.ListBuilder<ChecksumAlgorithm>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(S3Object)],
  ): _i2.ListBuilder<S3Object>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Part)],
  ): _i2.ListBuilder<Part>.new,
};
