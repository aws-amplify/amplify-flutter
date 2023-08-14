// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.config_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_by_conformance_pack.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_evaluation_result.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_resource_identifier.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregation_authorization.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_aggregate_resource_config_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_aggregate_resource_config_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_resource_config_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_resource_config_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_by_config_rule.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_by_resource.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_evaluation_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_aggregator.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_item.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_summary.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_detail.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_status_detail.dart';
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
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_config_rules_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_config_rules_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_conformance_packs_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregation_authorizations_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_config_rule_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_resource_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_config_rule_evaluation_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_config_rules_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_aggregator_sources_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_aggregators_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorder_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorder_status_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorders_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorders_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_pack_compliance_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_pack_compliance_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_pack_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_packs_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channel_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channel_status_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channels_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channels_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_config_rule_statuses_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_config_rules_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_conformance_pack_statuses_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_conformance_packs_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_pending_aggregation_requests_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_configurations_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_configurations_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_exceptions_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_exceptions_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_execution_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_retention_configurations_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_result.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_compliance_details_by_config_rule_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_config_rule_compliance_summary_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_config_rule_compliance_summary_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_conformance_pack_compliance_summary_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_conformance_pack_compliance_summary_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_discovered_resource_counts_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_discovered_resource_counts_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_resource_config_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_resource_config_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_details_by_config_rule_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_details_by_resource_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_summary_by_config_rule_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_summary_by_resource_type_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_summary_by_resource_type_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_conformance_pack_compliance_details_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_conformance_pack_compliance_details_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_conformance_pack_compliance_summary_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_custom_rule_policy_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_custom_rule_policy_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_discovered_resource_counts_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_discovered_resource_counts_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_config_rule_detailed_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_conformance_pack_detailed_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_custom_rule_policy_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_custom_rule_policy_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_config_history_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_evaluation_summary_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_evaluation_summary_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_stored_query_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_stored_query_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_aggregate_discovered_resources_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_conformance_pack_compliance_scores_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_conformance_pack_compliance_scores_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_discovered_resources_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_resource_evaluations_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_stored_queries_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_stored_queries_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/list_tags_for_resource_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/member_account_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack_detailed_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack_status.dart';
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
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_execution_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_evaluation.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_identifier.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/retention_configuration.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/select_aggregate_resource_config_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/select_resource_config_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_config_rules_evaluation_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_config_rules_evaluation_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_configuration_recorder_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_remediation_execution_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_remediation_execution_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_resource_evaluation_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_resource_evaluation_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/stop_configuration_recorder_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/tag.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/tag_resource_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/untag_resource_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/batch_get_aggregate_resource_config_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/batch_get_resource_config_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_aggregation_authorization_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_config_rule_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_configuration_aggregator_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_configuration_recorder_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_conformance_pack_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_delivery_channel_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_evaluation_results_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_organization_config_rule_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_organization_conformance_pack_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_pending_aggregation_request_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_remediation_configuration_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_remediation_exceptions_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_resource_config_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_retention_configuration_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_stored_query_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/deliver_config_snapshot_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_aggregate_compliance_by_config_rules_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_aggregate_compliance_by_conformance_packs_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_aggregation_authorizations_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_compliance_by_config_rule_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_compliance_by_resource_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_config_rule_evaluation_status_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_config_rules_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_configuration_aggregator_sources_status_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_configuration_aggregators_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_configuration_recorder_status_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_configuration_recorders_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_conformance_pack_compliance_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_conformance_pack_status_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_conformance_packs_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_delivery_channel_status_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_delivery_channels_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_organization_config_rule_statuses_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_organization_config_rules_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_organization_conformance_pack_statuses_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_organization_conformance_packs_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_pending_aggregation_requests_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_remediation_configurations_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_remediation_exceptions_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_remediation_execution_status_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_retention_configurations_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_aggregate_compliance_details_by_config_rule_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_aggregate_config_rule_compliance_summary_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_aggregate_conformance_pack_compliance_summary_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_aggregate_discovered_resource_counts_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_aggregate_resource_config_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_compliance_details_by_config_rule_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_compliance_details_by_resource_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_compliance_summary_by_config_rule_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_compliance_summary_by_resource_type_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_conformance_pack_compliance_details_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_conformance_pack_compliance_summary_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_custom_rule_policy_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_discovered_resource_counts_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_organization_config_rule_detailed_status_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_organization_conformance_pack_detailed_status_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_organization_custom_rule_policy_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_resource_config_history_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_resource_evaluation_summary_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/get_stored_query_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/list_aggregate_discovered_resources_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/list_conformance_pack_compliance_scores_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/list_discovered_resources_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/list_resource_evaluations_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/list_stored_queries_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/list_tags_for_resource_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/put_aggregation_authorization_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/put_config_rule_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/put_configuration_aggregator_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/put_configuration_recorder_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/put_conformance_pack_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/put_delivery_channel_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/put_evaluations_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/put_external_evaluation_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/put_organization_config_rule_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/put_organization_conformance_pack_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/put_remediation_configurations_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/put_remediation_exceptions_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/put_resource_config_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/put_retention_configuration_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/put_stored_query_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/select_aggregate_resource_config_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/select_resource_config_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/start_config_rules_evaluation_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/start_configuration_recorder_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/start_remediation_execution_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/start_resource_evaluation_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/stop_configuration_recorder_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/tag_resource_operation.dart';
import 'package:smoke_test/src/sdk/src/config_service/operation/untag_resource_operation.dart';

/// ## Config
///
/// Config provides a way to keep track of the configurations of all the Amazon Web Services resources associated with your Amazon Web Services account. You can use Config to get the current and historical configurations of each Amazon Web Services resource and also to get information about the relationship between the resources. An Amazon Web Services resource can be an Amazon Compute Cloud (Amazon EC2) instance, an Elastic Block Store (EBS) volume, an elastic network Interface (ENI), or a security group. For a complete list of resources currently supported by Config, see [Supported Amazon Web Services resources](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).
///
/// You can access and manage Config through the Amazon Web Services Management Console, the Amazon Web Services Command Line Interface (Amazon Web Services CLI), the Config API, or the Amazon Web Services SDKs for Config. This reference guide contains documentation for the Config API and the Amazon Web Services CLI commands that you can use to manage Config. The Config API uses the Signature Version 4 protocol for signing requests. For more information about how to sign a request with this protocol, see [Signature Version 4 Signing Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html). For detailed information about Config features and their associated actions or commands, as well as how to work with Amazon Web Services Management Console, see [What Is Config](https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html) in the _Config Developer Guide_.
class ConfigClient {
  /// ## Config
  ///
  /// Config provides a way to keep track of the configurations of all the Amazon Web Services resources associated with your Amazon Web Services account. You can use Config to get the current and historical configurations of each Amazon Web Services resource and also to get information about the relationship between the resources. An Amazon Web Services resource can be an Amazon Compute Cloud (Amazon EC2) instance, an Elastic Block Store (EBS) volume, an elastic network Interface (ENI), or a security group. For a complete list of resources currently supported by Config, see [Supported Amazon Web Services resources](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).
  ///
  /// You can access and manage Config through the Amazon Web Services Management Console, the Amazon Web Services Command Line Interface (Amazon Web Services CLI), the Config API, or the Amazon Web Services SDKs for Config. This reference guide contains documentation for the Config API and the Amazon Web Services CLI commands that you can use to manage Config. The Config API uses the Signature Version 4 protocol for signing requests. For more information about how to sign a request with this protocol, see [Signature Version 4 Signing Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html). For detailed information about Config features and their associated actions or commands, as well as how to work with Amazon Web Services Management Console, see [What Is Config](https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html) in the _Config Developer Guide_.
  const ConfigClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.defaultChain(),
    List<_i3.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i3.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  final List<_i3.HttpRequestInterceptor> _requestInterceptors;

