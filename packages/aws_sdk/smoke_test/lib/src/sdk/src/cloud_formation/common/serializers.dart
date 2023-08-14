// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_filter_type.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_gate_result.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_gate_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_limit.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/activate_organizations_access_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/activate_organizations_access_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/activate_type_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/activate_type_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/already_exists_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/auto_deployment.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/batch_describe_type_configurations_error.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/batch_describe_type_configurations_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/batch_describe_type_configurations_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/cancel_update_stack_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/capability.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/category.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/cfn_registry_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_action.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hook.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hook_resource_target_details.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hook_target_details.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hooks_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_summary.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_type.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_source.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_type.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/continue_update_rollback_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/continue_update_rollback_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_change_set_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_change_set_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_instances_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_instances_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_set_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_set_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/created_but_modified_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deactivate_organizations_access_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deactivate_organizations_access_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deactivate_type_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deactivate_type_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_change_set_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_change_set_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_instances_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_instances_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_set_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_set_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deployment_targets.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deprecated_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deregister_type_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deregister_type_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_account_limits_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_account_limits_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_hooks_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_hooks_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_organizations_access_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_organizations_access_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_publisher_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_publisher_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_drift_detection_status_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_drift_detection_status_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_events_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_events_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_instance_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_instance_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_drifts_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_drifts_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resources_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resources_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_operation_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_operation_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stacks_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stacks_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_registration_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_registration_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_drift_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_drift_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_resource_drift_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_resource_drift_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_set_drift_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_set_drift_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/difference_type.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/estimate_template_cost_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/estimate_template_cost_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/evaluation_type.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execute_change_set_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execute_change_set_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execution_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/export.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_stack_policy_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_stack_policy_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_summary_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_summary_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/handler_error_code.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/hook_failure_mode.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/hook_invocation_point.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/hook_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/hook_target_type.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/identity_provider.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/import_stacks_to_stack_set_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/import_stacks_to_stack_set_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/insufficient_capabilities_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/invalid_change_set_status_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/invalid_operation_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/invalid_state_transition_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_change_sets_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_change_sets_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_exports_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_exports_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_imports_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_imports_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_instance_resource_drifts_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_instance_resource_drifts_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_instances_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_instances_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_resources_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_resources_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operation_results_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operation_results_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operations_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operations_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_sets_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_sets_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stacks_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stacks_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_registrations_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_registrations_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_versions_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_versions_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_types_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_types_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/logging_config.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/managed_execution.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/module_info.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/name_already_exists_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/on_failure.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/on_stack_failure.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_id_already_exists_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_in_progress_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_result_filter.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_result_filter_name.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_status_check_failed_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/organization_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter_constraints.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter_declaration.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/permission_models.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/physical_resource_id_context_key_value_pair.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/property_difference.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/provisioning_type.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/publish_type_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/publish_type_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/publisher_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/record_handler_progress_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/record_handler_progress_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/region_concurrency_type.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_publisher_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_publisher_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_type_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_type_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registration_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registry_type.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/replacement.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/required_activated_type.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/requires_recreation.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_attribute.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_change.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_change_detail.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_identifier_summary.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_signal_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_target_definition.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_to_import.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_configuration.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_stack_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_stack_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_trigger.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_stack_policy_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_configuration_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_configuration_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_default_version_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_default_version_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/signal_resource_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_detection_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_information.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_information_summary.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_event.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_comprehensive_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_detailed_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_filter.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_filter_name.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_resource_drifts_summary.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_summary.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_detail.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_information.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_information_summary.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_summary.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_drift_detection_details.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_drift_detection_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_drift_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_not_empty_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_action.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_preferences.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_result_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_result_summary.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_status_details.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_summary.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_summary.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_summary.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stale_request_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stop_stack_set_operation_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stop_stack_set_operation_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/tag.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/template_parameter.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/template_stage.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/template_summary_config.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/test_type_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/test_type_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/third_party_type.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/token_already_exists_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_configuration_details.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_configuration_identifier.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_configuration_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_filters.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_summary.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_tests_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_version_summary.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_instances_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_instances_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_set_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_set_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_termination_protection_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_termination_protection_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/validate_template_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/validate_template_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/version_bump.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/visibility.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/warnings.dart';

