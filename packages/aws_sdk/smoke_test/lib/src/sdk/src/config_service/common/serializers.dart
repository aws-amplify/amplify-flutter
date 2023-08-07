// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/account_aggregation_source.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_by_config_rule.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_by_conformance_pack.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_count.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance_count.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance_filters.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance_summary.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance_summary_filters.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance_summary_group_key.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_evaluation_result.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_resource_identifier.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_status_type.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_type.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregation_authorization.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/base_configuration_item.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_aggregate_resource_config_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_aggregate_resource_config_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_resource_config_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_resource_config_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/chronological_order.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/compliance.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_by_config_rule.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_by_resource.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_contributor_count.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_summary.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_summary_by_resource_type.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/config_export_delivery_info.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_compliance_filters.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_compliance_summary_filters.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_compliance_summary_group_key.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_evaluation_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_state.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/config_snapshot_delivery_properties.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/config_stream_delivery_info.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_aggregator.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_item.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_item_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_recorder.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_recorder_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_filters.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_score.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_scores_filters.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_summary.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_type.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_detail.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_evaluation_filters.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_evaluation_result.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_input_parameter.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_rule_compliance.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_state.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_status_detail.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_template_validation_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/custom_policy_details.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_aggregation_authorization_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_config_rule_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_configuration_aggregator_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_configuration_recorder_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_conformance_pack_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_delivery_channel_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_evaluation_results_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_evaluation_results_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_organization_config_rule_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_organization_conformance_pack_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_pending_aggregation_request_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_remediation_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_remediation_configuration_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_remediation_exceptions_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_remediation_exceptions_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_resource_config_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_retention_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_stored_query_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delete_stored_query_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/deliver_config_snapshot_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/deliver_config_snapshot_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delivery_channel.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delivery_channel_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/delivery_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_config_rules_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_config_rules_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_conformance_packs_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_conformance_packs_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregation_authorizations_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregation_authorizations_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_config_rule_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_config_rule_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_resource_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_resource_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_config_rule_evaluation_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_config_rule_evaluation_status_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_config_rules_filters.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_config_rules_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_config_rules_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_aggregator_sources_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_aggregator_sources_status_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_aggregators_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_aggregators_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorder_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorder_status_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorders_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorders_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_pack_compliance_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_pack_compliance_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_pack_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_pack_status_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_packs_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_packs_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channel_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channel_status_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channels_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channels_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_config_rule_statuses_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_config_rule_statuses_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_config_rules_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_config_rules_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_conformance_pack_statuses_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_conformance_pack_statuses_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_conformance_packs_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_conformance_packs_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_pending_aggregation_requests_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_pending_aggregation_requests_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_configurations_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_configurations_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_exceptions_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_exceptions_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_execution_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_execution_status_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_retention_configurations_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_retention_configurations_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_context.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_mode.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_mode_configuration.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_result.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_result_identifier.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_result_qualifier.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/event_source.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/exclusion_by_resource_types.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/execution_controls.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/external_evaluation.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/failed_delete_remediation_exceptions_batch.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/failed_remediation_batch.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/failed_remediation_exception_batch.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/field_info.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_compliance_details_by_config_rule_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_compliance_details_by_config_rule_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_config_rule_compliance_summary_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_config_rule_compliance_summary_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_conformance_pack_compliance_summary_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_conformance_pack_compliance_summary_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_discovered_resource_counts_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_discovered_resource_counts_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_resource_config_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_resource_config_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_details_by_config_rule_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_details_by_config_rule_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_details_by_resource_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_details_by_resource_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_summary_by_config_rule_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_summary_by_resource_type_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_summary_by_resource_type_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_conformance_pack_compliance_details_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_conformance_pack_compliance_details_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_conformance_pack_compliance_summary_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_conformance_pack_compliance_summary_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_custom_rule_policy_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_custom_rule_policy_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_discovered_resource_counts_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_discovered_resource_counts_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_config_rule_detailed_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_config_rule_detailed_status_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_conformance_pack_detailed_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_conformance_pack_detailed_status_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_custom_rule_policy_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_custom_rule_policy_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_config_history_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_config_history_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_evaluation_summary_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_evaluation_summary_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_stored_query_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_stored_query_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/grouped_resource_count.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/idempotent_parameter_mismatch.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/insufficient_delivery_policy_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/insufficient_permissions_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_configuration_recorder_name_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_delivery_channel_name_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_expression_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_limit_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_recording_group_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_result_token_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_role_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_s3_key_prefix_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_s3_kms_key_arn_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_sns_topic_arn_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_time_range_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/last_delivery_channel_delete_failed_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_aggregate_discovered_resources_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_aggregate_discovered_resources_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_conformance_pack_compliance_scores_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_conformance_pack_compliance_scores_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_discovered_resources_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_discovered_resources_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_resource_evaluations_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_resource_evaluations_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_stored_queries_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_stored_queries_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_tags_for_resource_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_tags_for_resource_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/max_active_resources_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_config_rules_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_configuration_recorders_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_conformance_packs_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_delivery_channels_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_organization_config_rules_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_organization_conformance_packs_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_retention_configurations_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/maximum_execution_frequency.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/member_account_rule_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/member_account_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/message_type.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_configuration_recorder_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_delivery_channel_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_organization_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_running_configuration_recorder_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_bucket_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_config_rule_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_config_rule_in_conformance_pack_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_configuration_aggregator_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_configuration_recorder_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_conformance_pack_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_delivery_channel_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_organization_config_rule_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_organization_conformance_pack_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_remediation_configuration_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_remediation_exception_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_retention_configuration_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_access_denied_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_aggregation_source.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_all_features_not_enabled_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule_trigger_type.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule_trigger_type_no_sn.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack_detailed_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack_template_validation_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_custom_policy_rule_metadata.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_custom_policy_rule_metadata_no_policy.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_custom_rule_metadata.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_managed_rule_metadata.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_resource_detailed_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_resource_detailed_status_filters.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_resource_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_rule_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/oversized_configuration_item_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/owner.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/pending_aggregation_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_aggregation_authorization_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_aggregation_authorization_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_config_rule_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_configuration_aggregator_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_configuration_aggregator_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_configuration_recorder_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_conformance_pack_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_conformance_pack_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_delivery_channel_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_evaluations_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_evaluations_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_external_evaluation_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_external_evaluation_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_config_rule_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_config_rule_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_conformance_pack_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_conformance_pack_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_configurations_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_configurations_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_exceptions_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_exceptions_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_resource_config_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_retention_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_retention_configuration_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_stored_query_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_stored_query_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/query_info.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/recorder_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/recording_group.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/recording_strategy.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/recording_strategy_type.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/relationship.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_configuration.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_exception_resource_key.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_execution_state.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_execution_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_execution_step.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_execution_step_state.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_in_progress_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_parameter_value.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_target_type.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_concurrent_modification_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_configuration_schema_type.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_count.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_count_filters.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_count_group_key.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_details.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_evaluation.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_evaluation_filters.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_evaluation_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_filters.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_identifier.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_in_use_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_key.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_not_discovered_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_value.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_value_type.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/retention_configuration.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/scope.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/select_aggregate_resource_config_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/select_aggregate_resource_config_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/select_resource_config_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/select_resource_config_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/sort_by.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/sort_order.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/source.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/source_detail.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/ssm_controls.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_config_rules_evaluation_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_config_rules_evaluation_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_configuration_recorder_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_remediation_execution_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_remediation_execution_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_resource_evaluation_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_resource_evaluation_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/static_value.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/status_detail_filters.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/stop_configuration_recorder_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/stored_query.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/stored_query_metadata.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/tag.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/tag_resource_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/template_ssm_document_details.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/time_window.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/too_many_tags_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/untag_resource_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart';

