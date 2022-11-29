// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i349;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/abort_incomplete_multipart_upload.dart'
    as _i118;
import 'package:smoke_test/src/sdk/src/s3/model/abort_multipart_upload_output.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/abort_multipart_upload_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/accelerate_configuration.dart'
    as _i266;
import 'package:smoke_test/src/sdk/src/s3/model/access_control_policy.dart'
    as _i268;
import 'package:smoke_test/src/sdk/src/s3/model/access_control_translation.dart'
    as _i165;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_and_operator.dart'
    as _i69;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_configuration.dart'
    as _i77;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_export_destination.dart'
    as _i74;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_filter.dart' as _i70;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_s3_bucket_destination.dart'
    as _i73;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_s3_export_file_format.dart'
    as _i72;
import 'package:smoke_test/src/sdk/src/s3/model/archive_status.dart' as _i233;
import 'package:smoke_test/src/sdk/src/s3/model/bucket.dart' as _i243;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_accelerate_status.dart'
    as _i58;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_already_exists.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_already_owned_by_you.dart'
    as _i30;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_canned_acl.dart' as _i23;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_lifecycle_configuration.dart'
    as _i276;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_location_constraint.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_logging_status.dart'
    as _i278;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_logs_permission.dart'
    as _i124;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_versioning_status.dart'
    as _i184;
import 'package:smoke_test/src/sdk/src/s3/model/checksum.dart' as _i206;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_mode.dart' as _i196;
import 'package:smoke_test/src/sdk/src/s3/model/common_prefix.dart' as _i249;
import 'package:smoke_test/src/sdk/src/s3/model/complete_multipart_upload_output.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/s3/model/complete_multipart_upload_request.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/s3/model/completed_multipart_upload.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/s3/model/completed_part.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/compression_type.dart' as _i312;
import 'package:smoke_test/src/sdk/src/s3/model/condition.dart' as _i192;
import 'package:smoke_test/src/sdk/src/s3/model/continuation_event.dart'
    as _i339;
import 'package:smoke_test/src/sdk/src/s3/model/copy_object_output.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/s3/model/copy_object_request.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/s3/model/copy_object_result.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/s3/model/copy_part_result.dart' as _i346;
import 'package:smoke_test/src/sdk/src/s3/model/cors_configuration.dart'
    as _i271;
import 'package:smoke_test/src/sdk/src/s3/model/cors_rule.dart' as _i80;
import 'package:smoke_test/src/sdk/src/s3/model/create_bucket_configuration.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/s3/model/create_bucket_output.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/s3/model/create_bucket_request.dart'
    as _i27;
import 'package:smoke_test/src/sdk/src/s3/model/create_multipart_upload_output.dart'
    as _i32;
import 'package:smoke_test/src/sdk/src/s3/model/create_multipart_upload_request.dart'
    as _i31;
import 'package:smoke_test/src/sdk/src/s3/model/csv_input.dart' as _i311;
import 'package:smoke_test/src/sdk/src/s3/model/csv_output.dart' as _i319;
import 'package:smoke_test/src/sdk/src/s3/model/default_retention.dart'
    as _i216;
import 'package:smoke_test/src/sdk/src/s3/model/delete.dart' as _i51;
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_analytics_configuration_request.dart'
    as _i34;
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_cors_request.dart'
    as _i35;
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_encryption_request.dart'
    as _i36;
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_intelligent_tiering_configuration_request.dart'
    as _i37;
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_inventory_configuration_request.dart'
    as _i38;
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_lifecycle_request.dart'
    as _i39;
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_metrics_configuration_request.dart'
    as _i40;
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_ownership_controls_request.dart'
    as _i41;
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_policy_request.dart'
    as _i42;
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_replication_request.dart'
    as _i43;
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_request.dart'
    as _i33;
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_tagging_request.dart'
    as _i44;
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_website_request.dart'
    as _i45;
import 'package:smoke_test/src/sdk/src/s3/model/delete_marker_entry.dart'
    as _i254;
import 'package:smoke_test/src/sdk/src/s3/model/delete_marker_replication.dart'
    as _i174;
import 'package:smoke_test/src/sdk/src/s3/model/delete_marker_replication_status.dart'
    as _i173;
import 'package:smoke_test/src/sdk/src/s3/model/delete_object_output.dart'
    as _i47;
import 'package:smoke_test/src/sdk/src/s3/model/delete_object_request.dart'
    as _i46;
import 'package:smoke_test/src/sdk/src/s3/model/delete_object_tagging_output.dart'
    as _i49;
import 'package:smoke_test/src/sdk/src/s3/model/delete_object_tagging_request.dart'
    as _i48;
import 'package:smoke_test/src/sdk/src/s3/model/delete_objects_output.dart'
    as _i55;
import 'package:smoke_test/src/sdk/src/s3/model/delete_objects_request.dart'
    as _i52;
import 'package:smoke_test/src/sdk/src/s3/model/delete_public_access_block_request.dart'
    as _i56;
import 'package:smoke_test/src/sdk/src/s3/model/deleted_object.dart' as _i53;
import 'package:smoke_test/src/sdk/src/s3/model/destination.dart' as _i172;
import 'package:smoke_test/src/sdk/src/s3/model/encoding_type.dart' as _i245;
import 'package:smoke_test/src/sdk/src/s3/model/encryption.dart' as _i323;
import 'package:smoke_test/src/sdk/src/s3/model/encryption_configuration.dart'
    as _i166;
import 'package:smoke_test/src/sdk/src/s3/model/end_event.dart' as _i340;
import 'package:smoke_test/src/sdk/src/s3/model/error.dart' as _i54;
import 'package:smoke_test/src/sdk/src/s3/model/error_document.dart' as _i191;
import 'package:smoke_test/src/sdk/src/s3/model/event.dart' as _i134;
import 'package:smoke_test/src/sdk/src/s3/model/event_bridge_configuration.dart'
    as _i142;
import 'package:smoke_test/src/sdk/src/s3/model/existing_object_replication.dart'
    as _i163;
import 'package:smoke_test/src/sdk/src/s3/model/existing_object_replication_status.dart'
    as _i162;
