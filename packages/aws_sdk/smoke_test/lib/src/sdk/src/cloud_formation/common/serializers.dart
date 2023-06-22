// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i272;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_filter_type.dart'
    as _i39;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_gate_result.dart'
    as _i213;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_gate_status.dart'
    as _i212;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_limit.dart'
    as _i74;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/activate_organizations_access_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/activate_organizations_access_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/activate_type_input.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/activate_type_output.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/already_exists_exception.dart'
    as _i33;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/auto_deployment.dart'
    as _i51;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/batch_describe_type_configurations_error.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/batch_describe_type_configurations_input.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/batch_describe_type_configurations_output.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i43;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/cancel_update_stack_input.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/capability.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/category.dart'
    as _i231;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/cfn_registry_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change.dart'
    as _i90;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_action.dart'
    as _i80;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hook.dart'
    as _i99;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hook_resource_target_details.dart'
    as _i97;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hook_target_details.dart'
    as _i98;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hooks_status.dart'
    as _i100;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_not_found_exception.dart'
    as _i92;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_status.dart'
    as _i78;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_summary.dart'
    as _i192;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_type.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_source.dart'
    as _i86;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_type.dart'
    as _i79;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/continue_update_rollback_input.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/continue_update_rollback_output.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_change_set_input.dart'
    as _i31;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_change_set_output.dart'
    as _i32;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_input.dart'
    as _i37;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_instances_input.dart'
    as _i44;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_instances_output.dart'
    as _i45;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_output.dart'
    as _i38;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_set_input.dart'
    as _i53;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_set_output.dart'
    as _i54;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/created_but_modified_exception.dart'
    as _i55;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deactivate_organizations_access_input.dart'
    as _i57;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deactivate_organizations_access_output.dart'
    as _i58;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deactivate_type_input.dart'
    as _i59;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deactivate_type_output.dart'
    as _i60;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_change_set_input.dart'
    as _i61;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_change_set_output.dart'
    as _i62;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_input.dart'
    as _i64;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_instances_input.dart'
    as _i65;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_instances_output.dart'
    as _i66;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_set_input.dart'
    as _i67;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_set_output.dart'
    as _i68;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deployment_targets.dart'
    as _i40;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deprecated_status.dart'
    as _i161;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deregister_type_input.dart'
    as _i71;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deregister_type_output.dart'
    as _i72;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_account_limits_input.dart'
    as _i73;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_account_limits_output.dart'
    as _i75;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_hooks_input.dart'
    as _i93;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_hooks_output.dart'
    as _i101;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_input.dart'
    as _i76;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_output.dart'
    as _i91;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_organizations_access_input.dart'
    as _i102;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_organizations_access_output.dart'
    as _i104;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_publisher_input.dart'
    as _i105;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_publisher_output.dart'
    as _i108;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_drift_detection_status_input.dart'
    as _i109;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_drift_detection_status_output.dart'
    as _i112;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_events_input.dart'
    as _i113;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_events_output.dart'
    as _i117;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_instance_input.dart'
    as _i118;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_instance_output.dart'
    as _i123;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_drifts_input.dart'
    as _i130;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_drifts_output.dart'
    as _i135;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_input.dart'
    as _i125;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_output.dart'
    as _i129;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resources_input.dart'
    as _i136;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resources_output.dart'
    as _i138;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_input.dart'
    as _i139;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_operation_input.dart'
    as _i146;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_operation_output.dart'
    as _i151;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_output.dart'
    as _i145;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stacks_input.dart'
    as _i152;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stacks_output.dart'
    as _i157;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_input.dart'
    as _i158;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_output.dart'
    as _i164;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_registration_input.dart'
    as _i165;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_registration_output.dart'
    as _i167;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_drift_input.dart'
    as _i168;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_drift_output.dart'
    as _i169;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_resource_drift_input.dart'
    as _i170;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_resource_drift_output.dart'
    as _i171;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_set_drift_input.dart'
    as _i172;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_set_drift_output.dart'
    as _i173;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/difference_type.dart'
    as _i132;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/estimate_template_cost_input.dart'
    as _i174;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/estimate_template_cost_output.dart'
    as _i175;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/evaluation_type.dart'
    as _i85;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execute_change_set_input.dart'
    as _i176;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execute_change_set_output.dart'
    as _i177;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execution_status.dart'
    as _i77;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/export.dart'
    as _i195;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_stack_policy_input.dart'
    as _i178;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_stack_policy_output.dart'
    as _i179;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_input.dart'
    as _i181;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_output.dart'
    as _i182;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_summary_input.dart'
    as _i183;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_summary_output.dart'
    as _i187;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/handler_error_code.dart'
    as _i239;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/hook_failure_mode.dart'
    as _i95;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/hook_invocation_point.dart'
    as _i94;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/hook_status.dart'
    as _i115;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/hook_target_type.dart'
    as _i96;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/identity_provider.dart'
    as _i107;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/import_stacks_to_stack_set_input.dart'
    as _i188;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/import_stacks_to_stack_set_output.dart'
    as _i189;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/insufficient_capabilities_exception.dart'
    as _i34;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/invalid_change_set_status_exception.dart'
    as _i63;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/invalid_operation_exception.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/invalid_state_transition_exception.dart'
    as _i242;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/limit_exceeded_exception.dart'
    as _i35;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_change_sets_input.dart'
    as _i191;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_change_sets_output.dart'
    as _i193;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_exports_input.dart'
    as _i194;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_exports_output.dart'
    as _i196;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_imports_input.dart'
    as _i197;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_imports_output.dart'
    as _i198;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_instances_input.dart'
    as _i201;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_instances_output.dart'
    as _i203;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_resources_input.dart'
    as _i204;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_resources_output.dart'
    as _i207;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operation_results_input.dart'
    as _i210;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operation_results_output.dart'
    as _i215;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operations_input.dart'
    as _i216;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operations_output.dart'
    as _i218;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_sets_input.dart'
    as _i219;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_sets_output.dart'
    as _i221;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stacks_input.dart'
    as _i222;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stacks_output.dart'
    as _i225;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_registrations_input.dart'
    as _i226;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_registrations_output.dart'
    as _i227;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_versions_input.dart'
    as _i228;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_versions_output.dart'
    as _i230;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_types_input.dart'
    as _i233;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_types_output.dart'
    as _i235;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/logging_config.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/managed_execution.dart'
    as _i52;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/module_info.dart'
    as _i88;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/name_already_exists_exception.dart'
    as _i56;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/on_failure.dart'
    as _i36;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/on_stack_failure.dart'
    as _i30;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_id_already_exists_exception.dart'
    as _i46;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_in_progress_exception.dart'
    as _i47;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_not_found_exception.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_result_filter.dart'
    as _i209;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_result_filter_name.dart'
    as _i208;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_status.dart'
    as _i238;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_status_check_failed_exception.dart'
    as _i243;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/organization_status.dart'
    as _i103;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/output.dart'
    as _i154;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter_constraints.dart'
    as _i184;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter_declaration.dart'
    as _i185;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/permission_models.dart'
    as _i50;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/physical_resource_id_context_key_value_pair.dart'
    as _i131;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/property_difference.dart'
    as _i133;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/provisioning_type.dart'
    as _i160;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/publish_type_input.dart'
    as _i236;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/publish_type_output.dart'
    as _i237;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/publisher_status.dart'
    as _i106;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/record_handler_progress_input.dart'
    as _i240;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/record_handler_progress_output.dart'
    as _i241;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/region_concurrency_type.dart'
    as _i41;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_publisher_input.dart'
    as _i244;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_publisher_output.dart'
    as _i245;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_type_input.dart'
    as _i246;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_type_output.dart'
    as _i247;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registration_status.dart'
    as _i166;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registry_type.dart'
    as _i70;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/replacement.dart'
    as _i81;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/required_activated_type.dart'
    as _i162;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/requires_recreation.dart'
    as _i83;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_attribute.dart'
    as _i82;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_change.dart'
    as _i89;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_change_detail.dart'
    as _i87;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_identifier_summary.dart'
    as _i186;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_signal_status.dart'
    as _i255;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_status.dart'
    as _i114;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_target_definition.dart'
    as _i84;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_to_import.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_configuration.dart'
    as _i26;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_stack_input.dart'
    as _i248;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_stack_output.dart'
    as _i249;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_trigger.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_stack_policy_input.dart'
    as _i250;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_configuration_input.dart'
    as _i251;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_configuration_output.dart'
    as _i252;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_default_version_input.dart'
    as _i253;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_default_version_output.dart'
    as _i254;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/signal_resource_input.dart'
    as _i256;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack.dart'
    as _i156;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_detection_status.dart'
    as _i111;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_information.dart'
    as _i155;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_information_summary.dart'
    as _i223;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_status.dart'
    as _i110;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_event.dart'
    as _i116;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance.dart'
    as _i122;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_comprehensive_status.dart'
    as _i121;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_detailed_status.dart'
    as _i120;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_filter.dart'
    as _i200;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_filter_name.dart'
    as _i199;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_not_found_exception.dart'
    as _i124;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_status.dart'
    as _i119;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_summary.dart'
    as _i202;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_not_found_exception.dart'
    as _i190;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource.dart'
    as _i137;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_detail.dart'
    as _i128;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift.dart'
    as _i134;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_information.dart'
    as _i127;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_information_summary.dart'
    as _i205;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_status.dart'
    as _i126;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_summary.dart'
    as _i206;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set.dart'
    as _i144;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_drift_detection_details.dart'
    as _i143;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_drift_detection_status.dart'
    as _i142;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_drift_status.dart'
    as _i141;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_not_empty_exception.dart'
    as _i69;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_not_found_exception.dart'
    as _i48;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation.dart'
    as _i150;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_action.dart'
    as _i147;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_preferences.dart'
    as _i42;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_result_status.dart'
    as _i211;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_result_summary.dart'
    as _i214;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_status.dart'
    as _i148;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_status_details.dart'
    as _i149;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_summary.dart'
    as _i217;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_status.dart'
    as _i140;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_summary.dart'
    as _i220;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_status.dart'
    as _i153;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_summary.dart'
    as _i224;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stale_request_exception.dart'
    as _i49;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stop_stack_set_operation_input.dart'
    as _i257;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stop_stack_set_operation_output.dart'
    as _i258;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/tag.dart' as _i27;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/template_parameter.dart'
    as _i270;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/template_stage.dart'
    as _i180;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/test_type_input.dart'
    as _i259;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/test_type_output.dart'
    as _i260;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/third_party_type.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/token_already_exists_exception.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_configuration_details.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_configuration_identifier.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_configuration_not_found_exception.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_filters.dart'
    as _i232;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_not_found_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_summary.dart'
    as _i234;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_tests_status.dart'
    as _i159;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_version_summary.dart'
    as _i229;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_input.dart'
    as _i261;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_instances_input.dart'
    as _i263;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_instances_output.dart'
    as _i264;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_output.dart'
    as _i262;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_set_input.dart'
    as _i265;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_set_output.dart'
    as _i266;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_termination_protection_input.dart'
    as _i267;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_termination_protection_output.dart'
    as _i268;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/validate_template_input.dart'
    as _i269;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/validate_template_output.dart'
    as _i271;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/version_bump.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/visibility.dart'
    as _i163;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.ActivateOrganizationsAccessInput.serializers,
  ..._i3.ActivateOrganizationsAccessOutput.serializers,
  ..._i4.InvalidOperationException.serializers,
  ..._i5.OperationNotFoundException.serializers,
  ..._i6.ThirdPartyType.serializers,
  ..._i7.LoggingConfig.serializers,
  ..._i8.VersionBump.serializers,
  ..._i9.ActivateTypeInput.serializers,
  ..._i10.ActivateTypeOutput.serializers,
  ..._i11.CfnRegistryException.serializers,
  ..._i12.TypeNotFoundException.serializers,
  ..._i13.TypeConfigurationIdentifier.serializers,
  ..._i14.BatchDescribeTypeConfigurationsInput.serializers,
  ..._i15.BatchDescribeTypeConfigurationsError.serializers,
  ..._i16.TypeConfigurationDetails.serializers,
  ..._i17.BatchDescribeTypeConfigurationsOutput.serializers,
  ..._i18.TypeConfigurationNotFoundException.serializers,
  ..._i19.CancelUpdateStackInput.serializers,
  ..._i20.TokenAlreadyExistsException.serializers,
  ..._i21.ContinueUpdateRollbackInput.serializers,
  ..._i22.ContinueUpdateRollbackOutput.serializers,
  ..._i23.Parameter.serializers,
  ..._i24.Capability.serializers,
  ..._i25.RollbackTrigger.serializers,
  ..._i26.RollbackConfiguration.serializers,
  ..._i27.Tag.serializers,
  ..._i28.ChangeSetType.serializers,
  ..._i29.ResourceToImport.serializers,
  ..._i30.OnStackFailure.serializers,
  ..._i31.CreateChangeSetInput.serializers,
  ..._i32.CreateChangeSetOutput.serializers,
  ..._i33.AlreadyExistsException.serializers,
  ..._i34.InsufficientCapabilitiesException.serializers,
  ..._i35.LimitExceededException.serializers,
  ..._i36.OnFailure.serializers,
  ..._i37.CreateStackInput.serializers,
  ..._i38.CreateStackOutput.serializers,
  ..._i39.AccountFilterType.serializers,
  ..._i40.DeploymentTargets.serializers,
  ..._i41.RegionConcurrencyType.serializers,
  ..._i42.StackSetOperationPreferences.serializers,
  ..._i43.CallAs.serializers,
  ..._i44.CreateStackInstancesInput.serializers,
  ..._i45.CreateStackInstancesOutput.serializers,
  ..._i46.OperationIdAlreadyExistsException.serializers,
  ..._i47.OperationInProgressException.serializers,
  ..._i48.StackSetNotFoundException.serializers,
  ..._i49.StaleRequestException.serializers,
  ..._i50.PermissionModels.serializers,
  ..._i51.AutoDeployment.serializers,
  ..._i52.ManagedExecution.serializers,
  ..._i53.CreateStackSetInput.serializers,
  ..._i54.CreateStackSetOutput.serializers,
  ..._i55.CreatedButModifiedException.serializers,
  ..._i56.NameAlreadyExistsException.serializers,
  ..._i57.DeactivateOrganizationsAccessInput.serializers,
  ..._i58.DeactivateOrganizationsAccessOutput.serializers,
  ..._i59.DeactivateTypeInput.serializers,
  ..._i60.DeactivateTypeOutput.serializers,
  ..._i61.DeleteChangeSetInput.serializers,
  ..._i62.DeleteChangeSetOutput.serializers,
  ..._i63.InvalidChangeSetStatusException.serializers,
  ..._i64.DeleteStackInput.serializers,
  ..._i65.DeleteStackInstancesInput.serializers,
  ..._i66.DeleteStackInstancesOutput.serializers,
  ..._i67.DeleteStackSetInput.serializers,
  ..._i68.DeleteStackSetOutput.serializers,
  ..._i69.StackSetNotEmptyException.serializers,
  ..._i70.RegistryType.serializers,
  ..._i71.DeregisterTypeInput.serializers,
  ..._i72.DeregisterTypeOutput.serializers,
  ..._i73.DescribeAccountLimitsInput.serializers,
  ..._i74.AccountLimit.serializers,
  ..._i75.DescribeAccountLimitsOutput.serializers,
  ..._i76.DescribeChangeSetInput.serializers,
  ..._i77.ExecutionStatus.serializers,
  ..._i78.ChangeSetStatus.serializers,
  ..._i79.ChangeType.serializers,
  ..._i80.ChangeAction.serializers,
  ..._i81.Replacement.serializers,
  ..._i82.ResourceAttribute.serializers,
  ..._i83.RequiresRecreation.serializers,
  ..._i84.ResourceTargetDefinition.serializers,
  ..._i85.EvaluationType.serializers,
  ..._i86.ChangeSource.serializers,
  ..._i87.ResourceChangeDetail.serializers,
  ..._i88.ModuleInfo.serializers,
  ..._i89.ResourceChange.serializers,
  ..._i90.Change.serializers,
  ..._i91.DescribeChangeSetOutput.serializers,
  ..._i92.ChangeSetNotFoundException.serializers,
  ..._i93.DescribeChangeSetHooksInput.serializers,
  ..._i94.HookInvocationPoint.serializers,
  ..._i95.HookFailureMode.serializers,
  ..._i96.HookTargetType.serializers,
  ..._i97.ChangeSetHookResourceTargetDetails.serializers,
  ..._i98.ChangeSetHookTargetDetails.serializers,
  ..._i99.ChangeSetHook.serializers,
  ..._i100.ChangeSetHooksStatus.serializers,
  ..._i101.DescribeChangeSetHooksOutput.serializers,
  ..._i102.DescribeOrganizationsAccessInput.serializers,
  ..._i103.OrganizationStatus.serializers,
  ..._i104.DescribeOrganizationsAccessOutput.serializers,
  ..._i105.DescribePublisherInput.serializers,
  ..._i106.PublisherStatus.serializers,
  ..._i107.IdentityProvider.serializers,
  ..._i108.DescribePublisherOutput.serializers,
  ..._i109.DescribeStackDriftDetectionStatusInput.serializers,
  ..._i110.StackDriftStatus.serializers,
  ..._i111.StackDriftDetectionStatus.serializers,
  ..._i112.DescribeStackDriftDetectionStatusOutput.serializers,
  ..._i113.DescribeStackEventsInput.serializers,
  ..._i114.ResourceStatus.serializers,
  ..._i115.HookStatus.serializers,
  ..._i116.StackEvent.serializers,
  ..._i117.DescribeStackEventsOutput.serializers,
  ..._i118.DescribeStackInstanceInput.serializers,
  ..._i119.StackInstanceStatus.serializers,
  ..._i120.StackInstanceDetailedStatus.serializers,
  ..._i121.StackInstanceComprehensiveStatus.serializers,
  ..._i122.StackInstance.serializers,
  ..._i123.DescribeStackInstanceOutput.serializers,
  ..._i124.StackInstanceNotFoundException.serializers,
  ..._i125.DescribeStackResourceInput.serializers,
  ..._i126.StackResourceDriftStatus.serializers,
  ..._i127.StackResourceDriftInformation.serializers,
  ..._i128.StackResourceDetail.serializers,
  ..._i129.DescribeStackResourceOutput.serializers,
  ..._i130.DescribeStackResourceDriftsInput.serializers,
  ..._i131.PhysicalResourceIdContextKeyValuePair.serializers,
  ..._i132.DifferenceType.serializers,
  ..._i133.PropertyDifference.serializers,
  ..._i134.StackResourceDrift.serializers,
  ..._i135.DescribeStackResourceDriftsOutput.serializers,
  ..._i136.DescribeStackResourcesInput.serializers,
  ..._i137.StackResource.serializers,
  ..._i138.DescribeStackResourcesOutput.serializers,
  ..._i139.DescribeStackSetInput.serializers,
  ..._i140.StackSetStatus.serializers,
  ..._i141.StackSetDriftStatus.serializers,
  ..._i142.StackSetDriftDetectionStatus.serializers,
  ..._i143.StackSetDriftDetectionDetails.serializers,
  ..._i144.StackSet.serializers,
  ..._i145.DescribeStackSetOutput.serializers,
  ..._i146.DescribeStackSetOperationInput.serializers,
  ..._i147.StackSetOperationAction.serializers,
  ..._i148.StackSetOperationStatus.serializers,
  ..._i149.StackSetOperationStatusDetails.serializers,
  ..._i150.StackSetOperation.serializers,
  ..._i151.DescribeStackSetOperationOutput.serializers,
  ..._i152.DescribeStacksInput.serializers,
  ..._i153.StackStatus.serializers,
  ..._i154.Output.serializers,
  ..._i155.StackDriftInformation.serializers,
  ..._i156.Stack.serializers,
  ..._i157.DescribeStacksOutput.serializers,
  ..._i158.DescribeTypeInput.serializers,
  ..._i159.TypeTestsStatus.serializers,
  ..._i160.ProvisioningType.serializers,
  ..._i161.DeprecatedStatus.serializers,
  ..._i162.RequiredActivatedType.serializers,
  ..._i163.Visibility.serializers,
  ..._i164.DescribeTypeOutput.serializers,
  ..._i165.DescribeTypeRegistrationInput.serializers,
  ..._i166.RegistrationStatus.serializers,
  ..._i167.DescribeTypeRegistrationOutput.serializers,
  ..._i168.DetectStackDriftInput.serializers,
  ..._i169.DetectStackDriftOutput.serializers,
  ..._i170.DetectStackResourceDriftInput.serializers,
  ..._i171.DetectStackResourceDriftOutput.serializers,
  ..._i172.DetectStackSetDriftInput.serializers,
  ..._i173.DetectStackSetDriftOutput.serializers,
  ..._i174.EstimateTemplateCostInput.serializers,
  ..._i175.EstimateTemplateCostOutput.serializers,
  ..._i176.ExecuteChangeSetInput.serializers,
  ..._i177.ExecuteChangeSetOutput.serializers,
  ..._i178.GetStackPolicyInput.serializers,
  ..._i179.GetStackPolicyOutput.serializers,
  ..._i180.TemplateStage.serializers,
  ..._i181.GetTemplateInput.serializers,
  ..._i182.GetTemplateOutput.serializers,
  ..._i183.GetTemplateSummaryInput.serializers,
  ..._i184.ParameterConstraints.serializers,
  ..._i185.ParameterDeclaration.serializers,
  ..._i186.ResourceIdentifierSummary.serializers,
  ..._i187.GetTemplateSummaryOutput.serializers,
  ..._i188.ImportStacksToStackSetInput.serializers,
  ..._i189.ImportStacksToStackSetOutput.serializers,
  ..._i190.StackNotFoundException.serializers,
  ..._i191.ListChangeSetsInput.serializers,
  ..._i192.ChangeSetSummary.serializers,
  ..._i193.ListChangeSetsOutput.serializers,
  ..._i194.ListExportsInput.serializers,
  ..._i195.Export.serializers,
  ..._i196.ListExportsOutput.serializers,
  ..._i197.ListImportsInput.serializers,
  ..._i198.ListImportsOutput.serializers,
  ..._i199.StackInstanceFilterName.serializers,
  ..._i200.StackInstanceFilter.serializers,
  ..._i201.ListStackInstancesInput.serializers,
  ..._i202.StackInstanceSummary.serializers,
  ..._i203.ListStackInstancesOutput.serializers,
  ..._i204.ListStackResourcesInput.serializers,
  ..._i205.StackResourceDriftInformationSummary.serializers,
  ..._i206.StackResourceSummary.serializers,
  ..._i207.ListStackResourcesOutput.serializers,
  ..._i208.OperationResultFilterName.serializers,
  ..._i209.OperationResultFilter.serializers,
  ..._i210.ListStackSetOperationResultsInput.serializers,
  ..._i211.StackSetOperationResultStatus.serializers,
  ..._i212.AccountGateStatus.serializers,
  ..._i213.AccountGateResult.serializers,
  ..._i214.StackSetOperationResultSummary.serializers,
  ..._i215.ListStackSetOperationResultsOutput.serializers,
  ..._i216.ListStackSetOperationsInput.serializers,
  ..._i217.StackSetOperationSummary.serializers,
  ..._i218.ListStackSetOperationsOutput.serializers,
  ..._i219.ListStackSetsInput.serializers,
  ..._i220.StackSetSummary.serializers,
  ..._i221.ListStackSetsOutput.serializers,
  ..._i222.ListStacksInput.serializers,
  ..._i223.StackDriftInformationSummary.serializers,
  ..._i224.StackSummary.serializers,
  ..._i225.ListStacksOutput.serializers,
  ..._i226.ListTypeRegistrationsInput.serializers,
  ..._i227.ListTypeRegistrationsOutput.serializers,
  ..._i228.ListTypeVersionsInput.serializers,
  ..._i229.TypeVersionSummary.serializers,
  ..._i230.ListTypeVersionsOutput.serializers,
  ..._i231.Category.serializers,
  ..._i232.TypeFilters.serializers,
  ..._i233.ListTypesInput.serializers,
  ..._i234.TypeSummary.serializers,
  ..._i235.ListTypesOutput.serializers,
  ..._i236.PublishTypeInput.serializers,
  ..._i237.PublishTypeOutput.serializers,
  ..._i238.OperationStatus.serializers,
  ..._i239.HandlerErrorCode.serializers,
  ..._i240.RecordHandlerProgressInput.serializers,
  ..._i241.RecordHandlerProgressOutput.serializers,
  ..._i242.InvalidStateTransitionException.serializers,
  ..._i243.OperationStatusCheckFailedException.serializers,
  ..._i244.RegisterPublisherInput.serializers,
  ..._i245.RegisterPublisherOutput.serializers,
  ..._i246.RegisterTypeInput.serializers,
  ..._i247.RegisterTypeOutput.serializers,
  ..._i248.RollbackStackInput.serializers,
  ..._i249.RollbackStackOutput.serializers,
  ..._i250.SetStackPolicyInput.serializers,
  ..._i251.SetTypeConfigurationInput.serializers,
  ..._i252.SetTypeConfigurationOutput.serializers,
  ..._i253.SetTypeDefaultVersionInput.serializers,
  ..._i254.SetTypeDefaultVersionOutput.serializers,
  ..._i255.ResourceSignalStatus.serializers,
  ..._i256.SignalResourceInput.serializers,
  ..._i257.StopStackSetOperationInput.serializers,
  ..._i258.StopStackSetOperationOutput.serializers,
  ..._i259.TestTypeInput.serializers,
  ..._i260.TestTypeOutput.serializers,
  ..._i261.UpdateStackInput.serializers,
  ..._i262.UpdateStackOutput.serializers,
  ..._i263.UpdateStackInstancesInput.serializers,
  ..._i264.UpdateStackInstancesOutput.serializers,
  ..._i265.UpdateStackSetInput.serializers,
  ..._i266.UpdateStackSetOutput.serializers,
  ..._i267.UpdateTerminationProtectionInput.serializers,
  ..._i268.UpdateTerminationProtectionOutput.serializers,
  ..._i269.ValidateTemplateInput.serializers,
  ..._i270.TemplateParameter.serializers,
  ..._i271.ValidateTemplateOutput.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i272.BuiltList,
    [FullType(_i13.TypeConfigurationIdentifier)],
  ): _i272.ListBuilder<_i13.TypeConfigurationIdentifier>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i15.BatchDescribeTypeConfigurationsError)],
  ): _i272.ListBuilder<_i15.BatchDescribeTypeConfigurationsError>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i16.TypeConfigurationDetails)],
  ): _i272.ListBuilder<_i16.TypeConfigurationDetails>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(String)],
  ): _i272.ListBuilder<String>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i25.RollbackTrigger)],
  ): _i272.ListBuilder<_i25.RollbackTrigger>.new,
  const FullType(
    _i272.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i272.MapBuilder<String, String>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i24.Capability)],
  ): _i272.ListBuilder<_i24.Capability>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i23.Parameter)],
  ): _i272.ListBuilder<_i23.Parameter>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i29.ResourceToImport)],
  ): _i272.ListBuilder<_i29.ResourceToImport>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i27.Tag)],
  ): _i272.ListBuilder<_i27.Tag>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i74.AccountLimit)],
  ): _i272.ListBuilder<_i74.AccountLimit>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i87.ResourceChangeDetail)],
  ): _i272.ListBuilder<_i87.ResourceChangeDetail>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i82.ResourceAttribute)],
  ): _i272.ListBuilder<_i82.ResourceAttribute>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i90.Change)],
  ): _i272.ListBuilder<_i90.Change>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i99.ChangeSetHook)],
  ): _i272.ListBuilder<_i99.ChangeSetHook>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i116.StackEvent)],
  ): _i272.ListBuilder<_i116.StackEvent>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i126.StackResourceDriftStatus)],
  ): _i272.ListBuilder<_i126.StackResourceDriftStatus>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i131.PhysicalResourceIdContextKeyValuePair)],
  ): _i272.ListBuilder<_i131.PhysicalResourceIdContextKeyValuePair>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i133.PropertyDifference)],
  ): _i272.ListBuilder<_i133.PropertyDifference>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i134.StackResourceDrift)],
  ): _i272.ListBuilder<_i134.StackResourceDrift>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i137.StackResource)],
  ): _i272.ListBuilder<_i137.StackResource>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i156.Stack)],
  ): _i272.ListBuilder<_i156.Stack>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i154.Output)],
  ): _i272.ListBuilder<_i154.Output>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(int)],
  ): _i272.ListBuilder<int>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i162.RequiredActivatedType)],
  ): _i272.ListBuilder<_i162.RequiredActivatedType>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i180.TemplateStage)],
  ): _i272.ListBuilder<_i180.TemplateStage>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i185.ParameterDeclaration)],
  ): _i272.ListBuilder<_i185.ParameterDeclaration>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i186.ResourceIdentifierSummary)],
  ): _i272.ListBuilder<_i186.ResourceIdentifierSummary>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i192.ChangeSetSummary)],
  ): _i272.ListBuilder<_i192.ChangeSetSummary>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i195.Export)],
  ): _i272.ListBuilder<_i195.Export>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i202.StackInstanceSummary)],
  ): _i272.ListBuilder<_i202.StackInstanceSummary>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i200.StackInstanceFilter)],
  ): _i272.ListBuilder<_i200.StackInstanceFilter>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i206.StackResourceSummary)],
  ): _i272.ListBuilder<_i206.StackResourceSummary>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i214.StackSetOperationResultSummary)],
  ): _i272.ListBuilder<_i214.StackSetOperationResultSummary>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i209.OperationResultFilter)],
  ): _i272.ListBuilder<_i209.OperationResultFilter>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i217.StackSetOperationSummary)],
  ): _i272.ListBuilder<_i217.StackSetOperationSummary>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i220.StackSetSummary)],
  ): _i272.ListBuilder<_i220.StackSetSummary>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i224.StackSummary)],
  ): _i272.ListBuilder<_i224.StackSummary>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i153.StackStatus)],
  ): _i272.ListBuilder<_i153.StackStatus>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i229.TypeVersionSummary)],
  ): _i272.ListBuilder<_i229.TypeVersionSummary>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i234.TypeSummary)],
  ): _i272.ListBuilder<_i234.TypeSummary>.new,
  const FullType(
    _i272.BuiltList,
    [FullType(_i270.TemplateParameter)],
  ): _i272.ListBuilder<_i270.TemplateParameter>.new,
};
