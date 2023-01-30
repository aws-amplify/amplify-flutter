// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i274;

import 'package:built_collection/built_collection.dart' as _i273;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/archival_summary.dart'
    as _i75;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_action.dart'
    as _i250;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_definition.dart'
    as _i51;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value_update.dart'
    as _i251;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_policy_description.dart'
    as _i126;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_policy_update.dart'
    as _i242;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_description.dart'
    as _i127;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_update.dart'
    as _i243;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_target_tracking_scaling_policy_configuration_description.dart'
    as _i125;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_target_tracking_scaling_policy_configuration_update.dart'
    as _i241;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_description.dart'
    as _i86;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_details.dart'
    as _i31;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_in_use_exception.dart'
    as _i33;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_not_found_exception.dart'
    as _i88;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_status.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_summary.dart'
    as _i182;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_type.dart'
    as _i30;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_type_filter.dart'
    as _i180;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_execute_statement_input.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_execute_statement_output.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_get_item_input.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_get_item_output.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_statement_error.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_statement_error_code_enum.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_statement_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_statement_response.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_write_item_input.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_write_item_output.dart'
    as _i26;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode.dart'
    as _i59;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode_summary.dart'
    as _i68;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/cancellation_reason.dart'
    as _i167;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/capacity.dart' as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/comparison_operator.dart'
    as _i89;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/condition.dart' as _i203;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/condition_check.dart'
    as _i220;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/conditional_check_failed_exception.dart'
    as _i95;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/conditional_operator.dart'
    as _i91;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/consumed_capacity.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/continuous_backups_description.dart'
    as _i105;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/continuous_backups_status.dart'
    as _i102;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/continuous_backups_unavailable_exception.dart'
    as _i34;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/contributor_insights_action.dart'
    as _i231;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/contributor_insights_status.dart'
    as _i108;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/contributor_insights_summary.dart'
    as _i185;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_backup_input.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_backup_output.dart'
    as _i32;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_global_secondary_index_action.dart'
    as _i255;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_global_table_input.dart'
    as _i39;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_global_table_output.dart'
    as _i48;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_replica_action.dart'
    as _i234;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_replication_group_member_action.dart'
    as _i259;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_table_input.dart'
    as _i65;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_table_output.dart'
    as _i77;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/csv_options.dart'
    as _i135;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete.dart' as _i222;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_backup_input.dart'
    as _i79;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_backup_output.dart'
    as _i87;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_global_secondary_index_action.dart'
    as _i256;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_item_input.dart'
    as _i93;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_item_output.dart'
    as _i94;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_replica_action.dart'
    as _i235;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_replication_group_member_action.dart'
    as _i261;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_request.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_table_input.dart'
    as _i97;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_table_output.dart'
    as _i98;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_backup_input.dart'
    as _i99;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_backup_output.dart'
    as _i100;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_continuous_backups_input.dart'
    as _i101;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_continuous_backups_output.dart'
    as _i106;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_contributor_insights_input.dart'
    as _i107;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_contributor_insights_output.dart'
    as _i110;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_endpoints_request.dart'
    as _i111;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_endpoints_response.dart'
    as _i113;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_export_input.dart'
    as _i114;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_export_output.dart'
    as _i119;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_global_table_input.dart'
    as _i121;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_global_table_output.dart'
    as _i122;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_global_table_settings_input.dart'
    as _i124;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_global_table_settings_output.dart'
    as _i130;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_import_input.dart'
    as _i131;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_import_output.dart'
    as _i140;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_kinesis_streaming_destination_input.dart'
    as _i142;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_kinesis_streaming_destination_output.dart'
    as _i145;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_limits_input.dart'
    as _i146;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_limits_output.dart'
    as _i147;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_table_input.dart'
    as _i148;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_table_output.dart'
    as _i149;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_table_replica_auto_scaling_input.dart'
    as _i150;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_table_replica_auto_scaling_output.dart'
    as _i154;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_time_to_live_input.dart'
    as _i155;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_time_to_live_output.dart'
    as _i156;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/destination_status.dart'
    as _i143;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/duplicate_item_exception.dart'
    as _i161;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/endpoint.dart' as _i112;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_statement_input.dart'
    as _i159;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_statement_output.dart'
    as _i160;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_transaction_input.dart'
    as _i163;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_transaction_output.dart'
    as _i165;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/expected_attribute_value.dart'
    as _i90;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_conflict_exception.dart'
    as _i172;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_description.dart'
    as _i118;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_format.dart'
    as _i117;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_not_found_exception.dart'
    as _i120;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_status.dart'
    as _i115;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_summary.dart'
    as _i188;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_table_to_point_in_time_input.dart'
    as _i170;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_table_to_point_in_time_output.dart'
    as _i171;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/failure_exception.dart'
    as _i109;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/get.dart' as _i215;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/get_item_input.dart'
    as _i175;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/get_item_output.dart'
    as _i176;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index.dart'
    as _i58;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index_auto_scaling_update.dart'
    as _i265;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index_description.dart'
    as _i71;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index_info.dart'
    as _i82;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index_update.dart'
    as _i257;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table.dart'
    as _i191;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_already_exists_exception.dart'
    as _i49;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_description.dart'
    as _i47;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_global_secondary_index_settings_update.dart'
    as _i244;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_not_found_exception.dart'
    as _i123;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_status.dart'
    as _i46;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/idempotent_parameter_mismatch_exception.dart'
    as _i166;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_conflict_exception.dart'
    as _i179;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_not_found_exception.dart'
    as _i141;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_status.dart'
    as _i132;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_summary.dart'
    as _i194;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_table_description.dart'
    as _i139;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_table_input.dart'
    as _i177;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_table_output.dart'
    as _i178;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/index_not_found_exception.dart'
    as _i249;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/index_status.dart'
    as _i70;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_compression_type.dart'
    as _i137;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_format.dart'
    as _i134;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_format_options.dart'
    as _i136;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_export_time_exception.dart'
    as _i173;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_restore_time_exception.dart'
    as _i211;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/item_collection_metrics.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/item_collection_size_limit_exceeded_exception.dart'
    as _i27;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/item_response.dart'
    as _i164;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart'
    as _i53;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_type.dart' as _i52;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/keys_and_attributes.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/kinesis_data_stream_destination.dart'
    as _i144;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/kinesis_streaming_destination_input.dart'
    as _i157;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/kinesis_streaming_destination_output.dart'
    as _i158;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/limit_exceeded_exception.dart'
    as _i35;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_backups_input.dart'
    as _i181;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_backups_output.dart'
    as _i183;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_contributor_insights_input.dart'
    as _i184;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_contributor_insights_output.dart'
    as _i186;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_exports_input.dart'
    as _i187;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_exports_output.dart'
    as _i189;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_global_tables_input.dart'
    as _i190;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_global_tables_output.dart'
    as _i192;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_imports_input.dart'
    as _i193;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_imports_output.dart'
    as _i195;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_tables_input.dart'
    as _i196;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_tables_output.dart'
    as _i197;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_tags_of_resource_input.dart'
    as _i198;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_tags_of_resource_output.dart'
    as _i199;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/local_secondary_index.dart'
    as _i56;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/local_secondary_index_description.dart'
    as _i69;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/local_secondary_index_info.dart'
    as _i81;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/parameterized_statement.dart'
    as _i162;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/point_in_time_recovery_description.dart'
    as _i104;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/point_in_time_recovery_specification.dart'
    as _i228;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/point_in_time_recovery_status.dart'
    as _i103;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/point_in_time_recovery_unavailable_exception.dart'
    as _i174;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/projection.dart' as _i55;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/projection_type.dart'
    as _i54;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput.dart'
    as _i57;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_description.dart'
    as _i67;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_exceeded_exception.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_override.dart'
    as _i41;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put.dart' as _i221;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put_item_input.dart'
    as _i200;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put_item_output.dart'
    as _i201;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put_request.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/query_input.dart'
    as _i204;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/query_output.dart'
    as _i205;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica.dart' as _i38;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_already_exists_exception.dart'
    as _i239;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_auto_scaling_description.dart'
    as _i152;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_auto_scaling_update.dart'
    as _i267;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_description.dart'
    as _i45;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index.dart'
    as _i258;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_auto_scaling_description.dart'
    as _i151;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_auto_scaling_update.dart'
    as _i266;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_description.dart'
    as _i42;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_settings_description.dart'
    as _i128;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_settings_update.dart'
    as _i245;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_not_found_exception.dart'
    as _i240;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_settings_description.dart'
    as _i129;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_settings_update.dart'
    as _i246;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_status.dart'
    as _i40;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_update.dart'
    as _i236;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replication_group_update.dart'
    as _i262;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/request_limit_exceeded.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_in_use_exception.dart'
    as _i78;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_not_found_exception.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_summary.dart'
    as _i72;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_table_from_backup_input.dart'
    as _i206;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_table_from_backup_output.dart'
    as _i207;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_table_to_point_in_time_input.dart'
    as _i209;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_table_to_point_in_time_output.dart'
    as _i210;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_item_collection_metrics.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_value.dart'
    as _i92;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_values_on_condition_check_failure.dart'
    as _i219;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/s3_bucket_source.dart'
    as _i133;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/s3_sse_algorithm.dart'
    as _i116;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/scalar_attribute_type.dart'
    as _i50;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/scan_input.dart'
    as _i212;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/scan_output.dart'
    as _i213;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/select.dart' as _i202;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/source_table_details.dart'
    as _i80;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/source_table_feature_details.dart'
    as _i85;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_description.dart'
    as _i74;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_specification.dart'
    as _i63;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_status.dart' as _i73;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_type.dart' as _i62;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/stream_specification.dart'
    as _i61;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/stream_view_type.dart'
    as _i60;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_already_exists_exception.dart'
    as _i208;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_auto_scaling_description.dart'
    as _i153;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class.dart'
    as _i43;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class_summary.dart'
    as _i44;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_creation_parameters.dart'
    as _i138;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_description.dart'
    as _i76;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_in_use_exception.dart'
    as _i36;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_not_found_exception.dart'
    as _i37;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_status.dart'
    as _i66;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/tag.dart' as _i64;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/tag_resource_input.dart'
    as _i214;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_to_live_description.dart'
    as _i84;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_to_live_specification.dart'
    as _i270;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_to_live_status.dart'
    as _i83;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_get_item.dart'
    as _i216;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_get_items_input.dart'
    as _i217;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_get_items_output.dart'
    as _i218;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_write_item.dart'
    as _i224;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_write_items_input.dart'
    as _i225;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_write_items_output.dart'
    as _i226;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transaction_canceled_exception.dart'
    as _i168;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transaction_conflict_exception.dart'
    as _i96;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transaction_in_progress_exception.dart'
    as _i169;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/untag_resource_input.dart'
    as _i227;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update.dart' as _i223;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_continuous_backups_input.dart'
    as _i229;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_continuous_backups_output.dart'
    as _i230;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_contributor_insights_input.dart'
    as _i232;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_contributor_insights_output.dart'
    as _i233;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_secondary_index_action.dart'
    as _i254;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_input.dart'
    as _i237;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_output.dart'
    as _i238;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_settings_input.dart'
    as _i247;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_settings_output.dart'
    as _i248;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_item_input.dart'
    as _i252;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_item_output.dart'
    as _i253;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_replication_group_member_action.dart'
    as _i260;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_table_input.dart'
    as _i263;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_table_output.dart'
    as _i264;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_table_replica_auto_scaling_input.dart'
    as _i268;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_table_replica_auto_scaling_output.dart'
    as _i269;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_time_to_live_input.dart'
    as _i271;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_time_to_live_output.dart'
    as _i272;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/write_request.dart'
    as _i22;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.AttributeValue.serializers,
  ..._i3.BatchStatementRequest.serializers,
  ..._i4.ReturnConsumedCapacity.serializers,
  ..._i5.BatchExecuteStatementInput.serializers,
  ..._i6.BatchStatementErrorCodeEnum.serializers,
  ..._i7.BatchStatementError.serializers,
  ..._i8.BatchStatementResponse.serializers,
  ..._i9.Capacity.serializers,
  ..._i10.ConsumedCapacity.serializers,
  ..._i11.BatchExecuteStatementOutput.serializers,
  ..._i12.InternalServerError.serializers,
  ..._i13.RequestLimitExceeded.serializers,
  ..._i14.KeysAndAttributes.serializers,
  ..._i15.BatchGetItemInput.serializers,
  ..._i16.BatchGetItemOutput.serializers,
  ..._i17.InvalidEndpointException.serializers,
  ..._i18.ProvisionedThroughputExceededException.serializers,
  ..._i19.ResourceNotFoundException.serializers,
  ..._i20.PutRequest.serializers,
  ..._i21.DeleteRequest.serializers,
  ..._i22.WriteRequest.serializers,
  ..._i23.ReturnItemCollectionMetrics.serializers,
  ..._i24.BatchWriteItemInput.serializers,
  ..._i25.ItemCollectionMetrics.serializers,
  ..._i26.BatchWriteItemOutput.serializers,
  ..._i27.ItemCollectionSizeLimitExceededException.serializers,
  ..._i28.CreateBackupInput.serializers,
  ..._i29.BackupStatus.serializers,
  ..._i30.BackupType.serializers,
  ..._i31.BackupDetails.serializers,
  ..._i32.CreateBackupOutput.serializers,
  ..._i33.BackupInUseException.serializers,
  ..._i34.ContinuousBackupsUnavailableException.serializers,
  ..._i35.LimitExceededException.serializers,
  ..._i36.TableInUseException.serializers,
  ..._i37.TableNotFoundException.serializers,
  ..._i38.Replica.serializers,
  ..._i39.CreateGlobalTableInput.serializers,
  ..._i40.ReplicaStatus.serializers,
  ..._i41.ProvisionedThroughputOverride.serializers,
  ..._i42.ReplicaGlobalSecondaryIndexDescription.serializers,
  ..._i43.TableClass.serializers,
  ..._i44.TableClassSummary.serializers,
  ..._i45.ReplicaDescription.serializers,
  ..._i46.GlobalTableStatus.serializers,
  ..._i47.GlobalTableDescription.serializers,
  ..._i48.CreateGlobalTableOutput.serializers,
  ..._i49.GlobalTableAlreadyExistsException.serializers,
  ..._i50.ScalarAttributeType.serializers,
  ..._i51.AttributeDefinition.serializers,
  ..._i52.KeyType.serializers,
  ..._i53.KeySchemaElement.serializers,
  ..._i54.ProjectionType.serializers,
  ..._i55.Projection.serializers,
  ..._i56.LocalSecondaryIndex.serializers,
  ..._i57.ProvisionedThroughput.serializers,
  ..._i58.GlobalSecondaryIndex.serializers,
  ..._i59.BillingMode.serializers,
  ..._i60.StreamViewType.serializers,
  ..._i61.StreamSpecification.serializers,
  ..._i62.SseType.serializers,
  ..._i63.SseSpecification.serializers,
  ..._i64.Tag.serializers,
  ..._i65.CreateTableInput.serializers,
  ..._i66.TableStatus.serializers,
  ..._i67.ProvisionedThroughputDescription.serializers,
  ..._i68.BillingModeSummary.serializers,
  ..._i69.LocalSecondaryIndexDescription.serializers,
  ..._i70.IndexStatus.serializers,
  ..._i71.GlobalSecondaryIndexDescription.serializers,
  ..._i72.RestoreSummary.serializers,
  ..._i73.SseStatus.serializers,
  ..._i74.SseDescription.serializers,
  ..._i75.ArchivalSummary.serializers,
  ..._i76.TableDescription.serializers,
  ..._i77.CreateTableOutput.serializers,
  ..._i78.ResourceInUseException.serializers,
  ..._i79.DeleteBackupInput.serializers,
  ..._i80.SourceTableDetails.serializers,
  ..._i81.LocalSecondaryIndexInfo.serializers,
  ..._i82.GlobalSecondaryIndexInfo.serializers,
  ..._i83.TimeToLiveStatus.serializers,
  ..._i84.TimeToLiveDescription.serializers,
  ..._i85.SourceTableFeatureDetails.serializers,
  ..._i86.BackupDescription.serializers,
  ..._i87.DeleteBackupOutput.serializers,
  ..._i88.BackupNotFoundException.serializers,
  ..._i89.ComparisonOperator.serializers,
  ..._i90.ExpectedAttributeValue.serializers,
  ..._i91.ConditionalOperator.serializers,
  ..._i92.ReturnValue.serializers,
  ..._i93.DeleteItemInput.serializers,
  ..._i94.DeleteItemOutput.serializers,
  ..._i95.ConditionalCheckFailedException.serializers,
  ..._i96.TransactionConflictException.serializers,
  ..._i97.DeleteTableInput.serializers,
  ..._i98.DeleteTableOutput.serializers,
  ..._i99.DescribeBackupInput.serializers,
  ..._i100.DescribeBackupOutput.serializers,
  ..._i101.DescribeContinuousBackupsInput.serializers,
  ..._i102.ContinuousBackupsStatus.serializers,
  ..._i103.PointInTimeRecoveryStatus.serializers,
  ..._i104.PointInTimeRecoveryDescription.serializers,
  ..._i105.ContinuousBackupsDescription.serializers,
  ..._i106.DescribeContinuousBackupsOutput.serializers,
  ..._i107.DescribeContributorInsightsInput.serializers,
  ..._i108.ContributorInsightsStatus.serializers,
  ..._i109.FailureException.serializers,
  ..._i110.DescribeContributorInsightsOutput.serializers,
  ..._i111.DescribeEndpointsRequest.serializers,
  ..._i112.Endpoint.serializers,
  ..._i113.DescribeEndpointsResponse.serializers,
  ..._i114.DescribeExportInput.serializers,
  ..._i115.ExportStatus.serializers,
  ..._i116.S3SseAlgorithm.serializers,
  ..._i117.ExportFormat.serializers,
  ..._i118.ExportDescription.serializers,
  ..._i119.DescribeExportOutput.serializers,
  ..._i120.ExportNotFoundException.serializers,
  ..._i121.DescribeGlobalTableInput.serializers,
  ..._i122.DescribeGlobalTableOutput.serializers,
  ..._i123.GlobalTableNotFoundException.serializers,
  ..._i124.DescribeGlobalTableSettingsInput.serializers,
  ..._i125.AutoScalingTargetTrackingScalingPolicyConfigurationDescription
      .serializers,
  ..._i126.AutoScalingPolicyDescription.serializers,
  ..._i127.AutoScalingSettingsDescription.serializers,
  ..._i128.ReplicaGlobalSecondaryIndexSettingsDescription.serializers,
  ..._i129.ReplicaSettingsDescription.serializers,
  ..._i130.DescribeGlobalTableSettingsOutput.serializers,
  ..._i131.DescribeImportInput.serializers,
  ..._i132.ImportStatus.serializers,
  ..._i133.S3BucketSource.serializers,
  ..._i134.InputFormat.serializers,
  ..._i135.CsvOptions.serializers,
  ..._i136.InputFormatOptions.serializers,
  ..._i137.InputCompressionType.serializers,
  ..._i138.TableCreationParameters.serializers,
  ..._i139.ImportTableDescription.serializers,
  ..._i140.DescribeImportOutput.serializers,
  ..._i141.ImportNotFoundException.serializers,
  ..._i142.DescribeKinesisStreamingDestinationInput.serializers,
  ..._i143.DestinationStatus.serializers,
  ..._i144.KinesisDataStreamDestination.serializers,
  ..._i145.DescribeKinesisStreamingDestinationOutput.serializers,
  ..._i146.DescribeLimitsInput.serializers,
  ..._i147.DescribeLimitsOutput.serializers,
  ..._i148.DescribeTableInput.serializers,
  ..._i149.DescribeTableOutput.serializers,
  ..._i150.DescribeTableReplicaAutoScalingInput.serializers,
  ..._i151.ReplicaGlobalSecondaryIndexAutoScalingDescription.serializers,
  ..._i152.ReplicaAutoScalingDescription.serializers,
  ..._i153.TableAutoScalingDescription.serializers,
  ..._i154.DescribeTableReplicaAutoScalingOutput.serializers,
  ..._i155.DescribeTimeToLiveInput.serializers,
  ..._i156.DescribeTimeToLiveOutput.serializers,
  ..._i157.KinesisStreamingDestinationInput.serializers,
  ..._i158.KinesisStreamingDestinationOutput.serializers,
  ..._i159.ExecuteStatementInput.serializers,
  ..._i160.ExecuteStatementOutput.serializers,
  ..._i161.DuplicateItemException.serializers,
  ..._i162.ParameterizedStatement.serializers,
  ..._i163.ExecuteTransactionInput.serializers,
  ..._i164.ItemResponse.serializers,
  ..._i165.ExecuteTransactionOutput.serializers,
  ..._i166.IdempotentParameterMismatchException.serializers,
  ..._i167.CancellationReason.serializers,
  ..._i168.TransactionCanceledException.serializers,
  ..._i169.TransactionInProgressException.serializers,
  ..._i170.ExportTableToPointInTimeInput.serializers,
  ..._i171.ExportTableToPointInTimeOutput.serializers,
  ..._i172.ExportConflictException.serializers,
  ..._i173.InvalidExportTimeException.serializers,
  ..._i174.PointInTimeRecoveryUnavailableException.serializers,
  ..._i175.GetItemInput.serializers,
  ..._i176.GetItemOutput.serializers,
  ..._i177.ImportTableInput.serializers,
  ..._i178.ImportTableOutput.serializers,
  ..._i179.ImportConflictException.serializers,
  ..._i180.BackupTypeFilter.serializers,
  ..._i181.ListBackupsInput.serializers,
  ..._i182.BackupSummary.serializers,
  ..._i183.ListBackupsOutput.serializers,
  ..._i184.ListContributorInsightsInput.serializers,
  ..._i185.ContributorInsightsSummary.serializers,
  ..._i186.ListContributorInsightsOutput.serializers,
  ..._i187.ListExportsInput.serializers,
  ..._i188.ExportSummary.serializers,
  ..._i189.ListExportsOutput.serializers,
  ..._i190.ListGlobalTablesInput.serializers,
  ..._i191.GlobalTable.serializers,
  ..._i192.ListGlobalTablesOutput.serializers,
  ..._i193.ListImportsInput.serializers,
  ..._i194.ImportSummary.serializers,
  ..._i195.ListImportsOutput.serializers,
  ..._i196.ListTablesInput.serializers,
  ..._i197.ListTablesOutput.serializers,
  ..._i198.ListTagsOfResourceInput.serializers,
  ..._i199.ListTagsOfResourceOutput.serializers,
  ..._i200.PutItemInput.serializers,
  ..._i201.PutItemOutput.serializers,
  ..._i202.Select.serializers,
  ..._i203.Condition.serializers,
  ..._i204.QueryInput.serializers,
  ..._i205.QueryOutput.serializers,
  ..._i206.RestoreTableFromBackupInput.serializers,
  ..._i207.RestoreTableFromBackupOutput.serializers,
  ..._i208.TableAlreadyExistsException.serializers,
  ..._i209.RestoreTableToPointInTimeInput.serializers,
  ..._i210.RestoreTableToPointInTimeOutput.serializers,
  ..._i211.InvalidRestoreTimeException.serializers,
  ..._i212.ScanInput.serializers,
  ..._i213.ScanOutput.serializers,
  ..._i214.TagResourceInput.serializers,
  ..._i215.Get.serializers,
  ..._i216.TransactGetItem.serializers,
  ..._i217.TransactGetItemsInput.serializers,
  ..._i218.TransactGetItemsOutput.serializers,
  ..._i219.ReturnValuesOnConditionCheckFailure.serializers,
  ..._i220.ConditionCheck.serializers,
  ..._i221.Put.serializers,
  ..._i222.Delete.serializers,
  ..._i223.Update.serializers,
  ..._i224.TransactWriteItem.serializers,
  ..._i225.TransactWriteItemsInput.serializers,
  ..._i226.TransactWriteItemsOutput.serializers,
  ..._i227.UntagResourceInput.serializers,
  ..._i228.PointInTimeRecoverySpecification.serializers,
  ..._i229.UpdateContinuousBackupsInput.serializers,
  ..._i230.UpdateContinuousBackupsOutput.serializers,
  ..._i231.ContributorInsightsAction.serializers,
  ..._i232.UpdateContributorInsightsInput.serializers,
  ..._i233.UpdateContributorInsightsOutput.serializers,
  ..._i234.CreateReplicaAction.serializers,
  ..._i235.DeleteReplicaAction.serializers,
  ..._i236.ReplicaUpdate.serializers,
  ..._i237.UpdateGlobalTableInput.serializers,
  ..._i238.UpdateGlobalTableOutput.serializers,
  ..._i239.ReplicaAlreadyExistsException.serializers,
  ..._i240.ReplicaNotFoundException.serializers,
  ..._i241
      .AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.serializers,
  ..._i242.AutoScalingPolicyUpdate.serializers,
  ..._i243.AutoScalingSettingsUpdate.serializers,
  ..._i244.GlobalTableGlobalSecondaryIndexSettingsUpdate.serializers,
  ..._i245.ReplicaGlobalSecondaryIndexSettingsUpdate.serializers,
  ..._i246.ReplicaSettingsUpdate.serializers,
  ..._i247.UpdateGlobalTableSettingsInput.serializers,
  ..._i248.UpdateGlobalTableSettingsOutput.serializers,
  ..._i249.IndexNotFoundException.serializers,
  ..._i250.AttributeAction.serializers,
  ..._i251.AttributeValueUpdate.serializers,
  ..._i252.UpdateItemInput.serializers,
  ..._i253.UpdateItemOutput.serializers,
  ..._i254.UpdateGlobalSecondaryIndexAction.serializers,
  ..._i255.CreateGlobalSecondaryIndexAction.serializers,
  ..._i256.DeleteGlobalSecondaryIndexAction.serializers,
  ..._i257.GlobalSecondaryIndexUpdate.serializers,
  ..._i258.ReplicaGlobalSecondaryIndex.serializers,
  ..._i259.CreateReplicationGroupMemberAction.serializers,
  ..._i260.UpdateReplicationGroupMemberAction.serializers,
  ..._i261.DeleteReplicationGroupMemberAction.serializers,
  ..._i262.ReplicationGroupUpdate.serializers,
  ..._i263.UpdateTableInput.serializers,
  ..._i264.UpdateTableOutput.serializers,
  ..._i265.GlobalSecondaryIndexAutoScalingUpdate.serializers,
  ..._i266.ReplicaGlobalSecondaryIndexAutoScalingUpdate.serializers,
  ..._i267.ReplicaAutoScalingUpdate.serializers,
  ..._i268.UpdateTableReplicaAutoScalingInput.serializers,
  ..._i269.UpdateTableReplicaAutoScalingOutput.serializers,
  ..._i270.TimeToLiveSpecification.serializers,
  ..._i271.UpdateTimeToLiveInput.serializers,
  ..._i272.UpdateTimeToLiveOutput.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i273.BuiltList,
    [FullType(_i274.Uint8List)],
  ): _i273.ListBuilder<_i274.Uint8List>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i2.AttributeValue)],
  ): _i273.ListBuilder<_i2.AttributeValue>.new,
  const FullType(
    _i273.BuiltMap,
    [
      FullType(String),
      FullType(_i2.AttributeValue),
    ],
  ): _i273.MapBuilder<String, _i2.AttributeValue>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(String)],
  ): _i273.ListBuilder<String>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i3.BatchStatementRequest)],
  ): _i273.ListBuilder<_i3.BatchStatementRequest>.new,
  const FullType(
    _i273.BuiltMap,
    [
      FullType(String),
      FullType(_i9.Capacity),
    ],
  ): _i273.MapBuilder<String, _i9.Capacity>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i10.ConsumedCapacity)],
  ): _i273.ListBuilder<_i10.ConsumedCapacity>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i8.BatchStatementResponse)],
  ): _i273.ListBuilder<_i8.BatchStatementResponse>.new,
  const FullType(
    _i273.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i273.MapBuilder<String, String>.new,
  const FullType(
    _i273.BuiltList,
    [
      FullType(
        _i273.BuiltMap,
        [
          FullType(String),
          FullType(_i2.AttributeValue),
        ],
      )
    ],
  ): _i273.ListBuilder<_i273.BuiltMap<String, _i2.AttributeValue>>.new,
  const FullType(
    _i273.BuiltMap,
    [
      FullType(String),
      FullType(_i14.KeysAndAttributes),
    ],
  ): _i273.MapBuilder<String, _i14.KeysAndAttributes>.new,
  const FullType(
    _i273.BuiltListMultimap,
    [
      FullType(String),
      FullType(
        _i273.BuiltMap,
        [
          FullType(String),
          FullType(_i2.AttributeValue),
        ],
      ),
    ],
  ): _i273.ListMultimapBuilder<String,
          _i273.BuiltMap<String, _i2.AttributeValue>>
      .new,
  const FullType(
    _i273.BuiltListMultimap,
    [
      FullType(String),
      FullType(_i22.WriteRequest),
    ],
  ): _i273.ListMultimapBuilder<String, _i22.WriteRequest>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(double)],
  ): _i273.ListBuilder<double>.new,
  const FullType(
    _i273.BuiltListMultimap,
    [
      FullType(String),
      FullType(_i25.ItemCollectionMetrics),
    ],
  ): _i273.ListMultimapBuilder<String, _i25.ItemCollectionMetrics>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i38.Replica)],
  ): _i273.ListBuilder<_i38.Replica>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i42.ReplicaGlobalSecondaryIndexDescription)],
  ): _i273.ListBuilder<_i42.ReplicaGlobalSecondaryIndexDescription>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i45.ReplicaDescription)],
  ): _i273.ListBuilder<_i45.ReplicaDescription>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i53.KeySchemaElement)],
  ): _i273.ListBuilder<_i53.KeySchemaElement>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i51.AttributeDefinition)],
  ): _i273.ListBuilder<_i51.AttributeDefinition>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i58.GlobalSecondaryIndex)],
  ): _i273.ListBuilder<_i58.GlobalSecondaryIndex>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i56.LocalSecondaryIndex)],
  ): _i273.ListBuilder<_i56.LocalSecondaryIndex>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i64.Tag)],
  ): _i273.ListBuilder<_i64.Tag>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i71.GlobalSecondaryIndexDescription)],
  ): _i273.ListBuilder<_i71.GlobalSecondaryIndexDescription>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i69.LocalSecondaryIndexDescription)],
  ): _i273.ListBuilder<_i69.LocalSecondaryIndexDescription>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i82.GlobalSecondaryIndexInfo)],
  ): _i273.ListBuilder<_i82.GlobalSecondaryIndexInfo>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i81.LocalSecondaryIndexInfo)],
  ): _i273.ListBuilder<_i81.LocalSecondaryIndexInfo>.new,
  const FullType(
    _i273.BuiltMap,
    [
      FullType(String),
      FullType(_i90.ExpectedAttributeValue),
    ],
  ): _i273.MapBuilder<String, _i90.ExpectedAttributeValue>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i112.Endpoint)],
  ): _i273.ListBuilder<_i112.Endpoint>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i126.AutoScalingPolicyDescription)],
  ): _i273.ListBuilder<_i126.AutoScalingPolicyDescription>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i128.ReplicaGlobalSecondaryIndexSettingsDescription)],
  ): _i273.ListBuilder<_i128.ReplicaGlobalSecondaryIndexSettingsDescription>
      .new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i129.ReplicaSettingsDescription)],
  ): _i273.ListBuilder<_i129.ReplicaSettingsDescription>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i144.KinesisDataStreamDestination)],
  ): _i273.ListBuilder<_i144.KinesisDataStreamDestination>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i151.ReplicaGlobalSecondaryIndexAutoScalingDescription)],
  ): _i273.ListBuilder<_i151.ReplicaGlobalSecondaryIndexAutoScalingDescription>
      .new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i152.ReplicaAutoScalingDescription)],
  ): _i273.ListBuilder<_i152.ReplicaAutoScalingDescription>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i162.ParameterizedStatement)],
  ): _i273.ListBuilder<_i162.ParameterizedStatement>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i164.ItemResponse)],
  ): _i273.ListBuilder<_i164.ItemResponse>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i167.CancellationReason)],
  ): _i273.ListBuilder<_i167.CancellationReason>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i182.BackupSummary)],
  ): _i273.ListBuilder<_i182.BackupSummary>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i185.ContributorInsightsSummary)],
  ): _i273.ListBuilder<_i185.ContributorInsightsSummary>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i188.ExportSummary)],
  ): _i273.ListBuilder<_i188.ExportSummary>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i191.GlobalTable)],
  ): _i273.ListBuilder<_i191.GlobalTable>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i194.ImportSummary)],
  ): _i273.ListBuilder<_i194.ImportSummary>.new,
  const FullType(
    _i273.BuiltMap,
    [
      FullType(String),
      FullType(_i203.Condition),
    ],
  ): _i273.MapBuilder<String, _i203.Condition>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i216.TransactGetItem)],
  ): _i273.ListBuilder<_i216.TransactGetItem>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i224.TransactWriteItem)],
  ): _i273.ListBuilder<_i224.TransactWriteItem>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i236.ReplicaUpdate)],
  ): _i273.ListBuilder<_i236.ReplicaUpdate>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i245.ReplicaGlobalSecondaryIndexSettingsUpdate)],
  ): _i273.ListBuilder<_i245.ReplicaGlobalSecondaryIndexSettingsUpdate>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i244.GlobalTableGlobalSecondaryIndexSettingsUpdate)],
  ): _i273.ListBuilder<_i244.GlobalTableGlobalSecondaryIndexSettingsUpdate>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i246.ReplicaSettingsUpdate)],
  ): _i273.ListBuilder<_i246.ReplicaSettingsUpdate>.new,
  const FullType(
    _i273.BuiltMap,
    [
      FullType(String),
      FullType(_i251.AttributeValueUpdate),
    ],
  ): _i273.MapBuilder<String, _i251.AttributeValueUpdate>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i258.ReplicaGlobalSecondaryIndex)],
  ): _i273.ListBuilder<_i258.ReplicaGlobalSecondaryIndex>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i257.GlobalSecondaryIndexUpdate)],
  ): _i273.ListBuilder<_i257.GlobalSecondaryIndexUpdate>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i262.ReplicationGroupUpdate)],
  ): _i273.ListBuilder<_i262.ReplicationGroupUpdate>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i266.ReplicaGlobalSecondaryIndexAutoScalingUpdate)],
  ): _i273.ListBuilder<_i266.ReplicaGlobalSecondaryIndexAutoScalingUpdate>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i265.GlobalSecondaryIndexAutoScalingUpdate)],
  ): _i273.ListBuilder<_i265.GlobalSecondaryIndexAutoScalingUpdate>.new,
  const FullType(
    _i273.BuiltList,
    [FullType(_i267.ReplicaAutoScalingUpdate)],
  ): _i273.ListBuilder<_i267.ReplicaAutoScalingUpdate>.new,
};