import 'package:smoke_test/src/sdk/src/s3/model/expiration_status.dart'
    as _i113;
import 'package:smoke_test/src/sdk/src/s3/model/expression_type.dart' as _i317;
import 'package:smoke_test/src/sdk/src/s3/model/file_header_info.dart' as _i310;
import 'package:smoke_test/src/sdk/src/s3/model/filter_rule.dart' as _i136;
import 'package:smoke_test/src/sdk/src/s3/model/filter_rule_name.dart' as _i135;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_accelerate_configuration_output.dart'
    as _i59;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_accelerate_configuration_request.dart'
    as _i57;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_acl_output.dart'
    as _i66;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_acl_request.dart'
    as _i60;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_analytics_configuration_output.dart'
    as _i78;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_analytics_configuration_request.dart'
    as _i67;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_cors_output.dart'
    as _i81;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_cors_request.dart'
    as _i79;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_encryption_output.dart'
    as _i86;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_encryption_request.dart'
    as _i82;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_intelligent_tiering_configuration_output.dart'
    as _i94;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_intelligent_tiering_configuration_request.dart'
    as _i87;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_inventory_configuration_output.dart'
    as _i108;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_inventory_configuration_request.dart'
    as _i95;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_lifecycle_configuration_output.dart'
    as _i120;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_lifecycle_configuration_request.dart'
    as _i109;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_location_output.dart'
    as _i122;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_location_request.dart'
    as _i121;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_logging_output.dart'
    as _i127;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_logging_request.dart'
    as _i123;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_metrics_configuration_output.dart'
    as _i132;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_metrics_configuration_request.dart'
    as _i128;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_notification_configuration_request.dart'
    as _i133;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_ownership_controls_output.dart'
    as _i147;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_ownership_controls_request.dart'
    as _i144;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_policy_output.dart'
    as _i149;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_policy_request.dart'
    as _i148;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_policy_status_output.dart'
    as _i152;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_policy_status_request.dart'
    as _i150;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_replication_output.dart'
    as _i177;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_replication_request.dart'
    as _i153;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_request_payment_output.dart'
    as _i180;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_request_payment_request.dart'
    as _i178;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_tagging_output.dart'
    as _i182;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_tagging_request.dart'
    as _i181;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_versioning_output.dart'
    as _i186;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_versioning_request.dart'
    as _i183;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_website_output.dart'
    as _i195;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_website_request.dart'
    as _i187;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_acl_output.dart'
    as _i203;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_acl_request.dart'
    as _i202;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_attributes_output.dart'
    as _i209;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_attributes_parts.dart'
    as _i208;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_attributes_request.dart'
    as _i205;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_legal_hold_output.dart'
    as _i212;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_legal_hold_request.dart'
    as _i210;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_lock_configuration_output.dart'
    as _i219;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_lock_configuration_request.dart'
    as _i213;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_output.dart'
    as _i199;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_request.dart'
    as _i197;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_retention_output.dart'
    as _i222;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_retention_request.dart'
    as _i220;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_tagging_output.dart'
    as _i224;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_tagging_request.dart'
    as _i223;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_torrent_output.dart'
    as _i226;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_torrent_request.dart'
    as _i225;
import 'package:smoke_test/src/sdk/src/s3/model/get_public_access_block_output.dart'
    as _i229;
import 'package:smoke_test/src/sdk/src/s3/model/get_public_access_block_request.dart'
    as _i227;
import 'package:smoke_test/src/sdk/src/s3/model/glacier_job_parameters.dart'
    as _i308;
import 'package:smoke_test/src/sdk/src/s3/model/grant.dart' as _i65;
import 'package:smoke_test/src/sdk/src/s3/model/grantee.dart' as _i63;
import 'package:smoke_test/src/sdk/src/s3/model/head_bucket_request.dart'
    as _i230;
import 'package:smoke_test/src/sdk/src/s3/model/head_object_output.dart'
    as _i234;
import 'package:smoke_test/src/sdk/src/s3/model/head_object_request.dart'
    as _i232;
import 'package:smoke_test/src/sdk/src/s3/model/index_document.dart' as _i190;
import 'package:smoke_test/src/sdk/src/s3/model/initiator.dart' as _i247;
import 'package:smoke_test/src/sdk/src/s3/model/input_serialization.dart'
    as _i316;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_access_tier.dart'
    as _i91;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_and_operator.dart'
    as _i88;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_configuration.dart'
    as _i93;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_filter.dart'
    as _i89;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_status.dart'
    as _i90;
import 'package:smoke_test/src/sdk/src/s3/model/invalid_object_state.dart'
    as _i200;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_configuration.dart'
    as _i107;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_destination.dart'
    as _i101;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_encryption.dart'
    as _i99;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_filter.dart' as _i102;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_format.dart' as _i96;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_frequency.dart'
    as _i105;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_included_object_versions.dart'
    as _i103;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_optional_field.dart'
    as _i104;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_s3_bucket_destination.dart'
    as _i100;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_schedule.dart'
    as _i106;
import 'package:smoke_test/src/sdk/src/s3/model/json_input.dart' as _i314;
import 'package:smoke_test/src/sdk/src/s3/model/json_output.dart' as _i320;
import 'package:smoke_test/src/sdk/src/s3/model/json_type.dart' as _i313;
import 'package:smoke_test/src/sdk/src/s3/model/lambda_function_configuration.dart'
    as _i141;
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_expiration.dart'
    as _i110;
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_rule.dart' as _i119;
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_rule_and_operator.dart'
    as _i111;
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_rule_filter.dart'
    as _i112;
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_analytics_configurations_output.dart'
    as _i236;
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_analytics_configurations_request.dart'
    as _i235;
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_intelligent_tiering_configurations_output.dart'
    as _i238;
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_intelligent_tiering_configurations_request.dart'
    as _i237;
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_inventory_configurations_output.dart'
    as _i240;
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_inventory_configurations_request.dart'
    as _i239;
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_metrics_configurations_output.dart'
    as _i242;
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_metrics_configurations_request.dart'
    as _i241;
import 'package:smoke_test/src/sdk/src/s3/model/list_buckets_output.dart'
    as _i244;
