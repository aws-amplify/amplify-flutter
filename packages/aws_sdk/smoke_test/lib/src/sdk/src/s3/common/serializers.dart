// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/abort_incomplete_multipart_upload.dart';
import 'package:smoke_test/src/sdk/src/s3/model/abort_multipart_upload_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/abort_multipart_upload_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/accelerate_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/access_control_policy.dart';
import 'package:smoke_test/src/sdk/src/s3/model/access_control_translation.dart';
import 'package:smoke_test/src/sdk/src/s3/model/analytics_and_operator.dart';
import 'package:smoke_test/src/sdk/src/s3/model/analytics_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/analytics_export_destination.dart';
import 'package:smoke_test/src/sdk/src/s3/model/analytics_filter.dart';
import 'package:smoke_test/src/sdk/src/s3/model/analytics_s3_bucket_destination.dart';
import 'package:smoke_test/src/sdk/src/s3/model/analytics_s3_export_file_format.dart';
import 'package:smoke_test/src/sdk/src/s3/model/archive_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/bucket.dart';
import 'package:smoke_test/src/sdk/src/s3/model/bucket_accelerate_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/bucket_already_exists.dart';
import 'package:smoke_test/src/sdk/src/s3/model/bucket_already_owned_by_you.dart';
import 'package:smoke_test/src/sdk/src/s3/model/bucket_canned_acl.dart';
import 'package:smoke_test/src/sdk/src/s3/model/bucket_lifecycle_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/bucket_location_constraint.dart';
import 'package:smoke_test/src/sdk/src/s3/model/bucket_logging_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/bucket_logs_permission.dart';
import 'package:smoke_test/src/sdk/src/s3/model/bucket_versioning_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/checksum.dart';
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart';
import 'package:smoke_test/src/sdk/src/s3/model/checksum_mode.dart';
import 'package:smoke_test/src/sdk/src/s3/model/common_prefix.dart';
import 'package:smoke_test/src/sdk/src/s3/model/complete_multipart_upload_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/complete_multipart_upload_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/completed_multipart_upload.dart';
import 'package:smoke_test/src/sdk/src/s3/model/completed_part.dart';
import 'package:smoke_test/src/sdk/src/s3/model/compression_type.dart';
import 'package:smoke_test/src/sdk/src/s3/model/condition.dart';
import 'package:smoke_test/src/sdk/src/s3/model/continuation_event.dart';
import 'package:smoke_test/src/sdk/src/s3/model/copy_object_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/copy_object_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/copy_object_result.dart';
import 'package:smoke_test/src/sdk/src/s3/model/copy_part_result.dart';
import 'package:smoke_test/src/sdk/src/s3/model/cors_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/cors_rule.dart';
import 'package:smoke_test/src/sdk/src/s3/model/create_bucket_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/create_bucket_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/create_bucket_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/create_multipart_upload_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/create_multipart_upload_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/csv_input.dart';
import 'package:smoke_test/src/sdk/src/s3/model/csv_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/default_retention.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_analytics_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_cors_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_encryption_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_intelligent_tiering_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_inventory_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_lifecycle_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_metrics_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_ownership_controls_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_policy_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_replication_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_tagging_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_website_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_marker_entry.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_marker_replication.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_marker_replication_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_object_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_object_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_object_tagging_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_object_tagging_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_objects_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_objects_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_public_access_block_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/deleted_object.dart';
import 'package:smoke_test/src/sdk/src/s3/model/destination.dart';
import 'package:smoke_test/src/sdk/src/s3/model/encoding_type.dart';
import 'package:smoke_test/src/sdk/src/s3/model/encryption.dart';
import 'package:smoke_test/src/sdk/src/s3/model/encryption_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/end_event.dart';
import 'package:smoke_test/src/sdk/src/s3/model/error.dart';
import 'package:smoke_test/src/sdk/src/s3/model/error_document.dart';
import 'package:smoke_test/src/sdk/src/s3/model/event.dart';
import 'package:smoke_test/src/sdk/src/s3/model/event_bridge_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/existing_object_replication.dart';
import 'package:smoke_test/src/sdk/src/s3/model/existing_object_replication_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/expiration_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/expression_type.dart';
import 'package:smoke_test/src/sdk/src/s3/model/file_header_info.dart';
import 'package:smoke_test/src/sdk/src/s3/model/filter_rule.dart';
import 'package:smoke_test/src/sdk/src/s3/model/filter_rule_name.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_accelerate_configuration_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_accelerate_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_acl_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_acl_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_analytics_configuration_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_analytics_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_cors_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_cors_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_encryption_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_encryption_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_intelligent_tiering_configuration_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_intelligent_tiering_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_inventory_configuration_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_inventory_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_lifecycle_configuration_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_lifecycle_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_location_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_location_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_logging_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_logging_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_metrics_configuration_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_metrics_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_notification_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_ownership_controls_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_ownership_controls_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_policy_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_policy_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_policy_status_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_policy_status_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_replication_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_replication_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_request_payment_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_request_payment_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_tagging_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_tagging_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_versioning_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_versioning_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_website_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_website_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_acl_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_acl_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_attributes_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_attributes_parts.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_attributes_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_legal_hold_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_legal_hold_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_lock_configuration_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_lock_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_retention_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_retention_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_tagging_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_tagging_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_torrent_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_torrent_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_public_access_block_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_public_access_block_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/glacier_job_parameters.dart';
import 'package:smoke_test/src/sdk/src/s3/model/grant.dart';
import 'package:smoke_test/src/sdk/src/s3/model/grantee.dart';
import 'package:smoke_test/src/sdk/src/s3/model/head_bucket_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/head_object_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/head_object_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/index_document.dart';
import 'package:smoke_test/src/sdk/src/s3/model/initiator.dart';
import 'package:smoke_test/src/sdk/src/s3/model/input_serialization.dart';
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_access_tier.dart';
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_and_operator.dart';
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_filter.dart';
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/invalid_object_state.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_destination.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_encryption.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_filter.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_format.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_frequency.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_included_object_versions.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_optional_field.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_s3_bucket_destination.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_schedule.dart';
import 'package:smoke_test/src/sdk/src/s3/model/json_input.dart';
import 'package:smoke_test/src/sdk/src/s3/model/json_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/json_type.dart';
import 'package:smoke_test/src/sdk/src/s3/model/lambda_function_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_expiration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_rule.dart';
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_rule_and_operator.dart';
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_rule_filter.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_analytics_configurations_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_analytics_configurations_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_intelligent_tiering_configurations_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_intelligent_tiering_configurations_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_inventory_configurations_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_inventory_configurations_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_metrics_configurations_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_metrics_configurations_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_buckets_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_multipart_uploads_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_multipart_uploads_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_object_versions_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_object_versions_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_objects_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_objects_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_objects_v2_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_objects_v2_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_parts_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/list_parts_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/logging_enabled.dart';
import 'package:smoke_test/src/sdk/src/s3/model/metadata_directive.dart';
import 'package:smoke_test/src/sdk/src/s3/model/metadata_entry.dart';
import 'package:smoke_test/src/sdk/src/s3/model/metrics.dart';
import 'package:smoke_test/src/sdk/src/s3/model/metrics_and_operator.dart';
import 'package:smoke_test/src/sdk/src/s3/model/metrics_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/metrics_filter.dart';
import 'package:smoke_test/src/sdk/src/s3/model/metrics_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/mfa_delete.dart';
import 'package:smoke_test/src/sdk/src/s3/model/mfa_delete_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/multipart_upload.dart';
import 'package:smoke_test/src/sdk/src/s3/model/no_such_bucket.dart';
import 'package:smoke_test/src/sdk/src/s3/model/no_such_key.dart';
import 'package:smoke_test/src/sdk/src/s3/model/no_such_upload.dart';
import 'package:smoke_test/src/sdk/src/s3/model/noncurrent_version_expiration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/noncurrent_version_transition.dart';
import 'package:smoke_test/src/sdk/src/s3/model/not_found.dart';
import 'package:smoke_test/src/sdk/src/s3/model/notification_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/notification_configuration_filter.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_already_in_active_tier_error.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_attributes.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_canned_acl.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_identifier.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_enabled.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_legal_hold.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_legal_hold_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_mode.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_retention.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_retention_mode.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_rule.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_not_in_active_tier_error.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_ownership.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_part.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_storage_class.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_version.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_version_storage_class.dart';
import 'package:smoke_test/src/sdk/src/s3/model/optional_object_attributes.dart';
import 'package:smoke_test/src/sdk/src/s3/model/output_location.dart';
import 'package:smoke_test/src/sdk/src/s3/model/output_serialization.dart';
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart';
import 'package:smoke_test/src/sdk/src/s3/model/owner_override.dart';
import 'package:smoke_test/src/sdk/src/s3/model/ownership_controls.dart';
import 'package:smoke_test/src/sdk/src/s3/model/ownership_controls_rule.dart';
import 'package:smoke_test/src/sdk/src/s3/model/parquet_input.dart';
import 'package:smoke_test/src/sdk/src/s3/model/part.dart';
import 'package:smoke_test/src/sdk/src/s3/model/payer.dart';
import 'package:smoke_test/src/sdk/src/s3/model/permission.dart';
import 'package:smoke_test/src/sdk/src/s3/model/policy_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/progress.dart';
import 'package:smoke_test/src/sdk/src/s3/model/progress_event.dart';
import 'package:smoke_test/src/sdk/src/s3/model/protocol.dart';
import 'package:smoke_test/src/sdk/src/s3/model/public_access_block_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_accelerate_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_acl_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_analytics_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_cors_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_encryption_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_intelligent_tiering_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_inventory_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_lifecycle_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_logging_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_metrics_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_notification_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_ownership_controls_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_policy_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_replication_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_request_payment_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_tagging_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_versioning_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_website_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_object_acl_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_object_acl_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_object_legal_hold_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_object_legal_hold_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_object_lock_configuration_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_object_lock_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_object_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_object_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_object_retention_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_object_retention_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_object_tagging_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_object_tagging_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_public_access_block_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/queue_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/quote_fields.dart';
import 'package:smoke_test/src/sdk/src/s3/model/records_event.dart';
import 'package:smoke_test/src/sdk/src/s3/model/redirect.dart';
import 'package:smoke_test/src/sdk/src/s3/model/redirect_all_requests_to.dart';
import 'package:smoke_test/src/sdk/src/s3/model/replica_modifications.dart';
import 'package:smoke_test/src/sdk/src/s3/model/replica_modifications_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/replication_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule.dart';
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule_and_operator.dart';
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule_filter.dart';
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/replication_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/replication_time.dart';
import 'package:smoke_test/src/sdk/src/s3/model/replication_time_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/replication_time_value.dart';
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart';
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart';
import 'package:smoke_test/src/sdk/src/s3/model/request_payment_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/request_progress.dart';
import 'package:smoke_test/src/sdk/src/s3/model/restore_object_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/restore_object_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/restore_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/restore_request_type.dart';
import 'package:smoke_test/src/sdk/src/s3/model/restore_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/routing_rule.dart';
import 'package:smoke_test/src/sdk/src/s3/model/s3_key_filter.dart';
import 'package:smoke_test/src/sdk/src/s3/model/s3_location.dart';
import 'package:smoke_test/src/sdk/src/s3/model/scan_range.dart';
import 'package:smoke_test/src/sdk/src/s3/model/select_object_content_event_stream.dart';
import 'package:smoke_test/src/sdk/src/s3/model/select_object_content_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/select_object_content_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/select_parameters.dart';
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption.dart';
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_by_default.dart';
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_rule.dart';
import 'package:smoke_test/src/sdk/src/s3/model/source_selection_criteria.dart';
import 'package:smoke_test/src/sdk/src/s3/model/sse_kms_encrypted_objects.dart';
import 'package:smoke_test/src/sdk/src/s3/model/sse_kms_encrypted_objects_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/ssekms.dart';
import 'package:smoke_test/src/sdk/src/s3/model/sses3.dart';
import 'package:smoke_test/src/sdk/src/s3/model/stats.dart';
import 'package:smoke_test/src/sdk/src/s3/model/stats_event.dart';
import 'package:smoke_test/src/sdk/src/s3/model/storage_class.dart';
import 'package:smoke_test/src/sdk/src/s3/model/storage_class_analysis.dart';
import 'package:smoke_test/src/sdk/src/s3/model/storage_class_analysis_data_export.dart';
import 'package:smoke_test/src/sdk/src/s3/model/storage_class_analysis_schema_version.dart';
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart';
import 'package:smoke_test/src/sdk/src/s3/model/tagging.dart';
import 'package:smoke_test/src/sdk/src/s3/model/tagging_directive.dart';
import 'package:smoke_test/src/sdk/src/s3/model/target_grant.dart';
import 'package:smoke_test/src/sdk/src/s3/model/tier.dart';
import 'package:smoke_test/src/sdk/src/s3/model/tiering.dart';
import 'package:smoke_test/src/sdk/src/s3/model/topic_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/transition.dart';
import 'package:smoke_test/src/sdk/src/s3/model/transition_storage_class.dart';
import 'package:smoke_test/src/sdk/src/s3/model/type.dart';
import 'package:smoke_test/src/sdk/src/s3/model/upload_part_copy_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/upload_part_copy_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/upload_part_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/upload_part_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/versioning_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/website_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/write_get_object_response_request.dart';

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
  ...BucketCannedAcl.serializers,
  ...BucketLocationConstraint.serializers,
  ...CreateBucketConfiguration.serializers,
  ...ObjectOwnership.serializers,
  ...CreateBucketRequest.serializers,
  ...CreateBucketOutput.serializers,
  ...BucketAlreadyExists.serializers,
  ...BucketAlreadyOwnedByYou.serializers,
  ...CreateMultipartUploadRequest.serializers,
  ...CreateMultipartUploadOutput.serializers,
  ...DeleteBucketRequest.serializers,
  ...DeleteBucketAnalyticsConfigurationRequest.serializers,
  ...DeleteBucketCorsRequest.serializers,
  ...DeleteBucketEncryptionRequest.serializers,
  ...DeleteBucketIntelligentTieringConfigurationRequest.serializers,
  ...DeleteBucketInventoryConfigurationRequest.serializers,
  ...DeleteBucketLifecycleRequest.serializers,
  ...DeleteBucketMetricsConfigurationRequest.serializers,
  ...DeleteBucketOwnershipControlsRequest.serializers,
  ...DeleteBucketPolicyRequest.serializers,
  ...DeleteBucketReplicationRequest.serializers,
  ...DeleteBucketTaggingRequest.serializers,
  ...DeleteBucketWebsiteRequest.serializers,
  ...DeleteObjectRequest.serializers,
  ...DeleteObjectOutput.serializers,
  ...DeleteObjectTaggingRequest.serializers,
  ...DeleteObjectTaggingOutput.serializers,
  ...ObjectIdentifier.serializers,
  ...Delete.serializers,
  ...DeleteObjectsRequest.serializers,
  ...DeletedObject.serializers,
  ...Error.serializers,
  ...DeleteObjectsOutput.serializers,
  ...DeletePublicAccessBlockRequest.serializers,
  ...GetBucketAccelerateConfigurationRequest.serializers,
  ...BucketAccelerateStatus.serializers,
  ...GetBucketAccelerateConfigurationOutput.serializers,
  ...GetBucketAclRequest.serializers,
  ...Owner.serializers,
  ...S3Type.serializers,
  ...Grantee.serializers,
  ...Permission.serializers,
  ...Grant.serializers,
  ...GetBucketAclOutput.serializers,
  ...GetBucketAnalyticsConfigurationRequest.serializers,
  ...Tag.serializers,
  ...AnalyticsAndOperator.serializers,
  ...AnalyticsFilter.serializers,
  ...StorageClassAnalysisSchemaVersion.serializers,
  ...AnalyticsS3ExportFileFormat.serializers,
  ...AnalyticsS3BucketDestination.serializers,
  ...AnalyticsExportDestination.serializers,
  ...StorageClassAnalysisDataExport.serializers,
  ...StorageClassAnalysis.serializers,
  ...AnalyticsConfiguration.serializers,
  ...GetBucketAnalyticsConfigurationOutput.serializers,
  ...GetBucketCorsRequest.serializers,
  ...CorsRule.serializers,
  ...GetBucketCorsOutput.serializers,
  ...GetBucketEncryptionRequest.serializers,
  ...ServerSideEncryptionByDefault.serializers,
  ...ServerSideEncryptionRule.serializers,
  ...ServerSideEncryptionConfiguration.serializers,
  ...GetBucketEncryptionOutput.serializers,
  ...GetBucketIntelligentTieringConfigurationRequest.serializers,
  ...IntelligentTieringAndOperator.serializers,
  ...IntelligentTieringFilter.serializers,
  ...IntelligentTieringStatus.serializers,
  ...IntelligentTieringAccessTier.serializers,
  ...Tiering.serializers,
  ...IntelligentTieringConfiguration.serializers,
  ...GetBucketIntelligentTieringConfigurationOutput.serializers,
  ...GetBucketInventoryConfigurationRequest.serializers,
  ...InventoryFormat.serializers,
  ...Sses3.serializers,
  ...Ssekms.serializers,
  ...InventoryEncryption.serializers,
  ...InventoryS3BucketDestination.serializers,
  ...InventoryDestination.serializers,
  ...InventoryFilter.serializers,
  ...InventoryIncludedObjectVersions.serializers,
  ...InventoryOptionalField.serializers,
  ...InventoryFrequency.serializers,
  ...InventorySchedule.serializers,
  ...InventoryConfiguration.serializers,
  ...GetBucketInventoryConfigurationOutput.serializers,
  ...GetBucketLifecycleConfigurationRequest.serializers,
  ...LifecycleExpiration.serializers,
  ...LifecycleRuleAndOperator.serializers,
  ...LifecycleRuleFilter.serializers,
  ...ExpirationStatus.serializers,
  ...TransitionStorageClass.serializers,
  ...Transition.serializers,
  ...NoncurrentVersionTransition.serializers,
  ...NoncurrentVersionExpiration.serializers,
  ...AbortIncompleteMultipartUpload.serializers,
  ...LifecycleRule.serializers,
  ...GetBucketLifecycleConfigurationOutput.serializers,
  ...GetBucketLocationRequest.serializers,
  ...GetBucketLocationOutput.serializers,
  ...GetBucketLoggingRequest.serializers,
  ...BucketLogsPermission.serializers,
  ...TargetGrant.serializers,
  ...LoggingEnabled.serializers,
  ...GetBucketLoggingOutput.serializers,
  ...GetBucketMetricsConfigurationRequest.serializers,
  ...MetricsAndOperator.serializers,
  ...MetricsFilter.serializers,
  ...MetricsConfiguration.serializers,
  ...GetBucketMetricsConfigurationOutput.serializers,
  ...GetBucketNotificationConfigurationRequest.serializers,
  ...Event.serializers,
  ...FilterRuleName.serializers,
  ...FilterRule.serializers,
  ...S3KeyFilter.serializers,
  ...NotificationConfigurationFilter.serializers,
  ...TopicConfiguration.serializers,
  ...QueueConfiguration.serializers,
  ...LambdaFunctionConfiguration.serializers,
  ...EventBridgeConfiguration.serializers,
  ...NotificationConfiguration.serializers,
  ...GetBucketOwnershipControlsRequest.serializers,
  ...OwnershipControlsRule.serializers,
  ...OwnershipControls.serializers,
  ...GetBucketOwnershipControlsOutput.serializers,
  ...GetBucketPolicyRequest.serializers,
  ...GetBucketPolicyOutput.serializers,
  ...GetBucketPolicyStatusRequest.serializers,
  ...PolicyStatus.serializers,
  ...GetBucketPolicyStatusOutput.serializers,
  ...GetBucketReplicationRequest.serializers,
  ...ReplicationRuleAndOperator.serializers,
  ...ReplicationRuleFilter.serializers,
  ...ReplicationRuleStatus.serializers,
  ...SseKmsEncryptedObjectsStatus.serializers,
  ...SseKmsEncryptedObjects.serializers,
  ...ReplicaModificationsStatus.serializers,
  ...ReplicaModifications.serializers,
  ...SourceSelectionCriteria.serializers,
  ...ExistingObjectReplicationStatus.serializers,
  ...ExistingObjectReplication.serializers,
  ...OwnerOverride.serializers,
  ...AccessControlTranslation.serializers,
  ...EncryptionConfiguration.serializers,
  ...ReplicationTimeStatus.serializers,
  ...ReplicationTimeValue.serializers,
  ...ReplicationTime.serializers,
  ...MetricsStatus.serializers,
  ...Metrics.serializers,
  ...Destination.serializers,
  ...DeleteMarkerReplicationStatus.serializers,
  ...DeleteMarkerReplication.serializers,
  ...ReplicationRule.serializers,
  ...ReplicationConfiguration.serializers,
  ...GetBucketReplicationOutput.serializers,
  ...GetBucketRequestPaymentRequest.serializers,
  ...Payer.serializers,
  ...GetBucketRequestPaymentOutput.serializers,
  ...GetBucketTaggingRequest.serializers,
  ...GetBucketTaggingOutput.serializers,
  ...GetBucketVersioningRequest.serializers,
  ...BucketVersioningStatus.serializers,
  ...MfaDeleteStatus.serializers,
  ...GetBucketVersioningOutput.serializers,
  ...GetBucketWebsiteRequest.serializers,
  ...Protocol.serializers,
  ...RedirectAllRequestsTo.serializers,
  ...IndexDocument.serializers,
  ...ErrorDocument.serializers,
  ...Condition.serializers,
  ...Redirect.serializers,
  ...RoutingRule.serializers,
  ...GetBucketWebsiteOutput.serializers,
  ...ChecksumMode.serializers,
  ...GetObjectRequest.serializers,
  ...ReplicationStatus.serializers,
  ...GetObjectOutput.serializers,
  ...InvalidObjectState.serializers,
  ...NoSuchKey.serializers,
  ...GetObjectAclRequest.serializers,
  ...GetObjectAclOutput.serializers,
  ...ObjectAttributes.serializers,
  ...GetObjectAttributesRequest.serializers,
  ...Checksum.serializers,
  ...ObjectPart.serializers,
  ...GetObjectAttributesParts.serializers,
  ...GetObjectAttributesOutput.serializers,
  ...GetObjectLegalHoldRequest.serializers,
  ...ObjectLockLegalHold.serializers,
  ...GetObjectLegalHoldOutput.serializers,
  ...GetObjectLockConfigurationRequest.serializers,
  ...ObjectLockEnabled.serializers,
  ...ObjectLockRetentionMode.serializers,
  ...DefaultRetention.serializers,
  ...ObjectLockRule.serializers,
  ...ObjectLockConfiguration.serializers,
  ...GetObjectLockConfigurationOutput.serializers,
  ...GetObjectRetentionRequest.serializers,
  ...ObjectLockRetention.serializers,
  ...GetObjectRetentionOutput.serializers,
  ...GetObjectTaggingRequest.serializers,
  ...GetObjectTaggingOutput.serializers,
  ...GetObjectTorrentRequest.serializers,
  ...GetObjectTorrentOutput.serializers,
  ...GetPublicAccessBlockRequest.serializers,
  ...PublicAccessBlockConfiguration.serializers,
  ...GetPublicAccessBlockOutput.serializers,
  ...HeadBucketRequest.serializers,
  ...NotFound.serializers,
  ...HeadObjectRequest.serializers,
  ...ArchiveStatus.serializers,
  ...HeadObjectOutput.serializers,
  ...ListBucketAnalyticsConfigurationsRequest.serializers,
  ...ListBucketAnalyticsConfigurationsOutput.serializers,
  ...ListBucketIntelligentTieringConfigurationsRequest.serializers,
  ...ListBucketIntelligentTieringConfigurationsOutput.serializers,
  ...ListBucketInventoryConfigurationsRequest.serializers,
  ...ListBucketInventoryConfigurationsOutput.serializers,
  ...ListBucketMetricsConfigurationsRequest.serializers,
  ...ListBucketMetricsConfigurationsOutput.serializers,
  ...Bucket.serializers,
  ...ListBucketsOutput.serializers,
  ...EncodingType.serializers,
  ...ListMultipartUploadsRequest.serializers,
  ...Initiator.serializers,
  ...MultipartUpload.serializers,
  ...CommonPrefix.serializers,
  ...ListMultipartUploadsOutput.serializers,
  ...OptionalObjectAttributes.serializers,
  ...ListObjectVersionsRequest.serializers,
  ...ObjectVersionStorageClass.serializers,
  ...RestoreStatus.serializers,
  ...ObjectVersion.serializers,
  ...DeleteMarkerEntry.serializers,
  ...ListObjectVersionsOutput.serializers,
  ...ListObjectsRequest.serializers,
  ...ObjectStorageClass.serializers,
  ...S3Object.serializers,
  ...ListObjectsOutput.serializers,
  ...NoSuchBucket.serializers,
  ...ListObjectsV2Request.serializers,
  ...ListObjectsV2Output.serializers,
  ...ListPartsRequest.serializers,
  ...Part.serializers,
  ...ListPartsOutput.serializers,
  ...AccelerateConfiguration.serializers,
  ...PutBucketAccelerateConfigurationRequest.serializers,
  ...AccessControlPolicy.serializers,
  ...PutBucketAclRequest.serializers,
  ...PutBucketAnalyticsConfigurationRequest.serializers,
  ...CorsConfiguration.serializers,
  ...PutBucketCorsRequest.serializers,
  ...PutBucketEncryptionRequest.serializers,
  ...PutBucketIntelligentTieringConfigurationRequest.serializers,
  ...PutBucketInventoryConfigurationRequest.serializers,
  ...BucketLifecycleConfiguration.serializers,
  ...PutBucketLifecycleConfigurationRequest.serializers,
  ...BucketLoggingStatus.serializers,
  ...PutBucketLoggingRequest.serializers,
  ...PutBucketMetricsConfigurationRequest.serializers,
  ...PutBucketNotificationConfigurationRequest.serializers,
  ...PutBucketOwnershipControlsRequest.serializers,
  ...PutBucketPolicyRequest.serializers,
  ...PutBucketReplicationRequest.serializers,
  ...RequestPaymentConfiguration.serializers,
  ...PutBucketRequestPaymentRequest.serializers,
  ...Tagging.serializers,
  ...PutBucketTaggingRequest.serializers,
  ...MfaDelete.serializers,
  ...VersioningConfiguration.serializers,
  ...PutBucketVersioningRequest.serializers,
  ...WebsiteConfiguration.serializers,
  ...PutBucketWebsiteRequest.serializers,
  ...PutObjectRequest.serializers,
  ...PutObjectOutput.serializers,
  ...PutObjectAclRequest.serializers,
  ...PutObjectAclOutput.serializers,
  ...PutObjectLegalHoldRequest.serializers,
  ...PutObjectLegalHoldOutput.serializers,
  ...PutObjectLockConfigurationRequest.serializers,
  ...PutObjectLockConfigurationOutput.serializers,
  ...PutObjectRetentionRequest.serializers,
  ...PutObjectRetentionOutput.serializers,
  ...PutObjectTaggingRequest.serializers,
  ...PutObjectTaggingOutput.serializers,
  ...PutPublicAccessBlockRequest.serializers,
  ...Tier.serializers,
  ...GlacierJobParameters.serializers,
  ...RestoreRequestType.serializers,
  ...FileHeaderInfo.serializers,
  ...CsvInput.serializers,
  ...CompressionType.serializers,
  ...JsonType.serializers,
  ...JsonInput.serializers,
  ...ParquetInput.serializers,
  ...InputSerialization.serializers,
  ...ExpressionType.serializers,
  ...QuoteFields.serializers,
  ...CsvOutput.serializers,
  ...JsonOutput.serializers,
  ...OutputSerialization.serializers,
  ...SelectParameters.serializers,
  ...Encryption.serializers,
  ...MetadataEntry.serializers,
  ...S3Location.serializers,
  ...OutputLocation.serializers,
  ...RestoreRequest.serializers,
  ...RestoreObjectRequest.serializers,
  ...RestoreObjectOutput.serializers,
  ...ObjectAlreadyInActiveTierError.serializers,
  ...RequestProgress.serializers,
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
  ...WriteGetObjectResponseRequest.serializers,
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
    [FullType(Grant)],
  ): _i2.ListBuilder<Grant>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Tag)],
  ): _i2.ListBuilder<Tag>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(String)],
  ): _i2.ListBuilder<String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CorsRule)],
  ): _i2.ListBuilder<CorsRule>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ServerSideEncryptionRule)],
  ): _i2.ListBuilder<ServerSideEncryptionRule>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Tiering)],
  ): _i2.ListBuilder<Tiering>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InventoryOptionalField)],
  ): _i2.ListBuilder<InventoryOptionalField>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NoncurrentVersionTransition)],
  ): _i2.ListBuilder<NoncurrentVersionTransition>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Transition)],
  ): _i2.ListBuilder<Transition>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LifecycleRule)],
  ): _i2.ListBuilder<LifecycleRule>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TargetGrant)],
  ): _i2.ListBuilder<TargetGrant>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FilterRule)],
  ): _i2.ListBuilder<FilterRule>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Event)],
  ): _i2.ListBuilder<Event>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LambdaFunctionConfiguration)],
  ): _i2.ListBuilder<LambdaFunctionConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(QueueConfiguration)],
  ): _i2.ListBuilder<QueueConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TopicConfiguration)],
  ): _i2.ListBuilder<TopicConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(OwnershipControlsRule)],
  ): _i2.ListBuilder<OwnershipControlsRule>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReplicationRule)],
  ): _i2.ListBuilder<ReplicationRule>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RoutingRule)],
  ): _i2.ListBuilder<RoutingRule>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ObjectAttributes)],
  ): _i2.ListBuilder<ObjectAttributes>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ObjectPart)],
  ): _i2.ListBuilder<ObjectPart>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AnalyticsConfiguration)],
  ): _i2.ListBuilder<AnalyticsConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IntelligentTieringConfiguration)],
  ): _i2.ListBuilder<IntelligentTieringConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InventoryConfiguration)],
  ): _i2.ListBuilder<InventoryConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(MetricsConfiguration)],
  ): _i2.ListBuilder<MetricsConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Bucket)],
  ): _i2.ListBuilder<Bucket>.new,
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
    [FullType(DeleteMarkerEntry)],
  ): _i2.ListBuilder<DeleteMarkerEntry>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ObjectVersion)],
  ): _i2.ListBuilder<ObjectVersion>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(S3Object)],
  ): _i2.ListBuilder<S3Object>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Part)],
  ): _i2.ListBuilder<Part>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(MetadataEntry)],
  ): _i2.ListBuilder<MetadataEntry>.new,
};