const List<_i1.SmithySerializer> serializers = [
  ...ResourceType.serializers,
  ...AggregateResourceIdentifier.serializers,
  ...BatchGetAggregateResourceConfigRequest.serializers,
  ...ConfigurationItemStatus.serializers,
  ...BaseConfigurationItem.serializers,
  ...BatchGetAggregateResourceConfigResponse.serializers,
  ...NoSuchConfigurationAggregatorException.serializers,
  ...ValidationException.serializers,
  ...ResourceKey.serializers,
  ...BatchGetResourceConfigRequest.serializers,
  ...BatchGetResourceConfigResponse.serializers,
  ...NoAvailableConfigurationRecorderException.serializers,
  ...DeleteAggregationAuthorizationRequest.serializers,
  ...InvalidParameterValueException.serializers,
  ...DeleteConfigRuleRequest.serializers,
  ...NoSuchConfigRuleException.serializers,
  ...ResourceInUseException.serializers,
  ...DeleteConfigurationAggregatorRequest.serializers,
  ...DeleteConfigurationRecorderRequest.serializers,
  ...NoSuchConfigurationRecorderException.serializers,
  ...DeleteConformancePackRequest.serializers,
  ...NoSuchConformancePackException.serializers,
  ...DeleteDeliveryChannelRequest.serializers,
  ...LastDeliveryChannelDeleteFailedException.serializers,
  ...NoSuchDeliveryChannelException.serializers,
  ...DeleteEvaluationResultsRequest.serializers,
  ...DeleteEvaluationResultsResponse.serializers,
  ...DeleteOrganizationConfigRuleRequest.serializers,
  ...NoSuchOrganizationConfigRuleException.serializers,
  ...OrganizationAccessDeniedException.serializers,
  ...DeleteOrganizationConformancePackRequest.serializers,
  ...NoSuchOrganizationConformancePackException.serializers,
  ...DeletePendingAggregationRequestRequest.serializers,
  ...DeleteRemediationConfigurationRequest.serializers,
  ...DeleteRemediationConfigurationResponse.serializers,
  ...InsufficientPermissionsException.serializers,
  ...NoSuchRemediationConfigurationException.serializers,
  ...RemediationInProgressException.serializers,
  ...RemediationExceptionResourceKey.serializers,
  ...DeleteRemediationExceptionsRequest.serializers,
  ...FailedDeleteRemediationExceptionsBatch.serializers,
  ...DeleteRemediationExceptionsResponse.serializers,
  ...NoSuchRemediationExceptionException.serializers,
  ...DeleteResourceConfigRequest.serializers,
  ...NoRunningConfigurationRecorderException.serializers,
  ...DeleteRetentionConfigurationRequest.serializers,
  ...NoSuchRetentionConfigurationException.serializers,
  ...DeleteStoredQueryRequest.serializers,
  ...DeleteStoredQueryResponse.serializers,
  ...ResourceNotFoundException.serializers,
  ...DeliverConfigSnapshotRequest.serializers,
  ...DeliverConfigSnapshotResponse.serializers,
  ...ComplianceType.serializers,
  ...ConfigRuleComplianceFilters.serializers,
  ...DescribeAggregateComplianceByConfigRulesRequest.serializers,
  ...ComplianceContributorCount.serializers,
  ...Compliance.serializers,
  ...AggregateComplianceByConfigRule.serializers,
  ...DescribeAggregateComplianceByConfigRulesResponse.serializers,
  ...InvalidLimitException.serializers,
  ...InvalidNextTokenException.serializers,
  ...ConformancePackComplianceType.serializers,
  ...AggregateConformancePackComplianceFilters.serializers,
  ...DescribeAggregateComplianceByConformancePacksRequest.serializers,
  ...AggregateConformancePackCompliance.serializers,
  ...AggregateComplianceByConformancePack.serializers,
  ...DescribeAggregateComplianceByConformancePacksResponse.serializers,
  ...DescribeAggregationAuthorizationsRequest.serializers,
  ...AggregationAuthorization.serializers,
  ...DescribeAggregationAuthorizationsResponse.serializers,
  ...DescribeComplianceByConfigRuleRequest.serializers,
  ...ComplianceByConfigRule.serializers,
  ...DescribeComplianceByConfigRuleResponse.serializers,
  ...DescribeComplianceByResourceRequest.serializers,
  ...ComplianceByResource.serializers,
  ...DescribeComplianceByResourceResponse.serializers,
  ...DescribeConfigRuleEvaluationStatusRequest.serializers,
  ...ConfigRuleEvaluationStatus.serializers,
  ...DescribeConfigRuleEvaluationStatusResponse.serializers,
  ...EvaluationMode.serializers,
  ...DescribeConfigRulesFilters.serializers,
  ...DescribeConfigRulesRequest.serializers,
  ...Scope.serializers,
  ...Owner.serializers,
  ...EventSource.serializers,
  ...MessageType.serializers,
  ...MaximumExecutionFrequency.serializers,
  ...SourceDetail.serializers,
  ...CustomPolicyDetails.serializers,
  ...Source.serializers,
  ...ConfigRuleState.serializers,
  ...EvaluationModeConfiguration.serializers,
  ...ConfigRule.serializers,
  ...DescribeConfigRulesResponse.serializers,
  ...AggregatedSourceStatusType.serializers,
  ...DescribeConfigurationAggregatorSourcesStatusRequest.serializers,
  ...AggregatedSourceType.serializers,
  ...AggregatedSourceStatus.serializers,
  ...DescribeConfigurationAggregatorSourcesStatusResponse.serializers,
  ...DescribeConfigurationAggregatorsRequest.serializers,
  ...AccountAggregationSource.serializers,
  ...OrganizationAggregationSource.serializers,
  ...ConfigurationAggregator.serializers,
  ...DescribeConfigurationAggregatorsResponse.serializers,
  ...DescribeConfigurationRecorderStatusRequest.serializers,
  ...RecorderStatus.serializers,
  ...ConfigurationRecorderStatus.serializers,
  ...DescribeConfigurationRecorderStatusResponse.serializers,
  ...DescribeConfigurationRecordersRequest.serializers,
  ...ExclusionByResourceTypes.serializers,
  ...RecordingStrategyType.serializers,
  ...RecordingStrategy.serializers,
  ...RecordingGroup.serializers,
  ...ConfigurationRecorder.serializers,
  ...DescribeConfigurationRecordersResponse.serializers,
  ...ConformancePackComplianceFilters.serializers,
  ...DescribeConformancePackComplianceRequest.serializers,
  ...ConformancePackRuleCompliance.serializers,
  ...DescribeConformancePackComplianceResponse.serializers,
  ...NoSuchConfigRuleInConformancePackException.serializers,
  ...DescribeConformancePackStatusRequest.serializers,
  ...ConformancePackState.serializers,
  ...ConformancePackStatusDetail.serializers,
  ...DescribeConformancePackStatusResponse.serializers,
  ...DescribeConformancePacksRequest.serializers,
  ...ConformancePackInputParameter.serializers,
  ...TemplateSsmDocumentDetails.serializers,
  ...ConformancePackDetail.serializers,
  ...DescribeConformancePacksResponse.serializers,
  ...DescribeDeliveryChannelStatusRequest.serializers,
  ...DeliveryStatus.serializers,
  ...ConfigExportDeliveryInfo.serializers,
  ...ConfigStreamDeliveryInfo.serializers,
  ...DeliveryChannelStatus.serializers,
  ...DescribeDeliveryChannelStatusResponse.serializers,
  ...DescribeDeliveryChannelsRequest.serializers,
  ...ConfigSnapshotDeliveryProperties.serializers,
  ...DeliveryChannel.serializers,
  ...DescribeDeliveryChannelsResponse.serializers,
  ...DescribeOrganizationConfigRuleStatusesRequest.serializers,
  ...OrganizationRuleStatus.serializers,
  ...OrganizationConfigRuleStatus.serializers,
  ...DescribeOrganizationConfigRuleStatusesResponse.serializers,
  ...DescribeOrganizationConfigRulesRequest.serializers,
  ...OrganizationManagedRuleMetadata.serializers,
  ...OrganizationConfigRuleTriggerType.serializers,
  ...OrganizationCustomRuleMetadata.serializers,
  ...OrganizationConfigRuleTriggerTypeNoSn.serializers,
  ...OrganizationCustomPolicyRuleMetadataNoPolicy.serializers,
  ...OrganizationConfigRule.serializers,
  ...DescribeOrganizationConfigRulesResponse.serializers,
  ...DescribeOrganizationConformancePackStatusesRequest.serializers,
  ...OrganizationResourceStatus.serializers,
  ...OrganizationConformancePackStatus.serializers,
  ...DescribeOrganizationConformancePackStatusesResponse.serializers,
  ...DescribeOrganizationConformancePacksRequest.serializers,
  ...OrganizationConformancePack.serializers,
  ...DescribeOrganizationConformancePacksResponse.serializers,
  ...DescribePendingAggregationRequestsRequest.serializers,
  ...PendingAggregationRequest.serializers,
  ...DescribePendingAggregationRequestsResponse.serializers,
  ...DescribeRemediationConfigurationsRequest.serializers,
  ...RemediationTargetType.serializers,
  ...ResourceValueType.serializers,
  ...ResourceValue.serializers,
  ...StaticValue.serializers,
  ...RemediationParameterValue.serializers,
  ...SsmControls.serializers,
  ...ExecutionControls.serializers,
  ...RemediationConfiguration.serializers,
  ...DescribeRemediationConfigurationsResponse.serializers,
  ...DescribeRemediationExceptionsRequest.serializers,
  ...RemediationException.serializers,
  ...DescribeRemediationExceptionsResponse.serializers,
  ...DescribeRemediationExecutionStatusRequest.serializers,
  ...RemediationExecutionState.serializers,
  ...RemediationExecutionStepState.serializers,
  ...RemediationExecutionStep.serializers,
  ...RemediationExecutionStatus.serializers,
  ...DescribeRemediationExecutionStatusResponse.serializers,
  ...DescribeRetentionConfigurationsRequest.serializers,
  ...RetentionConfiguration.serializers,
  ...DescribeRetentionConfigurationsResponse.serializers,
  ...GetAggregateComplianceDetailsByConfigRuleRequest.serializers,
  ...EvaluationResultQualifier.serializers,
  ...EvaluationResultIdentifier.serializers,
  ...AggregateEvaluationResult.serializers,
  ...GetAggregateComplianceDetailsByConfigRuleResponse.serializers,
  ...ConfigRuleComplianceSummaryFilters.serializers,
  ...ConfigRuleComplianceSummaryGroupKey.serializers,
  ...GetAggregateConfigRuleComplianceSummaryRequest.serializers,
  ...ComplianceSummary.serializers,
  ...AggregateComplianceCount.serializers,
  ...GetAggregateConfigRuleComplianceSummaryResponse.serializers,
  ...AggregateConformancePackComplianceSummaryFilters.serializers,
  ...AggregateConformancePackComplianceSummaryGroupKey.serializers,
  ...GetAggregateConformancePackComplianceSummaryRequest.serializers,
  ...AggregateConformancePackComplianceCount.serializers,
  ...AggregateConformancePackComplianceSummary.serializers,
  ...GetAggregateConformancePackComplianceSummaryResponse.serializers,
  ...ResourceCountFilters.serializers,
  ...ResourceCountGroupKey.serializers,
  ...GetAggregateDiscoveredResourceCountsRequest.serializers,
  ...GroupedResourceCount.serializers,
  ...GetAggregateDiscoveredResourceCountsResponse.serializers,
  ...GetAggregateResourceConfigRequest.serializers,
  ...Relationship.serializers,
  ...ConfigurationItem.serializers,
  ...GetAggregateResourceConfigResponse.serializers,
  ...OversizedConfigurationItemException.serializers,
  ...ResourceNotDiscoveredException.serializers,
  ...GetComplianceDetailsByConfigRuleRequest.serializers,
  ...EvaluationResult.serializers,
  ...GetComplianceDetailsByConfigRuleResponse.serializers,
  ...GetComplianceDetailsByResourceRequest.serializers,
  ...GetComplianceDetailsByResourceResponse.serializers,
  ...GetComplianceSummaryByConfigRuleResponse.serializers,
  ...GetComplianceSummaryByResourceTypeRequest.serializers,
  ...ComplianceSummaryByResourceType.serializers,
  ...GetComplianceSummaryByResourceTypeResponse.serializers,
  ...ConformancePackEvaluationFilters.serializers,
  ...GetConformancePackComplianceDetailsRequest.serializers,
  ...ConformancePackEvaluationResult.serializers,
  ...GetConformancePackComplianceDetailsResponse.serializers,
  ...GetConformancePackComplianceSummaryRequest.serializers,
  ...ConformancePackComplianceSummary.serializers,
  ...GetConformancePackComplianceSummaryResponse.serializers,
  ...GetCustomRulePolicyRequest.serializers,
  ...GetCustomRulePolicyResponse.serializers,
  ...GetDiscoveredResourceCountsRequest.serializers,
  ...ResourceCount.serializers,
  ...GetDiscoveredResourceCountsResponse.serializers,
  ...MemberAccountRuleStatus.serializers,
  ...StatusDetailFilters.serializers,
  ...GetOrganizationConfigRuleDetailedStatusRequest.serializers,
  ...MemberAccountStatus.serializers,
  ...GetOrganizationConfigRuleDetailedStatusResponse.serializers,
  ...OrganizationResourceDetailedStatus.serializers,
  ...OrganizationResourceDetailedStatusFilters.serializers,
  ...GetOrganizationConformancePackDetailedStatusRequest.serializers,
  ...OrganizationConformancePackDetailedStatus.serializers,
  ...GetOrganizationConformancePackDetailedStatusResponse.serializers,
  ...GetOrganizationCustomRulePolicyRequest.serializers,
  ...GetOrganizationCustomRulePolicyResponse.serializers,
  ...ChronologicalOrder.serializers,
  ...GetResourceConfigHistoryRequest.serializers,
  ...GetResourceConfigHistoryResponse.serializers,
  ...InvalidTimeRangeException.serializers,
  ...GetResourceEvaluationSummaryRequest.serializers,
  ...ResourceEvaluationStatus.serializers,
  ...EvaluationStatus.serializers,
  ...EvaluationContext.serializers,
  ...ResourceConfigurationSchemaType.serializers,
  ...ResourceDetails.serializers,
  ...GetResourceEvaluationSummaryResponse.serializers,
  ...GetStoredQueryRequest.serializers,
  ...StoredQuery.serializers,
  ...GetStoredQueryResponse.serializers,
  ...ResourceFilters.serializers,
  ...ListAggregateDiscoveredResourcesRequest.serializers,
  ...ListAggregateDiscoveredResourcesResponse.serializers,
  ...ConformancePackComplianceScoresFilters.serializers,
  ...SortOrder.serializers,
  ...SortBy.serializers,
  ...ListConformancePackComplianceScoresRequest.serializers,
  ...ConformancePackComplianceScore.serializers,
  ...ListConformancePackComplianceScoresResponse.serializers,
  ...ListDiscoveredResourcesRequest.serializers,
  ...ResourceIdentifier.serializers,
  ...ListDiscoveredResourcesResponse.serializers,
  ...TimeWindow.serializers,
  ...ResourceEvaluationFilters.serializers,
  ...ListResourceEvaluationsRequest.serializers,
  ...ResourceEvaluation.serializers,
  ...ListResourceEvaluationsResponse.serializers,
  ...ListStoredQueriesRequest.serializers,
  ...StoredQueryMetadata.serializers,
  ...ListStoredQueriesResponse.serializers,
  ...ListTagsForResourceRequest.serializers,
  ...Tag.serializers,
  ...ListTagsForResourceResponse.serializers,
  ...PutAggregationAuthorizationRequest.serializers,
  ...PutAggregationAuthorizationResponse.serializers,
  ...PutConfigRuleRequest.serializers,
  ...MaxNumberOfConfigRulesExceededException.serializers,
  ...PutConfigurationAggregatorRequest.serializers,
  ...PutConfigurationAggregatorResponse.serializers,
  ...InvalidRoleException.serializers,
  ...LimitExceededException.serializers,
  ...NoAvailableOrganizationException.serializers,
  ...OrganizationAllFeaturesNotEnabledException.serializers,
  ...PutConfigurationRecorderRequest.serializers,
  ...InvalidConfigurationRecorderNameException.serializers,
  ...InvalidRecordingGroupException.serializers,
  ...MaxNumberOfConfigurationRecordersExceededException.serializers,
  ...PutConformancePackRequest.serializers,
  ...PutConformancePackResponse.serializers,
  ...ConformancePackTemplateValidationException.serializers,
  ...MaxNumberOfConformancePacksExceededException.serializers,
  ...PutDeliveryChannelRequest.serializers,
  ...InsufficientDeliveryPolicyException.serializers,
  ...InvalidDeliveryChannelNameException.serializers,
  ...InvalidS3KeyPrefixException.serializers,
  ...InvalidS3KmsKeyArnException.serializers,
  ...InvalidSnsTopicArnException.serializers,
  ...MaxNumberOfDeliveryChannelsExceededException.serializers,
  ...NoSuchBucketException.serializers,
  ...Evaluation.serializers,
  ...PutEvaluationsRequest.serializers,
  ...PutEvaluationsResponse.serializers,
  ...InvalidResultTokenException.serializers,
  ...ExternalEvaluation.serializers,
  ...PutExternalEvaluationRequest.serializers,
  ...PutExternalEvaluationResponse.serializers,
  ...OrganizationCustomPolicyRuleMetadata.serializers,
  ...PutOrganizationConfigRuleRequest.serializers,
  ...PutOrganizationConfigRuleResponse.serializers,
  ...MaxNumberOfOrganizationConfigRulesExceededException.serializers,
  ...PutOrganizationConformancePackRequest.serializers,
  ...PutOrganizationConformancePackResponse.serializers,
  ...MaxNumberOfOrganizationConformancePacksExceededException.serializers,
  ...OrganizationConformancePackTemplateValidationException.serializers,
  ...PutRemediationConfigurationsRequest.serializers,
  ...FailedRemediationBatch.serializers,
  ...PutRemediationConfigurationsResponse.serializers,
  ...PutRemediationExceptionsRequest.serializers,
  ...FailedRemediationExceptionBatch.serializers,
  ...PutRemediationExceptionsResponse.serializers,
  ...PutResourceConfigRequest.serializers,
  ...MaxActiveResourcesExceededException.serializers,
  ...PutRetentionConfigurationRequest.serializers,
  ...PutRetentionConfigurationResponse.serializers,
  ...MaxNumberOfRetentionConfigurationsExceededException.serializers,
  ...PutStoredQueryRequest.serializers,
  ...PutStoredQueryResponse.serializers,
  ...ResourceConcurrentModificationException.serializers,
  ...TooManyTagsException.serializers,
  ...SelectAggregateResourceConfigRequest.serializers,
  ...FieldInfo.serializers,
  ...QueryInfo.serializers,
  ...SelectAggregateResourceConfigResponse.serializers,
  ...InvalidExpressionException.serializers,
  ...SelectResourceConfigRequest.serializers,
  ...SelectResourceConfigResponse.serializers,
  ...StartConfigRulesEvaluationRequest.serializers,
  ...StartConfigRulesEvaluationResponse.serializers,
  ...StartConfigurationRecorderRequest.serializers,
  ...NoAvailableDeliveryChannelException.serializers,
  ...StartRemediationExecutionRequest.serializers,
  ...StartRemediationExecutionResponse.serializers,
  ...StartResourceEvaluationRequest.serializers,
  ...StartResourceEvaluationResponse.serializers,
  ...IdempotentParameterMismatch.serializers,
  ...StopConfigurationRecorderRequest.serializers,
  ...TagResourceRequest.serializers,
  ...UntagResourceRequest.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltList,
    [FullType(AggregateResourceIdentifier)],
  ): _i2.ListBuilder<AggregateResourceIdentifier>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.MapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(BaseConfigurationItem)],
  ): _i2.ListBuilder<BaseConfigurationItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ResourceKey)],
  ): _i2.ListBuilder<ResourceKey>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RemediationExceptionResourceKey)],
  ): _i2.ListBuilder<RemediationExceptionResourceKey>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FailedDeleteRemediationExceptionsBatch)],
  ): _i2.ListBuilder<FailedDeleteRemediationExceptionsBatch>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AggregateComplianceByConfigRule)],
  ): _i2.ListBuilder<AggregateComplianceByConfigRule>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AggregateComplianceByConformancePack)],
  ): _i2.ListBuilder<AggregateComplianceByConformancePack>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AggregationAuthorization)],
  ): _i2.ListBuilder<AggregationAuthorization>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ComplianceByConfigRule)],
  ): _i2.ListBuilder<ComplianceByConfigRule>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(String)],
  ): _i2.ListBuilder<String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ComplianceType)],
  ): _i2.ListBuilder<ComplianceType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ComplianceByResource)],
  ): _i2.ListBuilder<ComplianceByResource>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConfigRuleEvaluationStatus)],
  ): _i2.ListBuilder<ConfigRuleEvaluationStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConfigRule)],
  ): _i2.ListBuilder<ConfigRule>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SourceDetail)],
  ): _i2.ListBuilder<SourceDetail>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(EvaluationModeConfiguration)],
  ): _i2.ListBuilder<EvaluationModeConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AggregatedSourceStatus)],
  ): _i2.ListBuilder<AggregatedSourceStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AggregatedSourceStatusType)],
  ): _i2.ListBuilder<AggregatedSourceStatusType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConfigurationAggregator)],
  ): _i2.ListBuilder<ConfigurationAggregator>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AccountAggregationSource)],
  ): _i2.ListBuilder<AccountAggregationSource>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConfigurationRecorderStatus)],
  ): _i2.ListBuilder<ConfigurationRecorderStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ResourceType)],
  ): _i2.ListBuilder<ResourceType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConfigurationRecorder)],
  ): _i2.ListBuilder<ConfigurationRecorder>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConformancePackRuleCompliance)],
  ): _i2.ListBuilder<ConformancePackRuleCompliance>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConformancePackStatusDetail)],
  ): _i2.ListBuilder<ConformancePackStatusDetail>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConformancePackDetail)],
  ): _i2.ListBuilder<ConformancePackDetail>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConformancePackInputParameter)],
  ): _i2.ListBuilder<ConformancePackInputParameter>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DeliveryChannelStatus)],
  ): _i2.ListBuilder<DeliveryChannelStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DeliveryChannel)],
  ): _i2.ListBuilder<DeliveryChannel>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(OrganizationConfigRuleStatus)],
  ): _i2.ListBuilder<OrganizationConfigRuleStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(OrganizationConfigRule)],
  ): _i2.ListBuilder<OrganizationConfigRule>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(OrganizationConfigRuleTriggerType)],
  ): _i2.ListBuilder<OrganizationConfigRuleTriggerType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(OrganizationConfigRuleTriggerTypeNoSn)],
  ): _i2.ListBuilder<OrganizationConfigRuleTriggerTypeNoSn>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(OrganizationConformancePackStatus)],
  ): _i2.ListBuilder<OrganizationConformancePackStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(OrganizationConformancePack)],
  ): _i2.ListBuilder<OrganizationConformancePack>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PendingAggregationRequest)],
  ): _i2.ListBuilder<PendingAggregationRequest>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(RemediationParameterValue),
    ],
  ): _i2.MapBuilder<String, RemediationParameterValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RemediationConfiguration)],
  ): _i2.ListBuilder<RemediationConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RemediationException)],
  ): _i2.ListBuilder<RemediationException>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RemediationExecutionStatus)],
  ): _i2.ListBuilder<RemediationExecutionStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RemediationExecutionStep)],
  ): _i2.ListBuilder<RemediationExecutionStep>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RetentionConfiguration)],
  ): _i2.ListBuilder<RetentionConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AggregateEvaluationResult)],
  ): _i2.ListBuilder<AggregateEvaluationResult>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AggregateComplianceCount)],
  ): _i2.ListBuilder<AggregateComplianceCount>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AggregateConformancePackComplianceSummary)],
  ): _i2.ListBuilder<AggregateConformancePackComplianceSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(GroupedResourceCount)],
  ): _i2.ListBuilder<GroupedResourceCount>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Relationship)],
  ): _i2.ListBuilder<Relationship>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(EvaluationResult)],
  ): _i2.ListBuilder<EvaluationResult>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ComplianceSummaryByResourceType)],
  ): _i2.ListBuilder<ComplianceSummaryByResourceType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConformancePackEvaluationResult)],
  ): _i2.ListBuilder<ConformancePackEvaluationResult>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConformancePackComplianceSummary)],
  ): _i2.ListBuilder<ConformancePackComplianceSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ResourceCount)],
  ): _i2.ListBuilder<ResourceCount>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(MemberAccountStatus)],
  ): _i2.ListBuilder<MemberAccountStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(OrganizationConformancePackDetailedStatus)],
  ): _i2.ListBuilder<OrganizationConformancePackDetailedStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConfigurationItem)],
  ): _i2.ListBuilder<ConfigurationItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConformancePackComplianceScore)],
  ): _i2.ListBuilder<ConformancePackComplianceScore>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ResourceIdentifier)],
  ): _i2.ListBuilder<ResourceIdentifier>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ResourceEvaluation)],
  ): _i2.ListBuilder<ResourceEvaluation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StoredQueryMetadata)],
  ): _i2.ListBuilder<StoredQueryMetadata>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Tag)],
  ): _i2.ListBuilder<Tag>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Evaluation)],
  ): _i2.ListBuilder<Evaluation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FailedRemediationBatch)],
  ): _i2.ListBuilder<FailedRemediationBatch>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FailedRemediationExceptionBatch)],
  ): _i2.ListBuilder<FailedRemediationExceptionBatch>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FieldInfo)],
  ): _i2.ListBuilder<FieldInfo>.new,
};