import 'package:smoke_test/src/sdk/src/s3/model/list_multipart_uploads_output.dart'
    as _i250;
import 'package:smoke_test/src/sdk/src/s3/model/list_multipart_uploads_request.dart'
    as _i246;
import 'package:smoke_test/src/sdk/src/s3/model/list_object_versions_output.dart'
    as _i255;
import 'package:smoke_test/src/sdk/src/s3/model/list_object_versions_request.dart'
    as _i251;
import 'package:smoke_test/src/sdk/src/s3/model/list_objects_output.dart'
    as _i259;
import 'package:smoke_test/src/sdk/src/s3/model/list_objects_request.dart'
    as _i256;
import 'package:smoke_test/src/sdk/src/s3/model/list_objects_v2_output.dart'
    as _i262;
import 'package:smoke_test/src/sdk/src/s3/model/list_objects_v2_request.dart'
    as _i261;
import 'package:smoke_test/src/sdk/src/s3/model/list_parts_output.dart'
    as _i265;
import 'package:smoke_test/src/sdk/src/s3/model/list_parts_request.dart'
    as _i263;
import 'package:smoke_test/src/sdk/src/s3/model/logging_enabled.dart' as _i126;
import 'package:smoke_test/src/sdk/src/s3/model/metadata_directive.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/s3/model/metadata_entry.dart' as _i324;
import 'package:smoke_test/src/sdk/src/s3/model/metrics.dart' as _i171;
import 'package:smoke_test/src/sdk/src/s3/model/metrics_and_operator.dart'
    as _i129;
import 'package:smoke_test/src/sdk/src/s3/model/metrics_configuration.dart'
    as _i131;
import 'package:smoke_test/src/sdk/src/s3/model/metrics_filter.dart' as _i130;
import 'package:smoke_test/src/sdk/src/s3/model/metrics_status.dart' as _i170;
import 'package:smoke_test/src/sdk/src/s3/model/mfa_delete.dart' as _i289;
import 'package:smoke_test/src/sdk/src/s3/model/mfa_delete_status.dart'
    as _i185;
import 'package:smoke_test/src/sdk/src/s3/model/multipart_upload.dart' as _i248;
import 'package:smoke_test/src/sdk/src/s3/model/no_such_bucket.dart' as _i260;
import 'package:smoke_test/src/sdk/src/s3/model/no_such_key.dart' as _i201;
import 'package:smoke_test/src/sdk/src/s3/model/no_such_upload.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/noncurrent_version_expiration.dart'
    as _i117;
import 'package:smoke_test/src/sdk/src/s3/model/noncurrent_version_transition.dart'
    as _i116;
import 'package:smoke_test/src/sdk/src/s3/model/not_found.dart' as _i231;
import 'package:smoke_test/src/sdk/src/s3/model/notification_configuration.dart'
    as _i143;
import 'package:smoke_test/src/sdk/src/s3/model/notification_configuration_filter.dart'
    as _i138;
import 'package:smoke_test/src/sdk/src/s3/model/object.dart' as _i258;
import 'package:smoke_test/src/sdk/src/s3/model/object_already_in_active_tier_error.dart'
    as _i330;
import 'package:smoke_test/src/sdk/src/s3/model/object_attributes.dart'
    as _i204;
import 'package:smoke_test/src/sdk/src/s3/model/object_canned_acl.dart' as _i12;
import 'package:smoke_test/src/sdk/src/s3/model/object_identifier.dart' as _i50;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_configuration.dart'
    as _i218;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_enabled.dart'
    as _i214;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_legal_hold.dart'
    as _i211;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_legal_hold_status.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_mode.dart' as _i17;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_retention.dart'
    as _i221;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_retention_mode.dart'
    as _i215;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_rule.dart' as _i217;
import 'package:smoke_test/src/sdk/src/s3/model/object_not_in_active_tier_error.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/s3/model/object_ownership.dart' as _i26;
import 'package:smoke_test/src/sdk/src/s3/model/object_part.dart' as _i207;
import 'package:smoke_test/src/sdk/src/s3/model/object_storage_class.dart'
    as _i257;
import 'package:smoke_test/src/sdk/src/s3/model/object_version.dart' as _i253;
import 'package:smoke_test/src/sdk/src/s3/model/object_version_storage_class.dart'
    as _i252;
import 'package:smoke_test/src/sdk/src/s3/model/output_location.dart' as _i326;
import 'package:smoke_test/src/sdk/src/s3/model/output_serialization.dart'
    as _i321;
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart' as _i61;
import 'package:smoke_test/src/sdk/src/s3/model/owner_override.dart' as _i164;
import 'package:smoke_test/src/sdk/src/s3/model/ownership_controls.dart'
    as _i146;
import 'package:smoke_test/src/sdk/src/s3/model/ownership_controls_rule.dart'
    as _i145;
import 'package:smoke_test/src/sdk/src/s3/model/parquet_input.dart' as _i315;
import 'package:smoke_test/src/sdk/src/s3/model/part.dart' as _i264;
import 'package:smoke_test/src/sdk/src/s3/model/payer.dart' as _i179;
import 'package:smoke_test/src/sdk/src/s3/model/permission.dart' as _i64;
import 'package:smoke_test/src/sdk/src/s3/model/policy_status.dart' as _i151;
import 'package:smoke_test/src/sdk/src/s3/model/progress.dart' as _i337;
import 'package:smoke_test/src/sdk/src/s3/model/progress_event.dart' as _i338;
import 'package:smoke_test/src/sdk/src/s3/model/protocol.dart' as _i188;
import 'package:smoke_test/src/sdk/src/s3/model/public_access_block_configuration.dart'
    as _i228;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_accelerate_configuration_request.dart'
    as _i267;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_acl_request.dart'
    as _i269;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_analytics_configuration_request.dart'
    as _i270;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_cors_request.dart'
    as _i272;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_encryption_request.dart'
    as _i273;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_intelligent_tiering_configuration_request.dart'
    as _i274;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_inventory_configuration_request.dart'
    as _i275;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_lifecycle_configuration_request.dart'
    as _i277;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_logging_request.dart'
    as _i279;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_metrics_configuration_request.dart'
    as _i280;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_notification_configuration_request.dart'
    as _i281;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_ownership_controls_request.dart'
    as _i282;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_policy_request.dart'
    as _i283;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_replication_request.dart'
    as _i284;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_request_payment_request.dart'
    as _i286;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_tagging_request.dart'
    as _i288;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_versioning_request.dart'
    as _i291;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_website_request.dart'
    as _i293;
