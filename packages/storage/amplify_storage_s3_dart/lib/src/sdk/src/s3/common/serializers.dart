// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/abort_multipart_upload_output.dart'
    as _i5;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/abort_multipart_upload_request.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/archive_status.dart'
    as _i41;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart'
    as _i13;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_mode.dart'
    as _i33;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/common_prefix.dart'
    as _i49;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/complete_multipart_upload_output.dart'
    as _i11;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/complete_multipart_upload_request.dart'
    as _i9;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/completed_multipart_upload.dart'
    as _i8;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/completed_part.dart'
    as _i7;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/compression_type.dart'
    as _i65;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/continuation_event.dart'
    as _i81;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_object_output.dart'
    as _i21;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_object_request.dart'
    as _i19;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_object_result.dart'
    as _i20;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_part_result.dart'
    as _i88;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/create_multipart_upload_output.dart'
    as _i24;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/create_multipart_upload_request.dart'
    as _i23;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/csv_input.dart'
    as _i64;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/csv_output.dart'
    as _i71;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete.dart'
    as _i28;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete_object_output.dart'
    as _i26;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete_object_request.dart'
    as _i25;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete_objects_output.dart'
    as _i32;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete_objects_request.dart'
    as _i29;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/deleted_object.dart'
    as _i30;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/encoding_type.dart'
    as _i44;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/end_event.dart'
    as _i82;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/error.dart'
    as _i31;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/expression_type.dart'
    as _i61;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/file_header_info.dart'
    as _i63;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/get_object_output.dart'
    as _i36;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/get_object_request.dart'
    as _i34;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/head_object_output.dart'
    as _i42;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/head_object_request.dart'
    as _i40;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/initiator.dart'
    as _i47;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/input_serialization.dart'
    as _i69;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/intelligent_tiering_access_tier.dart'
    as _i37;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/invalid_object_state.dart'
    as _i38;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/json_input.dart'
    as _i67;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/json_output.dart'
    as _i72;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/json_type.dart'
    as _i66;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_multipart_uploads_output.dart'
    as _i50;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_multipart_uploads_request.dart'
    as _i45;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_objects_v2_output.dart'
    as _i54;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_objects_v2_request.dart'
    as _i51;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_parts_output.dart'
    as _i58;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_parts_request.dart'
    as _i56;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/metadata_directive.dart'
    as _i14;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/multipart_upload.dart'
    as _i48;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/no_such_bucket.dart'
    as _i55;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/no_such_key.dart'
    as _i39;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/no_such_upload.dart'
    as _i6;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/not_found.dart'
    as _i43;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object.dart'
    as _i53;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_canned_acl.dart'
    as _i12;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_identifier.dart'
    as _i27;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_legal_hold_status.dart'
    as _i18;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_mode.dart'
    as _i17;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_not_in_active_tier_error.dart'
    as _i22;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_storage_class.dart'
    as _i52;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/output_serialization.dart'
    as _i73;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/owner.dart'
    as _i46;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/parquet_input.dart'
    as _i68;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/part.dart' as _i57;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/progress.dart'
    as _i79;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/progress_event.dart'
    as _i80;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/put_object_output.dart'
    as _i60;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/put_object_request.dart'
    as _i59;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/quote_fields.dart'
    as _i70;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/records_event.dart'
    as _i76;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/replication_status.dart'
    as _i35;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_charged.dart'
    as _i4;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart'
    as _i2;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_progress.dart'
    as _i62;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/scan_range.dart'
    as _i74;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/select_object_content_event_stream.dart'
    as _i83;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/select_object_content_output.dart'
    as _i84;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/select_object_content_request.dart'
    as _i75;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i10;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/stats.dart'
    as _i77;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/stats_event.dart'
    as _i78;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/storage_class.dart'
    as _i16;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/tagging_directive.dart'
    as _i15;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/upload_part_copy_output.dart'
    as _i89;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/upload_part_copy_request.dart'
    as _i87;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/upload_part_output.dart'
    as _i86;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/upload_part_request.dart'
    as _i85;