const List<_i1.SmithySerializer> serializers = [
  ...ActivateOrganizationsAccessInput.serializers,
  ...ActivateOrganizationsAccessOutput.serializers,
  ...InvalidOperationException.serializers,
  ...OperationNotFoundException.serializers,
  ...ThirdPartyType.serializers,
  ...LoggingConfig.serializers,
  ...VersionBump.serializers,
  ...ActivateTypeInput.serializers,
  ...ActivateTypeOutput.serializers,
  ...CfnRegistryException.serializers,
  ...TypeNotFoundException.serializers,
  ...TypeConfigurationIdentifier.serializers,
  ...BatchDescribeTypeConfigurationsInput.serializers,
  ...BatchDescribeTypeConfigurationsError.serializers,
  ...TypeConfigurationDetails.serializers,
  ...BatchDescribeTypeConfigurationsOutput.serializers,
  ...TypeConfigurationNotFoundException.serializers,
  ...CancelUpdateStackInput.serializers,
  ...TokenAlreadyExistsException.serializers,
  ...ContinueUpdateRollbackInput.serializers,
  ...ContinueUpdateRollbackOutput.serializers,
  ...Parameter.serializers,
  ...Capability.serializers,
  ...RollbackTrigger.serializers,
  ...RollbackConfiguration.serializers,
  ...Tag.serializers,
  ...ChangeSetType.serializers,
  ...ResourceToImport.serializers,
  ...OnStackFailure.serializers,
  ...CreateChangeSetInput.serializers,
  ...CreateChangeSetOutput.serializers,
  ...AlreadyExistsException.serializers,
  ...InsufficientCapabilitiesException.serializers,
  ...LimitExceededException.serializers,
  ...OnFailure.serializers,
  ...CreateStackInput.serializers,
  ...CreateStackOutput.serializers,
  ...AccountFilterType.serializers,
  ...DeploymentTargets.serializers,
  ...RegionConcurrencyType.serializers,
  ...StackSetOperationPreferences.serializers,
  ...CallAs.serializers,
  ...CreateStackInstancesInput.serializers,
  ...CreateStackInstancesOutput.serializers,
  ...OperationIdAlreadyExistsException.serializers,
  ...OperationInProgressException.serializers,
  ...StackSetNotFoundException.serializers,
  ...StaleRequestException.serializers,
  ...PermissionModels.serializers,
  ...AutoDeployment.serializers,
  ...ManagedExecution.serializers,
  ...CreateStackSetInput.serializers,
  ...CreateStackSetOutput.serializers,
  ...CreatedButModifiedException.serializers,
  ...NameAlreadyExistsException.serializers,
  ...DeactivateOrganizationsAccessInput.serializers,
  ...DeactivateOrganizationsAccessOutput.serializers,
  ...DeactivateTypeInput.serializers,
  ...DeactivateTypeOutput.serializers,
  ...DeleteChangeSetInput.serializers,
  ...DeleteChangeSetOutput.serializers,
  ...InvalidChangeSetStatusException.serializers,
  ...DeleteStackInput.serializers,
  ...DeleteStackInstancesInput.serializers,
  ...DeleteStackInstancesOutput.serializers,
  ...DeleteStackSetInput.serializers,
  ...DeleteStackSetOutput.serializers,
  ...StackSetNotEmptyException.serializers,
  ...RegistryType.serializers,
  ...DeregisterTypeInput.serializers,
  ...DeregisterTypeOutput.serializers,
  ...DescribeAccountLimitsInput.serializers,
  ...AccountLimit.serializers,
  ...DescribeAccountLimitsOutput.serializers,
  ...DescribeChangeSetInput.serializers,
  ...ExecutionStatus.serializers,
  ...ChangeSetStatus.serializers,
  ...ChangeType.serializers,
  ...ChangeAction.serializers,
  ...Replacement.serializers,
  ...ResourceAttribute.serializers,
  ...RequiresRecreation.serializers,
  ...ResourceTargetDefinition.serializers,
  ...EvaluationType.serializers,
  ...ChangeSource.serializers,
  ...ResourceChangeDetail.serializers,
  ...ModuleInfo.serializers,
  ...ResourceChange.serializers,
  ...Change.serializers,
  ...DescribeChangeSetOutput.serializers,
  ...ChangeSetNotFoundException.serializers,
  ...DescribeChangeSetHooksInput.serializers,
  ...HookInvocationPoint.serializers,
  ...HookFailureMode.serializers,
  ...HookTargetType.serializers,
  ...ChangeSetHookResourceTargetDetails.serializers,
  ...ChangeSetHookTargetDetails.serializers,
  ...ChangeSetHook.serializers,
  ...ChangeSetHooksStatus.serializers,
  ...DescribeChangeSetHooksOutput.serializers,
  ...DescribeOrganizationsAccessInput.serializers,
  ...OrganizationStatus.serializers,
  ...DescribeOrganizationsAccessOutput.serializers,
  ...DescribePublisherInput.serializers,
  ...PublisherStatus.serializers,
  ...IdentityProvider.serializers,
  ...DescribePublisherOutput.serializers,
  ...DescribeStackDriftDetectionStatusInput.serializers,
  ...StackDriftStatus.serializers,
  ...StackDriftDetectionStatus.serializers,
  ...DescribeStackDriftDetectionStatusOutput.serializers,
  ...DescribeStackEventsInput.serializers,
  ...ResourceStatus.serializers,
  ...HookStatus.serializers,
  ...StackEvent.serializers,
  ...DescribeStackEventsOutput.serializers,
  ...DescribeStackInstanceInput.serializers,
  ...StackInstanceStatus.serializers,
  ...StackInstanceDetailedStatus.serializers,
  ...StackInstanceComprehensiveStatus.serializers,
  ...StackInstance.serializers,
  ...DescribeStackInstanceOutput.serializers,
  ...StackInstanceNotFoundException.serializers,
  ...DescribeStackResourceInput.serializers,
  ...StackResourceDriftStatus.serializers,
  ...StackResourceDriftInformation.serializers,
  ...StackResourceDetail.serializers,
  ...DescribeStackResourceOutput.serializers,
  ...DescribeStackResourceDriftsInput.serializers,
  ...PhysicalResourceIdContextKeyValuePair.serializers,
  ...DifferenceType.serializers,
  ...PropertyDifference.serializers,
  ...StackResourceDrift.serializers,
  ...DescribeStackResourceDriftsOutput.serializers,
  ...DescribeStackResourcesInput.serializers,
  ...StackResource.serializers,
  ...DescribeStackResourcesOutput.serializers,
  ...DescribeStackSetInput.serializers,
  ...StackSetStatus.serializers,
  ...StackSetDriftStatus.serializers,
  ...StackSetDriftDetectionStatus.serializers,
  ...StackSetDriftDetectionDetails.serializers,
  ...StackSet.serializers,
  ...DescribeStackSetOutput.serializers,
  ...DescribeStackSetOperationInput.serializers,
  ...StackSetOperationAction.serializers,
  ...StackSetOperationStatus.serializers,
  ...StackSetOperationStatusDetails.serializers,
  ...StackSetOperation.serializers,
  ...DescribeStackSetOperationOutput.serializers,
  ...DescribeStacksInput.serializers,
  ...StackStatus.serializers,
  ...Output.serializers,
  ...StackDriftInformation.serializers,
  ...Stack.serializers,
  ...DescribeStacksOutput.serializers,
  ...DescribeTypeInput.serializers,
  ...TypeTestsStatus.serializers,
  ...ProvisioningType.serializers,
  ...DeprecatedStatus.serializers,
  ...RequiredActivatedType.serializers,
  ...Visibility.serializers,
  ...DescribeTypeOutput.serializers,
  ...DescribeTypeRegistrationInput.serializers,
  ...RegistrationStatus.serializers,
  ...DescribeTypeRegistrationOutput.serializers,
  ...DetectStackDriftInput.serializers,
  ...DetectStackDriftOutput.serializers,
  ...DetectStackResourceDriftInput.serializers,
  ...DetectStackResourceDriftOutput.serializers,
  ...DetectStackSetDriftInput.serializers,
  ...DetectStackSetDriftOutput.serializers,
  ...EstimateTemplateCostInput.serializers,
  ...EstimateTemplateCostOutput.serializers,
  ...ExecuteChangeSetInput.serializers,
  ...ExecuteChangeSetOutput.serializers,
  ...GetStackPolicyInput.serializers,
  ...GetStackPolicyOutput.serializers,
  ...TemplateStage.serializers,
  ...GetTemplateInput.serializers,
  ...GetTemplateOutput.serializers,
  ...TemplateSummaryConfig.serializers,
  ...GetTemplateSummaryInput.serializers,
  ...ParameterConstraints.serializers,
  ...ParameterDeclaration.serializers,
  ...ResourceIdentifierSummary.serializers,
  ...Warnings.serializers,
  ...GetTemplateSummaryOutput.serializers,
  ...ImportStacksToStackSetInput.serializers,
  ...ImportStacksToStackSetOutput.serializers,
  ...StackNotFoundException.serializers,
  ...ListChangeSetsInput.serializers,
  ...ChangeSetSummary.serializers,
  ...ListChangeSetsOutput.serializers,
  ...ListExportsInput.serializers,
  ...Export.serializers,
  ...ListExportsOutput.serializers,
  ...ListImportsInput.serializers,
  ...ListImportsOutput.serializers,
  ...ListStackInstanceResourceDriftsInput.serializers,
  ...StackInstanceResourceDriftsSummary.serializers,
  ...ListStackInstanceResourceDriftsOutput.serializers,
  ...StackInstanceFilterName.serializers,
  ...StackInstanceFilter.serializers,
  ...ListStackInstancesInput.serializers,
  ...StackInstanceSummary.serializers,
  ...ListStackInstancesOutput.serializers,
  ...ListStackResourcesInput.serializers,
  ...StackResourceDriftInformationSummary.serializers,
  ...StackResourceSummary.serializers,
  ...ListStackResourcesOutput.serializers,
  ...OperationResultFilterName.serializers,
  ...OperationResultFilter.serializers,
  ...ListStackSetOperationResultsInput.serializers,
  ...StackSetOperationResultStatus.serializers,
  ...AccountGateStatus.serializers,
  ...AccountGateResult.serializers,
  ...StackSetOperationResultSummary.serializers,
  ...ListStackSetOperationResultsOutput.serializers,
  ...ListStackSetOperationsInput.serializers,
  ...StackSetOperationSummary.serializers,
  ...ListStackSetOperationsOutput.serializers,
  ...ListStackSetsInput.serializers,
  ...StackSetSummary.serializers,
  ...ListStackSetsOutput.serializers,
  ...ListStacksInput.serializers,
  ...StackDriftInformationSummary.serializers,
  ...StackSummary.serializers,
  ...ListStacksOutput.serializers,
  ...ListTypeRegistrationsInput.serializers,
  ...ListTypeRegistrationsOutput.serializers,
  ...ListTypeVersionsInput.serializers,
  ...TypeVersionSummary.serializers,
  ...ListTypeVersionsOutput.serializers,
  ...Category.serializers,
  ...TypeFilters.serializers,
  ...ListTypesInput.serializers,
  ...TypeSummary.serializers,
  ...ListTypesOutput.serializers,
  ...PublishTypeInput.serializers,
  ...PublishTypeOutput.serializers,
  ...OperationStatus.serializers,
  ...HandlerErrorCode.serializers,
  ...RecordHandlerProgressInput.serializers,
  ...RecordHandlerProgressOutput.serializers,
  ...InvalidStateTransitionException.serializers,
  ...OperationStatusCheckFailedException.serializers,
  ...RegisterPublisherInput.serializers,
  ...RegisterPublisherOutput.serializers,
  ...RegisterTypeInput.serializers,
  ...RegisterTypeOutput.serializers,
  ...RollbackStackInput.serializers,
  ...RollbackStackOutput.serializers,
  ...SetStackPolicyInput.serializers,
  ...SetTypeConfigurationInput.serializers,
  ...SetTypeConfigurationOutput.serializers,
  ...SetTypeDefaultVersionInput.serializers,
  ...SetTypeDefaultVersionOutput.serializers,
  ...ResourceSignalStatus.serializers,
  ...SignalResourceInput.serializers,
  ...StopStackSetOperationInput.serializers,
  ...StopStackSetOperationOutput.serializers,
  ...TestTypeInput.serializers,
  ...TestTypeOutput.serializers,
  ...UpdateStackInput.serializers,
  ...UpdateStackOutput.serializers,
  ...UpdateStackInstancesInput.serializers,
  ...UpdateStackInstancesOutput.serializers,
  ...UpdateStackSetInput.serializers,
  ...UpdateStackSetOutput.serializers,
  ...UpdateTerminationProtectionInput.serializers,
  ...UpdateTerminationProtectionOutput.serializers,
  ...ValidateTemplateInput.serializers,
  ...TemplateParameter.serializers,
  ...ValidateTemplateOutput.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltList,
    [FullType(TypeConfigurationIdentifier)],
  ): _i2.ListBuilder<TypeConfigurationIdentifier>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(BatchDescribeTypeConfigurationsError)],
  ): _i2.ListBuilder<BatchDescribeTypeConfigurationsError>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TypeConfigurationDetails)],
  ): _i2.ListBuilder<TypeConfigurationDetails>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(String)],
  ): _i2.ListBuilder<String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RollbackTrigger)],
  ): _i2.ListBuilder<RollbackTrigger>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.MapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Capability)],
  ): _i2.ListBuilder<Capability>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Parameter)],
  ): _i2.ListBuilder<Parameter>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ResourceToImport)],
  ): _i2.ListBuilder<ResourceToImport>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Tag)],
  ): _i2.ListBuilder<Tag>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AccountLimit)],
  ): _i2.ListBuilder<AccountLimit>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ResourceChangeDetail)],
  ): _i2.ListBuilder<ResourceChangeDetail>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ResourceAttribute)],
  ): _i2.ListBuilder<ResourceAttribute>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Change)],
  ): _i2.ListBuilder<Change>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ChangeSetHook)],
  ): _i2.ListBuilder<ChangeSetHook>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StackEvent)],
  ): _i2.ListBuilder<StackEvent>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StackResourceDriftStatus)],
  ): _i2.ListBuilder<StackResourceDriftStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PhysicalResourceIdContextKeyValuePair)],
  ): _i2.ListBuilder<PhysicalResourceIdContextKeyValuePair>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PropertyDifference)],
  ): _i2.ListBuilder<PropertyDifference>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StackResourceDrift)],
  ): _i2.ListBuilder<StackResourceDrift>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StackResource)],
  ): _i2.ListBuilder<StackResource>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Stack)],
  ): _i2.ListBuilder<Stack>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Output)],
  ): _i2.ListBuilder<Output>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(int)],
  ): _i2.ListBuilder<int>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RequiredActivatedType)],
  ): _i2.ListBuilder<RequiredActivatedType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TemplateStage)],
  ): _i2.ListBuilder<TemplateStage>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ParameterDeclaration)],
  ): _i2.ListBuilder<ParameterDeclaration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ResourceIdentifierSummary)],
  ): _i2.ListBuilder<ResourceIdentifierSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ChangeSetSummary)],
  ): _i2.ListBuilder<ChangeSetSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Export)],
  ): _i2.ListBuilder<Export>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StackInstanceResourceDriftsSummary)],
  ): _i2.ListBuilder<StackInstanceResourceDriftsSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StackInstanceSummary)],
  ): _i2.ListBuilder<StackInstanceSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StackInstanceFilter)],
  ): _i2.ListBuilder<StackInstanceFilter>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StackResourceSummary)],
  ): _i2.ListBuilder<StackResourceSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StackSetOperationResultSummary)],
  ): _i2.ListBuilder<StackSetOperationResultSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(OperationResultFilter)],
  ): _i2.ListBuilder<OperationResultFilter>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StackSetOperationSummary)],
  ): _i2.ListBuilder<StackSetOperationSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StackSetSummary)],
  ): _i2.ListBuilder<StackSetSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StackSummary)],
  ): _i2.ListBuilder<StackSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StackStatus)],
  ): _i2.ListBuilder<StackStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TypeVersionSummary)],
  ): _i2.ListBuilder<TypeVersionSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TypeSummary)],
  ): _i2.ListBuilder<TypeSummary>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TemplateParameter)],
  ): _i2.ListBuilder<TemplateParameter>.new,
};
