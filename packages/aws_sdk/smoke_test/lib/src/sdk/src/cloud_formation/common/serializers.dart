// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i264;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_filter_type.dart'
    as _i34;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_gate_result.dart'
    as _i205;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_gate_status.dart'
    as _i204;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_limit.dart'
    as _i68;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/activate_type_input.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/activate_type_output.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/already_exists_exception.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/auto_deployment.dart'
    as _i47;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/batch_describe_type_configurations_error.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/batch_describe_type_configurations_input.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/batch_describe_type_configurations_output.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i38;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/cancel_update_stack_input.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/capability.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/category.dart'
    as _i223;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/cfn_registry_exception.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change.dart'
    as _i84;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_action.dart'
    as _i74;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hook.dart'
    as _i93;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hook_resource_target_details.dart'
    as _i91;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hook_target_details.dart'
    as _i92;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hooks_status.dart'
    as _i94;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_not_found_exception.dart'
    as _i86;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_status.dart'
    as _i72;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_summary.dart'
    as _i184;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_type.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_source.dart'
    as _i80;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_type.dart'
    as _i73;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/continue_update_rollback_input.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/continue_update_rollback_output.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_change_set_input.dart'
    as _i26;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_change_set_output.dart'
    as _i27;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_input.dart'
    as _i32;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_instances_input.dart'
    as _i39;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_instances_output.dart'
    as _i40;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_output.dart'
    as _i33;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_set_input.dart'
    as _i49;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_set_output.dart'
    as _i50;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/created_but_modified_exception.dart'
    as _i51;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deactivate_type_input.dart'
    as _i53;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deactivate_type_output.dart'
    as _i54;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_change_set_input.dart'
    as _i55;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_change_set_output.dart'
    as _i56;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_input.dart'
    as _i58;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_instances_input.dart'
    as _i59;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_instances_output.dart'
    as _i60;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_set_input.dart'
    as _i61;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_set_output.dart'
    as _i62;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deployment_targets.dart'
    as _i35;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deprecated_status.dart'
    as _i153;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deregister_type_input.dart'
    as _i65;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deregister_type_output.dart'
    as _i66;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_account_limits_input.dart'
    as _i67;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_account_limits_output.dart'
    as _i69;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_hooks_input.dart'
    as _i87;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_hooks_output.dart'
    as _i95;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_input.dart'
    as _i70;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_output.dart'
    as _i85;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_publisher_input.dart'
    as _i96;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_publisher_output.dart'
    as _i99;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_drift_detection_status_input.dart'
    as _i100;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_drift_detection_status_output.dart'
    as _i103;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_events_input.dart'
    as _i104;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_events_output.dart'
    as _i108;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_instance_input.dart'
    as _i109;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_instance_output.dart'
    as _i114;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_drifts_input.dart'
    as _i121;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_drifts_output.dart'
    as _i126;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_input.dart'
    as _i116;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_output.dart'
    as _i120;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resources_input.dart'
    as _i127;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resources_output.dart'
    as _i129;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_input.dart'
    as _i130;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_operation_input.dart'
    as _i137;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_operation_output.dart'
    as _i142;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_output.dart'
    as _i136;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stacks_input.dart'
    as _i144;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stacks_output.dart'
    as _i149;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_input.dart'
    as _i150;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_output.dart'
    as _i156;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_registration_input.dart'
    as _i157;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_registration_output.dart'
    as _i159;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_drift_input.dart'
    as _i160;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_drift_output.dart'
    as _i161;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_resource_drift_input.dart'
    as _i162;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_resource_drift_output.dart'
    as _i163;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_set_drift_input.dart'
    as _i164;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_set_drift_output.dart'
    as _i165;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/difference_type.dart'
    as _i123;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/estimate_template_cost_input.dart'
    as _i166;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/estimate_template_cost_output.dart'
    as _i167;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/evaluation_type.dart'
    as _i79;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execute_change_set_input.dart'
    as _i168;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execute_change_set_output.dart'
    as _i169;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execution_status.dart'
    as _i71;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/export.dart'
    as _i187;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_stack_policy_input.dart'
    as _i170;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_stack_policy_output.dart'
    as _i171;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_input.dart'
    as _i173;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_output.dart'
    as _i174;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_summary_input.dart'
    as _i175;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_summary_output.dart'
    as _i179;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/handler_error_code.dart'
    as _i231;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/hook_failure_mode.dart'
    as _i89;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/hook_invocation_point.dart'
    as _i88;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/hook_status.dart'
    as _i106;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/hook_target_type.dart'
    as _i90;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/identity_provider.dart'
    as _i98;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/import_stacks_to_stack_set_input.dart'
    as _i180;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/import_stacks_to_stack_set_output.dart'
    as _i181;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/insufficient_capabilities_exception.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/invalid_change_set_status_exception.dart'
    as _i57;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/invalid_operation_exception.dart'
    as _i41;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/invalid_state_transition_exception.dart'
    as _i234;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/limit_exceeded_exception.dart'
    as _i30;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_change_sets_input.dart'
    as _i183;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_change_sets_output.dart'
    as _i185;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_exports_input.dart'
    as _i186;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_exports_output.dart'
    as _i188;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_imports_input.dart'
    as _i189;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_imports_output.dart'
    as _i190;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_instances_input.dart'
    as _i193;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_instances_output.dart'
    as _i195;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_resources_input.dart'
    as _i196;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_resources_output.dart'
    as _i199;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operation_results_input.dart'
    as _i202;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operation_results_output.dart'
    as _i207;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operations_input.dart'
    as _i208;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operations_output.dart'
    as _i210;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_sets_input.dart'
    as _i211;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_sets_output.dart'
    as _i213;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stacks_input.dart'
    as _i214;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stacks_output.dart'
    as _i217;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_registrations_input.dart'
    as _i218;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_registrations_output.dart'
    as _i219;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_versions_input.dart'
    as _i220;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_versions_output.dart'
    as _i222;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_types_input.dart'
    as _i225;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_types_output.dart'
    as _i227;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/logging_config.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/managed_execution.dart'
    as _i48;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/module_info.dart'
    as _i82;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/name_already_exists_exception.dart'
    as _i52;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/on_failure.dart'
    as _i31;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_id_already_exists_exception.dart'
    as _i42;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_in_progress_exception.dart'
    as _i43;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_not_found_exception.dart'
    as _i143;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_result_filter.dart'
    as _i201;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_result_filter_name.dart'
    as _i200;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_status.dart'
    as _i230;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_status_check_failed_exception.dart'
    as _i235;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/output.dart'
    as _i146;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter_constraints.dart'
    as _i176;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter_declaration.dart'
    as _i177;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/permission_models.dart'
    as _i46;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/physical_resource_id_context_key_value_pair.dart'
    as _i122;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/property_difference.dart'
    as _i124;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/provisioning_type.dart'
    as _i152;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/publish_type_input.dart'
    as _i228;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/publish_type_output.dart'
    as _i229;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/publisher_status.dart'
    as _i97;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/record_handler_progress_input.dart'
    as _i232;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/record_handler_progress_output.dart'
    as _i233;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/region_concurrency_type.dart'
    as _i36;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_publisher_input.dart'
    as _i236;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_publisher_output.dart'
    as _i237;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_type_input.dart'
    as _i238;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_type_output.dart'
    as _i239;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registration_status.dart'
    as _i158;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registry_type.dart'
    as _i64;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/replacement.dart'
    as _i75;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/required_activated_type.dart'
    as _i154;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/requires_recreation.dart'
    as _i77;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_attribute.dart'
    as _i76;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_change.dart'
    as _i83;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_change_detail.dart'
    as _i81;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_identifier_summary.dart'
    as _i178;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_signal_status.dart'
    as _i247;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_status.dart'
    as _i105;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_target_definition.dart'
    as _i78;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_to_import.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_configuration.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_stack_input.dart'
    as _i240;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_stack_output.dart'
    as _i241;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_trigger.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_stack_policy_input.dart'
    as _i242;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_configuration_input.dart'
    as _i243;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_configuration_output.dart'
    as _i244;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_default_version_input.dart'
    as _i245;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_default_version_output.dart'
    as _i246;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/signal_resource_input.dart'
    as _i248;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack.dart'
    as _i148;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_detection_status.dart'
    as _i102;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_information.dart'
    as _i147;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_information_summary.dart'
    as _i215;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_status.dart'
    as _i101;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_event.dart'
    as _i107;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance.dart'
    as _i113;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_comprehensive_status.dart'
    as _i112;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_detailed_status.dart'
    as _i111;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_filter.dart'
    as _i192;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_filter_name.dart'
    as _i191;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_not_found_exception.dart'
    as _i115;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_status.dart'
    as _i110;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_summary.dart'
    as _i194;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_not_found_exception.dart'
    as _i182;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource.dart'
    as _i128;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_detail.dart'
    as _i119;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift.dart'
    as _i125;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_information.dart'
    as _i118;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_information_summary.dart'
    as _i197;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_status.dart'
    as _i117;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_summary.dart'
    as _i198;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set.dart'
    as _i135;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_drift_detection_details.dart'
    as _i134;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_drift_detection_status.dart'
    as _i133;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_drift_status.dart'
    as _i132;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_not_empty_exception.dart'
    as _i63;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_not_found_exception.dart'
    as _i44;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation.dart'
    as _i141;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_action.dart'
    as _i138;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_preferences.dart'
    as _i37;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_result_status.dart'
    as _i203;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_result_summary.dart'
    as _i206;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_status.dart'
    as _i139;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_status_details.dart'
    as _i140;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_summary.dart'
    as _i209;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_status.dart'
    as _i131;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_summary.dart'
    as _i212;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_status.dart'
    as _i145;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_summary.dart'
    as _i216;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stale_request_exception.dart'
    as _i45;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stop_stack_set_operation_input.dart'
    as _i249;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stop_stack_set_operation_output.dart'
    as _i250;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/tag.dart' as _i23;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/template_parameter.dart'
    as _i262;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/template_stage.dart'
    as _i172;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/test_type_input.dart'
    as _i251;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/test_type_output.dart'
    as _i252;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/third_party_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/token_already_exists_exception.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_configuration_details.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_configuration_identifier.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_configuration_not_found_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_filters.dart'
    as _i224;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_not_found_exception.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_summary.dart'
    as _i226;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_tests_status.dart'
    as _i151;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_version_summary.dart'
    as _i221;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_input.dart'
    as _i253;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_instances_input.dart'
    as _i255;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_instances_output.dart'
    as _i256;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_output.dart'
    as _i254;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_set_input.dart'
    as _i257;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_set_output.dart'
    as _i258;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_termination_protection_input.dart'
    as _i259;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_termination_protection_output.dart'
    as _i260;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/validate_template_input.dart'
    as _i261;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/validate_template_output.dart'
    as _i263;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/version_bump.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/visibility.dart'
    as _i155;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.ThirdPartyType.serializers,
  ..._i3.LoggingConfig.serializers,
  ..._i4.VersionBump.serializers,
  ..._i5.ActivateTypeInput.serializers,
  ..._i6.ActivateTypeOutput.serializers,
  ..._i7.CfnRegistryException.serializers,
  ..._i8.TypeNotFoundException.serializers,
  ..._i9.TypeConfigurationIdentifier.serializers,
  ..._i10.BatchDescribeTypeConfigurationsInput.serializers,
  ..._i11.BatchDescribeTypeConfigurationsError.serializers,
  ..._i12.TypeConfigurationDetails.serializers,
  ..._i13.BatchDescribeTypeConfigurationsOutput.serializers,
  ..._i14.TypeConfigurationNotFoundException.serializers,
  ..._i15.CancelUpdateStackInput.serializers,
  ..._i16.TokenAlreadyExistsException.serializers,
  ..._i17.ContinueUpdateRollbackInput.serializers,
  ..._i18.ContinueUpdateRollbackOutput.serializers,
  ..._i19.Parameter.serializers,
  ..._i20.Capability.serializers,
  ..._i21.RollbackTrigger.serializers,
  ..._i22.RollbackConfiguration.serializers,
  ..._i23.Tag.serializers,
  ..._i24.ChangeSetType.serializers,
  ..._i25.ResourceToImport.serializers,
  ..._i26.CreateChangeSetInput.serializers,
  ..._i27.CreateChangeSetOutput.serializers,
  ..._i28.AlreadyExistsException.serializers,
  ..._i29.InsufficientCapabilitiesException.serializers,
  ..._i30.LimitExceededException.serializers,
  ..._i31.OnFailure.serializers,
  ..._i32.CreateStackInput.serializers,
  ..._i33.CreateStackOutput.serializers,
  ..._i34.AccountFilterType.serializers,
  ..._i35.DeploymentTargets.serializers,
  ..._i36.RegionConcurrencyType.serializers,
  ..._i37.StackSetOperationPreferences.serializers,
  ..._i38.CallAs.serializers,
  ..._i39.CreateStackInstancesInput.serializers,
  ..._i40.CreateStackInstancesOutput.serializers,
  ..._i41.InvalidOperationException.serializers,
  ..._i42.OperationIdAlreadyExistsException.serializers,
  ..._i43.OperationInProgressException.serializers,
  ..._i44.StackSetNotFoundException.serializers,
  ..._i45.StaleRequestException.serializers,
  ..._i46.PermissionModels.serializers,
  ..._i47.AutoDeployment.serializers,
  ..._i48.ManagedExecution.serializers,
  ..._i49.CreateStackSetInput.serializers,
  ..._i50.CreateStackSetOutput.serializers,
  ..._i51.CreatedButModifiedException.serializers,
  ..._i52.NameAlreadyExistsException.serializers,
  ..._i53.DeactivateTypeInput.serializers,
  ..._i54.DeactivateTypeOutput.serializers,
  ..._i55.DeleteChangeSetInput.serializers,
  ..._i56.DeleteChangeSetOutput.serializers,
  ..._i57.InvalidChangeSetStatusException.serializers,
  ..._i58.DeleteStackInput.serializers,
  ..._i59.DeleteStackInstancesInput.serializers,
  ..._i60.DeleteStackInstancesOutput.serializers,
  ..._i61.DeleteStackSetInput.serializers,
  ..._i62.DeleteStackSetOutput.serializers,
  ..._i63.StackSetNotEmptyException.serializers,
  ..._i64.RegistryType.serializers,
  ..._i65.DeregisterTypeInput.serializers,
  ..._i66.DeregisterTypeOutput.serializers,
  ..._i67.DescribeAccountLimitsInput.serializers,
  ..._i68.AccountLimit.serializers,
  ..._i69.DescribeAccountLimitsOutput.serializers,
  ..._i70.DescribeChangeSetInput.serializers,
  ..._i71.ExecutionStatus.serializers,
  ..._i72.ChangeSetStatus.serializers,
  ..._i73.ChangeType.serializers,
  ..._i74.ChangeAction.serializers,
  ..._i75.Replacement.serializers,
  ..._i76.ResourceAttribute.serializers,
  ..._i77.RequiresRecreation.serializers,
  ..._i78.ResourceTargetDefinition.serializers,
  ..._i79.EvaluationType.serializers,
  ..._i80.ChangeSource.serializers,
  ..._i81.ResourceChangeDetail.serializers,
  ..._i82.ModuleInfo.serializers,
  ..._i83.ResourceChange.serializers,
  ..._i84.Change.serializers,
  ..._i85.DescribeChangeSetOutput.serializers,
  ..._i86.ChangeSetNotFoundException.serializers,
  ..._i87.DescribeChangeSetHooksInput.serializers,
  ..._i88.HookInvocationPoint.serializers,
  ..._i89.HookFailureMode.serializers,
  ..._i90.HookTargetType.serializers,
  ..._i91.ChangeSetHookResourceTargetDetails.serializers,
  ..._i92.ChangeSetHookTargetDetails.serializers,
  ..._i93.ChangeSetHook.serializers,
  ..._i94.ChangeSetHooksStatus.serializers,
  ..._i95.DescribeChangeSetHooksOutput.serializers,
  ..._i96.DescribePublisherInput.serializers,
  ..._i97.PublisherStatus.serializers,
  ..._i98.IdentityProvider.serializers,
  ..._i99.DescribePublisherOutput.serializers,
  ..._i100.DescribeStackDriftDetectionStatusInput.serializers,
  ..._i101.StackDriftStatus.serializers,
  ..._i102.StackDriftDetectionStatus.serializers,
  ..._i103.DescribeStackDriftDetectionStatusOutput.serializers,
  ..._i104.DescribeStackEventsInput.serializers,
  ..._i105.ResourceStatus.serializers,
  ..._i106.HookStatus.serializers,
  ..._i107.StackEvent.serializers,
  ..._i108.DescribeStackEventsOutput.serializers,
  ..._i109.DescribeStackInstanceInput.serializers,
  ..._i110.StackInstanceStatus.serializers,
  ..._i111.StackInstanceDetailedStatus.serializers,
  ..._i112.StackInstanceComprehensiveStatus.serializers,
  ..._i113.StackInstance.serializers,
  ..._i114.DescribeStackInstanceOutput.serializers,
  ..._i115.StackInstanceNotFoundException.serializers,
  ..._i116.DescribeStackResourceInput.serializers,
  ..._i117.StackResourceDriftStatus.serializers,
  ..._i118.StackResourceDriftInformation.serializers,
  ..._i119.StackResourceDetail.serializers,
  ..._i120.DescribeStackResourceOutput.serializers,
  ..._i121.DescribeStackResourceDriftsInput.serializers,
  ..._i122.PhysicalResourceIdContextKeyValuePair.serializers,
  ..._i123.DifferenceType.serializers,
  ..._i124.PropertyDifference.serializers,
  ..._i125.StackResourceDrift.serializers,
  ..._i126.DescribeStackResourceDriftsOutput.serializers,
  ..._i127.DescribeStackResourcesInput.serializers,
  ..._i128.StackResource.serializers,
  ..._i129.DescribeStackResourcesOutput.serializers,
  ..._i130.DescribeStackSetInput.serializers,
  ..._i131.StackSetStatus.serializers,
  ..._i132.StackSetDriftStatus.serializers,
  ..._i133.StackSetDriftDetectionStatus.serializers,
  ..._i134.StackSetDriftDetectionDetails.serializers,
  ..._i135.StackSet.serializers,
  ..._i136.DescribeStackSetOutput.serializers,
  ..._i137.DescribeStackSetOperationInput.serializers,
  ..._i138.StackSetOperationAction.serializers,
  ..._i139.StackSetOperationStatus.serializers,
  ..._i140.StackSetOperationStatusDetails.serializers,
  ..._i141.StackSetOperation.serializers,
  ..._i142.DescribeStackSetOperationOutput.serializers,
  ..._i143.OperationNotFoundException.serializers,
  ..._i144.DescribeStacksInput.serializers,
  ..._i145.StackStatus.serializers,
  ..._i146.Output.serializers,
  ..._i147.StackDriftInformation.serializers,
  ..._i148.Stack.serializers,
  ..._i149.DescribeStacksOutput.serializers,
  ..._i150.DescribeTypeInput.serializers,
  ..._i151.TypeTestsStatus.serializers,
  ..._i152.ProvisioningType.serializers,
  ..._i153.DeprecatedStatus.serializers,
  ..._i154.RequiredActivatedType.serializers,
  ..._i155.Visibility.serializers,
  ..._i156.DescribeTypeOutput.serializers,
  ..._i157.DescribeTypeRegistrationInput.serializers,
  ..._i158.RegistrationStatus.serializers,
  ..._i159.DescribeTypeRegistrationOutput.serializers,
  ..._i160.DetectStackDriftInput.serializers,
  ..._i161.DetectStackDriftOutput.serializers,
  ..._i162.DetectStackResourceDriftInput.serializers,
  ..._i163.DetectStackResourceDriftOutput.serializers,
  ..._i164.DetectStackSetDriftInput.serializers,
  ..._i165.DetectStackSetDriftOutput.serializers,
  ..._i166.EstimateTemplateCostInput.serializers,
  ..._i167.EstimateTemplateCostOutput.serializers,
  ..._i168.ExecuteChangeSetInput.serializers,
  ..._i169.ExecuteChangeSetOutput.serializers,
  ..._i170.GetStackPolicyInput.serializers,
  ..._i171.GetStackPolicyOutput.serializers,
  ..._i172.TemplateStage.serializers,
  ..._i173.GetTemplateInput.serializers,
  ..._i174.GetTemplateOutput.serializers,
  ..._i175.GetTemplateSummaryInput.serializers,
  ..._i176.ParameterConstraints.serializers,
  ..._i177.ParameterDeclaration.serializers,
  ..._i178.ResourceIdentifierSummary.serializers,
  ..._i179.GetTemplateSummaryOutput.serializers,
  ..._i180.ImportStacksToStackSetInput.serializers,
  ..._i181.ImportStacksToStackSetOutput.serializers,
  ..._i182.StackNotFoundException.serializers,
  ..._i183.ListChangeSetsInput.serializers,
  ..._i184.ChangeSetSummary.serializers,
  ..._i185.ListChangeSetsOutput.serializers,
  ..._i186.ListExportsInput.serializers,
  ..._i187.Export.serializers,
  ..._i188.ListExportsOutput.serializers,
  ..._i189.ListImportsInput.serializers,
  ..._i190.ListImportsOutput.serializers,
  ..._i191.StackInstanceFilterName.serializers,
  ..._i192.StackInstanceFilter.serializers,
  ..._i193.ListStackInstancesInput.serializers,
  ..._i194.StackInstanceSummary.serializers,
  ..._i195.ListStackInstancesOutput.serializers,
  ..._i196.ListStackResourcesInput.serializers,
  ..._i197.StackResourceDriftInformationSummary.serializers,
  ..._i198.StackResourceSummary.serializers,
  ..._i199.ListStackResourcesOutput.serializers,
  ..._i200.OperationResultFilterName.serializers,
  ..._i201.OperationResultFilter.serializers,
  ..._i202.ListStackSetOperationResultsInput.serializers,
  ..._i203.StackSetOperationResultStatus.serializers,
  ..._i204.AccountGateStatus.serializers,
  ..._i205.AccountGateResult.serializers,
  ..._i206.StackSetOperationResultSummary.serializers,
  ..._i207.ListStackSetOperationResultsOutput.serializers,
  ..._i208.ListStackSetOperationsInput.serializers,
  ..._i209.StackSetOperationSummary.serializers,
  ..._i210.ListStackSetOperationsOutput.serializers,
  ..._i211.ListStackSetsInput.serializers,
  ..._i212.StackSetSummary.serializers,
  ..._i213.ListStackSetsOutput.serializers,
  ..._i214.ListStacksInput.serializers,
  ..._i215.StackDriftInformationSummary.serializers,
  ..._i216.StackSummary.serializers,
  ..._i217.ListStacksOutput.serializers,
  ..._i218.ListTypeRegistrationsInput.serializers,
  ..._i219.ListTypeRegistrationsOutput.serializers,
  ..._i220.ListTypeVersionsInput.serializers,
  ..._i221.TypeVersionSummary.serializers,
  ..._i222.ListTypeVersionsOutput.serializers,
  ..._i223.Category.serializers,
  ..._i224.TypeFilters.serializers,
  ..._i225.ListTypesInput.serializers,
  ..._i226.TypeSummary.serializers,
  ..._i227.ListTypesOutput.serializers,
  ..._i228.PublishTypeInput.serializers,
  ..._i229.PublishTypeOutput.serializers,
  ..._i230.OperationStatus.serializers,
  ..._i231.HandlerErrorCode.serializers,
  ..._i232.RecordHandlerProgressInput.serializers,
  ..._i233.RecordHandlerProgressOutput.serializers,
  ..._i234.InvalidStateTransitionException.serializers,
  ..._i235.OperationStatusCheckFailedException.serializers,
  ..._i236.RegisterPublisherInput.serializers,
  ..._i237.RegisterPublisherOutput.serializers,
  ..._i238.RegisterTypeInput.serializers,
  ..._i239.RegisterTypeOutput.serializers,
  ..._i240.RollbackStackInput.serializers,
  ..._i241.RollbackStackOutput.serializers,
  ..._i242.SetStackPolicyInput.serializers,
  ..._i243.SetTypeConfigurationInput.serializers,
  ..._i244.SetTypeConfigurationOutput.serializers,
  ..._i245.SetTypeDefaultVersionInput.serializers,
  ..._i246.SetTypeDefaultVersionOutput.serializers,
  ..._i247.ResourceSignalStatus.serializers,
  ..._i248.SignalResourceInput.serializers,
  ..._i249.StopStackSetOperationInput.serializers,
  ..._i250.StopStackSetOperationOutput.serializers,
  ..._i251.TestTypeInput.serializers,
  ..._i252.TestTypeOutput.serializers,
  ..._i253.UpdateStackInput.serializers,
  ..._i254.UpdateStackOutput.serializers,
  ..._i255.UpdateStackInstancesInput.serializers,
  ..._i256.UpdateStackInstancesOutput.serializers,
  ..._i257.UpdateStackSetInput.serializers,
  ..._i258.UpdateStackSetOutput.serializers,
  ..._i259.UpdateTerminationProtectionInput.serializers,
  ..._i260.UpdateTerminationProtectionOutput.serializers,
  ..._i261.ValidateTemplateInput.serializers,
  ..._i262.TemplateParameter.serializers,
  ..._i263.ValidateTemplateOutput.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i264.BuiltList,
    [FullType(_i9.TypeConfigurationIdentifier)],
  ): _i264.ListBuilder<_i9.TypeConfigurationIdentifier>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i11.BatchDescribeTypeConfigurationsError)],
  ): _i264.ListBuilder<_i11.BatchDescribeTypeConfigurationsError>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i12.TypeConfigurationDetails)],
  ): _i264.ListBuilder<_i12.TypeConfigurationDetails>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(String)],
  ): _i264.ListBuilder<String>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i21.RollbackTrigger)],
  ): _i264.ListBuilder<_i21.RollbackTrigger>.new,
  const FullType(
    _i264.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i264.MapBuilder<String, String>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i20.Capability)],
  ): _i264.ListBuilder<_i20.Capability>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i19.Parameter)],
  ): _i264.ListBuilder<_i19.Parameter>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i25.ResourceToImport)],
  ): _i264.ListBuilder<_i25.ResourceToImport>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i23.Tag)],
  ): _i264.ListBuilder<_i23.Tag>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i68.AccountLimit)],
  ): _i264.ListBuilder<_i68.AccountLimit>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i81.ResourceChangeDetail)],
  ): _i264.ListBuilder<_i81.ResourceChangeDetail>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i76.ResourceAttribute)],
  ): _i264.ListBuilder<_i76.ResourceAttribute>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i84.Change)],
  ): _i264.ListBuilder<_i84.Change>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i93.ChangeSetHook)],
  ): _i264.ListBuilder<_i93.ChangeSetHook>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i107.StackEvent)],
  ): _i264.ListBuilder<_i107.StackEvent>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i117.StackResourceDriftStatus)],
  ): _i264.ListBuilder<_i117.StackResourceDriftStatus>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i122.PhysicalResourceIdContextKeyValuePair)],
  ): _i264.ListBuilder<_i122.PhysicalResourceIdContextKeyValuePair>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i124.PropertyDifference)],
  ): _i264.ListBuilder<_i124.PropertyDifference>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i125.StackResourceDrift)],
  ): _i264.ListBuilder<_i125.StackResourceDrift>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i128.StackResource)],
  ): _i264.ListBuilder<_i128.StackResource>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i148.Stack)],
  ): _i264.ListBuilder<_i148.Stack>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i146.Output)],
  ): _i264.ListBuilder<_i146.Output>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(int)],
  ): _i264.ListBuilder<int>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i154.RequiredActivatedType)],
  ): _i264.ListBuilder<_i154.RequiredActivatedType>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i172.TemplateStage)],
  ): _i264.ListBuilder<_i172.TemplateStage>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i177.ParameterDeclaration)],
  ): _i264.ListBuilder<_i177.ParameterDeclaration>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i178.ResourceIdentifierSummary)],
  ): _i264.ListBuilder<_i178.ResourceIdentifierSummary>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i184.ChangeSetSummary)],
  ): _i264.ListBuilder<_i184.ChangeSetSummary>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i187.Export)],
  ): _i264.ListBuilder<_i187.Export>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i194.StackInstanceSummary)],
  ): _i264.ListBuilder<_i194.StackInstanceSummary>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i192.StackInstanceFilter)],
  ): _i264.ListBuilder<_i192.StackInstanceFilter>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i198.StackResourceSummary)],
  ): _i264.ListBuilder<_i198.StackResourceSummary>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i206.StackSetOperationResultSummary)],
  ): _i264.ListBuilder<_i206.StackSetOperationResultSummary>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i201.OperationResultFilter)],
  ): _i264.ListBuilder<_i201.OperationResultFilter>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i209.StackSetOperationSummary)],
  ): _i264.ListBuilder<_i209.StackSetOperationSummary>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i212.StackSetSummary)],
  ): _i264.ListBuilder<_i212.StackSetSummary>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i216.StackSummary)],
  ): _i264.ListBuilder<_i216.StackSummary>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i145.StackStatus)],
  ): _i264.ListBuilder<_i145.StackStatus>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i221.TypeVersionSummary)],
  ): _i264.ListBuilder<_i221.TypeVersionSummary>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i226.TypeSummary)],
  ): _i264.ListBuilder<_i226.TypeSummary>.new,
  const FullType(
    _i264.BuiltList,
    [FullType(_i262.TemplateParameter)],
  ): _i264.ListBuilder<_i262.TemplateParameter>.new,
};
