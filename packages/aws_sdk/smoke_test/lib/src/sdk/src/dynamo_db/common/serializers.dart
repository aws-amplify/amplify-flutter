// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/archival_summary.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_action.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_definition.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_policy_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_policy_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_target_tracking_scaling_policy_configuration_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_target_tracking_scaling_policy_configuration_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_details.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_in_use_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_status.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_summary.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_type.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_type_filter.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_execute_statement_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_execute_statement_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_get_item_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_get_item_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_statement_error.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_statement_error_code_enum.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_statement_request.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_statement_response.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_write_item_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_write_item_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode_summary.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/cancellation_reason.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/capacity.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/comparison_operator.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/condition.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/condition_check.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/conditional_check_failed_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/conditional_operator.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/consumed_capacity.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/continuous_backups_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/continuous_backups_status.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/continuous_backups_unavailable_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/contributor_insights_action.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/contributor_insights_status.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/contributor_insights_summary.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_backup_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_backup_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_global_secondary_index_action.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_global_table_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_global_table_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_replica_action.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_replication_group_member_action.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_table_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_table_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/csv_options.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_backup_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_backup_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_global_secondary_index_action.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_item_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_item_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_replica_action.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_replication_group_member_action.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_request.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_table_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_table_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_backup_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_backup_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_continuous_backups_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_continuous_backups_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_contributor_insights_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_contributor_insights_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_endpoints_request.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_endpoints_response.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_export_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_export_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_global_table_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_global_table_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_global_table_settings_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_global_table_settings_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_import_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_import_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_kinesis_streaming_destination_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_kinesis_streaming_destination_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_limits_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_limits_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_table_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_table_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_table_replica_auto_scaling_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_table_replica_auto_scaling_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_time_to_live_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_time_to_live_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/destination_status.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/duplicate_item_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/endpoint.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_statement_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_statement_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_transaction_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_transaction_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/expected_attribute_value.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_conflict_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_format.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_status.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_summary.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_table_to_point_in_time_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_table_to_point_in_time_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/failure_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/get.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/get_item_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/get_item_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index_auto_scaling_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index_info.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_already_exists_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_global_secondary_index_settings_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_status.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/idempotent_parameter_mismatch_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_conflict_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_status.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_summary.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_table_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_table_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_table_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/index_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/index_status.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_compression_type.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_format.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_format_options.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_export_time_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_restore_time_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/item_collection_metrics.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/item_collection_size_limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/item_response.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_type.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/keys_and_attributes.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/kinesis_data_stream_destination.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/kinesis_streaming_destination_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/kinesis_streaming_destination_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_backups_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_backups_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_contributor_insights_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_contributor_insights_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_exports_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_exports_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_global_tables_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_global_tables_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_imports_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_imports_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_tables_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_tables_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_tags_of_resource_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_tags_of_resource_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/local_secondary_index.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/local_secondary_index_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/local_secondary_index_info.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/parameterized_statement.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/point_in_time_recovery_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/point_in_time_recovery_specification.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/point_in_time_recovery_status.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/point_in_time_recovery_unavailable_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/projection.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/projection_type.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_override.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put_item_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put_item_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put_request.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/query_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/query_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_already_exists_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_auto_scaling_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_auto_scaling_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_auto_scaling_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_auto_scaling_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_settings_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_settings_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_settings_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_settings_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_status.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replication_group_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/request_limit_exceeded.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_in_use_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_summary.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_table_from_backup_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_table_from_backup_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_table_to_point_in_time_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_table_to_point_in_time_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_item_collection_metrics.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_value.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_values_on_condition_check_failure.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/s3_bucket_source.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/s3_sse_algorithm.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/scalar_attribute_type.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/scan_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/scan_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/select.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/source_table_details.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/source_table_feature_details.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_specification.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_status.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_type.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/stream_specification.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/stream_view_type.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_already_exists_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_auto_scaling_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class_summary.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_creation_parameters.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_in_use_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_status.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/tag.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/tag_resource_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_to_live_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_to_live_specification.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_to_live_status.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_get_item.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_get_items_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_get_items_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_write_item.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_write_items_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_write_items_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transaction_canceled_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transaction_conflict_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transaction_in_progress_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/untag_resource_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_continuous_backups_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_continuous_backups_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_contributor_insights_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_contributor_insights_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_secondary_index_action.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_settings_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_settings_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_item_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_item_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_replication_group_member_action.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_table_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_table_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_table_replica_auto_scaling_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_table_replica_auto_scaling_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_time_to_live_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_time_to_live_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/write_request.dart';