import 'package:built_collection/built_collection.dart' as _i90;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.RequestPayer.serializers,
  ..._i3.AbortMultipartUploadRequest.serializers,
  ..._i4.RequestCharged.serializers,
  ..._i5.AbortMultipartUploadOutput.serializers,
  ..._i6.NoSuchUpload.serializers,
  ..._i7.CompletedPart.serializers,
  ..._i8.CompletedMultipartUpload.serializers,
  ..._i9.CompleteMultipartUploadRequest.serializers,
  ..._i10.ServerSideEncryption.serializers,
  ..._i11.CompleteMultipartUploadOutput.serializers,
  ..._i12.ObjectCannedAcl.serializers,
  ..._i13.ChecksumAlgorithm.serializers,
  ..._i14.MetadataDirective.serializers,
  ..._i15.TaggingDirective.serializers,
  ..._i16.StorageClass.serializers,
  ..._i17.ObjectLockMode.serializers,
  ..._i18.ObjectLockLegalHoldStatus.serializers,
  ..._i19.CopyObjectRequest.serializers,
  ..._i20.CopyObjectResult.serializers,
  ..._i21.CopyObjectOutput.serializers,
  ..._i22.ObjectNotInActiveTierError.serializers,
  ..._i23.CreateMultipartUploadRequest.serializers,
  ..._i24.CreateMultipartUploadOutput.serializers,
  ..._i25.DeleteObjectRequest.serializers,
  ..._i26.DeleteObjectOutput.serializers,
  ..._i27.ObjectIdentifier.serializers,
  ..._i28.Delete.serializers,
  ..._i29.DeleteObjectsRequest.serializers,
  ..._i30.DeletedObject.serializers,
  ..._i31.Error.serializers,
  ..._i32.DeleteObjectsOutput.serializers,
  ..._i33.ChecksumMode.serializers,
  ..._i34.GetObjectRequest.serializers,
  ..._i35.ReplicationStatus.serializers,
  ..._i36.GetObjectOutput.serializers,
  ..._i37.IntelligentTieringAccessTier.serializers,
  ..._i38.InvalidObjectState.serializers,
  ..._i39.NoSuchKey.serializers,
  ..._i40.HeadObjectRequest.serializers,
  ..._i41.ArchiveStatus.serializers,
  ..._i42.HeadObjectOutput.serializers,
  ..._i43.NotFound.serializers,
  ..._i44.EncodingType.serializers,
  ..._i45.ListMultipartUploadsRequest.serializers,
  ..._i46.Owner.serializers,
  ..._i47.Initiator.serializers,
  ..._i48.MultipartUpload.serializers,
  ..._i49.CommonPrefix.serializers,
  ..._i50.ListMultipartUploadsOutput.serializers,
  ..._i51.ListObjectsV2Request.serializers,
  ..._i52.ObjectStorageClass.serializers,
  ..._i53.S3Object.serializers,
  ..._i54.ListObjectsV2Output.serializers,
  ..._i55.NoSuchBucket.serializers,
  ..._i56.ListPartsRequest.serializers,
  ..._i57.Part.serializers,
  ..._i58.ListPartsOutput.serializers,
  ..._i59.PutObjectRequest.serializers,
  ..._i60.PutObjectOutput.serializers,
  ..._i61.ExpressionType.serializers,
  ..._i62.RequestProgress.serializers,
  ..._i63.FileHeaderInfo.serializers,
  ..._i64.CsvInput.serializers,
  ..._i65.CompressionType.serializers,
  ..._i66.JsonType.serializers,
  ..._i67.JsonInput.serializers,
  ..._i68.ParquetInput.serializers,
  ..._i69.InputSerialization.serializers,
  ..._i70.QuoteFields.serializers,
  ..._i71.CsvOutput.serializers,
  ..._i72.JsonOutput.serializers,
  ..._i73.OutputSerialization.serializers,
  ..._i74.ScanRange.serializers,
  ..._i75.SelectObjectContentRequest.serializers,
  ..._i76.RecordsEvent.serializers,
  ..._i77.Stats.serializers,
  ..._i78.StatsEvent.serializers,
  ..._i79.Progress.serializers,
  ..._i80.ProgressEvent.serializers,
  ..._i81.ContinuationEvent.serializers,
  ..._i82.EndEvent.serializers,
  ..._i83.SelectObjectContentEventStream.serializers,
  ..._i84.SelectObjectContentOutput.serializers,
  ..._i85.UploadPartRequest.serializers,
  ..._i86.UploadPartOutput.serializers,
  ..._i87.UploadPartCopyRequest.serializers,
  ..._i88.CopyPartResult.serializers,
  ..._i89.UploadPartCopyOutput.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i90.BuiltList,
    [FullType(_i7.CompletedPart)],
  ): _i90.ListBuilder<_i7.CompletedPart>.new,
  const FullType(
    _i90.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i90.MapBuilder<String, String>.new,
  const FullType(
    _i90.BuiltList,
    [FullType(_i27.ObjectIdentifier)],
  ): _i90.ListBuilder<_i27.ObjectIdentifier>.new,
  const FullType(
    _i90.BuiltList,
    [FullType(_i30.DeletedObject)],
  ): _i90.ListBuilder<_i30.DeletedObject>.new,
  const FullType(
    _i90.BuiltList,
    [FullType(_i31.Error)],
  ): _i90.ListBuilder<_i31.Error>.new,
  const FullType(
    _i90.BuiltList,
    [FullType(_i49.CommonPrefix)],
  ): _i90.ListBuilder<_i49.CommonPrefix>.new,
  const FullType(
    _i90.BuiltList,
    [FullType(_i48.MultipartUpload)],
  ): _i90.ListBuilder<_i48.MultipartUpload>.new,
  const FullType(
    _i90.BuiltList,
    [FullType(_i13.ChecksumAlgorithm)],
  ): _i90.ListBuilder<_i13.ChecksumAlgorithm>.new,
  const FullType(
    _i90.BuiltList,
    [FullType(_i53.S3Object)],
  ): _i90.ListBuilder<_i53.S3Object>.new,
  const FullType(
    _i90.BuiltList,
    [FullType(_i57.Part)],
  ): _i90.ListBuilder<_i57.Part>.new,
};