  final List<_i3.HttpResponseInterceptor> _responseInterceptors;

  /// Returns the current configuration items for resources that are present in your Config aggregator. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty `unprocessedResourceIdentifiers` list.
  ///
  /// *   The API does not return results for deleted resources.
  ///
  /// *   The API does not return tags and relationships.
  _i3.SmithyOperation<BatchGetAggregateResourceConfigResponse>
      batchGetAggregateResourceConfig(
    BatchGetAggregateResourceConfigRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return BatchGetAggregateResourceConfigOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the `BaseConfigurationItem` for one or more requested resources. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty unprocessedResourceKeys list.
  ///
  /// *   The API does not return results for deleted resources.
  ///
  /// *   The API does not return any tags for the requested resources. This information is filtered out of the supplementaryConfiguration section of the API response.
  _i3.SmithyOperation<BatchGetResourceConfigResponse> batchGetResourceConfig(
    BatchGetResourceConfigRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return BatchGetResourceConfigOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the authorization granted to the specified configuration aggregator account in a specified region.
  _i3.SmithyOperation<void> deleteAggregationAuthorization(
    DeleteAggregationAuthorizationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteAggregationAuthorizationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified Config rule and all of its evaluation results.
  ///
  /// Config sets the state of a rule to `DELETING` until the deletion is complete. You cannot update a rule while it is in this state. If you make a `PutConfigRule` or `DeleteConfigRule` request for the rule, you will receive a `ResourceInUseException`.
  ///
  /// You can check the state of a rule by using the `DescribeConfigRules` request.
  _i3.SmithyOperation<void> deleteConfigRule(
    DeleteConfigRuleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified configuration aggregator and the aggregated data associated with the aggregator.
  _i3.SmithyOperation<void> deleteConfigurationAggregator(
    DeleteConfigurationAggregatorRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteConfigurationAggregatorOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the configuration recorder.
  ///
  /// After the configuration recorder is deleted, Config will not record resource configuration changes until you create a new configuration recorder.
  ///
  /// This action does not delete the configuration information that was previously recorded. You will be able to access the previously recorded information by using the `GetResourceConfigHistory` action, but you will not be able to access this information in the Config console until you create a new configuration recorder.
  _i3.SmithyOperation<void> deleteConfigurationRecorder(
    DeleteConfigurationRecorderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteConfigurationRecorderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified conformance pack and all the Config rules, remediation actions, and all evaluation results within that conformance pack.
  ///
  /// Config sets the conformance pack to `DELETE\_IN\_PROGRESS` until the deletion is complete. You cannot update a conformance pack while it is in this state.
  _i3.SmithyOperation<void> deleteConformancePack(
    DeleteConformancePackRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteConformancePackOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the delivery channel.
  ///
  /// Before you can delete the delivery channel, you must stop the configuration recorder by using the StopConfigurationRecorder action.
  _i3.SmithyOperation<void> deleteDeliveryChannel(
    DeleteDeliveryChannelRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteDeliveryChannelOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the evaluation results for the specified Config rule. You can specify one Config rule per request. After you delete the evaluation results, you can call the StartConfigRulesEvaluation API to start evaluating your Amazon Web Services resources against the rule.
  _i3.SmithyOperation<DeleteEvaluationResultsResponse> deleteEvaluationResults(
    DeleteEvaluationResultsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteEvaluationResultsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified organization Config rule and all of its evaluation results from all member accounts in that organization.
  ///
  /// Only a management account and a delegated administrator account can delete an organization Config rule. When calling this API with a delegated administrator, you must ensure Organizations `ListDelegatedAdministrator` permissions are added.
  ///
  /// Config sets the state of a rule to DELETE\_IN\_PROGRESS until the deletion is complete. You cannot update a rule while it is in this state.
  _i3.SmithyOperation<void> deleteOrganizationConfigRule(
    DeleteOrganizationConfigRuleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteOrganizationConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified organization conformance pack and all of the Config rules and remediation actions from all member accounts in that organization.
  ///
  /// Only a management account or a delegated administrator account can delete an organization conformance pack. When calling this API with a delegated administrator, you must ensure Organizations `ListDelegatedAdministrator` permissions are added.
  ///
  /// Config sets the state of a conformance pack to DELETE\_IN\_PROGRESS until the deletion is complete. You cannot update a conformance pack while it is in this state.
  _i3.SmithyOperation<void> deleteOrganizationConformancePack(
    DeleteOrganizationConformancePackRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteOrganizationConformancePackOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes pending authorization requests for a specified aggregator account in a specified region.
  _i3.SmithyOperation<void> deletePendingAggregationRequest(
    DeletePendingAggregationRequestRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeletePendingAggregationRequestOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the remediation configuration.
  _i3.SmithyOperation<DeleteRemediationConfigurationResponse>
      deleteRemediationConfiguration(
    DeleteRemediationConfigurationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteRemediationConfigurationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes one or more remediation exceptions mentioned in the resource keys.
  ///
  /// Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource. Remediation exceptions blocks auto-remediation until the exception is cleared.
  _i3.SmithyOperation<DeleteRemediationExceptionsResponse>
      deleteRemediationExceptions(
    DeleteRemediationExceptionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteRemediationExceptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Records the configuration state for a custom resource that has been deleted. This API records a new ConfigurationItem with a ResourceDeleted status. You can retrieve the ConfigurationItems recorded for this resource in your Config History.
  _i3.SmithyOperation<void> deleteResourceConfig(
    DeleteResourceConfigRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteResourceConfigOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the retention configuration.
  _i3.SmithyOperation<void> deleteRetentionConfiguration(
    DeleteRetentionConfigurationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteRetentionConfigurationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the stored query for a single Amazon Web Services account and a single Amazon Web Services Region.
  _i3.SmithyOperation<DeleteStoredQueryResponse> deleteStoredQuery(
    DeleteStoredQueryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteStoredQueryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel. After the delivery has started, Config sends the following notifications using an Amazon SNS topic that you have specified.
  ///
  /// *   Notification of the start of the delivery.
  ///
  /// *   Notification of the completion of the delivery, if the delivery was successfully completed.
  ///
  /// *   Notification of delivery failure, if the delivery failed.
  _i3.SmithyOperation<DeliverConfigSnapshotResponse> deliverConfigSnapshot(
    DeliverConfigSnapshotRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeliverConfigSnapshotOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of compliant and noncompliant rules with the number of resources for compliant and noncompliant rules. Does not display rules that do not have compliance results.
  ///
  /// The results can return an empty result page, but if you have a `nextToken`, the results are displayed on the next page.
  _i3.SmithyOperation<
      _i3.PaginatedResult<DescribeAggregateComplianceByConfigRulesResponse, int,
          String>> describeAggregateComplianceByConfigRules(
    DescribeAggregateComplianceByConfigRulesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeAggregateComplianceByConfigRulesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of the conformance packs and their associated compliance status with the count of compliant and noncompliant Config rules within each conformance pack. Also returns the total rule count which includes compliant rules, noncompliant rules, and rules that cannot be evaluated due to insufficient data.
  ///
  /// The results can return an empty result page, but if you have a `nextToken`, the results are displayed on the next page.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<AggregateComplianceByConformancePack>,
          int, String>> describeAggregateComplianceByConformancePacks(
    DescribeAggregateComplianceByConformancePacksRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeAggregateComplianceByConformancePacksOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of authorizations granted to various aggregator accounts and regions.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<AggregationAuthorization>, int,
          String>> describeAggregationAuthorizations(
    DescribeAggregationAuthorizationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeAggregationAuthorizationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Indicates whether the specified Config rules are compliant. If a rule is noncompliant, this action returns the number of Amazon Web Services resources that do not comply with the rule.
  ///
  /// A rule is compliant if all of the evaluated resources comply with it. It is noncompliant if any of these resources do not comply.
  ///
  /// If Config has no current evaluation results for the rule, it returns `INSUFFICIENT_DATA`. This result might indicate one of the following conditions:
  ///
  /// *   Config has never invoked an evaluation for the rule. To check whether it has, use the `DescribeConfigRuleEvaluationStatus` action to get the `LastSuccessfulInvocationTime` and `LastFailedInvocationTime`.
  ///
  /// *   The rule's Lambda function is failing to send evaluation results to Config. Verify that the role you assigned to your configuration recorder includes the `config:PutEvaluations` permission. If the rule is a custom rule, verify that the Lambda execution role includes the `config:PutEvaluations` permission.
  ///
  /// *   The rule's Lambda function has returned `NOT_APPLICABLE` for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<ComplianceByConfigRule>, void, String>>
      describeComplianceByConfigRule(
    DescribeComplianceByConfigRuleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeComplianceByConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Indicates whether the specified Amazon Web Services resources are compliant. If a resource is noncompliant, this action returns the number of Config rules that the resource does not comply with.
  ///
  /// A resource is compliant if it complies with all the Config rules that evaluate it. It is noncompliant if it does not comply with one or more of these rules.
  ///
  /// If Config has no current evaluation results for the resource, it returns `INSUFFICIENT_DATA`. This result might indicate one of the following conditions about the rules that evaluate the resource:
  ///
  /// *   Config has never invoked an evaluation for the rule. To check whether it has, use the `DescribeConfigRuleEvaluationStatus` action to get the `LastSuccessfulInvocationTime` and `LastFailedInvocationTime`.
  ///
  /// *   The rule's Lambda function is failing to send evaluation results to Config. Verify that the role that you assigned to your configuration recorder includes the `config:PutEvaluations` permission. If the rule is a custom rule, verify that the Lambda execution role includes the `config:PutEvaluations` permission.
  ///
  /// *   The rule's Lambda function has returned `NOT_APPLICABLE` for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ComplianceByResource>, int, String>>
      describeComplianceByResource(
    DescribeComplianceByResourceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeComplianceByResourceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns status information for each of your Config managed rules. The status includes information such as the last time Config invoked the rule, the last time Config failed to invoke the rule, and the related error for the last failure.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<ConfigRuleEvaluationStatus>, int,
          String>> describeConfigRuleEvaluationStatus(
    DescribeConfigRuleEvaluationStatusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeConfigRuleEvaluationStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns details about your Config rules.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ConfigRule>, void, String>>
      describeConfigRules(
    DescribeConfigRulesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeConfigRulesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns status information for sources within an aggregator. The status includes information about the last time Config verified authorization between the source account and an aggregator account. In case of a failure, the status contains the related error code or message.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<AggregatedSourceStatus>, int, String>>
      describeConfigurationAggregatorSourcesStatus(
    DescribeConfigurationAggregatorSourcesStatusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeConfigurationAggregatorSourcesStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the details of one or more configuration aggregators. If the configuration aggregator is not specified, this action returns the details for all the configuration aggregators associated with the account.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<ConfigurationAggregator>, int, String>>
      describeConfigurationAggregators(
    DescribeConfigurationAggregatorsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeConfigurationAggregatorsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the current status of the specified configuration recorder as well as the status of the last recording event for the recorder. If a configuration recorder is not specified, this action returns the status of all configuration recorders associated with the account.
  ///
  /// >You can specify only one configuration recorder for each Amazon Web Services Region for each account. For a detailed status of recording events over time, add your Config events to Amazon CloudWatch metrics and use CloudWatch metrics.
  _i3.SmithyOperation<DescribeConfigurationRecorderStatusResponse>
      describeConfigurationRecorderStatus(
    DescribeConfigurationRecorderStatusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeConfigurationRecorderStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the details for the specified configuration recorders. If the configuration recorder is not specified, this action returns the details for all configuration recorders associated with the account.
  ///
  /// You can specify only one configuration recorder for each Amazon Web Services Region for each account.
  _i3.SmithyOperation<DescribeConfigurationRecordersResponse>
      describeConfigurationRecorders(
    DescribeConfigurationRecordersRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeConfigurationRecordersOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns compliance details for each rule in that conformance pack.
  ///
  /// You must provide exact rule names.
  _i3.SmithyOperation<
      _i3.PaginatedResult<DescribeConformancePackComplianceResponse, int,
          String>> describeConformancePackCompliance(
    DescribeConformancePackComplianceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeConformancePackComplianceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Provides one or more conformance packs deployment status.
  ///
  /// If there are no conformance packs then you will see an empty result.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<ConformancePackStatusDetail>, int,
          String>> describeConformancePackStatus(
    DescribeConformancePackStatusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeConformancePackStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of one or more conformance packs.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<ConformancePackDetail>, int, String>>
      describeConformancePacks(
    DescribeConformancePacksRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeConformancePacksOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the current status of the specified delivery channel. If a delivery channel is not specified, this action returns the current status of all delivery channels associated with the account.
  ///
  /// Currently, you can specify only one delivery channel per region in your account.
  _i3.SmithyOperation<DescribeDeliveryChannelStatusResponse>
      describeDeliveryChannelStatus(
    DescribeDeliveryChannelStatusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeDeliveryChannelStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns details about the specified delivery channel. If a delivery channel is not specified, this action returns the details of all delivery channels associated with the account.
  ///
  /// Currently, you can specify only one delivery channel per region in your account.
  _i3.SmithyOperation<DescribeDeliveryChannelsResponse>
      describeDeliveryChannels(
    DescribeDeliveryChannelsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeDeliveryChannelsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Provides organization Config rule deployment status for an organization.
  ///
  /// The status is not considered successful until organization Config rule is successfully deployed in all the member accounts with an exception of excluded accounts.
  ///
  /// When you specify the limit and the next token, you receive a paginated response. Limit and next token are not applicable if you specify organization Config rule names. It is only applicable, when you request all the organization Config rules.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<OrganizationConfigRuleStatus>, int,
          String>> describeOrganizationConfigRuleStatuses(
    DescribeOrganizationConfigRuleStatusesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeOrganizationConfigRuleStatusesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of organization Config rules.
  ///
  /// When you specify the limit and the next token, you receive a paginated response.
  ///
  /// Limit and next token are not applicable if you specify organization Config rule names. It is only applicable, when you request all the organization Config rules.
  ///
  /// _For accounts within an organzation_
  ///
  /// If you deploy an organizational rule or conformance pack in an organization administrator account, and then establish a delegated administrator and deploy an organizational rule or conformance pack in the delegated administrator account, you won't be able to see the organizational rule or conformance pack in the organization administrator account from the delegated administrator account or see the organizational rule or conformance pack in the delegated administrator account from organization administrator account. The `DescribeOrganizationConfigRules` and `DescribeOrganizationConformancePacks` APIs can only see and interact with the organization-related resource that were deployed from within the account calling those APIs.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<OrganizationConfigRule>, int, String>>
      describeOrganizationConfigRules(
    DescribeOrganizationConfigRulesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeOrganizationConfigRulesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Provides organization conformance pack deployment status for an organization.
  ///
  /// The status is not considered successful until organization conformance pack is successfully deployed in all the member accounts with an exception of excluded accounts.
  ///
  /// When you specify the limit and the next token, you receive a paginated response. Limit and next token are not applicable if you specify organization conformance pack names. They are only applicable, when you request all the organization conformance packs.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<OrganizationConformancePackStatus>, int,
          String>> describeOrganizationConformancePackStatuses(
    DescribeOrganizationConformancePackStatusesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeOrganizationConformancePackStatusesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of organization conformance packs.
  ///
  /// When you specify the limit and the next token, you receive a paginated response.
  ///
  /// Limit and next token are not applicable if you specify organization conformance packs names. They are only applicable, when you request all the organization conformance packs.
  ///
  /// _For accounts within an organzation_
  ///
  /// If you deploy an organizational rule or conformance pack in an organization administrator account, and then establish a delegated administrator and deploy an organizational rule or conformance pack in the delegated administrator account, you won't be able to see the organizational rule or conformance pack in the organization administrator account from the delegated administrator account or see the organizational rule or conformance pack in the delegated administrator account from organization administrator account. The `DescribeOrganizationConfigRules` and `DescribeOrganizationConformancePacks` APIs can only see and interact with the organization-related resource that were deployed from within the account calling those APIs.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<OrganizationConformancePack>, int,
          String>> describeOrganizationConformancePacks(
    DescribeOrganizationConformancePacksRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeOrganizationConformancePacksOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of all pending aggregation requests.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<PendingAggregationRequest>, int,
          String>> describePendingAggregationRequests(
    DescribePendingAggregationRequestsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribePendingAggregationRequestsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the details of one or more remediation configurations.
  _i3.SmithyOperation<DescribeRemediationConfigurationsResponse>
      describeRemediationConfigurations(
    DescribeRemediationConfigurationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeRemediationConfigurationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the details of one or more remediation exceptions. A detailed view of a remediation exception for a set of resources that includes an explanation of an exception and the time when the exception will be deleted. When you specify the limit and the next token, you receive a paginated response.
  ///
  /// Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource. Remediation exceptions blocks auto-remediation until the exception is cleared.
  ///
  /// When you specify the limit and the next token, you receive a paginated response.
  ///
  /// Limit and next token are not applicable if you request resources in batch. It is only applicable, when you request all resources.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<DescribeRemediationExceptionsResponse, int, String>>
      describeRemediationExceptions(
    DescribeRemediationExceptionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeRemediationExceptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Provides a detailed view of a Remediation Execution for a set of resources including state, timestamps for when steps for the remediation execution occur, and any error messages for steps that have failed. When you specify the limit and the next token, you receive a paginated response.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<RemediationExecutionStatus>, int,
          String>> describeRemediationExecutionStatus(
    DescribeRemediationExecutionStatusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeRemediationExecutionStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the details of one or more retention configurations. If the retention configuration name is not specified, this action returns the details for all the retention configurations for that account.
  ///
  /// Currently, Config supports only one retention configuration per region in your account.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<RetentionConfiguration>, void, String>>
      describeRetentionConfigurations(
    DescribeRetentionConfigurationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeRetentionConfigurationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the evaluation results for the specified Config rule for a specific resource in a rule. The results indicate which Amazon Web Services resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.
  ///
  /// The results can return an empty result page. But if you have a `nextToken`, the results are displayed on the next page.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<AggregateEvaluationResult>, int,
          String>> getAggregateComplianceDetailsByConfigRule(
    GetAggregateComplianceDetailsByConfigRuleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetAggregateComplianceDetailsByConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.
  ///
  /// The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page.
  _i3.SmithyOperation<
      _i3.PaginatedResult<GetAggregateConfigRuleComplianceSummaryResponse, int,
          String>> getAggregateConfigRuleComplianceSummary(
    GetAggregateConfigRuleComplianceSummaryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetAggregateConfigRuleComplianceSummaryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the count of compliant and noncompliant conformance packs across all Amazon Web Services accounts and Amazon Web Services Regions in an aggregator. You can filter based on Amazon Web Services account ID or Amazon Web Services Region.
  ///
  /// The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page.
  _i3.SmithyOperation<
      _i3.PaginatedResult<GetAggregateConformancePackComplianceSummaryResponse,
          int, String>> getAggregateConformancePackComplianceSummary(
    GetAggregateConformancePackComplianceSummaryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetAggregateConformancePackComplianceSummaryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the resource counts across accounts and regions that are present in your Config aggregator. You can request the resource counts by providing filters and GroupByKey.
  ///
  /// For example, if the input contains accountID 12345678910 and region us-east-1 in filters, the API returns the count of resources in account ID 12345678910 and region us-east-1. If the input contains ACCOUNT_ID as a GroupByKey, the API returns resource counts for all source accounts that are present in your aggregator.
  _i3.SmithyOperation<
      _i3.PaginatedResult<GetAggregateDiscoveredResourceCountsResponse, int,
          String>> getAggregateDiscoveredResourceCounts(
    GetAggregateDiscoveredResourceCountsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetAggregateDiscoveredResourceCountsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns configuration item that is aggregated for your specific resource in a specific source account and region.
  _i3.SmithyOperation<GetAggregateResourceConfigResponse>
      getAggregateResourceConfig(
    GetAggregateResourceConfigRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetAggregateResourceConfigOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the evaluation results for the specified Config rule. The results indicate which Amazon Web Services resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<EvaluationResult>, int, String>>
      getComplianceDetailsByConfigRule(
    GetComplianceDetailsByConfigRuleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetComplianceDetailsByConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the evaluation results for the specified Amazon Web Services resource. The results indicate which Config rules were used to evaluate the resource, when each rule was last invoked, and whether the resource complies with each rule.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<EvaluationResult>, void, String>>
      getComplianceDetailsByResource(
    GetComplianceDetailsByResourceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetComplianceDetailsByResourceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the number of Config rules that are compliant and noncompliant, up to a maximum of 25 for each.
  _i3.SmithyOperation<GetComplianceSummaryByConfigRuleResponse>
      getComplianceSummaryByConfigRule({
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetComplianceSummaryByConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i3.Unit(),
      client: client ?? _client,
    );
  }

  /// Returns the number of resources that are compliant and the number that are noncompliant. You can specify one or more resource types to get these numbers for each resource type. The maximum number returned is 100.
  _i3.SmithyOperation<GetComplianceSummaryByResourceTypeResponse>
      getComplianceSummaryByResourceType(
    GetComplianceSummaryByResourceTypeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetComplianceSummaryByResourceTypeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns compliance details of a conformance pack for all Amazon Web Services resources that are monitered by conformance pack.
  _i3.SmithyOperation<
      _i3.PaginatedResult<GetConformancePackComplianceDetailsResponse, int,
          String>> getConformancePackComplianceDetails(
    GetConformancePackComplianceDetailsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetConformancePackComplianceDetailsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns compliance details for the conformance pack based on the cumulative compliance results of all the rules in that conformance pack.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<ConformancePackComplianceSummary>, int,
          String>> getConformancePackComplianceSummary(
    GetConformancePackComplianceSummaryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetConformancePackComplianceSummaryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the policy definition containing the logic for your Config Custom Policy rule.
  _i3.SmithyOperation<GetCustomRulePolicyResponse> getCustomRulePolicy(
    GetCustomRulePolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetCustomRulePolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the resource types, the number of each resource type, and the total number of resources that Config is recording in this region for your Amazon Web Services account.
  ///
  /// **Example**
  ///
  /// 1.  Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets.
  ///
  /// 2.  You make a call to the `GetDiscoveredResourceCounts` action and specify that you want all resource types.
  ///
  /// 3.  Config returns the following:
  ///
  ///     *   The resource types (EC2 instances, IAM users, and S3 buckets).
  ///
  ///     *   The number of each resource type (25, 20, and 15).
  ///
  ///     *   The total number of all resources (60).
  ///
  ///
  /// The response is paginated. By default, Config lists 100 ResourceCount objects on each page. You can customize this number with the `limit` parameter. The response includes a `nextToken` string. To get the next page of results, run the request again and specify the string for the `nextToken` parameter.
  ///
  /// If you make a call to the GetDiscoveredResourceCounts action, you might not immediately receive resource counts in the following situations:
  ///
  /// *   You are a new Config customer.
  ///
  /// *   You just enabled resource recording.
  ///
  ///
  /// It might take a few minutes for Config to record and count your resources. Wait a few minutes and then retry the GetDiscoveredResourceCounts action.
  _i3.SmithyOperation<
          _i3.PaginatedResult<GetDiscoveredResourceCountsResponse, int, String>>
      getDiscoveredResourceCounts(
    GetDiscoveredResourceCountsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetDiscoveredResourceCountsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns detailed status for each member account within an organization for a given organization Config rule.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<MemberAccountStatus>, int, String>>
      getOrganizationConfigRuleDetailedStatus(
    GetOrganizationConfigRuleDetailedStatusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetOrganizationConfigRuleDetailedStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns detailed status for each member account within an organization for a given organization conformance pack.
  _i3.SmithyOperation<
      _i3.PaginatedResult<
          _i4.BuiltList<OrganizationConformancePackDetailedStatus>,
          int,
          String>> getOrganizationConformancePackDetailedStatus(
    GetOrganizationConformancePackDetailedStatusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetOrganizationConformancePackDetailedStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the policy definition containing the logic for your organization Config Custom Policy rule.
  _i3.SmithyOperation<GetOrganizationCustomRulePolicyResponse>
      getOrganizationCustomRulePolicy(
    GetOrganizationCustomRulePolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetOrganizationCustomRulePolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of `ConfigurationItems` for the specified resource. The list contains details about each state of the resource during the specified time interval. If you specified a retention period to retain your `ConfigurationItems` between a minimum of 30 days and a maximum of 7 years (2557 days), Config returns the `ConfigurationItems` for the specified retention period.
  ///
  /// The response is paginated. By default, Config returns a limit of 10 configuration items per page. You can customize this number with the `limit` parameter. The response includes a `nextToken` string. To get the next page of results, run the request again and specify the string for the `nextToken` parameter.
  ///
  /// Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified `limit`. In such cases, you can make another call, using the `nextToken`.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ConfigurationItem>, int, String>>
      getResourceConfigHistory(
    GetResourceConfigHistoryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetResourceConfigHistoryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a summary of resource evaluation for the specified resource evaluation ID from the proactive rules that were run. The results indicate which evaluation context was used to evaluate the rules, which resource details were evaluated, the evaluation mode that was run, and whether the resource details comply with the configuration of the proactive rules.
  ///
  /// To see additional information about the evaluation result, such as which rule flagged a resource as NON_COMPLIANT, use the [GetComplianceDetailsByResource](https://docs.aws.amazon.com/config/latest/APIReference/API_GetComplianceDetailsByResource.html) API. For more information, see the [Examples](https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceEvaluationSummary.html#API_GetResourceEvaluationSummary_Examples) section.
  _i3.SmithyOperation<GetResourceEvaluationSummaryResponse>
      getResourceEvaluationSummary(
    GetResourceEvaluationSummaryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetResourceEvaluationSummaryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the details of a specific stored query.
  _i3.SmithyOperation<GetStoredQueryResponse> getStoredQuery(
    GetStoredQueryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetStoredQueryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Accepts a resource type and returns a list of resource identifiers that are aggregated for a specific resource type across accounts and regions. A resource identifier includes the resource type, ID, (if available) the custom resource name, source account, and source region. You can narrow the results to include only resources that have specific resource IDs, or a resource name, or source account ID, or source region.
  ///
  /// For example, if the input consists of accountID 12345678910 and the region is us-east-1 for resource type `AWS::EC2::Instance` then the API returns all the EC2 instance identifiers of accountID 12345678910 and region us-east-1.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<AggregateResourceIdentifier>, int,
          String>> listAggregateDiscoveredResources(
    ListAggregateDiscoveredResourcesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ListAggregateDiscoveredResourcesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of conformance pack compliance scores. A compliance score is the percentage of the number of compliant rule-resource combinations in a conformance pack compared to the number of total possible rule-resource combinations in the conformance pack. This metric provides you with a high-level view of the compliance state of your conformance packs. You can use it to identify, investigate, and understand the level of compliance in your conformance packs.
  ///
  /// Conformance packs with no evaluation results will have a compliance score of `INSUFFICIENT_DATA`.
  _i3.SmithyOperation<
      _i3.PaginatedResult<ListConformancePackComplianceScoresResponse, int,
          String>> listConformancePackComplianceScores(
    ListConformancePackComplianceScoresRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ListConformancePackComplianceScoresOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Accepts a resource type and returns a list of resource identifiers for the resources of that type. A resource identifier includes the resource type, ID, and (if available) the custom resource name. The results consist of resources that Config has discovered, including those that Config is not currently recording. You can narrow the results to include only resources that have specific resource IDs or a resource name.
  ///
  /// You can specify either resource IDs or a resource name, but not both, in the same request.
  ///
  /// The response is paginated. By default, Config lists 100 resource identifiers on each page. You can customize this number with the `limit` parameter. The response includes a `nextToken` string. To get the next page of results, run the request again and specify the string for the `nextToken` parameter.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ResourceIdentifier>, int, String>>
      listDiscoveredResources(
    ListDiscoveredResourcesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ListDiscoveredResourcesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of proactive resource evaluations.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ResourceEvaluation>, int, String>>
      listResourceEvaluations(
    ListResourceEvaluationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ListResourceEvaluationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Lists the stored queries for a single Amazon Web Services account and a single Amazon Web Services Region. The default is 100.
  _i3.SmithyOperation<
          _i3.PaginatedResult<ListStoredQueriesResponse, int, String>>
      listStoredQueries(
    ListStoredQueriesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ListStoredQueriesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// List the tags for Config resource.
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<Tag>, int, String>>
      listTagsForResource(
    ListTagsForResourceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ListTagsForResourceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Authorizes the aggregator account and region to collect data from the source account and region.
  ///
  /// `PutAggregationAuthorization` is an idempotent API. Subsequent requests won’t create a duplicate resource if one was already created. If a following request has different `tags` values, Config will ignore these differences and treat it as an idempotent request of the previous. In this case, `tags` will not be updated, even if they are different.
  _i3.SmithyOperation<PutAggregationAuthorizationResponse>
      putAggregationAuthorization(
    PutAggregationAuthorizationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutAggregationAuthorizationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds or updates an Config rule to evaluate if your Amazon Web Services resources comply with your desired configurations. For information on how many Config rules you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
  ///
  /// There are two types of rules: _Config Managed Rules_ and _Config Custom Rules_. You can use `PutConfigRule` to create both Config Managed Rules and Config Custom Rules.
  ///
  /// Config Managed Rules are predefined, customizable rules created by Config. For a list of managed rules, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html). If you are adding an Config managed rule, you must specify the rule's identifier for the `SourceIdentifier` key.
  ///
  /// Config Custom Rules are rules that you create from scratch. There are two ways to create Config custom rules: with Lambda functions ( [Lambda Developer Guide](https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function)) and with Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)), a policy-as-code language. Config custom rules created with Lambda are called _Config Custom Lambda Rules_ and Config custom rules created with Guard are called _Config Custom Policy Rules_.
  ///
  /// If you are adding a new Config Custom Lambda rule, you first need to create an Lambda function that the rule invokes to evaluate your resources. When you use `PutConfigRule` to add a Custom Lambda rule to Config, you must specify the Amazon Resource Name (ARN) that Lambda assigns to the function. You specify the ARN in the `SourceIdentifier` key. This key is part of the `Source` object, which is part of the `ConfigRule` object.
  ///
  /// For any new Config rule that you add, specify the `ConfigRuleName` in the `ConfigRule` object. Do not specify the `ConfigRuleArn` or the `ConfigRuleId`. These values are generated by Config for new rules.
  ///
  /// If you are updating a rule that you added previously, you can specify the rule by `ConfigRuleName`, `ConfigRuleId`, or `ConfigRuleArn` in the `ConfigRule` data type that you use in this request.
  ///
  /// For more information about developing and using Config rules, see [Evaluating Resources with Config Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html) in the _Config Developer Guide_.
  ///
  /// `PutConfigRule` is an idempotent API. Subsequent requests won’t create a duplicate resource if one was already created. If a following request has different `tags` values, Config will ignore these differences and treat it as an idempotent request of the previous. In this case, `tags` will not be updated, even if they are different.
  _i3.SmithyOperation<void> putConfigRule(
    PutConfigRuleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates and updates the configuration aggregator with the selected source accounts and regions. The source account can be individual account(s) or an organization.
  ///
  /// `accountIds` that are passed will be replaced with existing accounts. If you want to add additional accounts into the aggregator, call `DescribeConfigurationAggregators` to get the previous accounts and then append new ones.
  ///
  /// Config should be enabled in source accounts and regions you want to aggregate.
  ///
  /// If your source type is an organization, you must be signed in to the management account or a registered delegated administrator and all the features must be enabled in your organization. If the caller is a management account, Config calls `EnableAwsServiceAccess` API to enable integration between Config and Organizations. If the caller is a registered delegated administrator, Config calls `ListDelegatedAdministrators` API to verify whether the caller is a valid delegated administrator.
  ///
  /// To register a delegated administrator, see [Register a Delegated Administrator](https://docs.aws.amazon.com/config/latest/developerguide/set-up-aggregator-cli.html#register-a-delegated-administrator-cli) in the _Config developer guide_.
  ///
  /// `PutConfigurationAggregator` is an idempotent API. Subsequent requests won’t create a duplicate resource if one was already created. If a following request has different `tags` values, Config will ignore these differences and treat it as an idempotent request of the previous. In this case, `tags` will not be updated, even if they are different.
  _i3.SmithyOperation<PutConfigurationAggregatorResponse>
      putConfigurationAggregator(
    PutConfigurationAggregatorRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutConfigurationAggregatorOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new configuration recorder to record configuration changes for specified resource types.
  ///
  /// You can also use this action to change the `roleARN` or the `recordingGroup` of an existing recorder. For more information, see [**Managing the Configuration Recorder**](https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html) in the _Config Developer Guide_.
  ///
  /// You can specify only one configuration recorder for each Amazon Web Services Region for each account.
  ///
  /// If the configuration recorder does not have the `recordingGroup` field specified, the default is to record all supported resource types.
  _i3.SmithyOperation<void> putConfigurationRecorder(
    PutConfigurationRecorderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutConfigurationRecorderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates or updates a conformance pack. A conformance pack is a collection of Config rules that can be easily deployed in an account and a region and across an organization. For information on how many conformance packs you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
  ///
  /// This API creates a service-linked role `AWSServiceRoleForConfigConforms` in your account. The service-linked role is created only when the role does not exist in your account.
  ///
  /// You must specify only one of the follow parameters: `TemplateS3Uri`, `TemplateBody` or `TemplateSSMDocumentDetails`.
  _i3.SmithyOperation<PutConformancePackResponse> putConformancePack(
    PutConformancePackRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutConformancePackOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic.
  ///
  /// Before you can create a delivery channel, you must create a configuration recorder.
  ///
  /// You can use this action to change the Amazon S3 bucket or an Amazon SNS topic of the existing delivery channel. To change the Amazon S3 bucket or an Amazon SNS topic, call this action and specify the changed values for the S3 bucket and the SNS topic. If you specify a different value for either the S3 bucket or the SNS topic, this action will keep the existing value for the parameter that is not changed.
  ///
  /// You can have only one delivery channel per region in your account.
  _i3.SmithyOperation<void> putDeliveryChannel(
    PutDeliveryChannelRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutDeliveryChannelOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Used by an Lambda function to deliver evaluation results to Config. This action is required in every Lambda function that is invoked by an Config rule.
  _i3.SmithyOperation<PutEvaluationsResponse> putEvaluations(
    PutEvaluationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutEvaluationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Add or updates the evaluations for process checks. This API checks if the rule is a process check when the name of the Config rule is provided.
  _i3.SmithyOperation<PutExternalEvaluationResponse> putExternalEvaluation(
    PutExternalEvaluationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutExternalEvaluationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds or updates an Config rule for your entire organization to evaluate if your Amazon Web Services resources comply with your desired configurations. For information on how many organization Config rules you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
  ///
  /// Only a management account and a delegated administrator can create or update an organization Config rule. When calling this API with a delegated administrator, you must ensure Organizations `ListDelegatedAdministrator` permissions are added. An organization can have up to 3 delegated administrators.
  ///
  /// This API enables organization service access through the `EnableAWSServiceAccess` action and creates a service-linked role `AWSServiceRoleForConfigMultiAccountSetup` in the management or delegated administrator account of your organization. The service-linked role is created only when the role does not exist in the caller account. Config verifies the existence of role with `GetRole` action.
  ///
  /// To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization `register-delegated-administrator` for `config-multiaccountsetup.amazonaws.com`.
  ///
  /// There are two types of rules: _Config Managed Rules_ and _Config Custom Rules_. You can use `PutOrganizationConfigRule` to create both Config Managed Rules and Config Custom Rules.
  ///
  /// Config Managed Rules are predefined, customizable rules created by Config. For a list of managed rules, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html). If you are adding an Config managed rule, you must specify the rule's identifier for the `RuleIdentifier` key.
  ///
  /// Config Custom Rules are rules that you create from scratch. There are two ways to create Config custom rules: with Lambda functions ( [Lambda Developer Guide](https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function)) and with Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)), a policy-as-code language. Config custom rules created with Lambda are called _Config Custom Lambda Rules_ and Config custom rules created with Guard are called _Config Custom Policy Rules_.
  ///
  /// If you are adding a new Config Custom Lambda rule, you first need to create an Lambda function in the management account or a delegated administrator that the rule invokes to evaluate your resources. You also need to create an IAM role in the managed account that can be assumed by the Lambda function. When you use `PutOrganizationConfigRule` to add a Custom Lambda rule to Config, you must specify the Amazon Resource Name (ARN) that Lambda assigns to the function.
  ///
  /// Prerequisite: Ensure you call `EnableAllFeatures` API to enable all features in an organization.
  ///
  /// Make sure to specify one of either `OrganizationCustomPolicyRuleMetadata` for Custom Policy rules, `OrganizationCustomRuleMetadata` for Custom Lambda rules, or `OrganizationManagedRuleMetadata` for managed rules.
  _i3.SmithyOperation<PutOrganizationConfigRuleResponse>
      putOrganizationConfigRule(
    PutOrganizationConfigRuleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutOrganizationConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deploys conformance packs across member accounts in an Amazon Web Services Organization. For information on how many organization conformance packs and how many Config rules you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
  ///
  /// Only a management account and a delegated administrator can call this API. When calling this API with a delegated administrator, you must ensure Organizations `ListDelegatedAdministrator` permissions are added. An organization can have up to 3 delegated administrators.
  ///
  /// This API enables organization service access for `config-multiaccountsetup.amazonaws.com` through the `EnableAWSServiceAccess` action and creates a service-linked role `AWSServiceRoleForConfigMultiAccountSetup` in the management or delegated administrator account of your organization. The service-linked role is created only when the role does not exist in the caller account. To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization `register-delegate-admin` for `config-multiaccountsetup.amazonaws.com`.
  ///
  /// Prerequisite: Ensure you call `EnableAllFeatures` API to enable all features in an organization.
  ///
  /// You must specify either the `TemplateS3Uri` or the `TemplateBody` parameter, but not both. If you provide both Config uses the `TemplateS3Uri` parameter and ignores the `TemplateBody` parameter.
  ///
  /// Config sets the state of a conformance pack to CREATE\_IN\_PROGRESS and UPDATE\_IN\_PROGRESS until the conformance pack is created or updated. You cannot update a conformance pack while it is in this state.
  _i3.SmithyOperation<PutOrganizationConformancePackResponse>
      putOrganizationConformancePack(
    PutOrganizationConformancePackRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutOrganizationConformancePackOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds or updates the remediation configuration with a specific Config rule with the selected target or action. The API creates the `RemediationConfiguration` object for the Config rule. The Config rule must already exist for you to add a remediation configuration. The target (SSM document) must exist and have permissions to use the target.
  ///
  /// If you make backward incompatible changes to the SSM document, you must call this again to ensure the remediations can run.
  ///
  /// This API does not support adding remediation configurations for service-linked Config Rules such as Organization Config rules, the rules deployed by conformance packs, and rules deployed by Amazon Web Services Security Hub.
  ///
  /// For manual remediation configuration, you need to provide a value for `automationAssumeRole` or use a value in the `assumeRole`field to remediate your resources. The SSM automation document can use either as long as it maps to a valid parameter.
  ///
  /// However, for automatic remediation configuration, the only valid `assumeRole` field value is `AutomationAssumeRole` and you need to provide a value for `AutomationAssumeRole` to remediate your resources.
  _i3.SmithyOperation<PutRemediationConfigurationsResponse>
      putRemediationConfigurations(
    PutRemediationConfigurationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutRemediationConfigurationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// A remediation exception is when a specified resource is no longer considered for auto-remediation. This API adds a new exception or updates an existing exception for a specified resource with a specified Config rule.
  ///
  /// Config generates a remediation exception when a problem occurs running a remediation action for a specified resource. Remediation exceptions blocks auto-remediation until the exception is cleared.
  ///
  /// When placing an exception on an Amazon Web Services resource, it is recommended that remediation is set as manual remediation until the given Config rule for the specified resource evaluates the resource as `NON_COMPLIANT`. Once the resource has been evaluated as `NON_COMPLIANT`, you can add remediation exceptions and change the remediation type back from Manual to Auto if you want to use auto-remediation. Otherwise, using auto-remediation before a `NON_COMPLIANT` evaluation result can delete resources before the exception is applied.
  ///
  /// Placing an exception can only be performed on resources that are `NON_COMPLIANT`. If you use this API for `COMPLIANT` resources or resources that are `NOT_APPLICABLE`, a remediation exception will not be generated. For more information on the conditions that initiate the possible Config evaluation results, see [Concepts | Config Rules](https://docs.aws.amazon.com/config/latest/developerguide/config-concepts.html#aws-config-rules) in the _Config Developer Guide_.
  _i3.SmithyOperation<PutRemediationExceptionsResponse>
      putRemediationExceptions(
    PutRemediationExceptionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutRemediationExceptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Records the configuration state for the resource provided in the request. The configuration state of a resource is represented in Config as Configuration Items. Once this API records the configuration item, you can retrieve the list of configuration items for the custom resource type using existing Config APIs.
  ///
  /// The custom resource type must be registered with CloudFormation. This API accepts the configuration item registered with CloudFormation.
  ///
  /// When you call this API, Config only stores configuration state of the resource provided in the request. This API does not change or remediate the configuration of the resource.
  ///
  /// Write-only schema properites are not recorded as part of the published configuration item.
  _i3.SmithyOperation<void> putResourceConfig(
    PutResourceConfigRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutResourceConfigOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates and updates the retention configuration with details about retention period (number of days) that Config stores your historical information. The API creates the `RetentionConfiguration` object and names the object as **default**. When you have a `RetentionConfiguration` object named **default**, calling the API modifies the default object.
  ///
  /// Currently, Config supports only one retention configuration per region in your account.
  _i3.SmithyOperation<PutRetentionConfigurationResponse>
      putRetentionConfiguration(
    PutRetentionConfigurationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutRetentionConfigurationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Saves a new query or updates an existing saved query. The `QueryName` must be unique for a single Amazon Web Services account and a single Amazon Web Services Region. You can create upto 300 queries in a single Amazon Web Services account and a single Amazon Web Services Region.
  ///
  /// `PutStoredQuery` is an idempotent API. Subsequent requests won’t create a duplicate resource if one was already created. If a following request has different `tags` values, Config will ignore these differences and treat it as an idempotent request of the previous. In this case, `tags` will not be updated, even if they are different.
  _i3.SmithyOperation<PutStoredQueryResponse> putStoredQuery(
    PutStoredQueryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutStoredQueryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Accepts a structured query language (SQL) SELECT command and an aggregator to query configuration state of Amazon Web Services resources across multiple accounts and regions, performs the corresponding search, and returns resource configurations matching the properties.
  ///
  /// For more information about query components, see the [**Query Components**](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html) section in the _Config Developer Guide_.
  ///
  /// If you run an aggregation query (i.e., using `GROUP BY` or using aggregate functions such as `COUNT`; e.g., `SELECT resourceId, COUNT(*) WHERE resourceType = 'AWS::IAM::Role' GROUP BY resourceId`) and do not specify the `MaxResults` or the `Limit` query parameters, the default page size is set to 500.
  ///
  /// If you run a non-aggregation query (i.e., not using `GROUP BY` or aggregate function; e.g., `SELECT * WHERE resourceType = 'AWS::IAM::Role'`) and do not specify the `MaxResults` or the `Limit` query parameters, the default page size is set to 25.
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<String>, int, String>>
      selectAggregateResourceConfig(
    SelectAggregateResourceConfigRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return SelectAggregateResourceConfigOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Accepts a structured query language (SQL) `SELECT` command, performs the corresponding search, and returns resource configurations matching the properties.
  ///
  /// For more information about query components, see the [**Query Components**](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html) section in the _Config Developer Guide_.
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<String>, int, String>>
      selectResourceConfig(
    SelectResourceConfigRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return SelectResourceConfigOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Runs an on-demand evaluation for the specified Config rules against the last known configuration state of the resources. Use `StartConfigRulesEvaluation` when you want to test that a rule you updated is working as expected. `StartConfigRulesEvaluation` does not re-record the latest configuration state for your resources. It re-runs an evaluation against the last known state of your resources.
  ///
  /// You can specify up to 25 Config rules per request.
  ///
  /// An existing `StartConfigRulesEvaluation` call for the specified rules must complete before you can call the API again. If you chose to have Config stream to an Amazon SNS topic, you will receive a `ConfigRuleEvaluationStarted` notification when the evaluation starts.
  ///
  /// You don't need to call the `StartConfigRulesEvaluation` API to run an evaluation for a new rule. When you create a rule, Config evaluates your resources against the rule automatically.
  ///
  /// The `StartConfigRulesEvaluation` API is useful if you want to run on-demand evaluations, such as the following example:
  ///
  /// 1.  You have a custom rule that evaluates your IAM resources every 24 hours.
  ///
  /// 2.  You update your Lambda function to add additional conditions to your rule.
  ///
  /// 3.  Instead of waiting for the next periodic evaluation, you call the `StartConfigRulesEvaluation` API.
  ///
  /// 4.  Config invokes your Lambda function and evaluates your IAM resources.
  ///
  /// 5.  Your custom rule will still run periodic evaluations every 24 hours.
  _i3.SmithyOperation<StartConfigRulesEvaluationResponse>
      startConfigRulesEvaluation(
    StartConfigRulesEvaluationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return StartConfigRulesEvaluationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Starts recording configurations of the Amazon Web Services resources you have selected to record in your Amazon Web Services account.
  ///
  /// You must have created at least one delivery channel to successfully start the configuration recorder.
  _i3.SmithyOperation<void> startConfigurationRecorder(
    StartConfigurationRecorderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return StartConfigurationRecorderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Runs an on-demand remediation for the specified Config rules against the last known remediation configuration. It runs an execution against the current state of your resources. Remediation execution is asynchronous.
  ///
  /// You can specify up to 100 resource keys per request. An existing StartRemediationExecution call for the specified resource keys must complete before you can call the API again.
  _i3.SmithyOperation<StartRemediationExecutionResponse>
      startRemediationExecution(
    StartRemediationExecutionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return StartRemediationExecutionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Runs an on-demand evaluation for the specified resource to determine whether the resource details will comply with configured Config rules. You can also use it for evaluation purposes. Config recommends using an evaluation context. It runs an execution against the resource details with all of the Config rules in your account that match with the specified proactive mode and resource type.
  ///
  /// Ensure you have the `cloudformation:DescribeType` role setup to validate the resource type schema.
  ///
  /// You can find the [Resource type schema](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html) in "_Amazon Web Services public extensions_" within the CloudFormation registry or with the following CLI commmand: `aws cloudformation describe-type --type-name "AWS::S3::Bucket" --type RESOURCE`.
  ///
  /// For more information, see [Managing extensions through the CloudFormation registry](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry.html#registry-view) and [Amazon Web Services resource and property types reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html) in the CloudFormation User Guide.
  _i3.SmithyOperation<StartResourceEvaluationResponse> startResourceEvaluation(
    StartResourceEvaluationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return StartResourceEvaluationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Stops recording configurations of the Amazon Web Services resources you have selected to record in your Amazon Web Services account.
  _i3.SmithyOperation<void> stopConfigurationRecorder(
    StopConfigurationRecorderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return StopConfigurationRecorderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. If existing tags are specified, however, then their values will be updated. When a resource is deleted, the tags associated with that resource are deleted as well.
  _i3.SmithyOperation<void> tagResource(
    TagResourceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return TagResourceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes specified tags from a resource.
  _i3.SmithyOperation<void> untagResource(
    UntagResourceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UntagResourceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
