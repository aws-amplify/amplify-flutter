// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.cloud_formation_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i50;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_limit.dart'
    as _i51;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/activate_organizations_access_input.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/activate_organizations_access_output.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/activate_type_input.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/activate_type_output.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/batch_describe_type_configurations_input.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/batch_describe_type_configurations_output.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/cancel_update_stack_input.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_summary.dart'
    as _i126;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/continue_update_rollback_input.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/continue_update_rollback_output.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_change_set_input.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_change_set_output.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_input.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_instances_input.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_instances_output.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_output.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_set_input.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_set_output.dart'
    as _i27;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deactivate_organizations_access_input.dart'
    as _i31;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deactivate_organizations_access_output.dart'
    as _i30;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deactivate_type_input.dart'
    as _i34;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deactivate_type_output.dart'
    as _i33;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_change_set_input.dart'
    as _i37;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_change_set_output.dart'
    as _i36;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_input.dart'
    as _i39;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_instances_input.dart'
    as _i42;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_instances_output.dart'
    as _i41;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_set_input.dart'
    as _i45;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/delete_stack_set_output.dart'
    as _i44;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deregister_type_input.dart'
    as _i48;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deregister_type_output.dart'
    as _i47;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_account_limits_input.dart'
    as _i52;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_hooks_input.dart'
    as _i58;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_hooks_output.dart'
    as _i57;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_input.dart'
    as _i55;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_change_set_output.dart'
    as _i54;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_organizations_access_input.dart'
    as _i61;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_organizations_access_output.dart'
    as _i60;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_publisher_input.dart'
    as _i64;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_publisher_output.dart'
    as _i63;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_drift_detection_status_input.dart'
    as _i67;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_drift_detection_status_output.dart'
    as _i66;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_events_input.dart'
    as _i70;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_instance_input.dart'
    as _i73;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_instance_output.dart'
    as _i72;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_drifts_input.dart'
    as _i79;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_drifts_output.dart'
    as _i78;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_input.dart'
    as _i76;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resource_output.dart'
    as _i75;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resources_input.dart'
    as _i82;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_resources_output.dart'
    as _i81;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_input.dart'
    as _i85;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_operation_input.dart'
    as _i88;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_operation_output.dart'
    as _i87;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_set_output.dart'
    as _i84;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stacks_input.dart'
    as _i91;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_input.dart'
    as _i94;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_output.dart'
    as _i93;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_registration_input.dart'
    as _i97;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_type_registration_output.dart'
    as _i96;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_drift_input.dart'
    as _i100;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_drift_output.dart'
    as _i99;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_resource_drift_input.dart'
    as _i103;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_resource_drift_output.dart'
    as _i102;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_set_drift_input.dart'
    as _i106;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/detect_stack_set_drift_output.dart'
    as _i105;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/estimate_template_cost_input.dart'
    as _i109;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/estimate_template_cost_output.dart'
    as _i108;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execute_change_set_input.dart'
    as _i112;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execute_change_set_output.dart'
    as _i111;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/export.dart'
    as _i129;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_stack_policy_input.dart'
    as _i115;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_stack_policy_output.dart'
    as _i114;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_input.dart'
    as _i118;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_output.dart'
    as _i117;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_summary_input.dart'
    as _i121;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/get_template_summary_output.dart'
    as _i120;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/import_stacks_to_stack_set_input.dart'
    as _i124;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/import_stacks_to_stack_set_output.dart'
    as _i123;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_change_sets_input.dart'
    as _i127;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_exports_input.dart'
    as _i130;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_imports_input.dart'
    as _i132;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_instances_input.dart'
    as _i135;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_resources_input.dart'
    as _i138;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operation_results_input.dart'
    as _i141;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operations_input.dart'
    as _i144;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_sets_input.dart'
    as _i147;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stacks_input.dart'
    as _i150;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_registrations_input.dart'
    as _i153;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_registrations_output.dart'
    as _i152;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_versions_input.dart'
    as _i156;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_type_versions_output.dart'
    as _i155;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_types_input.dart'
    as _i159;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/publish_type_input.dart'
    as _i162;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/publish_type_output.dart'
    as _i161;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/record_handler_progress_input.dart'
    as _i165;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/record_handler_progress_output.dart'
    as _i164;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_publisher_input.dart'
    as _i168;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_publisher_output.dart'
    as _i167;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_type_input.dart'
    as _i171;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/register_type_output.dart'
    as _i170;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_stack_input.dart'
    as _i174;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_stack_output.dart'
    as _i173;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_stack_policy_input.dart'
    as _i176;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_configuration_input.dart'
    as _i179;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_configuration_output.dart'
    as _i178;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_default_version_input.dart'
    as _i182;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/set_type_default_version_output.dart'
    as _i181;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/signal_resource_input.dart'
    as _i184;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack.dart'
    as _i90;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_event.dart'
    as _i69;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_summary.dart'
    as _i134;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_summary.dart'
    as _i137;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_result_summary.dart'
    as _i140;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_summary.dart'
    as _i143;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_summary.dart'
    as _i146;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_summary.dart'
    as _i149;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stop_stack_set_operation_input.dart'
    as _i187;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stop_stack_set_operation_output.dart'
    as _i186;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/test_type_input.dart'
    as _i190;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/test_type_output.dart'
    as _i189;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_summary.dart'
    as _i158;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_input.dart'
    as _i193;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_instances_input.dart'
    as _i196;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_instances_output.dart'
    as _i195;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_output.dart'
    as _i192;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_set_input.dart'
    as _i199;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_set_output.dart'
    as _i198;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_termination_protection_input.dart'
    as _i202;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_termination_protection_output.dart'
    as _i201;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/validate_template_input.dart'
    as _i205;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/validate_template_output.dart'
    as _i204;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/activate_organizations_access_operation.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/activate_type_operation.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/batch_describe_type_configurations_operation.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/cancel_update_stack_operation.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/continue_update_rollback_operation.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/create_change_set_operation.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/create_stack_instances_operation.dart'
    as _i26;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/create_stack_operation.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/create_stack_set_operation.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/deactivate_organizations_access_operation.dart'
    as _i32;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/deactivate_type_operation.dart'
    as _i35;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/delete_change_set_operation.dart'
    as _i38;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/delete_stack_instances_operation.dart'
    as _i43;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/delete_stack_operation.dart'
    as _i40;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/delete_stack_set_operation.dart'
    as _i46;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/deregister_type_operation.dart'
    as _i49;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_account_limits_operation.dart'
    as _i53;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_change_set_hooks_operation.dart'
    as _i59;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_change_set_operation.dart'
    as _i56;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_organizations_access_operation.dart'
    as _i62;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_publisher_operation.dart'
    as _i65;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_stack_drift_detection_status_operation.dart'
    as _i68;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_stack_events_operation.dart'
    as _i71;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_stack_instance_operation.dart'
    as _i74;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_stack_resource_drifts_operation.dart'
    as _i80;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_stack_resource_operation.dart'
    as _i77;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_stack_resources_operation.dart'
    as _i83;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_stack_set.dart'
    as _i86;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_stack_set_operation.dart'
    as _i89;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_stacks_operation.dart'
    as _i92;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_type_operation.dart'
    as _i95;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/describe_type_registration_operation.dart'
    as _i98;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/detect_stack_drift_operation.dart'
    as _i101;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/detect_stack_resource_drift_operation.dart'
    as _i104;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/detect_stack_set_drift_operation.dart'
    as _i107;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/estimate_template_cost_operation.dart'
    as _i110;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/execute_change_set_operation.dart'
    as _i113;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/get_stack_policy_operation.dart'
    as _i116;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/get_template_operation.dart'
    as _i119;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/get_template_summary_operation.dart'
    as _i122;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/import_stacks_to_stack_set_operation.dart'
    as _i125;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/list_change_sets_operation.dart'
    as _i128;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/list_exports_operation.dart'
    as _i131;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/list_imports_operation.dart'
    as _i133;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/list_stack_instances_operation.dart'
    as _i136;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/list_stack_resources_operation.dart'
    as _i139;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/list_stack_set_operation_results_operation.dart'
    as _i142;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/list_stack_set_operations_operation.dart'
    as _i145;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/list_stack_sets_operation.dart'
    as _i148;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/list_stacks_operation.dart'
    as _i151;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/list_type_registrations_operation.dart'
    as _i154;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/list_type_versions_operation.dart'
    as _i157;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/list_types_operation.dart'
    as _i160;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/publish_type_operation.dart'
    as _i163;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/record_handler_progress_operation.dart'
    as _i166;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/register_publisher_operation.dart'
    as _i169;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/register_type_operation.dart'
    as _i172;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/rollback_stack_operation.dart'
    as _i175;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/set_stack_policy_operation.dart'
    as _i177;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/set_type_configuration_operation.dart'
    as _i180;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/set_type_default_version_operation.dart'
    as _i183;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/signal_resource_operation.dart'
    as _i185;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/stop_stack_set_operation.dart'
    as _i188;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/test_type_operation.dart'
    as _i191;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/update_stack_instances_operation.dart'
    as _i197;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/update_stack_operation.dart'
    as _i194;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/update_stack_set_operation.dart'
    as _i200;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/update_termination_protection_operation.dart'
    as _i203;