import 'package:smoke_test/src/sdk/src/s3/model/put_object_acl_output.dart'
    as _i297;
import 'package:smoke_test/src/sdk/src/s3/model/put_object_acl_request.dart'
    as _i296;
import 'package:smoke_test/src/sdk/src/s3/model/put_object_legal_hold_output.dart'
    as _i299;
import 'package:smoke_test/src/sdk/src/s3/model/put_object_legal_hold_request.dart'
    as _i298;
import 'package:smoke_test/src/sdk/src/s3/model/put_object_lock_configuration_output.dart'
    as _i301;
import 'package:smoke_test/src/sdk/src/s3/model/put_object_lock_configuration_request.dart'
    as _i300;
import 'package:smoke_test/src/sdk/src/s3/model/put_object_output.dart'
    as _i295;
import 'package:smoke_test/src/sdk/src/s3/model/put_object_request.dart'
    as _i294;
import 'package:smoke_test/src/sdk/src/s3/model/put_object_retention_output.dart'
    as _i303;
import 'package:smoke_test/src/sdk/src/s3/model/put_object_retention_request.dart'
    as _i302;
import 'package:smoke_test/src/sdk/src/s3/model/put_object_tagging_output.dart'
    as _i305;
import 'package:smoke_test/src/sdk/src/s3/model/put_object_tagging_request.dart'
    as _i304;
import 'package:smoke_test/src/sdk/src/s3/model/put_public_access_block_request.dart'
    as _i306;
import 'package:smoke_test/src/sdk/src/s3/model/queue_configuration.dart'
    as _i140;
import 'package:smoke_test/src/sdk/src/s3/model/quote_fields.dart' as _i318;
import 'package:smoke_test/src/sdk/src/s3/model/records_event.dart' as _i334;
import 'package:smoke_test/src/sdk/src/s3/model/redirect.dart' as _i193;
import 'package:smoke_test/src/sdk/src/s3/model/redirect_all_requests_to.dart'
    as _i189;
import 'package:smoke_test/src/sdk/src/s3/model/replica_modifications.dart'
    as _i160;
import 'package:smoke_test/src/sdk/src/s3/model/replica_modifications_status.dart'
    as _i159;
import 'package:smoke_test/src/sdk/src/s3/model/replication_configuration.dart'
    as _i176;
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule.dart' as _i175;
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule_and_operator.dart'
    as _i154;
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule_filter.dart'
    as _i155;
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule_status.dart'
    as _i156;
import 'package:smoke_test/src/sdk/src/s3/model/replication_status.dart'
    as _i198;
import 'package:smoke_test/src/sdk/src/s3/model/replication_time.dart' as _i169;
import 'package:smoke_test/src/sdk/src/s3/model/replication_time_status.dart'
    as _i167;
import 'package:smoke_test/src/sdk/src/s3/model/replication_time_value.dart'
    as _i168;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/request_payment_configuration.dart'
    as _i285;
import 'package:smoke_test/src/sdk/src/s3/model/request_progress.dart' as _i331;
import 'package:smoke_test/src/sdk/src/s3/model/restore_object_output.dart'
    as _i329;
import 'package:smoke_test/src/sdk/src/s3/model/restore_object_request.dart'
    as _i328;
import 'package:smoke_test/src/sdk/src/s3/model/restore_request.dart' as _i327;
import 'package:smoke_test/src/sdk/src/s3/model/restore_request_type.dart'
    as _i309;
import 'package:smoke_test/src/sdk/src/s3/model/routing_rule.dart' as _i194;
import 'package:smoke_test/src/sdk/src/s3/model/s3_key_filter.dart' as _i137;
import 'package:smoke_test/src/sdk/src/s3/model/s3_location.dart' as _i325;
import 'package:smoke_test/src/sdk/src/s3/model/scan_range.dart' as _i332;
import 'package:smoke_test/src/sdk/src/s3/model/select_object_content_event_stream.dart'
    as _i341;
import 'package:smoke_test/src/sdk/src/s3/model/select_object_content_output.dart'
    as _i342;
import 'package:smoke_test/src/sdk/src/s3/model/select_object_content_request.dart'
    as _i333;
import 'package:smoke_test/src/sdk/src/s3/model/select_parameters.dart'
    as _i322;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_by_default.dart'
    as _i83;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_configuration.dart'
    as _i85;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_rule.dart'
    as _i84;
import 'package:smoke_test/src/sdk/src/s3/model/source_selection_criteria.dart'
    as _i161;
import 'package:smoke_test/src/sdk/src/s3/model/sse_kms_encrypted_objects.dart'
    as _i158;
import 'package:smoke_test/src/sdk/src/s3/model/sse_kms_encrypted_objects_status.dart'
    as _i157;
import 'package:smoke_test/src/sdk/src/s3/model/ssekms.dart' as _i98;
import 'package:smoke_test/src/sdk/src/s3/model/sses3.dart' as _i97;
import 'package:smoke_test/src/sdk/src/s3/model/stats.dart' as _i335;
import 'package:smoke_test/src/sdk/src/s3/model/stats_event.dart' as _i336;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class.dart' as _i16;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class_analysis.dart'
    as _i76;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class_analysis_data_export.dart'
    as _i75;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class_analysis_schema_version.dart'
    as _i71;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i68;
import 'package:smoke_test/src/sdk/src/s3/model/tagging.dart' as _i287;
import 'package:smoke_test/src/sdk/src/s3/model/tagging_directive.dart' as _i15;
import 'package:smoke_test/src/sdk/src/s3/model/target_grant.dart' as _i125;
import 'package:smoke_test/src/sdk/src/s3/model/tier.dart' as _i307;
import 'package:smoke_test/src/sdk/src/s3/model/tiering.dart' as _i92;
import 'package:smoke_test/src/sdk/src/s3/model/topic_configuration.dart'
    as _i139;