const List<_i1.SmithySerializer> serializers = [
  ...AttributeValue.serializers,
  ...ReturnValuesOnConditionCheckFailure.serializers,
  ...BatchStatementRequest.serializers,
  ...ReturnConsumedCapacity.serializers,
  ...BatchExecuteStatementInput.serializers,
  ...BatchStatementErrorCodeEnum.serializers,
  ...BatchStatementError.serializers,
  ...BatchStatementResponse.serializers,
  ...Capacity.serializers,
  ...ConsumedCapacity.serializers,
  ...BatchExecuteStatementOutput.serializers,
  ...InternalServerError.serializers,
  ...RequestLimitExceeded.serializers,
  ...KeysAndAttributes.serializers,
  ...BatchGetItemInput.serializers,
  ...BatchGetItemOutput.serializers,
  ...InvalidEndpointException.serializers,
  ...ProvisionedThroughputExceededException.serializers,
  ...ResourceNotFoundException.serializers,
  ...PutRequest.serializers,
  ...DeleteRequest.serializers,
  ...WriteRequest.serializers,
  ...ReturnItemCollectionMetrics.serializers,
  ...BatchWriteItemInput.serializers,
  ...ItemCollectionMetrics.serializers,
  ...BatchWriteItemOutput.serializers,
  ...ItemCollectionSizeLimitExceededException.serializers,
  ...CreateBackupInput.serializers,
  ...BackupStatus.serializers,
  ...BackupType.serializers,
  ...BackupDetails.serializers,
  ...CreateBackupOutput.serializers,
  ...BackupInUseException.serializers,
  ...ContinuousBackupsUnavailableException.serializers,
  ...LimitExceededException.serializers,
  ...TableInUseException.serializers,
  ...TableNotFoundException.serializers,
  ...Replica.serializers,
  ...CreateGlobalTableInput.serializers,
  ...ReplicaStatus.serializers,
  ...ProvisionedThroughputOverride.serializers,
  ...ReplicaGlobalSecondaryIndexDescription.serializers,
  ...TableClass.serializers,
  ...TableClassSummary.serializers,
  ...ReplicaDescription.serializers,
  ...GlobalTableStatus.serializers,
  ...GlobalTableDescription.serializers,
  ...CreateGlobalTableOutput.serializers,
  ...GlobalTableAlreadyExistsException.serializers,
  ...ScalarAttributeType.serializers,
  ...AttributeDefinition.serializers,
  ...KeyType.serializers,
  ...KeySchemaElement.serializers,
  ...ProjectionType.serializers,
  ...Projection.serializers,
  ...LocalSecondaryIndex.serializers,
  ...ProvisionedThroughput.serializers,
  ...GlobalSecondaryIndex.serializers,
  ...BillingMode.serializers,
  ...StreamViewType.serializers,
  ...StreamSpecification.serializers,
  ...SseType.serializers,
  ...SseSpecification.serializers,
  ...Tag.serializers,
  ...CreateTableInput.serializers,
  ...TableStatus.serializers,
  ...ProvisionedThroughputDescription.serializers,
  ...BillingModeSummary.serializers,
  ...LocalSecondaryIndexDescription.serializers,
  ...IndexStatus.serializers,
  ...GlobalSecondaryIndexDescription.serializers,
  ...RestoreSummary.serializers,
  ...SseStatus.serializers,
  ...SseDescription.serializers,
  ...ArchivalSummary.serializers,
  ...TableDescription.serializers,
  ...CreateTableOutput.serializers,
  ...ResourceInUseException.serializers,
  ...DeleteBackupInput.serializers,
  ...SourceTableDetails.serializers,
  ...LocalSecondaryIndexInfo.serializers,
  ...GlobalSecondaryIndexInfo.serializers,
  ...TimeToLiveStatus.serializers,
  ...TimeToLiveDescription.serializers,
  ...SourceTableFeatureDetails.serializers,
  ...BackupDescription.serializers,
  ...DeleteBackupOutput.serializers,
  ...BackupNotFoundException.serializers,
  ...ComparisonOperator.serializers,
  ...ExpectedAttributeValue.serializers,
  ...ConditionalOperator.serializers,
  ...ReturnValue.serializers,
  ...DeleteItemInput.serializers,
  ...DeleteItemOutput.serializers,
  ...ConditionalCheckFailedException.serializers,
  ...TransactionConflictException.serializers,
  ...DeleteTableInput.serializers,
  ...DeleteTableOutput.serializers,
  ...DescribeBackupInput.serializers,
  ...DescribeBackupOutput.serializers,
  ...DescribeContinuousBackupsInput.serializers,
  ...ContinuousBackupsStatus.serializers,
  ...PointInTimeRecoveryStatus.serializers,
  ...PointInTimeRecoveryDescription.serializers,
  ...ContinuousBackupsDescription.serializers,
  ...DescribeContinuousBackupsOutput.serializers,
  ...DescribeContributorInsightsInput.serializers,
  ...ContributorInsightsStatus.serializers,
  ...FailureException.serializers,
  ...DescribeContributorInsightsOutput.serializers,
  ...DescribeEndpointsRequest.serializers,
  ...Endpoint.serializers,
  ...DescribeEndpointsResponse.serializers,
  ...DescribeExportInput.serializers,
  ...ExportStatus.serializers,
  ...S3SseAlgorithm.serializers,
  ...ExportFormat.serializers,
  ...ExportDescription.serializers,
  ...DescribeExportOutput.serializers,
  ...ExportNotFoundException.serializers,
  ...DescribeGlobalTableInput.serializers,
  ...DescribeGlobalTableOutput.serializers,
  ...GlobalTableNotFoundException.serializers,
  ...DescribeGlobalTableSettingsInput.serializers,
  ...AutoScalingTargetTrackingScalingPolicyConfigurationDescription.serializers,
  ...AutoScalingPolicyDescription.serializers,
  ...AutoScalingSettingsDescription.serializers,
  ...ReplicaGlobalSecondaryIndexSettingsDescription.serializers,
  ...ReplicaSettingsDescription.serializers,
  ...DescribeGlobalTableSettingsOutput.serializers,
  ...DescribeImportInput.serializers,
  ...ImportStatus.serializers,
  ...S3BucketSource.serializers,
  ...InputFormat.serializers,
  ...CsvOptions.serializers,
  ...InputFormatOptions.serializers,
  ...InputCompressionType.serializers,
  ...TableCreationParameters.serializers,
  ...ImportTableDescription.serializers,
  ...DescribeImportOutput.serializers,
  ...ImportNotFoundException.serializers,
  ...DescribeKinesisStreamingDestinationInput.serializers,
  ...DestinationStatus.serializers,
  ...KinesisDataStreamDestination.serializers,
  ...DescribeKinesisStreamingDestinationOutput.serializers,
  ...DescribeLimitsInput.serializers,
  ...DescribeLimitsOutput.serializers,
  ...DescribeTableInput.serializers,
  ...DescribeTableOutput.serializers,
  ...DescribeTableReplicaAutoScalingInput.serializers,
  ...ReplicaGlobalSecondaryIndexAutoScalingDescription.serializers,
  ...ReplicaAutoScalingDescription.serializers,
  ...TableAutoScalingDescription.serializers,
  ...DescribeTableReplicaAutoScalingOutput.serializers,
  ...DescribeTimeToLiveInput.serializers,
  ...DescribeTimeToLiveOutput.serializers,
  ...KinesisStreamingDestinationInput.serializers,
  ...KinesisStreamingDestinationOutput.serializers,
  ...ExecuteStatementInput.serializers,
  ...ExecuteStatementOutput.serializers,
  ...DuplicateItemException.serializers,
  ...ParameterizedStatement.serializers,
  ...ExecuteTransactionInput.serializers,
  ...ItemResponse.serializers,
  ...ExecuteTransactionOutput.serializers,
  ...IdempotentParameterMismatchException.serializers,
  ...CancellationReason.serializers,
  ...TransactionCanceledException.serializers,
  ...TransactionInProgressException.serializers,
  ...ExportTableToPointInTimeInput.serializers,
  ...ExportTableToPointInTimeOutput.serializers,
  ...ExportConflictException.serializers,
  ...InvalidExportTimeException.serializers,
  ...PointInTimeRecoveryUnavailableException.serializers,
  ...GetItemInput.serializers,
  ...GetItemOutput.serializers,
  ...ImportTableInput.serializers,
  ...ImportTableOutput.serializers,
  ...ImportConflictException.serializers,
  ...BackupTypeFilter.serializers,
  ...ListBackupsInput.serializers,
  ...BackupSummary.serializers,
  ...ListBackupsOutput.serializers,
  ...ListContributorInsightsInput.serializers,
  ...ContributorInsightsSummary.serializers,
  ...ListContributorInsightsOutput.serializers,
  ...ListExportsInput.serializers,
  ...ExportSummary.serializers,
  ...ListExportsOutput.serializers,
  ...ListGlobalTablesInput.serializers,
  ...GlobalTable.serializers,
  ...ListGlobalTablesOutput.serializers,
  ...ListImportsInput.serializers,
  ...ImportSummary.serializers,
  ...ListImportsOutput.serializers,
  ...ListTablesInput.serializers,
  ...ListTablesOutput.serializers,
  ...ListTagsOfResourceInput.serializers,
  ...ListTagsOfResourceOutput.serializers,
  ...PutItemInput.serializers,
  ...PutItemOutput.serializers,
  ...Select.serializers,
  ...Condition.serializers,
  ...QueryInput.serializers,
  ...QueryOutput.serializers,
  ...RestoreTableFromBackupInput.serializers,
  ...RestoreTableFromBackupOutput.serializers,
  ...TableAlreadyExistsException.serializers,
  ...RestoreTableToPointInTimeInput.serializers,
  ...RestoreTableToPointInTimeOutput.serializers,
  ...InvalidRestoreTimeException.serializers,
  ...ScanInput.serializers,
  ...ScanOutput.serializers,
  ...TagResourceInput.serializers,
  ...Get.serializers,
  ...TransactGetItem.serializers,
  ...TransactGetItemsInput.serializers,
  ...TransactGetItemsOutput.serializers,
  ...ConditionCheck.serializers,
  ...Put.serializers,
  ...Delete.serializers,
  ...Update.serializers,
  ...TransactWriteItem.serializers,
  ...TransactWriteItemsInput.serializers,
  ...TransactWriteItemsOutput.serializers,
  ...UntagResourceInput.serializers,
  ...PointInTimeRecoverySpecification.serializers,
  ...UpdateContinuousBackupsInput.serializers,
  ...UpdateContinuousBackupsOutput.serializers,
  ...ContributorInsightsAction.serializers,
  ...UpdateContributorInsightsInput.serializers,
  ...UpdateContributorInsightsOutput.serializers,
  ...CreateReplicaAction.serializers,
  ...DeleteReplicaAction.serializers,
  ...ReplicaUpdate.serializers,
  ...UpdateGlobalTableInput.serializers,
  ...UpdateGlobalTableOutput.serializers,
  ...ReplicaAlreadyExistsException.serializers,
  ...ReplicaNotFoundException.serializers,
  ...AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.serializers,
  ...AutoScalingPolicyUpdate.serializers,
  ...AutoScalingSettingsUpdate.serializers,
  ...GlobalTableGlobalSecondaryIndexSettingsUpdate.serializers,
  ...ReplicaGlobalSecondaryIndexSettingsUpdate.serializers,
  ...ReplicaSettingsUpdate.serializers,
  ...UpdateGlobalTableSettingsInput.serializers,
  ...UpdateGlobalTableSettingsOutput.serializers,
  ...IndexNotFoundException.serializers,
  ...AttributeAction.serializers,
  ...AttributeValueUpdate.serializers,
  ...UpdateItemInput.serializers,
  ...UpdateItemOutput.serializers,
  ...UpdateGlobalSecondaryIndexAction.serializers,
  ...CreateGlobalSecondaryIndexAction.serializers,
  ...DeleteGlobalSecondaryIndexAction.serializers,
  ...GlobalSecondaryIndexUpdate.serializers,
  ...ReplicaGlobalSecondaryIndex.serializers,
  ...CreateReplicationGroupMemberAction.serializers,
  ...UpdateReplicationGroupMemberAction.serializers,
  ...DeleteReplicationGroupMemberAction.serializers,
  ...ReplicationGroupUpdate.serializers,
  ...UpdateTableInput.serializers,
  ...UpdateTableOutput.serializers,
  ...GlobalSecondaryIndexAutoScalingUpdate.serializers,
  ...ReplicaGlobalSecondaryIndexAutoScalingUpdate.serializers,
  ...ReplicaAutoScalingUpdate.serializers,
  ...UpdateTableReplicaAutoScalingInput.serializers,
  ...UpdateTableReplicaAutoScalingOutput.serializers,
  ...TimeToLiveSpecification.serializers,
  ...UpdateTimeToLiveInput.serializers,
  ...UpdateTimeToLiveOutput.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltList,
    [FullType(String)],
  ): _i2.ListBuilder<String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(_i3.Uint8List)],
  ): _i2.ListBuilder<_i3.Uint8List>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(AttributeValue),
    ],
  ): _i2.MapBuilder<String, AttributeValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AttributeValue)],
  ): _i2.ListBuilder<AttributeValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(BatchStatementRequest)],
  ): _i2.ListBuilder<BatchStatementRequest>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(Capacity),
    ],
  ): _i2.MapBuilder<String, Capacity>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(BatchStatementResponse)],
  ): _i2.ListBuilder<BatchStatementResponse>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConsumedCapacity)],
  ): _i2.ListBuilder<ConsumedCapacity>.new,
  const FullType(
    _i2.BuiltList,
    [
      FullType(
        _i2.BuiltMap,
        [
          FullType(String),
          FullType(AttributeValue),
        ],
      )
    ],
  ): _i2.ListBuilder<_i2.BuiltMap<String, AttributeValue>>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.MapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(KeysAndAttributes),
    ],
  ): _i2.MapBuilder<String, KeysAndAttributes>.new,
  const FullType(
    _i2.BuiltListMultimap,
    [
      FullType(String),
      FullType(
        _i2.BuiltMap,
        [
          FullType(String),
          FullType(AttributeValue),
        ],
      ),
    ],
  ): _i2.ListMultimapBuilder<String, _i2.BuiltMap<String, AttributeValue>>.new,
  const FullType(
    _i2.BuiltListMultimap,
    [
      FullType(String),
      FullType(WriteRequest),
    ],
  ): _i2.ListMultimapBuilder<String, WriteRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(double)],
  ): _i2.ListBuilder<double>.new,
  const FullType(
    _i2.BuiltListMultimap,
    [
      FullType(String),
      FullType(ItemCollectionMetrics),
    ],
  ): _i2.ListMultimapBuilder<String, ItemCollectionMetrics>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Replica)],
  ): _i2.ListBuilder<Replica>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReplicaGlobalSecondaryIndexDescription)],
  ): _i2.ListBuilder<ReplicaGlobalSecondaryIndexDescription>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReplicaDescription)],
  ): _i2.ListBuilder<ReplicaDescription>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(KeySchemaElement)],
  ): _i2.ListBuilder<KeySchemaElement>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AttributeDefinition)],
  ): _i2.ListBuilder<AttributeDefinition>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LocalSecondaryIndex)],
  ): _i2.ListBuilder<LocalSecondaryIndex>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(GlobalSecondaryIndex)],
  ): _i2.ListBuilder<GlobalSecondaryIndex>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Tag)],
  ): _i2.ListBuilder<Tag>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LocalSecondaryIndexDescription)],
  ): _i2.ListBuilder<LocalSecondaryIndexDescription>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(GlobalSecondaryIndexDescription)],
  ): _i2.ListBuilder<GlobalSecondaryIndexDescription>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LocalSecondaryIndexInfo)],
  ): _i2.ListBuilder<LocalSecondaryIndexInfo>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(GlobalSecondaryIndexInfo)],
  ): _i2.ListBuilder<GlobalSecondaryIndexInfo>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(ExpectedAttributeValue),
    ],
  ): _i2.MapBuilder<String, ExpectedAttributeValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Endpoint)],
  ): _i2.ListBuilder<Endpoint>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AutoScalingPolicyDescription)],
  ): _i2.ListBuilder<AutoScalingPolicyDescription>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReplicaGlobalSecondaryIndexSettingsDescription)],
  ): _i2.ListBuilder<ReplicaGlobalSecondaryIndexSettingsDescription>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReplicaSettingsDescription)],
  ): _i2.ListBuilder<ReplicaSettingsDescription>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(KinesisDataStreamDestination)],
  ): _i2.ListBuilder<KinesisDataStreamDestination>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReplicaGlobalSecondaryIndexAutoScalingDescription)],
  ): _i2.ListBuilder<ReplicaGlobalSecondaryIndexAutoScalingDescription>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReplicaAutoScalingDescription)],
  ): _i2.ListBuilder<ReplicaAutoScalingDescription>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ParameterizedStatement)],
  ): _i2.ListBuilder<ParameterizedStatement>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ItemResponse)],
  ): _i2.ListBuilder<ItemResponse>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CancellationReason)],
  ): _i2.ListBuilder<CancellationReason>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(BackupSummary)],
  ): _i2.ListBuilder<BackupSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ContributorInsightsSummary)],
  ): _i2.ListBuilder<ContributorInsightsSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ExportSummary)],
  ): _i2.ListBuilder<ExportSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(GlobalTable)],
  ): _i2.ListBuilder<GlobalTable>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ImportSummary)],
  ): _i2.ListBuilder<ImportSummary>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(Condition),
    ],
  ): _i2.MapBuilder<String, Condition>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransactGetItem)],
  ): _i2.ListBuilder<TransactGetItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransactWriteItem)],
  ): _i2.ListBuilder<TransactWriteItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReplicaUpdate)],
  ): _i2.ListBuilder<ReplicaUpdate>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReplicaGlobalSecondaryIndexSettingsUpdate)],
  ): _i2.ListBuilder<ReplicaGlobalSecondaryIndexSettingsUpdate>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(GlobalTableGlobalSecondaryIndexSettingsUpdate)],
  ): _i2.ListBuilder<GlobalTableGlobalSecondaryIndexSettingsUpdate>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReplicaSettingsUpdate)],
  ): _i2.ListBuilder<ReplicaSettingsUpdate>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(AttributeValueUpdate),
    ],
  ): _i2.MapBuilder<String, AttributeValueUpdate>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReplicaGlobalSecondaryIndex)],
  ): _i2.ListBuilder<ReplicaGlobalSecondaryIndex>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(GlobalSecondaryIndexUpdate)],
  ): _i2.ListBuilder<GlobalSecondaryIndexUpdate>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReplicationGroupUpdate)],
  ): _i2.ListBuilder<ReplicationGroupUpdate>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReplicaGlobalSecondaryIndexAutoScalingUpdate)],
  ): _i2.ListBuilder<ReplicaGlobalSecondaryIndexAutoScalingUpdate>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(GlobalSecondaryIndexAutoScalingUpdate)],
  ): _i2.ListBuilder<GlobalSecondaryIndexAutoScalingUpdate>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReplicaAutoScalingUpdate)],
  ): _i2.ListBuilder<ReplicaAutoScalingUpdate>.new,
};