import 'package:smoke_test/src/sdk/src/cloud_formation/operation/validate_template_operation.dart'
    as _i206;

/// ## CloudFormation
///
/// CloudFormation allows you to create and manage Amazon Web Services infrastructure deployments predictably and repeatedly. You can use CloudFormation to leverage Amazon Web Services products, such as Amazon Elastic Compute Cloud, Amazon Elastic Block Store, Amazon Simple Notification Service, Elastic Load Balancing, and Auto Scaling to build highly reliable, highly scalable, cost-effective applications without creating or configuring the underlying Amazon Web Services infrastructure.
///
/// With CloudFormation, you declare all your resources and dependencies in a template file. The template defines a collection of resources as a single unit called a stack. CloudFormation creates and deletes all member resources of the stack together and manages all dependencies between the resources for you.
///
/// For more information about CloudFormation, see the [CloudFormation product page](http://aws.amazon.com/cloudformation/).
///
/// CloudFormation makes use of other Amazon Web Services products. If you need additional technical information about a specific Amazon Web Services product, you can find the product's technical documentation at [docs.aws.amazon.com](https://docs.aws.amazon.com/).
class CloudFormationClient {
  /// ## CloudFormation
  ///
  /// CloudFormation allows you to create and manage Amazon Web Services infrastructure deployments predictably and repeatedly. You can use CloudFormation to leverage Amazon Web Services products, such as Amazon Elastic Compute Cloud, Amazon Elastic Block Store, Amazon Simple Notification Service, Elastic Load Balancing, and Auto Scaling to build highly reliable, highly scalable, cost-effective applications without creating or configuring the underlying Amazon Web Services infrastructure.
  ///
  /// With CloudFormation, you declare all your resources and dependencies in a template file. The template defines a collection of resources as a single unit called a stack. CloudFormation creates and deletes all member resources of the stack together and manages all dependencies between the resources for you.
  ///
  /// For more information about CloudFormation, see the [CloudFormation product page](http://aws.amazon.com/cloudformation/).
  ///
  /// CloudFormation makes use of other Amazon Web Services products. If you need additional technical information about a specific Amazon Web Services product, you can find the product's technical documentation at [docs.aws.amazon.com](https://docs.aws.amazon.com/).
  const CloudFormationClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.environment(),
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