import 'package:smoke_test/src/sdk/src/s3/model/transition.dart' as _i115;
import 'package:smoke_test/src/sdk/src/s3/model/transition_storage_class.dart'
    as _i114;
import 'package:smoke_test/src/sdk/src/s3/model/type.dart' as _i62;
import 'package:smoke_test/src/sdk/src/s3/model/upload_part_copy_output.dart'
    as _i347;
import 'package:smoke_test/src/sdk/src/s3/model/upload_part_copy_request.dart'
    as _i345;
import 'package:smoke_test/src/sdk/src/s3/model/upload_part_output.dart'
    as _i344;
import 'package:smoke_test/src/sdk/src/s3/model/upload_part_request.dart'
    as _i343;
import 'package:smoke_test/src/sdk/src/s3/model/versioning_configuration.dart'
    as _i290;
import 'package:smoke_test/src/sdk/src/s3/model/website_configuration.dart'
    as _i292;
import 'package:smoke_test/src/sdk/src/s3/model/write_get_object_response_request.dart'
    as _i348;

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
  ..._i23.BucketCannedAcl.serializers,
  ..._i24.BucketLocationConstraint.serializers,
  ..._i25.CreateBucketConfiguration.serializers,
  ..._i26.ObjectOwnership.serializers,
  ..._i27.CreateBucketRequest.serializers,
  ..._i28.CreateBucketOutput.serializers,
  ..._i29.BucketAlreadyExists.serializers,
  ..._i30.BucketAlreadyOwnedByYou.serializers,
  ..._i31.CreateMultipartUploadRequest.serializers,
  ..._i32.CreateMultipartUploadOutput.serializers,
  ..._i33.DeleteBucketRequest.serializers,
  ..._i34.DeleteBucketAnalyticsConfigurationRequest.serializers,
  ..._i35.DeleteBucketCorsRequest.serializers,
  ..._i36.DeleteBucketEncryptionRequest.serializers,
  ..._i37.DeleteBucketIntelligentTieringConfigurationRequest.serializers,
  ..._i38.DeleteBucketInventoryConfigurationRequest.serializers,
  ..._i39.DeleteBucketLifecycleRequest.serializers,
  ..._i40.DeleteBucketMetricsConfigurationRequest.serializers,
  ..._i41.DeleteBucketOwnershipControlsRequest.serializers,
  ..._i42.DeleteBucketPolicyRequest.serializers,
  ..._i43.DeleteBucketReplicationRequest.serializers,
  ..._i44.DeleteBucketTaggingRequest.serializers,
  ..._i45.DeleteBucketWebsiteRequest.serializers,
  ..._i46.DeleteObjectRequest.serializers,
  ..._i47.DeleteObjectOutput.serializers,
  ..._i48.DeleteObjectTaggingRequest.serializers,
  ..._i49.DeleteObjectTaggingOutput.serializers,
  ..._i50.ObjectIdentifier.serializers,
  ..._i51.Delete.serializers,
  ..._i52.DeleteObjectsRequest.serializers,
  ..._i53.DeletedObject.serializers,
  ..._i54.Error.serializers,
  ..._i55.DeleteObjectsOutput.serializers,
  ..._i56.DeletePublicAccessBlockRequest.serializers,
  ..._i57.GetBucketAccelerateConfigurationRequest.serializers,
  ..._i58.BucketAccelerateStatus.serializers,
  ..._i59.GetBucketAccelerateConfigurationOutput.serializers,
  ..._i60.GetBucketAclRequest.serializers,
  ..._i61.Owner.serializers,
  ..._i62.S3Type.serializers,
  ..._i63.Grantee.serializers,
  ..._i64.Permission.serializers,
  ..._i65.Grant.serializers,
  ..._i66.GetBucketAclOutput.serializers,
  ..._i67.GetBucketAnalyticsConfigurationRequest.serializers,
  ..._i68.Tag.serializers,
  ..._i69.AnalyticsAndOperator.serializers,
  ..._i70.AnalyticsFilter.serializers,
  ..._i71.StorageClassAnalysisSchemaVersion.serializers,
  ..._i72.AnalyticsS3ExportFileFormat.serializers,
  ..._i73.AnalyticsS3BucketDestination.serializers,
  ..._i74.AnalyticsExportDestination.serializers,
  ..._i75.StorageClassAnalysisDataExport.serializers,
  ..._i76.StorageClassAnalysis.serializers,
  ..._i77.AnalyticsConfiguration.serializers,
  ..._i78.GetBucketAnalyticsConfigurationOutput.serializers,
  ..._i79.GetBucketCorsRequest.serializers,
  ..._i80.CorsRule.serializers,
  ..._i81.GetBucketCorsOutput.serializers,
  ..._i82.GetBucketEncryptionRequest.serializers,
  ..._i83.ServerSideEncryptionByDefault.serializers,
  ..._i84.ServerSideEncryptionRule.serializers,
  ..._i85.ServerSideEncryptionConfiguration.serializers,
  ..._i86.GetBucketEncryptionOutput.serializers,
  ..._i87.GetBucketIntelligentTieringConfigurationRequest.serializers,
  ..._i88.IntelligentTieringAndOperator.serializers,
  ..._i89.IntelligentTieringFilter.serializers,
  ..._i90.IntelligentTieringStatus.serializers,
  ..._i91.IntelligentTieringAccessTier.serializers,
  ..._i92.Tiering.serializers,
  ..._i93.IntelligentTieringConfiguration.serializers,
  ..._i94.GetBucketIntelligentTieringConfigurationOutput.serializers,
  ..._i95.GetBucketInventoryConfigurationRequest.serializers,
  ..._i96.InventoryFormat.serializers,
  ..._i97.Sses3.serializers,
  ..._i98.Ssekms.serializers,
  ..._i99.InventoryEncryption.serializers,
  ..._i100.InventoryS3BucketDestination.serializers,
  ..._i101.InventoryDestination.serializers,
  ..._i102.InventoryFilter.serializers,
  ..._i103.InventoryIncludedObjectVersions.serializers,
  ..._i104.InventoryOptionalField.serializers,
  ..._i105.InventoryFrequency.serializers,
  ..._i106.InventorySchedule.serializers,
  ..._i107.InventoryConfiguration.serializers,
  ..._i108.GetBucketInventoryConfigurationOutput.serializers,
  ..._i109.GetBucketLifecycleConfigurationRequest.serializers,
  ..._i110.LifecycleExpiration.serializers,
  ..._i111.LifecycleRuleAndOperator.serializers,
  ..._i112.LifecycleRuleFilter.serializers,
  ..._i113.ExpirationStatus.serializers,
  ..._i114.TransitionStorageClass.serializers,
  ..._i115.Transition.serializers,
  ..._i116.NoncurrentVersionTransition.serializers,
  ..._i117.NoncurrentVersionExpiration.serializers,
  ..._i118.AbortIncompleteMultipartUpload.serializers,
  ..._i119.LifecycleRule.serializers,
  ..._i120.GetBucketLifecycleConfigurationOutput.serializers,
  ..._i121.GetBucketLocationRequest.serializers,
  ..._i122.GetBucketLocationOutput.serializers,
  ..._i123.GetBucketLoggingRequest.serializers,
  ..._i124.BucketLogsPermission.serializers,
  ..._i125.TargetGrant.serializers,
  ..._i126.LoggingEnabled.serializers,
  ..._i127.GetBucketLoggingOutput.serializers,
  ..._i128.GetBucketMetricsConfigurationRequest.serializers,
  ..._i129.MetricsAndOperator.serializers,
  ..._i130.MetricsFilter.serializers,
  ..._i131.MetricsConfiguration.serializers,
  ..._i132.GetBucketMetricsConfigurationOutput.serializers,
  ..._i133.GetBucketNotificationConfigurationRequest.serializers,
  ..._i134.Event.serializers,
  ..._i135.FilterRuleName.serializers,
  ..._i136.FilterRule.serializers,
  ..._i137.S3KeyFilter.serializers,
  ..._i138.NotificationConfigurationFilter.serializers,
  ..._i139.TopicConfiguration.serializers,
  ..._i140.QueueConfiguration.serializers,
  ..._i141.LambdaFunctionConfiguration.serializers,
  ..._i142.EventBridgeConfiguration.serializers,
  ..._i143.NotificationConfiguration.serializers,
  ..._i144.GetBucketOwnershipControlsRequest.serializers,
  ..._i145.OwnershipControlsRule.serializers,
  ..._i146.OwnershipControls.serializers,
  ..._i147.GetBucketOwnershipControlsOutput.serializers,
  ..._i148.GetBucketPolicyRequest.serializers,
  ..._i149.GetBucketPolicyOutput.serializers,
  ..._i150.GetBucketPolicyStatusRequest.serializers,
  ..._i151.PolicyStatus.serializers,
  ..._i152.GetBucketPolicyStatusOutput.serializers,
  ..._i153.GetBucketReplicationRequest.serializers,
  ..._i154.ReplicationRuleAndOperator.serializers,
  ..._i155.ReplicationRuleFilter.serializers,
  ..._i156.ReplicationRuleStatus.serializers,
  ..._i157.SseKmsEncryptedObjectsStatus.serializers,
  ..._i158.SseKmsEncryptedObjects.serializers,
  ..._i159.ReplicaModificationsStatus.serializers,
  ..._i160.ReplicaModifications.serializers,
  ..._i161.SourceSelectionCriteria.serializers,
  ..._i162.ExistingObjectReplicationStatus.serializers,
  ..._i163.ExistingObjectReplication.serializers,
  ..._i164.OwnerOverride.serializers,
  ..._i165.AccessControlTranslation.serializers,
  ..._i166.EncryptionConfiguration.serializers,
  ..._i167.ReplicationTimeStatus.serializers,
  ..._i168.ReplicationTimeValue.serializers,
  ..._i169.ReplicationTime.serializers,
  ..._i170.MetricsStatus.serializers,
  ..._i171.Metrics.serializers,
  ..._i172.Destination.serializers,
  ..._i173.DeleteMarkerReplicationStatus.serializers,
  ..._i174.DeleteMarkerReplication.serializers,
  ..._i175.ReplicationRule.serializers,
  ..._i176.ReplicationConfiguration.serializers,
  ..._i177.GetBucketReplicationOutput.serializers,
  ..._i178.GetBucketRequestPaymentRequest.serializers,
  ..._i179.Payer.serializers,
  ..._i180.GetBucketRequestPaymentOutput.serializers,
  ..._i181.GetBucketTaggingRequest.serializers,
  ..._i182.GetBucketTaggingOutput.serializers,
  ..._i183.GetBucketVersioningRequest.serializers,
  ..._i184.BucketVersioningStatus.serializers,
  ..._i185.MfaDeleteStatus.serializers,
  ..._i186.GetBucketVersioningOutput.serializers,
  ..._i187.GetBucketWebsiteRequest.serializers,
  ..._i188.Protocol.serializers,
  ..._i189.RedirectAllRequestsTo.serializers,
  ..._i190.IndexDocument.serializers,
  ..._i191.ErrorDocument.serializers,
  ..._i192.Condition.serializers,
  ..._i193.Redirect.serializers,
  ..._i194.RoutingRule.serializers,
  ..._i195.GetBucketWebsiteOutput.serializers,
  ..._i196.ChecksumMode.serializers,
  ..._i197.GetObjectRequest.serializers,
  ..._i198.ReplicationStatus.serializers,
  ..._i199.GetObjectOutput.serializers,
  ..._i200.InvalidObjectState.serializers,
  ..._i201.NoSuchKey.serializers,
  ..._i202.GetObjectAclRequest.serializers,
  ..._i203.GetObjectAclOutput.serializers,
  ..._i204.ObjectAttributes.serializers,
  ..._i205.GetObjectAttributesRequest.serializers,
  ..._i206.Checksum.serializers,
  ..._i207.ObjectPart.serializers,
  ..._i208.GetObjectAttributesParts.serializers,
  ..._i209.GetObjectAttributesOutput.serializers,
  ..._i210.GetObjectLegalHoldRequest.serializers,
  ..._i211.ObjectLockLegalHold.serializers,
  ..._i212.GetObjectLegalHoldOutput.serializers,
  ..._i213.GetObjectLockConfigurationRequest.serializers,
  ..._i214.ObjectLockEnabled.serializers,
  ..._i215.ObjectLockRetentionMode.serializers,
  ..._i216.DefaultRetention.serializers,
  ..._i217.ObjectLockRule.serializers,
  ..._i218.ObjectLockConfiguration.serializers,
  ..._i219.GetObjectLockConfigurationOutput.serializers,
  ..._i220.GetObjectRetentionRequest.serializers,
  ..._i221.ObjectLockRetention.serializers,
  ..._i222.GetObjectRetentionOutput.serializers,
  ..._i223.GetObjectTaggingRequest.serializers,
  ..._i224.GetObjectTaggingOutput.serializers,
  ..._i225.GetObjectTorrentRequest.serializers,
  ..._i226.GetObjectTorrentOutput.serializers,
  ..._i227.GetPublicAccessBlockRequest.serializers,
  ..._i228.PublicAccessBlockConfiguration.serializers,
  ..._i229.GetPublicAccessBlockOutput.serializers,
  ..._i230.HeadBucketRequest.serializers,
  ..._i231.NotFound.serializers,
  ..._i232.HeadObjectRequest.serializers,
  ..._i233.ArchiveStatus.serializers,
  ..._i234.HeadObjectOutput.serializers,
  ..._i235.ListBucketAnalyticsConfigurationsRequest.serializers,
  ..._i236.ListBucketAnalyticsConfigurationsOutput.serializers,
  ..._i237.ListBucketIntelligentTieringConfigurationsRequest.serializers,
  ..._i238.ListBucketIntelligentTieringConfigurationsOutput.serializers,
  ..._i239.ListBucketInventoryConfigurationsRequest.serializers,
  ..._i240.ListBucketInventoryConfigurationsOutput.serializers,
  ..._i241.ListBucketMetricsConfigurationsRequest.serializers,
  ..._i242.ListBucketMetricsConfigurationsOutput.serializers,
  ..._i243.Bucket.serializers,
  ..._i244.ListBucketsOutput.serializers,
  ..._i245.EncodingType.serializers,
  ..._i246.ListMultipartUploadsRequest.serializers,
  ..._i247.Initiator.serializers,
  ..._i248.MultipartUpload.serializers,
  ..._i249.CommonPrefix.serializers,
  ..._i250.ListMultipartUploadsOutput.serializers,
  ..._i251.ListObjectVersionsRequest.serializers,
  ..._i252.ObjectVersionStorageClass.serializers,
  ..._i253.ObjectVersion.serializers,
  ..._i254.DeleteMarkerEntry.serializers,
  ..._i255.ListObjectVersionsOutput.serializers,
  ..._i256.ListObjectsRequest.serializers,
  ..._i257.ObjectStorageClass.serializers,
  ..._i258.S3Object.serializers,
  ..._i259.ListObjectsOutput.serializers,
  ..._i260.NoSuchBucket.serializers,
  ..._i261.ListObjectsV2Request.serializers,
  ..._i262.ListObjectsV2Output.serializers,
  ..._i263.ListPartsRequest.serializers,
  ..._i264.Part.serializers,
  ..._i265.ListPartsOutput.serializers,
  ..._i266.AccelerateConfiguration.serializers,
  ..._i267.PutBucketAccelerateConfigurationRequest.serializers,
  ..._i268.AccessControlPolicy.serializers,
  ..._i269.PutBucketAclRequest.serializers,
  ..._i270.PutBucketAnalyticsConfigurationRequest.serializers,
  ..._i271.CorsConfiguration.serializers,
  ..._i272.PutBucketCorsRequest.serializers,
  ..._i273.PutBucketEncryptionRequest.serializers,
  ..._i274.PutBucketIntelligentTieringConfigurationRequest.serializers,
  ..._i275.PutBucketInventoryConfigurationRequest.serializers,
  ..._i276.BucketLifecycleConfiguration.serializers,
  ..._i277.PutBucketLifecycleConfigurationRequest.serializers,
  ..._i278.BucketLoggingStatus.serializers,
  ..._i279.PutBucketLoggingRequest.serializers,
  ..._i280.PutBucketMetricsConfigurationRequest.serializers,
  ..._i281.PutBucketNotificationConfigurationRequest.serializers,
  ..._i282.PutBucketOwnershipControlsRequest.serializers,
  ..._i283.PutBucketPolicyRequest.serializers,
  ..._i284.PutBucketReplicationRequest.serializers,
  ..._i285.RequestPaymentConfiguration.serializers,
  ..._i286.PutBucketRequestPaymentRequest.serializers,
  ..._i287.Tagging.serializers,
  ..._i288.PutBucketTaggingRequest.serializers,
  ..._i289.MfaDelete.serializers,
  ..._i290.VersioningConfiguration.serializers,
  ..._i291.PutBucketVersioningRequest.serializers,
  ..._i292.WebsiteConfiguration.serializers,
  ..._i293.PutBucketWebsiteRequest.serializers,
  ..._i294.PutObjectRequest.serializers,
  ..._i295.PutObjectOutput.serializers,
  ..._i296.PutObjectAclRequest.serializers,
  ..._i297.PutObjectAclOutput.serializers,
  ..._i298.PutObjectLegalHoldRequest.serializers,
  ..._i299.PutObjectLegalHoldOutput.serializers,
  ..._i300.PutObjectLockConfigurationRequest.serializers,
  ..._i301.PutObjectLockConfigurationOutput.serializers,
  ..._i302.PutObjectRetentionRequest.serializers,
  ..._i303.PutObjectRetentionOutput.serializers,
  ..._i304.PutObjectTaggingRequest.serializers,
  ..._i305.PutObjectTaggingOutput.serializers,
  ..._i306.PutPublicAccessBlockRequest.serializers,
  ..._i307.Tier.serializers,
  ..._i308.GlacierJobParameters.serializers,
  ..._i309.RestoreRequestType.serializers,
  ..._i310.FileHeaderInfo.serializers,
  ..._i311.CsvInput.serializers,
  ..._i312.CompressionType.serializers,
  ..._i313.JsonType.serializers,
  ..._i314.JsonInput.serializers,
  ..._i315.ParquetInput.serializers,
  ..._i316.InputSerialization.serializers,
  ..._i317.ExpressionType.serializers,
  ..._i318.QuoteFields.serializers,
  ..._i319.CsvOutput.serializers,
  ..._i320.JsonOutput.serializers,
  ..._i321.OutputSerialization.serializers,
  ..._i322.SelectParameters.serializers,
  ..._i323.Encryption.serializers,
  ..._i324.MetadataEntry.serializers,
  ..._i325.S3Location.serializers,
  ..._i326.OutputLocation.serializers,
  ..._i327.RestoreRequest.serializers,
  ..._i328.RestoreObjectRequest.serializers,
  ..._i329.RestoreObjectOutput.serializers,
  ..._i330.ObjectAlreadyInActiveTierError.serializers,
  ..._i331.RequestProgress.serializers,
  ..._i332.ScanRange.serializers,
  ..._i333.SelectObjectContentRequest.serializers,
  ..._i334.RecordsEvent.serializers,
  ..._i335.Stats.serializers,
  ..._i336.StatsEvent.serializers,
  ..._i337.Progress.serializers,
  ..._i338.ProgressEvent.serializers,
  ..._i339.ContinuationEvent.serializers,
  ..._i340.EndEvent.serializers,
  ..._i341.SelectObjectContentEventStream.serializers,
  ..._i342.SelectObjectContentOutput.serializers,
  ..._i343.UploadPartRequest.serializers,
  ..._i344.UploadPartOutput.serializers,
  ..._i345.UploadPartCopyRequest.serializers,
  ..._i346.CopyPartResult.serializers,
  ..._i347.UploadPartCopyOutput.serializers,
  ..._i348.WriteGetObjectResponseRequest.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i349.BuiltList,
    [FullType(_i7.CompletedPart)],
  ): _i349.ListBuilder<_i7.CompletedPart>.new,
  const FullType(
    _i349.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i349.MapBuilder<String, String>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i50.ObjectIdentifier)],
  ): _i349.ListBuilder<_i50.ObjectIdentifier>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i53.DeletedObject)],
  ): _i349.ListBuilder<_i53.DeletedObject>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i54.Error)],
  ): _i349.ListBuilder<_i54.Error>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i65.Grant)],
  ): _i349.ListBuilder<_i65.Grant>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i68.Tag)],
  ): _i349.ListBuilder<_i68.Tag>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(String)],
  ): _i349.ListBuilder<String>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i80.CorsRule)],
  ): _i349.ListBuilder<_i80.CorsRule>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i84.ServerSideEncryptionRule)],
  ): _i349.ListBuilder<_i84.ServerSideEncryptionRule>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i92.Tiering)],
  ): _i349.ListBuilder<_i92.Tiering>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i104.InventoryOptionalField)],
  ): _i349.ListBuilder<_i104.InventoryOptionalField>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i116.NoncurrentVersionTransition)],
  ): _i349.ListBuilder<_i116.NoncurrentVersionTransition>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i115.Transition)],
  ): _i349.ListBuilder<_i115.Transition>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i119.LifecycleRule)],
  ): _i349.ListBuilder<_i119.LifecycleRule>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i125.TargetGrant)],
  ): _i349.ListBuilder<_i125.TargetGrant>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i136.FilterRule)],
  ): _i349.ListBuilder<_i136.FilterRule>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i134.Event)],
  ): _i349.ListBuilder<_i134.Event>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i141.LambdaFunctionConfiguration)],
  ): _i349.ListBuilder<_i141.LambdaFunctionConfiguration>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i140.QueueConfiguration)],
  ): _i349.ListBuilder<_i140.QueueConfiguration>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i139.TopicConfiguration)],
  ): _i349.ListBuilder<_i139.TopicConfiguration>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i145.OwnershipControlsRule)],
  ): _i349.ListBuilder<_i145.OwnershipControlsRule>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i175.ReplicationRule)],
  ): _i349.ListBuilder<_i175.ReplicationRule>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i194.RoutingRule)],
  ): _i349.ListBuilder<_i194.RoutingRule>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i204.ObjectAttributes)],
  ): _i349.ListBuilder<_i204.ObjectAttributes>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i207.ObjectPart)],
  ): _i349.ListBuilder<_i207.ObjectPart>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i77.AnalyticsConfiguration)],
  ): _i349.ListBuilder<_i77.AnalyticsConfiguration>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i93.IntelligentTieringConfiguration)],
  ): _i349.ListBuilder<_i93.IntelligentTieringConfiguration>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i107.InventoryConfiguration)],
  ): _i349.ListBuilder<_i107.InventoryConfiguration>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i131.MetricsConfiguration)],
  ): _i349.ListBuilder<_i131.MetricsConfiguration>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i243.Bucket)],
  ): _i349.ListBuilder<_i243.Bucket>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i249.CommonPrefix)],
  ): _i349.ListBuilder<_i249.CommonPrefix>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i248.MultipartUpload)],
  ): _i349.ListBuilder<_i248.MultipartUpload>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i13.ChecksumAlgorithm)],
  ): _i349.ListBuilder<_i13.ChecksumAlgorithm>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i254.DeleteMarkerEntry)],
  ): _i349.ListBuilder<_i254.DeleteMarkerEntry>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i253.ObjectVersion)],
  ): _i349.ListBuilder<_i253.ObjectVersion>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i258.S3Object)],
  ): _i349.ListBuilder<_i258.S3Object>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i264.Part)],
  ): _i349.ListBuilder<_i264.Part>.new,
  const FullType(
    _i349.BuiltList,
    [FullType(_i324.MetadataEntry)],
  ): _i349.ListBuilder<_i324.MetadataEntry>.new,
};