  /// Activate trusted access with Organizations. With trusted access between StackSets and Organizations activated, the management account has permissions to create and manage StackSets for your organization.
  _i3.SmithyOperation<_i4.ActivateOrganizationsAccessOutput>
      activateOrganizationsAccess(
    _i5.ActivateOrganizationsAccessInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i6.ActivateOrganizationsAccessOperation(
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

  /// Activates a public third-party extension, making it available for use in stack templates. For more information, see [Using public extensions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html) in the _CloudFormation User Guide_.
  ///
  /// Once you have activated a public third-party extension in your account and Region, use [SetTypeConfiguration](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html) to specify configuration properties for the extension. For more information, see [Configuring extensions at the account level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration) in the _CloudFormation User Guide_.
  _i3.SmithyOperation<_i7.ActivateTypeOutput> activateType(
    _i8.ActivateTypeInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i9.ActivateTypeOperation(
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

  /// Returns configuration data for the specified CloudFormation extensions, from the CloudFormation registry for the account and Region.
  ///
  /// For more information, see [Configuring extensions at the account level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration) in the _CloudFormation User Guide_.
  _i3.SmithyOperation<_i10.BatchDescribeTypeConfigurationsOutput>
      batchDescribeTypeConfigurations(
    _i11.BatchDescribeTypeConfigurationsInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i12.BatchDescribeTypeConfigurationsOperation(
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

  /// Cancels an update on the specified stack. If the call completes successfully, the stack rolls back the update and reverts to the previous stack configuration.
  ///
  /// You can cancel only stacks that are in the `UPDATE\_IN\_PROGRESS` state.
  _i3.SmithyOperation<void> cancelUpdateStack(
    _i13.CancelUpdateStackInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i14.CancelUpdateStackOperation(
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

  /// For a specified stack that's in the `UPDATE\_ROLLBACK\_FAILED` state, continues rolling it back to the `UPDATE\_ROLLBACK\_COMPLETE` state. Depending on the cause of the failure, you can manually [fix the error](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed) and continue the rollback. By continuing the rollback, you can return your stack to a working state (the `UPDATE\_ROLLBACK\_COMPLETE` state), and then try to update the stack again.
  ///
  /// A stack goes into the `UPDATE\_ROLLBACK\_FAILED` state when CloudFormation can't roll back all changes after a failed stack update. For example, you might have a stack that's rolling back to an old database instance that was deleted outside of CloudFormation. Because CloudFormation doesn't know the database was deleted, it assumes that the database instance still exists and attempts to roll back to it, causing the update rollback to fail.
  _i3.SmithyOperation<_i15.ContinueUpdateRollbackOutput> continueUpdateRollback(
    _i16.ContinueUpdateRollbackInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i17.ContinueUpdateRollbackOperation(
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

  /// Creates a list of changes that will be applied to a stack so that you can review the changes before executing them. You can create a change set for a stack that doesn't exist or an existing stack. If you create a change set for a stack that doesn't exist, the change set shows all of the resources that CloudFormation will create. If you create a change set for an existing stack, CloudFormation compares the stack's information with the information that you submit in the change set and lists the differences. Use change sets to understand which resources CloudFormation will create or change, and how it will change resources in an existing stack, before you create or update a stack.
  ///
  /// To create a change set for a stack that doesn't exist, for the `ChangeSetType` parameter, specify `CREATE`. To create a change set for an existing stack, specify `UPDATE` for the `ChangeSetType` parameter. To create a change set for an import operation, specify `IMPORT` for the `ChangeSetType` parameter. After the `CreateChangeSet` call successfully completes, CloudFormation starts creating the change set. To check the status of the change set or to review it, use the DescribeChangeSet action.
  ///
  /// When you are satisfied with the changes the change set will make, execute the change set by using the ExecuteChangeSet action. CloudFormation doesn't make changes until you execute the change set.
  ///
  /// To create a change set for the entire stack hierarchy, set `IncludeNestedStacks` to `True`.
  _i3.SmithyOperation<_i18.CreateChangeSetOutput> createChangeSet(
    _i19.CreateChangeSetInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i20.CreateChangeSetOperation(
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

  /// Creates a stack as specified in the template. After the call completes successfully, the stack creation starts. You can check the status of the stack through the DescribeStacks operation.
  _i3.SmithyOperation<_i21.CreateStackOutput> createStack(
    _i22.CreateStackInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i23.CreateStackOperation(
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

  /// Creates stack instances for the specified accounts, within the specified Amazon Web Services Regions. A stack instance refers to a stack in a specific account and Region. You must specify at least one value for either `Accounts` or `DeploymentTargets`, and you must specify at least one value for `Regions`.
  _i3.SmithyOperation<_i24.CreateStackInstancesOutput> createStackInstances(
    _i25.CreateStackInstancesInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i26.CreateStackInstancesOperation(
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

  /// Creates a stack set.
  _i3.SmithyOperation<_i27.CreateStackSetOutput> createStackSet(
    _i28.CreateStackSetInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i29.CreateStackSetOperation(
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

  /// Deactivates trusted access with Organizations. If trusted access is deactivated, the management account does not have permissions to create and manage service-managed StackSets for your organization.
  _i3.SmithyOperation<_i30.DeactivateOrganizationsAccessOutput>
      deactivateOrganizationsAccess(
    _i31.DeactivateOrganizationsAccessInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i32.DeactivateOrganizationsAccessOperation(
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

  /// Deactivates a public extension that was previously activated in this account and Region.
  ///
  /// Once deactivated, an extension can't be used in any CloudFormation operation. This includes stack update operations where the stack template includes the extension, even if no updates are being made to the extension. In addition, deactivated extensions aren't automatically updated if a new version of the extension is released.
  _i3.SmithyOperation<_i33.DeactivateTypeOutput> deactivateType(
    _i34.DeactivateTypeInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i35.DeactivateTypeOperation(
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

  /// Deletes the specified change set. Deleting change sets ensures that no one executes the wrong change set.
  ///
  /// If the call successfully completes, CloudFormation successfully deleted the change set.
  ///
  /// If `IncludeNestedStacks` specifies `True` during the creation of the nested change set, then `DeleteChangeSet` will delete all change sets that belong to the stacks hierarchy and will also delete all change sets for nested stacks with the status of `REVIEW\_IN\_PROGRESS`.
  _i3.SmithyOperation<_i36.DeleteChangeSetOutput> deleteChangeSet(
    _i37.DeleteChangeSetInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i38.DeleteChangeSetOperation(
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

  /// Deletes a specified stack. Once the call completes successfully, stack deletion starts. Deleted stacks don't show up in the DescribeStacks operation if the deletion has been completed successfully.
  _i3.SmithyOperation<void> deleteStack(
    _i39.DeleteStackInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i40.DeleteStackOperation(
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

  /// Deletes stack instances for the specified accounts, in the specified Amazon Web Services Regions.
  _i3.SmithyOperation<_i41.DeleteStackInstancesOutput> deleteStackInstances(
    _i42.DeleteStackInstancesInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i43.DeleteStackInstancesOperation(
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

  /// Deletes a stack set. Before you can delete a stack set, all its member stack instances must be deleted. For more information about how to complete this, see DeleteStackInstances.
  _i3.SmithyOperation<_i44.DeleteStackSetOutput> deleteStackSet(
    _i45.DeleteStackSetInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i46.DeleteStackSetOperation(
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

  /// Marks an extension or extension version as `DEPRECATED` in the CloudFormation registry, removing it from active use. Deprecated extensions or extension versions cannot be used in CloudFormation operations.
  ///
  /// To deregister an entire extension, you must individually deregister all active versions of that extension. If an extension has only a single active version, deregistering that version results in the extension itself being deregistered and marked as deprecated in the registry.
  ///
  /// You can't deregister the default version of an extension if there are other active version of that extension. If you do deregister the default version of an extension, the extension type itself is deregistered as well and marked as deprecated.
  ///
  /// To view the deprecation status of an extension or extension version, use [DescribeType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html).
  _i3.SmithyOperation<_i47.DeregisterTypeOutput> deregisterType(
    _i48.DeregisterTypeInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i49.DeregisterTypeOperation(
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

  /// Retrieves your account's CloudFormation limits, such as the maximum number of stacks that you can create in your account. For more information about account limits, see [CloudFormation Quotas](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html) in the _CloudFormation User Guide_.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i50.BuiltList<_i51.AccountLimit>, void, String>>
      describeAccountLimits(
    _i52.DescribeAccountLimitsInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i53.DescribeAccountLimitsOperation(
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

  /// Returns the inputs for the change set and a list of changes that CloudFormation will make if you execute the change set. For more information, see [Updating Stacks Using Change Sets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html) in the CloudFormation User Guide.
  _i3.SmithyOperation<_i54.DescribeChangeSetOutput> describeChangeSet(
    _i55.DescribeChangeSetInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i56.DescribeChangeSetOperation(
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

  /// Returns hook-related information for the change set and a list of changes that CloudFormation makes when you run the change set.
  _i3.SmithyOperation<_i57.DescribeChangeSetHooksOutput> describeChangeSetHooks(
    _i58.DescribeChangeSetHooksInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i59.DescribeChangeSetHooksOperation(
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

  /// Retrieves information about the account's `OrganizationAccess` status. This API can be called either by the management account or the delegated administrator by using the `CallAs` parameter. This API can also be called without the `CallAs` parameter by the management account.
  _i3.SmithyOperation<_i60.DescribeOrganizationsAccessOutput>
      describeOrganizationsAccess(
    _i61.DescribeOrganizationsAccessInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i62.DescribeOrganizationsAccessOperation(
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

  /// Returns information about a CloudFormation extension publisher.
  ///
  /// If you don't supply a `PublisherId`, and you have registered as an extension publisher, `DescribePublisher` returns information about your own publisher account.
  ///
  /// For more information about registering as a publisher, see:
  ///
  /// *   [RegisterPublisher](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html)
  ///
  /// *   [Publishing extensions to make them available for public use](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html) in the _CloudFormation CLI User Guide_
  _i3.SmithyOperation<_i63.DescribePublisherOutput> describePublisher(
    _i64.DescribePublisherInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i65.DescribePublisherOperation(
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

  /// Returns information about a stack drift detection operation. A stack drift detection operation detects whether a stack's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted. For more information about stack and resource drift, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
  ///
  /// Use DetectStackDrift to initiate a stack drift detection operation. `DetectStackDrift` returns a `StackDriftDetectionId` you can use to monitor the progress of the operation using `DescribeStackDriftDetectionStatus`. Once the drift detection operation has completed, use DescribeStackResourceDrifts to return drift information about the stack and its resources.
  _i3.SmithyOperation<_i66.DescribeStackDriftDetectionStatusOutput>
      describeStackDriftDetectionStatus(
    _i67.DescribeStackDriftDetectionStatusInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i68.DescribeStackDriftDetectionStatusOperation(
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

  /// Returns all stack related events for a specified stack in reverse chronological order. For more information about a stack's event history, go to [Stacks](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/concept-stack.html) in the CloudFormation User Guide.
  ///
  /// You can list events for stacks that have failed to create or have been deleted by specifying the unique stack identifier (stack ID).
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i50.BuiltList<_i69.StackEvent>, void, String>>
      describeStackEvents(
    _i70.DescribeStackEventsInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i71.DescribeStackEventsOperation(
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

  /// Returns the stack instance that's associated with the specified StackSet, Amazon Web Services account, and Amazon Web Services Region.
  ///
  /// For a list of stack instances that are associated with a specific StackSet, use ListStackInstances.
  _i3.SmithyOperation<_i72.DescribeStackInstanceOutput> describeStackInstance(
    _i73.DescribeStackInstanceInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i74.DescribeStackInstanceOperation(
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

  /// Returns a description of the specified resource in the specified stack.
  ///
  /// For deleted stacks, DescribeStackResource returns resource information for up to 90 days after the stack has been deleted.
  _i3.SmithyOperation<_i75.DescribeStackResourceOutput> describeStackResource(
    _i76.DescribeStackResourceInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i77.DescribeStackResourceOperation(
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

  /// Returns drift information for the resources that have been checked for drift in the specified stack. This includes actual and expected configuration values for resources where CloudFormation detects configuration drift.
  ///
  /// For a given stack, there will be one `StackResourceDrift` for each stack resource that has been checked for drift. Resources that haven't yet been checked for drift aren't included. Resources that don't currently support drift detection aren't checked, and so not included. For a list of resources that support drift detection, see [Resources that Support Drift Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).
  ///
  /// Use DetectStackResourceDrift to detect drift on individual resources, or DetectStackDrift to detect drift on all supported resources for a given stack.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i78.DescribeStackResourceDriftsOutput, int,
          String>> describeStackResourceDrifts(
    _i79.DescribeStackResourceDriftsInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i80.DescribeStackResourceDriftsOperation(
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

  /// Returns Amazon Web Services resource descriptions for running and deleted stacks. If `StackName` is specified, all the associated resources that are part of the stack are returned. If `PhysicalResourceId` is specified, the associated resources of the stack that the resource belongs to are returned.
  ///
  /// Only the first 100 resources will be returned. If your stack has more resources than this, you should use `ListStackResources` instead.
  ///
  /// For deleted stacks, `DescribeStackResources` returns resource information for up to 90 days after the stack has been deleted.
  ///
  /// You must specify either `StackName` or `PhysicalResourceId`, but not both. In addition, you can specify `LogicalResourceId` to filter the returned result. For more information about resources, the `LogicalResourceId` and `PhysicalResourceId`, go to the [CloudFormation User Guide](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/).
  ///
  /// A `ValidationError` is returned if you specify both `StackName` and `PhysicalResourceId` in the same request.
  _i3.SmithyOperation<_i81.DescribeStackResourcesOutput> describeStackResources(
    _i82.DescribeStackResourcesInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i83.DescribeStackResourcesOperation(
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

  /// Returns the description of the specified StackSet.
  _i3.SmithyOperation<_i84.DescribeStackSetOutput> describeStackSet(
    _i85.DescribeStackSetInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i86.DescribeStackSet(
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

  /// Returns the description of the specified StackSet operation.
  _i3.SmithyOperation<_i87.DescribeStackSetOperationOutput>
      describeStackSetOperation(
    _i88.DescribeStackSetOperationInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i89.DescribeStackSetOperation(
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

  /// Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created.
  ///
  /// If the stack doesn't exist, an `ValidationError` is returned.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i50.BuiltList<_i90.Stack>, void, String>>
      describeStacks(
    _i91.DescribeStacksInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i92.DescribeStacksOperation(
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

  /// Returns detailed information about an extension that has been registered.
  ///
  /// If you specify a `VersionId`, `DescribeType` returns information about that specific extension version. Otherwise, it returns information about the default extension version.
  _i3.SmithyOperation<_i93.DescribeTypeOutput> describeType(
    _i94.DescribeTypeInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i95.DescribeTypeOperation(
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

  /// Returns information about an extension's registration, including its current status and type and version identifiers.
  ///
  /// When you initiate a registration request using RegisterType, you can then use DescribeTypeRegistration to monitor the progress of that registration request.
  ///
  /// Once the registration request has completed, use DescribeType to return detailed information about an extension.
  _i3.SmithyOperation<_i96.DescribeTypeRegistrationOutput>
      describeTypeRegistration(
    _i97.DescribeTypeRegistrationInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i98.DescribeTypeRegistrationOperation(
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

  /// Detects whether a stack's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. For each resource in the stack that supports drift detection, CloudFormation compares the actual configuration of the resource with its expected template configuration. Only resource properties explicitly defined in the stack template are checked for drift. A stack is considered to have drifted if one or more of its resources differ from their expected template configurations. For more information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
  ///
  /// Use `DetectStackDrift` to detect drift on all supported resources for a given stack, or DetectStackResourceDrift to detect drift on individual resources.
  ///
  /// For a list of stack resources that currently support drift detection, see [Resources that Support Drift Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).
  ///
  /// `DetectStackDrift` can take up to several minutes, depending on the number of resources contained within the stack. Use DescribeStackDriftDetectionStatus to monitor the progress of a detect stack drift operation. Once the drift detection operation has completed, use DescribeStackResourceDrifts to return drift information about the stack and its resources.
  ///
  /// When detecting drift on a stack, CloudFormation doesn't detect drift on any nested stacks belonging to that stack. Perform `DetectStackDrift` directly on the nested stack itself.
  _i3.SmithyOperation<_i99.DetectStackDriftOutput> detectStackDrift(
    _i100.DetectStackDriftInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i101.DetectStackDriftOperation(
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

  /// Returns information about whether a resource's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. This information includes actual and expected property values for resources in which CloudFormation detects drift. Only resource properties explicitly defined in the stack template are checked for drift. For more information about stack and resource drift, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
  ///
  /// Use `DetectStackResourceDrift` to detect drift on individual resources, or DetectStackDrift to detect drift on all resources in a given stack that support drift detection.
  ///
  /// Resources that don't currently support drift detection can't be checked. For a list of resources that support drift detection, see [Resources that Support Drift Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).
  _i3.SmithyOperation<_i102.DetectStackResourceDriftOutput>
      detectStackResourceDrift(
    _i103.DetectStackResourceDriftInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i104.DetectStackResourceDriftOperation(
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

  /// Detect drift on a stack set. When CloudFormation performs drift detection on a stack set, it performs drift detection on the stack associated with each stack instance in the stack set. For more information, see [How CloudFormation performs drift detection on a stack set](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html).
  ///
  /// `DetectStackSetDrift` returns the `OperationId` of the stack set drift detection operation. Use this operation id with DescribeStackSetOperation to monitor the progress of the drift detection operation. The drift detection operation may take some time, depending on the number of stack instances included in the stack set, in addition to the number of resources included in each stack.
  ///
  /// Once the operation has completed, use the following actions to return drift information:
  ///
  /// *   Use DescribeStackSet to return detailed information about the stack set, including detailed information about the last _completed_ drift operation performed on the stack set. (Information about drift operations that are in progress isn't included.)
  ///
  /// *   Use ListStackInstances to return a list of stack instances belonging to the stack set, including the drift status and last drift time checked of each instance.
  ///
  /// *   Use DescribeStackInstance to return detailed information about a specific stack instance, including its drift status and last drift time checked.
  ///
  ///
  /// For more information about performing a drift detection operation on a stack set, see [Detecting unmanaged changes in stack sets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html).
  ///
  /// You can only run a single drift detection operation on a given stack set at one time.
  ///
  /// To stop a drift detection stack set operation, use StopStackSetOperation.
  _i3.SmithyOperation<_i105.DetectStackSetDriftOutput> detectStackSetDrift(
    _i106.DetectStackSetDriftInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i107.DetectStackSetDriftOperation(
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

  /// Returns the estimated monthly cost of a template. The return value is an Amazon Web Services Simple Monthly Calculator URL with a query string that describes the resources required to run the template.
  _i3.SmithyOperation<_i108.EstimateTemplateCostOutput> estimateTemplateCost(
    _i109.EstimateTemplateCostInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i110.EstimateTemplateCostOperation(
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

  /// Updates a stack using the input information that was provided when the specified change set was created. After the call successfully completes, CloudFormation starts updating the stack. Use the DescribeStacks action to view the status of the update.
  ///
  /// When you execute a change set, CloudFormation deletes all other change sets associated with the stack because they aren't valid for the updated stack.
  ///
  /// If a stack policy is associated with the stack, CloudFormation enforces the policy during the update. You can't specify a temporary stack policy that overrides the current policy.
  ///
  /// To create a change set for the entire stack hierarchy, `IncludeNestedStacks` must have been set to `True`.
  _i3.SmithyOperation<_i111.ExecuteChangeSetOutput> executeChangeSet(
    _i112.ExecuteChangeSetInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i113.ExecuteChangeSetOperation(
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

  /// Returns the stack policy for a specified stack. If a stack doesn't have a policy, a null value is returned.
  _i3.SmithyOperation<_i114.GetStackPolicyOutput> getStackPolicy(
    _i115.GetStackPolicyInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i116.GetStackPolicyOperation(
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

  /// Returns the template body for a specified stack. You can get the template for running or deleted stacks.
  ///
  /// For deleted stacks, `GetTemplate` returns the template for up to 90 days after the stack has been deleted.
  ///
  /// If the template doesn't exist, a `ValidationError` is returned.
  _i3.SmithyOperation<_i117.GetTemplateOutput> getTemplate(
    _i118.GetTemplateInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i119.GetTemplateOperation(
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

  /// Returns information about a new or existing template. The `GetTemplateSummary` action is useful for viewing parameter information, such as default parameter values and parameter types, before you create or update a stack or stack set.
  ///
  /// You can use the `GetTemplateSummary` action when you submit a template, or you can get template information for a stack set, or a running or deleted stack.
  ///
  /// For deleted stacks, `GetTemplateSummary` returns the template information for up to 90 days after the stack has been deleted. If the template doesn't exist, a `ValidationError` is returned.
  _i3.SmithyOperation<_i120.GetTemplateSummaryOutput> getTemplateSummary(
    _i121.GetTemplateSummaryInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i122.GetTemplateSummaryOperation(
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

  /// Import existing stacks into a new stack sets. Use the stack import operation to import up to 10 stacks into a new stack set in the same account as the source stack or in a different administrator account and Region, by specifying the stack ID of the stack you intend to import.
  _i3.SmithyOperation<_i123.ImportStacksToStackSetOutput>
      importStacksToStackSet(
    _i124.ImportStacksToStackSetInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i125.ImportStacksToStackSetOperation(
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

  /// Returns the ID and status of each active change set for a stack. For example, CloudFormation lists change sets that are in the `CREATE\_IN\_PROGRESS` or `CREATE_PENDING` state.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i126.ChangeSetSummary>, void,
          String>> listChangeSets(
    _i127.ListChangeSetsInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i128.ListChangeSetsOperation(
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

  /// Lists all exported output values in the account and Region in which you call this action. Use this action to see the exported output values that you can import into other stacks. To import values, use the [Fn::ImportValue](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html) function.
  ///
  /// For more information, see [CloudFormation export stack output values](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html).
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i50.BuiltList<_i129.Export>, void, String>>
      listExports(
    _i130.ListExportsInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i131.ListExportsOperation(
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

  /// Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see ListExports.
  ///
  /// For more information about importing an exported output value, see the [Fn::ImportValue](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html) function.
  _i3.SmithyOperation<_i3.PaginatedResult<_i50.BuiltList<String>, void, String>>
      listImports(
    _i132.ListImportsInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i133.ListImportsOperation(
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

  /// Returns summary information about stack instances that are associated with the specified stack set. You can filter for stack instances that are associated with a specific Amazon Web Services account name or Region, or that have a specific status.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i134.StackInstanceSummary>, int,
          String>> listStackInstances(
    _i135.ListStackInstancesInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i136.ListStackInstancesOperation(
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

  /// Returns descriptions of all resources of the specified stack.
  ///
  /// For deleted stacks, ListStackResources returns resource information for up to 90 days after the stack has been deleted.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i137.StackResourceSummary>, void,
          String>> listStackResources(
    _i138.ListStackResourcesInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i139.ListStackResourcesOperation(
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

  /// Returns summary information about the results of a stack set operation.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i140.StackSetOperationResultSummary>,
          int, String>> listStackSetOperationResults(
    _i141.ListStackSetOperationResultsInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i142.ListStackSetOperationResultsOperation(
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

  /// Returns summary information about operations performed on a stack set.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i143.StackSetOperationSummary>, int,
          String>> listStackSetOperations(
    _i144.ListStackSetOperationsInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i145.ListStackSetOperationsOperation(
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

  /// Returns summary information about stack sets that are associated with the user.
  ///
  /// *   \[Self-managed permissions\] If you set the `CallAs` parameter to `SELF` while signed in to your Amazon Web Services account, `ListStackSets` returns all self-managed stack sets in your Amazon Web Services account.
  ///
  /// *   \[Service-managed permissions\] If you set the `CallAs` parameter to `SELF` while signed in to the organization's management account, `ListStackSets` returns all stack sets in the management account.
  ///
  /// *   \[Service-managed permissions\] If you set the `CallAs` parameter to `DELEGATED_ADMIN` while signed in to your member account, `ListStackSets` returns all stack sets with service-managed permissions in the management account.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i146.StackSetSummary>, int,
          String>> listStackSets(
    _i147.ListStackSetsInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i148.ListStackSetsOperation(
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

  /// Returns the summary information for stacks whose status matches the specified StackStatusFilter. Summary information for stacks that have been deleted is kept for 90 days after the stack is deleted. If no StackStatusFilter is specified, summary information for all stacks is returned (including existing stacks and stacks that have been deleted).
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i50.BuiltList<_i149.StackSummary>, void, String>>
      listStacks(
    _i150.ListStacksInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i151.ListStacksOperation(
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

  /// Returns a list of registration tokens for the specified extension(s).
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i152.ListTypeRegistrationsOutput, int, String>>
      listTypeRegistrations(
    _i153.ListTypeRegistrationsInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i154.ListTypeRegistrationsOperation(
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

  /// Returns summary information about the versions of an extension.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i155.ListTypeVersionsOutput, int, String>>
      listTypeVersions(
    _i156.ListTypeVersionsInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i157.ListTypeVersionsOperation(
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

  /// Returns summary information about extension that have been registered with CloudFormation.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i50.BuiltList<_i158.TypeSummary>, int, String>>
      listTypes(
    _i159.ListTypesInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i160.ListTypesOperation(
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

  /// Publishes the specified extension to the CloudFormation registry as a public extension in this Region. Public extensions are available for use by all CloudFormation users. For more information about publishing extensions, see [Publishing extensions to make them available for public use](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html) in the _CloudFormation CLI User Guide_.
  ///
  /// To publish an extension, you must be registered as a publisher with CloudFormation. For more information, see [RegisterPublisher](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html).
  _i3.SmithyOperation<_i161.PublishTypeOutput> publishType(
    _i162.PublishTypeInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i163.PublishTypeOperation(
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

  /// Reports progress of a resource handler to CloudFormation.
  ///
  /// Reserved for use by the [CloudFormation CLI](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html). Don't use this API in your code.
  _i3.SmithyOperation<_i164.RecordHandlerProgressOutput> recordHandlerProgress(
    _i165.RecordHandlerProgressInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i166.RecordHandlerProgressOperation(
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

  /// Registers your account as a publisher of public extensions in the CloudFormation registry. Public extensions are available for use by all CloudFormation users. This publisher ID applies to your account in all Amazon Web Services Regions.
  ///
  /// For information about requirements for registering as a public extension publisher, see [Registering your account to publish CloudFormation extensions](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs) in the _CloudFormation CLI User Guide_.
  _i3.SmithyOperation<_i167.RegisterPublisherOutput> registerPublisher(
    _i168.RegisterPublisherInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i169.RegisterPublisherOperation(
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

  /// Registers an extension with the CloudFormation service. Registering an extension makes it available for use in CloudFormation templates in your Amazon Web Services account, and includes:
  ///
  /// *   Validating the extension schema.
  ///
  /// *   Determining which handlers, if any, have been specified for the extension.
  ///
  /// *   Making the extension available for use in your account.
  ///
  ///
  /// For more information about how to develop extensions and ready them for registration, see [Creating Resource Providers](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-types.html) in the _CloudFormation CLI User Guide_.
  ///
  /// You can have a maximum of 50 resource extension versions registered at a time. This maximum is per account and per Region. Use [DeregisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeregisterType.html) to deregister specific extension versions if necessary.
  ///
  /// Once you have initiated a registration request using RegisterType, you can use DescribeTypeRegistration to monitor the progress of the registration request.
  ///
  /// Once you have registered a private extension in your account and Region, use [SetTypeConfiguration](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html) to specify configuration properties for the extension. For more information, see [Configuring extensions at the account level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration) in the _CloudFormation User Guide_.
  _i3.SmithyOperation<_i170.RegisterTypeOutput> registerType(
    _i171.RegisterTypeInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i172.RegisterTypeOperation(
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

  /// When specifying `RollbackStack`, you preserve the state of previously provisioned resources when an operation fails. You can check the status of the stack through the DescribeStacks operation.
  ///
  /// Rolls back the specified stack to the last known stable state from `CREATE_FAILED` or `UPDATE_FAILED` stack statuses.
  ///
  /// This operation will delete a stack if it doesn't contain a last known stable state. A last known stable state includes any status in a `*_COMPLETE`. This includes the following stack statuses.
  ///
  /// *   `CREATE_COMPLETE`
  ///
  /// *   `UPDATE_COMPLETE`
  ///
  /// *   `UPDATE\_ROLLBACK\_COMPLETE`
  ///
  /// *   `IMPORT_COMPLETE`
  ///
  /// *   `IMPORT\_ROLLBACK\_COMPLETE`
  _i3.SmithyOperation<_i173.RollbackStackOutput> rollbackStack(
    _i174.RollbackStackInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i175.RollbackStackOperation(
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

  /// Sets a stack policy for a specified stack.
  _i3.SmithyOperation<void> setStackPolicy(
    _i176.SetStackPolicyInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i177.SetStackPolicyOperation(
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

  /// Specifies the configuration data for a registered CloudFormation extension, in the given account and Region.
  ///
  /// To view the current configuration data for an extension, refer to the `ConfigurationSchema` element of [DescribeType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html). For more information, see [Configuring extensions at the account level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration) in the _CloudFormation User Guide_.
  ///
  /// It's strongly recommended that you use dynamic references to restrict sensitive configuration definitions, such as third-party credentials. For more details on dynamic references, see [Using dynamic references to specify template values](https://docs.aws.amazon.com/) in the _CloudFormation User Guide_.
  _i3.SmithyOperation<_i178.SetTypeConfigurationOutput> setTypeConfiguration(
    _i179.SetTypeConfigurationInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i180.SetTypeConfigurationOperation(
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

  /// Specify the default version of an extension. The default version of an extension will be used in CloudFormation operations.
  _i3.SmithyOperation<_i181.SetTypeDefaultVersionOutput> setTypeDefaultVersion(
    _i182.SetTypeDefaultVersionInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i183.SetTypeDefaultVersionOperation(
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

  /// Sends a signal to the specified resource with a success or failure status. You can use the `SignalResource` operation in conjunction with a creation policy or update policy. CloudFormation doesn't proceed with a stack creation or update until resources receive the required number of signals or the timeout period is exceeded. The `SignalResource` operation is useful in cases where you want to send signals from anywhere other than an Amazon EC2 instance.
  _i3.SmithyOperation<void> signalResource(
    _i184.SignalResourceInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i185.SignalResourceOperation(
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

  /// Stops an in-progress operation on a stack set and its associated stack instances. StackSets will cancel all the unstarted stack instance deployments and wait for those are in-progress to complete.
  _i3.SmithyOperation<_i186.StopStackSetOperationOutput> stopStackSetOperation(
    _i187.StopStackSetOperationInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i188.StopStackSetOperation(
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

  /// Tests a registered extension to make sure it meets all necessary requirements for being published in the CloudFormation registry.
  ///
  /// *   For resource types, this includes passing all contracts tests defined for the type.
  ///
  /// *   For modules, this includes determining if the module's model meets all necessary requirements.
  ///
  ///
  /// For more information, see [Testing your public extension prior to publishing](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-testing) in the _CloudFormation CLI User Guide_.
  ///
  /// If you don't specify a version, CloudFormation uses the default version of the extension in your account and Region for testing.
  ///
  /// To perform testing, CloudFormation assumes the execution role specified when the type was registered. For more information, see [RegisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html).
  ///
  /// Once you've initiated testing on an extension using `TestType`, you can pass the returned `TypeVersionArn` into [DescribeType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html) to monitor the current test status and test status description for the extension.
  ///
  /// An extension must have a test status of `PASSED` before it can be published. For more information, see [Publishing extensions to make them available for public use](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-publish.html) in the _CloudFormation CLI User Guide_.
  _i3.SmithyOperation<_i189.TestTypeOutput> testType(
    _i190.TestTypeInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i191.TestTypeOperation(
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

  /// Updates a stack as specified in the template. After the call completes successfully, the stack update starts. You can check the status of the stack through the DescribeStacks action.
  ///
  /// To get a copy of the template for an existing stack, you can use the GetTemplate action.
  ///
  /// For more information about creating an update template, updating a stack, and monitoring the progress of the update, see [Updating a Stack](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html).
  _i3.SmithyOperation<_i192.UpdateStackOutput> updateStack(
    _i193.UpdateStackInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i194.UpdateStackOperation(
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

  /// Updates the parameter values for stack instances for the specified accounts, within the specified Amazon Web Services Regions. A stack instance refers to a stack in a specific account and Region.
  ///
  /// You can only update stack instances in Amazon Web Services Regions and accounts where they already exist; to create additional stack instances, use [CreateStackInstances](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html).
  ///
  /// During stack set updates, any parameters overridden for a stack instance aren't updated, but retain their overridden value.
  ///
  /// You can only update the parameter _values_ that are specified in the stack set; to add or delete a parameter itself, use [UpdateStackSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html) to update the stack set template. If you add a parameter to a template, before you can override the parameter value specified in the stack set you must first use [UpdateStackSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html) to update all stack instances with the updated template and parameter value specified in the stack set. Once a stack instance has been updated with the new parameter, you can then override the parameter value using `UpdateStackInstances`.
  _i3.SmithyOperation<_i195.UpdateStackInstancesOutput> updateStackInstances(
    _i196.UpdateStackInstancesInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i197.UpdateStackInstancesOperation(
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

  /// Updates the stack set, and associated stack instances in the specified accounts and Amazon Web Services Regions.
  ///
  /// Even if the stack set operation created by updating the stack set fails (completely or partially, below or above a specified failure tolerance), the stack set is updated with your changes. Subsequent CreateStackInstances calls on the specified stack set use the updated stack set.
  _i3.SmithyOperation<_i198.UpdateStackSetOutput> updateStackSet(
    _i199.UpdateStackSetInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i200.UpdateStackSetOperation(
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

  /// Updates termination protection for the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see [Protecting a Stack From Being Deleted](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html) in the _CloudFormation User Guide_.
  ///
  /// For [nested stacks](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html), termination protection is set on the root stack and can't be changed directly on the nested stack.
  _i3.SmithyOperation<_i201.UpdateTerminationProtectionOutput>
      updateTerminationProtection(
    _i202.UpdateTerminationProtectionInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i203.UpdateTerminationProtectionOperation(
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

  /// Validates a specified template. CloudFormation first checks if the template is valid JSON. If it isn't, CloudFormation checks if the template is valid YAML. If both these checks fail, CloudFormation returns a template validation error.
  _i3.SmithyOperation<_i204.ValidateTemplateOutput> validateTemplate(
    _i205.ValidateTemplateInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i206.ValidateTemplateOperation(
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
