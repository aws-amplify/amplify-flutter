// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i337;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/account_aggregation_source.dart'
    as _i99;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_by_config_rule.dart'
    as _i59;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_by_conformance_pack.dart'
    as _i67;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_count.dart'
    as _i188;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance.dart'
    as _i66;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance_count.dart'
    as _i193;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance_filters.dart'
    as _i64;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance_summary.dart'
    as _i194;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance_summary_filters.dart'
    as _i190;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance_summary_group_key.dart'
    as _i191;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_evaluation_result.dart'
    as _i182;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_resource_identifier.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_status.dart'
    as _i96;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_status_type.dart'
    as _i93;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_type.dart'
    as _i95;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregation_authorization.dart'
    as _i70;
import 'package:smoke_test/src/sdk/src/config_service/model/base_configuration_item.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_aggregate_resource_config_request.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_aggregate_resource_config_response.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_resource_config_request.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_resource_config_response.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/chronological_order.dart'
    as _i240;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance.dart'
    as _i58;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_by_config_rule.dart'
    as _i73;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_by_resource.dart'
    as _i76;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_contributor_count.dart'
    as _i57;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_summary.dart'
    as _i187;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_summary_by_resource_type.dart'
    as _i214;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i54;
import 'package:smoke_test/src/sdk/src/config_service/model/config_export_delivery_info.dart'
    as _i127;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule.dart'
    as _i91;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_compliance_filters.dart'
    as _i55;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_compliance_summary_filters.dart'
    as _i184;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_compliance_summary_group_key.dart'
    as _i185;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_evaluation_status.dart'
    as _i79;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_state.dart'
    as _i90;
import 'package:smoke_test/src/sdk/src/config_service/model/config_snapshot_delivery_properties.dart'
    as _i132;
import 'package:smoke_test/src/sdk/src/config_service/model/config_stream_delivery_info.dart'
    as _i128;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_aggregator.dart'
    as _i101;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_item.dart'
    as _i203;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_item_status.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_recorder.dart'
    as _i109;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_recorder_status.dart'
    as _i105;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_filters.dart'
    as _i111;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_score.dart'
    as _i254;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_scores_filters.dart'
    as _i250;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_summary.dart'
    as _i221;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_type.dart'
    as _i63;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_detail.dart'
    as _i123;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_evaluation_filters.dart'
    as _i216;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_evaluation_result.dart'
    as _i218;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_input_parameter.dart'
    as _i121;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_rule_compliance.dart'
    as _i113;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_state.dart'
    as _i117;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_status_detail.dart'
    as _i118;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_template_validation_exception.dart'
    as _i281;
import 'package:smoke_test/src/sdk/src/config_service/model/custom_policy_details.dart'
    as _i88;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_aggregation_authorization_request.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_config_rule_request.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_configuration_aggregator_request.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_configuration_recorder_request.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_conformance_pack_request.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_delivery_channel_request.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_evaluation_results_request.dart'
    as _i27;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_evaluation_results_response.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_organization_config_rule_request.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_organization_conformance_pack_request.dart'
    as _i32;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_pending_aggregation_request_request.dart'
    as _i34;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_remediation_configuration_request.dart'
    as _i35;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_remediation_configuration_response.dart'
    as _i36;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_remediation_exceptions_request.dart'
    as _i41;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_remediation_exceptions_response.dart'
    as _i43;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_resource_config_request.dart'
    as _i45;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_retention_configuration_request.dart'
    as _i47;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_stored_query_request.dart'
    as _i49;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_stored_query_response.dart'
    as _i50;
import 'package:smoke_test/src/sdk/src/config_service/model/deliver_config_snapshot_request.dart'
    as _i52;
import 'package:smoke_test/src/sdk/src/config_service/model/deliver_config_snapshot_response.dart'
    as _i53;
import 'package:smoke_test/src/sdk/src/config_service/model/delivery_channel.dart'
    as _i133;
import 'package:smoke_test/src/sdk/src/config_service/model/delivery_channel_status.dart'
    as _i129;
import 'package:smoke_test/src/sdk/src/config_service/model/delivery_status.dart'
    as _i126;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_config_rules_request.dart'
    as _i56;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_config_rules_response.dart'
    as _i60;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_conformance_packs_request.dart'
    as _i65;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_conformance_packs_response.dart'
    as _i68;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregation_authorizations_request.dart'
    as _i69;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregation_authorizations_response.dart'
    as _i71;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_config_rule_request.dart'
    as _i72;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_config_rule_response.dart'
    as _i74;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_resource_request.dart'
    as _i75;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_resource_response.dart'
    as _i77;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_config_rule_evaluation_status_request.dart'
    as _i78;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_config_rule_evaluation_status_response.dart'
    as _i80;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_config_rules_request.dart'
    as _i81;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_config_rules_response.dart'
    as _i92;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_aggregator_sources_status_request.dart'
    as _i94;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_aggregator_sources_status_response.dart'
    as _i97;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_aggregators_request.dart'
    as _i98;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_aggregators_response.dart'
    as _i102;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorder_status_request.dart'
    as _i103;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorder_status_response.dart'
    as _i106;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorders_request.dart'
    as _i107;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorders_response.dart'
    as _i110;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_pack_compliance_request.dart'
    as _i112;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_pack_compliance_response.dart'
    as _i114;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_pack_status_request.dart'
    as _i116;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_pack_status_response.dart'
    as _i119;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_packs_request.dart'
    as _i120;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_packs_response.dart'
    as _i124;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channel_status_request.dart'
    as _i125;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channel_status_response.dart'
    as _i130;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channels_request.dart'
    as _i131;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channels_response.dart'
    as _i134;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_config_rule_statuses_request.dart'
    as _i135;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_config_rule_statuses_response.dart'
    as _i138;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_config_rules_request.dart'
    as _i139;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_config_rules_response.dart'
    as _i146;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_conformance_pack_statuses_request.dart'
    as _i147;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_conformance_pack_statuses_response.dart'
    as _i150;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_conformance_packs_request.dart'
    as _i151;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_conformance_packs_response.dart'
    as _i153;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_pending_aggregation_requests_request.dart'
    as _i154;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_pending_aggregation_requests_response.dart'
    as _i156;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_configurations_request.dart'
    as _i157;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_configurations_response.dart'
    as _i166;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_exceptions_request.dart'
    as _i167;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_exceptions_response.dart'
    as _i169;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_execution_status_request.dart'
    as _i170;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_execution_status_response.dart'
    as _i175;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_retention_configurations_request.dart'
    as _i176;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_retention_configurations_response.dart'
    as _i178;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation.dart'
    as _i291;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_result.dart'
    as _i208;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_result_identifier.dart'
    as _i181;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_result_qualifier.dart'
    as _i180;
import 'package:smoke_test/src/sdk/src/config_service/model/event_source.dart'
    as _i84;
import 'package:smoke_test/src/sdk/src/config_service/model/execution_controls.dart'
    as _i164;
import 'package:smoke_test/src/sdk/src/config_service/model/external_evaluation.dart'
    as _i295;
import 'package:smoke_test/src/sdk/src/config_service/model/failed_delete_remediation_exceptions_batch.dart'
    as _i42;
import 'package:smoke_test/src/sdk/src/config_service/model/failed_remediation_batch.dart'
    as _i307;
import 'package:smoke_test/src/sdk/src/config_service/model/failed_remediation_exception_batch.dart'
    as _i310;
import 'package:smoke_test/src/sdk/src/config_service/model/field_info.dart'
    as _i322;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_compliance_details_by_config_rule_request.dart'
    as _i179;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_compliance_details_by_config_rule_response.dart'
    as _i183;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_config_rule_compliance_summary_request.dart'
    as _i186;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_config_rule_compliance_summary_response.dart'
    as _i189;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_conformance_pack_compliance_summary_request.dart'
    as _i192;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_conformance_pack_compliance_summary_response.dart'
    as _i195;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_discovered_resource_counts_request.dart'
    as _i198;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_discovered_resource_counts_response.dart'
    as _i200;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_resource_config_request.dart'
    as _i201;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_resource_config_response.dart'
    as _i204;
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_details_by_config_rule_request.dart'
    as _i207;
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_details_by_config_rule_response.dart'
    as _i209;
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_details_by_resource_request.dart'
    as _i210;
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_details_by_resource_response.dart'
    as _i211;
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_summary_by_config_rule_response.dart'
    as _i212;
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_summary_by_resource_type_request.dart'
    as _i213;
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_summary_by_resource_type_response.dart'
    as _i215;
import 'package:smoke_test/src/sdk/src/config_service/model/get_conformance_pack_compliance_details_request.dart'
    as _i217;
import 'package:smoke_test/src/sdk/src/config_service/model/get_conformance_pack_compliance_details_response.dart'
    as _i219;
import 'package:smoke_test/src/sdk/src/config_service/model/get_conformance_pack_compliance_summary_request.dart'
    as _i220;
import 'package:smoke_test/src/sdk/src/config_service/model/get_conformance_pack_compliance_summary_response.dart'
    as _i222;
import 'package:smoke_test/src/sdk/src/config_service/model/get_custom_rule_policy_request.dart'
    as _i223;
import 'package:smoke_test/src/sdk/src/config_service/model/get_custom_rule_policy_response.dart'
    as _i224;
import 'package:smoke_test/src/sdk/src/config_service/model/get_discovered_resource_counts_request.dart'
    as _i225;
import 'package:smoke_test/src/sdk/src/config_service/model/get_discovered_resource_counts_response.dart'
    as _i227;
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_config_rule_detailed_status_request.dart'
    as _i230;
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_config_rule_detailed_status_response.dart'
    as _i232;
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_conformance_pack_detailed_status_request.dart'
    as _i235;
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_conformance_pack_detailed_status_response.dart'
    as _i237;
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_custom_rule_policy_request.dart'
    as _i238;
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_custom_rule_policy_response.dart'
    as _i239;
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_config_history_request.dart'
    as _i241;
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_config_history_response.dart'
    as _i242;
import 'package:smoke_test/src/sdk/src/config_service/model/get_stored_query_request.dart'
    as _i244;
import 'package:smoke_test/src/sdk/src/config_service/model/get_stored_query_response.dart'
    as _i246;
import 'package:smoke_test/src/sdk/src/config_service/model/grouped_resource_count.dart'
    as _i199;
import 'package:smoke_test/src/sdk/src/config_service/model/insufficient_delivery_policy_exception.dart'
    as _i284;
import 'package:smoke_test/src/sdk/src/config_service/model/insufficient_permissions_exception.dart'
    as _i37;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_configuration_recorder_name_exception.dart'
    as _i276;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_delivery_channel_name_exception.dart'
    as _i285;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_expression_exception.dart'
    as _i325;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_limit_exception.dart'
    as _i61;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart'
    as _i62;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_recording_group_exception.dart'
    as _i277;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_result_token_exception.dart'
    as _i294;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_role_exception.dart'
    as _i271;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_s3_key_prefix_exception.dart'
    as _i286;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_s3_kms_key_arn_exception.dart'
    as _i287;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_sns_topic_arn_exception.dart'
    as _i288;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_time_range_exception.dart'
    as _i243;
import 'package:smoke_test/src/sdk/src/config_service/model/last_delivery_channel_delete_failed_exception.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/config_service/model/limit_exceeded_exception.dart'
    as _i272;
import 'package:smoke_test/src/sdk/src/config_service/model/list_aggregate_discovered_resources_request.dart'
    as _i248;
import 'package:smoke_test/src/sdk/src/config_service/model/list_aggregate_discovered_resources_response.dart'
    as _i249;
import 'package:smoke_test/src/sdk/src/config_service/model/list_conformance_pack_compliance_scores_request.dart'
    as _i253;
import 'package:smoke_test/src/sdk/src/config_service/model/list_conformance_pack_compliance_scores_response.dart'
    as _i255;
import 'package:smoke_test/src/sdk/src/config_service/model/list_discovered_resources_request.dart'
    as _i256;
import 'package:smoke_test/src/sdk/src/config_service/model/list_discovered_resources_response.dart'
    as _i258;
import 'package:smoke_test/src/sdk/src/config_service/model/list_stored_queries_request.dart'
    as _i259;
import 'package:smoke_test/src/sdk/src/config_service/model/list_stored_queries_response.dart'
    as _i261;
import 'package:smoke_test/src/sdk/src/config_service/model/list_tags_for_resource_request.dart'
    as _i262;
import 'package:smoke_test/src/sdk/src/config_service/model/list_tags_for_resource_response.dart'
    as _i264;
import 'package:smoke_test/src/sdk/src/config_service/model/max_active_resources_exceeded_exception.dart'
    as _i313;
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_config_rules_exceeded_exception.dart'
    as _i268;
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_configuration_recorders_exceeded_exception.dart'
    as _i278;
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_conformance_packs_exceeded_exception.dart'
    as _i282;
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_delivery_channels_exceeded_exception.dart'
    as _i289;
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_organization_config_rules_exceeded_exception.dart'
    as _i301;
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_organization_conformance_packs_exceeded_exception.dart'
    as _i304;
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_retention_configurations_exceeded_exception.dart'
    as _i316;
import 'package:smoke_test/src/sdk/src/config_service/model/maximum_execution_frequency.dart'
    as _i86;
import 'package:smoke_test/src/sdk/src/config_service/model/member_account_rule_status.dart'
    as _i228;
import 'package:smoke_test/src/sdk/src/config_service/model/member_account_status.dart'
    as _i231;
import 'package:smoke_test/src/sdk/src/config_service/model/message_type.dart'
    as _i85;
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_configuration_recorder_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_delivery_channel_exception.dart'
    as _i331;
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_organization_exception.dart'
    as _i273;
import 'package:smoke_test/src/sdk/src/config_service/model/no_running_configuration_recorder_exception.dart'
    as _i46;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_bucket_exception.dart'
    as _i290;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_config_rule_exception.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_config_rule_in_conformance_pack_exception.dart'
    as _i115;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_configuration_aggregator_exception.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_configuration_recorder_exception.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_conformance_pack_exception.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_delivery_channel_exception.dart'
    as _i26;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_organization_config_rule_exception.dart'
    as _i30;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_organization_conformance_pack_exception.dart'
    as _i33;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_remediation_configuration_exception.dart'
    as _i38;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_remediation_exception_exception.dart'
    as _i44;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_retention_configuration_exception.dart'
    as _i48;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_access_denied_exception.dart'
    as _i31;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_aggregation_source.dart'
    as _i100;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_all_features_not_enabled_exception.dart'
    as _i274;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule.dart'
    as _i145;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule_status.dart'
    as _i137;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule_trigger_type.dart'
    as _i141;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule_trigger_type_no_sn.dart'
    as _i143;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack.dart'
    as _i152;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack_detailed_status.dart'
    as _i236;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack_status.dart'
    as _i149;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack_template_validation_exception.dart'
    as _i305;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_custom_policy_rule_metadata.dart'
    as _i298;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_custom_policy_rule_metadata_no_policy.dart'
    as _i144;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_custom_rule_metadata.dart'
    as _i142;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_managed_rule_metadata.dart'
    as _i140;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_resource_detailed_status.dart'
    as _i233;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_resource_detailed_status_filters.dart'
    as _i234;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_resource_status.dart'
    as _i148;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_rule_status.dart'
    as _i136;
import 'package:smoke_test/src/sdk/src/config_service/model/oversized_configuration_item_exception.dart'
    as _i205;
import 'package:smoke_test/src/sdk/src/config_service/model/owner.dart' as _i83;
import 'package:smoke_test/src/sdk/src/config_service/model/pending_aggregation_request.dart'
    as _i155;
import 'package:smoke_test/src/sdk/src/config_service/model/put_aggregation_authorization_request.dart'
    as _i265;
import 'package:smoke_test/src/sdk/src/config_service/model/put_aggregation_authorization_response.dart'
    as _i266;
import 'package:smoke_test/src/sdk/src/config_service/model/put_config_rule_request.dart'
    as _i267;
import 'package:smoke_test/src/sdk/src/config_service/model/put_configuration_aggregator_request.dart'
    as _i269;
import 'package:smoke_test/src/sdk/src/config_service/model/put_configuration_aggregator_response.dart'
    as _i270;
import 'package:smoke_test/src/sdk/src/config_service/model/put_configuration_recorder_request.dart'
    as _i275;
import 'package:smoke_test/src/sdk/src/config_service/model/put_conformance_pack_request.dart'
    as _i279;
import 'package:smoke_test/src/sdk/src/config_service/model/put_conformance_pack_response.dart'
    as _i280;
import 'package:smoke_test/src/sdk/src/config_service/model/put_delivery_channel_request.dart'
    as _i283;
import 'package:smoke_test/src/sdk/src/config_service/model/put_evaluations_request.dart'
    as _i292;
import 'package:smoke_test/src/sdk/src/config_service/model/put_evaluations_response.dart'
    as _i293;
import 'package:smoke_test/src/sdk/src/config_service/model/put_external_evaluation_request.dart'
    as _i296;
import 'package:smoke_test/src/sdk/src/config_service/model/put_external_evaluation_response.dart'
    as _i297;
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_config_rule_request.dart'
    as _i299;
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_config_rule_response.dart'
    as _i300;
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_conformance_pack_request.dart'
    as _i302;
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_conformance_pack_response.dart'
    as _i303;
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_configurations_request.dart'
    as _i306;
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_configurations_response.dart'
    as _i308;
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_exceptions_request.dart'
    as _i309;
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_exceptions_response.dart'
    as _i311;
import 'package:smoke_test/src/sdk/src/config_service/model/put_resource_config_request.dart'
    as _i312;
import 'package:smoke_test/src/sdk/src/config_service/model/put_retention_configuration_request.dart'
    as _i314;
import 'package:smoke_test/src/sdk/src/config_service/model/put_retention_configuration_response.dart'
    as _i315;
import 'package:smoke_test/src/sdk/src/config_service/model/put_stored_query_request.dart'
    as _i317;
import 'package:smoke_test/src/sdk/src/config_service/model/put_stored_query_response.dart'
    as _i318;
import 'package:smoke_test/src/sdk/src/config_service/model/query_info.dart'
    as _i323;
import 'package:smoke_test/src/sdk/src/config_service/model/recorder_status.dart'
    as _i104;
import 'package:smoke_test/src/sdk/src/config_service/model/recording_group.dart'
    as _i108;
import 'package:smoke_test/src/sdk/src/config_service/model/relationship.dart'
    as _i202;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_configuration.dart'
    as _i165;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_exception.dart'
    as _i168;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_exception_resource_key.dart'
    as _i40;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_execution_state.dart'
    as _i171;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_execution_status.dart'
    as _i174;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_execution_step.dart'
    as _i173;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_execution_step_state.dart'
    as _i172;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_in_progress_exception.dart'
    as _i39;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_parameter_value.dart'
    as _i162;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_target_type.dart'
    as _i158;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_concurrent_modification_exception.dart'
    as _i319;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_count.dart'
    as _i226;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_count_filters.dart'
    as _i196;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_count_group_key.dart'
    as _i197;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_filters.dart'
    as _i247;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_identifier.dart'
    as _i257;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_in_use_exception.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_key.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_not_discovered_exception.dart'
    as _i206;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_not_found_exception.dart'
    as _i51;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_value.dart'
    as _i160;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_value_type.dart'
    as _i159;
import 'package:smoke_test/src/sdk/src/config_service/model/retention_configuration.dart'
    as _i177;
import 'package:smoke_test/src/sdk/src/config_service/model/scope.dart' as _i82;
import 'package:smoke_test/src/sdk/src/config_service/model/select_aggregate_resource_config_request.dart'
    as _i321;
import 'package:smoke_test/src/sdk/src/config_service/model/select_aggregate_resource_config_response.dart'
    as _i324;
import 'package:smoke_test/src/sdk/src/config_service/model/select_resource_config_request.dart'
    as _i326;
import 'package:smoke_test/src/sdk/src/config_service/model/select_resource_config_response.dart'
    as _i327;
import 'package:smoke_test/src/sdk/src/config_service/model/sort_by.dart'
    as _i252;
import 'package:smoke_test/src/sdk/src/config_service/model/sort_order.dart'
    as _i251;
import 'package:smoke_test/src/sdk/src/config_service/model/source.dart'
    as _i89;
import 'package:smoke_test/src/sdk/src/config_service/model/source_detail.dart'
    as _i87;
import 'package:smoke_test/src/sdk/src/config_service/model/ssm_controls.dart'
    as _i163;
import 'package:smoke_test/src/sdk/src/config_service/model/start_config_rules_evaluation_request.dart'
    as _i328;
import 'package:smoke_test/src/sdk/src/config_service/model/start_config_rules_evaluation_response.dart'
    as _i329;
import 'package:smoke_test/src/sdk/src/config_service/model/start_configuration_recorder_request.dart'
    as _i330;
import 'package:smoke_test/src/sdk/src/config_service/model/start_remediation_execution_request.dart'
    as _i332;
import 'package:smoke_test/src/sdk/src/config_service/model/start_remediation_execution_response.dart'
    as _i333;
import 'package:smoke_test/src/sdk/src/config_service/model/static_value.dart'
    as _i161;
import 'package:smoke_test/src/sdk/src/config_service/model/status_detail_filters.dart'
    as _i229;
import 'package:smoke_test/src/sdk/src/config_service/model/stop_configuration_recorder_request.dart'
    as _i334;
import 'package:smoke_test/src/sdk/src/config_service/model/stored_query.dart'
    as _i245;
import 'package:smoke_test/src/sdk/src/config_service/model/stored_query_metadata.dart'
    as _i260;
import 'package:smoke_test/src/sdk/src/config_service/model/tag.dart' as _i263;
import 'package:smoke_test/src/sdk/src/config_service/model/tag_resource_request.dart'
    as _i335;
import 'package:smoke_test/src/sdk/src/config_service/model/template_ssm_document_details.dart'
    as _i122;
import 'package:smoke_test/src/sdk/src/config_service/model/too_many_tags_exception.dart'
    as _i320;
import 'package:smoke_test/src/sdk/src/config_service/model/untag_resource_request.dart'
    as _i336;
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart'
    as _i9;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.ResourceType.serializers,
  ..._i3.AggregateResourceIdentifier.serializers,
  ..._i4.BatchGetAggregateResourceConfigRequest.serializers,
  ..._i5.ConfigurationItemStatus.serializers,
  ..._i6.BaseConfigurationItem.serializers,
  ..._i7.BatchGetAggregateResourceConfigResponse.serializers,
  ..._i8.NoSuchConfigurationAggregatorException.serializers,
  ..._i9.ValidationException.serializers,
  ..._i10.ResourceKey.serializers,
  ..._i11.BatchGetResourceConfigRequest.serializers,
  ..._i12.BatchGetResourceConfigResponse.serializers,
  ..._i13.NoAvailableConfigurationRecorderException.serializers,
  ..._i14.DeleteAggregationAuthorizationRequest.serializers,
  ..._i15.InvalidParameterValueException.serializers,
  ..._i16.DeleteConfigRuleRequest.serializers,
  ..._i17.NoSuchConfigRuleException.serializers,
  ..._i18.ResourceInUseException.serializers,
  ..._i19.DeleteConfigurationAggregatorRequest.serializers,
  ..._i20.DeleteConfigurationRecorderRequest.serializers,
  ..._i21.NoSuchConfigurationRecorderException.serializers,
  ..._i22.DeleteConformancePackRequest.serializers,
  ..._i23.NoSuchConformancePackException.serializers,
  ..._i24.DeleteDeliveryChannelRequest.serializers,
  ..._i25.LastDeliveryChannelDeleteFailedException.serializers,
  ..._i26.NoSuchDeliveryChannelException.serializers,
  ..._i27.DeleteEvaluationResultsRequest.serializers,
  ..._i28.DeleteEvaluationResultsResponse.serializers,
  ..._i29.DeleteOrganizationConfigRuleRequest.serializers,
  ..._i30.NoSuchOrganizationConfigRuleException.serializers,
  ..._i31.OrganizationAccessDeniedException.serializers,
  ..._i32.DeleteOrganizationConformancePackRequest.serializers,
  ..._i33.NoSuchOrganizationConformancePackException.serializers,
  ..._i34.DeletePendingAggregationRequestRequest.serializers,
  ..._i35.DeleteRemediationConfigurationRequest.serializers,
  ..._i36.DeleteRemediationConfigurationResponse.serializers,
  ..._i37.InsufficientPermissionsException.serializers,
  ..._i38.NoSuchRemediationConfigurationException.serializers,
  ..._i39.RemediationInProgressException.serializers,
  ..._i40.RemediationExceptionResourceKey.serializers,
  ..._i41.DeleteRemediationExceptionsRequest.serializers,
  ..._i42.FailedDeleteRemediationExceptionsBatch.serializers,
  ..._i43.DeleteRemediationExceptionsResponse.serializers,
  ..._i44.NoSuchRemediationExceptionException.serializers,
  ..._i45.DeleteResourceConfigRequest.serializers,
  ..._i46.NoRunningConfigurationRecorderException.serializers,
  ..._i47.DeleteRetentionConfigurationRequest.serializers,
  ..._i48.NoSuchRetentionConfigurationException.serializers,
  ..._i49.DeleteStoredQueryRequest.serializers,
  ..._i50.DeleteStoredQueryResponse.serializers,
  ..._i51.ResourceNotFoundException.serializers,
  ..._i52.DeliverConfigSnapshotRequest.serializers,
  ..._i53.DeliverConfigSnapshotResponse.serializers,
  ..._i54.ComplianceType.serializers,
  ..._i55.ConfigRuleComplianceFilters.serializers,
  ..._i56.DescribeAggregateComplianceByConfigRulesRequest.serializers,
  ..._i57.ComplianceContributorCount.serializers,
  ..._i58.Compliance.serializers,
  ..._i59.AggregateComplianceByConfigRule.serializers,
  ..._i60.DescribeAggregateComplianceByConfigRulesResponse.serializers,
  ..._i61.InvalidLimitException.serializers,
  ..._i62.InvalidNextTokenException.serializers,
  ..._i63.ConformancePackComplianceType.serializers,
  ..._i64.AggregateConformancePackComplianceFilters.serializers,
  ..._i65.DescribeAggregateComplianceByConformancePacksRequest.serializers,
  ..._i66.AggregateConformancePackCompliance.serializers,
  ..._i67.AggregateComplianceByConformancePack.serializers,
  ..._i68.DescribeAggregateComplianceByConformancePacksResponse.serializers,
  ..._i69.DescribeAggregationAuthorizationsRequest.serializers,
  ..._i70.AggregationAuthorization.serializers,
  ..._i71.DescribeAggregationAuthorizationsResponse.serializers,
  ..._i72.DescribeComplianceByConfigRuleRequest.serializers,
  ..._i73.ComplianceByConfigRule.serializers,
  ..._i74.DescribeComplianceByConfigRuleResponse.serializers,
  ..._i75.DescribeComplianceByResourceRequest.serializers,
  ..._i76.ComplianceByResource.serializers,
  ..._i77.DescribeComplianceByResourceResponse.serializers,
  ..._i78.DescribeConfigRuleEvaluationStatusRequest.serializers,
  ..._i79.ConfigRuleEvaluationStatus.serializers,
  ..._i80.DescribeConfigRuleEvaluationStatusResponse.serializers,
  ..._i81.DescribeConfigRulesRequest.serializers,
  ..._i82.Scope.serializers,
  ..._i83.Owner.serializers,
  ..._i84.EventSource.serializers,
  ..._i85.MessageType.serializers,
  ..._i86.MaximumExecutionFrequency.serializers,
  ..._i87.SourceDetail.serializers,
  ..._i88.CustomPolicyDetails.serializers,
  ..._i89.Source.serializers,
  ..._i90.ConfigRuleState.serializers,
  ..._i91.ConfigRule.serializers,
  ..._i92.DescribeConfigRulesResponse.serializers,
  ..._i93.AggregatedSourceStatusType.serializers,
  ..._i94.DescribeConfigurationAggregatorSourcesStatusRequest.serializers,
  ..._i95.AggregatedSourceType.serializers,
  ..._i96.AggregatedSourceStatus.serializers,
  ..._i97.DescribeConfigurationAggregatorSourcesStatusResponse.serializers,
  ..._i98.DescribeConfigurationAggregatorsRequest.serializers,
  ..._i99.AccountAggregationSource.serializers,
  ..._i100.OrganizationAggregationSource.serializers,
  ..._i101.ConfigurationAggregator.serializers,
  ..._i102.DescribeConfigurationAggregatorsResponse.serializers,
  ..._i103.DescribeConfigurationRecorderStatusRequest.serializers,
  ..._i104.RecorderStatus.serializers,
  ..._i105.ConfigurationRecorderStatus.serializers,
  ..._i106.DescribeConfigurationRecorderStatusResponse.serializers,
  ..._i107.DescribeConfigurationRecordersRequest.serializers,
  ..._i108.RecordingGroup.serializers,
  ..._i109.ConfigurationRecorder.serializers,
  ..._i110.DescribeConfigurationRecordersResponse.serializers,
  ..._i111.ConformancePackComplianceFilters.serializers,
  ..._i112.DescribeConformancePackComplianceRequest.serializers,
  ..._i113.ConformancePackRuleCompliance.serializers,
  ..._i114.DescribeConformancePackComplianceResponse.serializers,
  ..._i115.NoSuchConfigRuleInConformancePackException.serializers,
  ..._i116.DescribeConformancePackStatusRequest.serializers,
  ..._i117.ConformancePackState.serializers,
  ..._i118.ConformancePackStatusDetail.serializers,
  ..._i119.DescribeConformancePackStatusResponse.serializers,
  ..._i120.DescribeConformancePacksRequest.serializers,
  ..._i121.ConformancePackInputParameter.serializers,
  ..._i122.TemplateSsmDocumentDetails.serializers,
  ..._i123.ConformancePackDetail.serializers,
  ..._i124.DescribeConformancePacksResponse.serializers,
  ..._i125.DescribeDeliveryChannelStatusRequest.serializers,
  ..._i126.DeliveryStatus.serializers,
  ..._i127.ConfigExportDeliveryInfo.serializers,
  ..._i128.ConfigStreamDeliveryInfo.serializers,
  ..._i129.DeliveryChannelStatus.serializers,
  ..._i130.DescribeDeliveryChannelStatusResponse.serializers,
  ..._i131.DescribeDeliveryChannelsRequest.serializers,
  ..._i132.ConfigSnapshotDeliveryProperties.serializers,
  ..._i133.DeliveryChannel.serializers,
  ..._i134.DescribeDeliveryChannelsResponse.serializers,
  ..._i135.DescribeOrganizationConfigRuleStatusesRequest.serializers,
  ..._i136.OrganizationRuleStatus.serializers,
  ..._i137.OrganizationConfigRuleStatus.serializers,
  ..._i138.DescribeOrganizationConfigRuleStatusesResponse.serializers,
  ..._i139.DescribeOrganizationConfigRulesRequest.serializers,
  ..._i140.OrganizationManagedRuleMetadata.serializers,
  ..._i141.OrganizationConfigRuleTriggerType.serializers,
  ..._i142.OrganizationCustomRuleMetadata.serializers,
  ..._i143.OrganizationConfigRuleTriggerTypeNoSn.serializers,
  ..._i144.OrganizationCustomPolicyRuleMetadataNoPolicy.serializers,
  ..._i145.OrganizationConfigRule.serializers,
  ..._i146.DescribeOrganizationConfigRulesResponse.serializers,
  ..._i147.DescribeOrganizationConformancePackStatusesRequest.serializers,
  ..._i148.OrganizationResourceStatus.serializers,
  ..._i149.OrganizationConformancePackStatus.serializers,
  ..._i150.DescribeOrganizationConformancePackStatusesResponse.serializers,
  ..._i151.DescribeOrganizationConformancePacksRequest.serializers,
  ..._i152.OrganizationConformancePack.serializers,
  ..._i153.DescribeOrganizationConformancePacksResponse.serializers,
  ..._i154.DescribePendingAggregationRequestsRequest.serializers,
  ..._i155.PendingAggregationRequest.serializers,
  ..._i156.DescribePendingAggregationRequestsResponse.serializers,
  ..._i157.DescribeRemediationConfigurationsRequest.serializers,
  ..._i158.RemediationTargetType.serializers,
  ..._i159.ResourceValueType.serializers,
  ..._i160.ResourceValue.serializers,
  ..._i161.StaticValue.serializers,
  ..._i162.RemediationParameterValue.serializers,
  ..._i163.SsmControls.serializers,
  ..._i164.ExecutionControls.serializers,
  ..._i165.RemediationConfiguration.serializers,
  ..._i166.DescribeRemediationConfigurationsResponse.serializers,
  ..._i167.DescribeRemediationExceptionsRequest.serializers,
  ..._i168.RemediationException.serializers,
  ..._i169.DescribeRemediationExceptionsResponse.serializers,
  ..._i170.DescribeRemediationExecutionStatusRequest.serializers,
  ..._i171.RemediationExecutionState.serializers,
  ..._i172.RemediationExecutionStepState.serializers,
  ..._i173.RemediationExecutionStep.serializers,
  ..._i174.RemediationExecutionStatus.serializers,
  ..._i175.DescribeRemediationExecutionStatusResponse.serializers,
  ..._i176.DescribeRetentionConfigurationsRequest.serializers,
  ..._i177.RetentionConfiguration.serializers,
  ..._i178.DescribeRetentionConfigurationsResponse.serializers,
  ..._i179.GetAggregateComplianceDetailsByConfigRuleRequest.serializers,
  ..._i180.EvaluationResultQualifier.serializers,
  ..._i181.EvaluationResultIdentifier.serializers,
  ..._i182.AggregateEvaluationResult.serializers,
  ..._i183.GetAggregateComplianceDetailsByConfigRuleResponse.serializers,
  ..._i184.ConfigRuleComplianceSummaryFilters.serializers,
  ..._i185.ConfigRuleComplianceSummaryGroupKey.serializers,
  ..._i186.GetAggregateConfigRuleComplianceSummaryRequest.serializers,
  ..._i187.ComplianceSummary.serializers,
  ..._i188.AggregateComplianceCount.serializers,
  ..._i189.GetAggregateConfigRuleComplianceSummaryResponse.serializers,
  ..._i190.AggregateConformancePackComplianceSummaryFilters.serializers,
  ..._i191.AggregateConformancePackComplianceSummaryGroupKey.serializers,
  ..._i192.GetAggregateConformancePackComplianceSummaryRequest.serializers,
  ..._i193.AggregateConformancePackComplianceCount.serializers,
  ..._i194.AggregateConformancePackComplianceSummary.serializers,
  ..._i195.GetAggregateConformancePackComplianceSummaryResponse.serializers,
  ..._i196.ResourceCountFilters.serializers,
  ..._i197.ResourceCountGroupKey.serializers,
  ..._i198.GetAggregateDiscoveredResourceCountsRequest.serializers,
  ..._i199.GroupedResourceCount.serializers,
  ..._i200.GetAggregateDiscoveredResourceCountsResponse.serializers,
  ..._i201.GetAggregateResourceConfigRequest.serializers,
  ..._i202.Relationship.serializers,
  ..._i203.ConfigurationItem.serializers,
  ..._i204.GetAggregateResourceConfigResponse.serializers,
  ..._i205.OversizedConfigurationItemException.serializers,
  ..._i206.ResourceNotDiscoveredException.serializers,
  ..._i207.GetComplianceDetailsByConfigRuleRequest.serializers,
  ..._i208.EvaluationResult.serializers,
  ..._i209.GetComplianceDetailsByConfigRuleResponse.serializers,
  ..._i210.GetComplianceDetailsByResourceRequest.serializers,
  ..._i211.GetComplianceDetailsByResourceResponse.serializers,
  ..._i212.GetComplianceSummaryByConfigRuleResponse.serializers,
  ..._i213.GetComplianceSummaryByResourceTypeRequest.serializers,
  ..._i214.ComplianceSummaryByResourceType.serializers,
  ..._i215.GetComplianceSummaryByResourceTypeResponse.serializers,
  ..._i216.ConformancePackEvaluationFilters.serializers,
  ..._i217.GetConformancePackComplianceDetailsRequest.serializers,
  ..._i218.ConformancePackEvaluationResult.serializers,
  ..._i219.GetConformancePackComplianceDetailsResponse.serializers,
  ..._i220.GetConformancePackComplianceSummaryRequest.serializers,
  ..._i221.ConformancePackComplianceSummary.serializers,
  ..._i222.GetConformancePackComplianceSummaryResponse.serializers,
  ..._i223.GetCustomRulePolicyRequest.serializers,
  ..._i224.GetCustomRulePolicyResponse.serializers,
  ..._i225.GetDiscoveredResourceCountsRequest.serializers,
  ..._i226.ResourceCount.serializers,
  ..._i227.GetDiscoveredResourceCountsResponse.serializers,
  ..._i228.MemberAccountRuleStatus.serializers,
  ..._i229.StatusDetailFilters.serializers,
  ..._i230.GetOrganizationConfigRuleDetailedStatusRequest.serializers,
  ..._i231.MemberAccountStatus.serializers,
  ..._i232.GetOrganizationConfigRuleDetailedStatusResponse.serializers,
  ..._i233.OrganizationResourceDetailedStatus.serializers,
  ..._i234.OrganizationResourceDetailedStatusFilters.serializers,
  ..._i235.GetOrganizationConformancePackDetailedStatusRequest.serializers,
  ..._i236.OrganizationConformancePackDetailedStatus.serializers,
  ..._i237.GetOrganizationConformancePackDetailedStatusResponse.serializers,
  ..._i238.GetOrganizationCustomRulePolicyRequest.serializers,
  ..._i239.GetOrganizationCustomRulePolicyResponse.serializers,
  ..._i240.ChronologicalOrder.serializers,
  ..._i241.GetResourceConfigHistoryRequest.serializers,
  ..._i242.GetResourceConfigHistoryResponse.serializers,
  ..._i243.InvalidTimeRangeException.serializers,
  ..._i244.GetStoredQueryRequest.serializers,
  ..._i245.StoredQuery.serializers,
  ..._i246.GetStoredQueryResponse.serializers,
  ..._i247.ResourceFilters.serializers,
  ..._i248.ListAggregateDiscoveredResourcesRequest.serializers,
  ..._i249.ListAggregateDiscoveredResourcesResponse.serializers,
  ..._i250.ConformancePackComplianceScoresFilters.serializers,
  ..._i251.SortOrder.serializers,
  ..._i252.SortBy.serializers,
  ..._i253.ListConformancePackComplianceScoresRequest.serializers,
  ..._i254.ConformancePackComplianceScore.serializers,
  ..._i255.ListConformancePackComplianceScoresResponse.serializers,
  ..._i256.ListDiscoveredResourcesRequest.serializers,
  ..._i257.ResourceIdentifier.serializers,
  ..._i258.ListDiscoveredResourcesResponse.serializers,
  ..._i259.ListStoredQueriesRequest.serializers,
  ..._i260.StoredQueryMetadata.serializers,
  ..._i261.ListStoredQueriesResponse.serializers,
  ..._i262.ListTagsForResourceRequest.serializers,
  ..._i263.Tag.serializers,
  ..._i264.ListTagsForResourceResponse.serializers,
  ..._i265.PutAggregationAuthorizationRequest.serializers,
  ..._i266.PutAggregationAuthorizationResponse.serializers,
  ..._i267.PutConfigRuleRequest.serializers,
  ..._i268.MaxNumberOfConfigRulesExceededException.serializers,
  ..._i269.PutConfigurationAggregatorRequest.serializers,
  ..._i270.PutConfigurationAggregatorResponse.serializers,
  ..._i271.InvalidRoleException.serializers,
  ..._i272.LimitExceededException.serializers,
  ..._i273.NoAvailableOrganizationException.serializers,
  ..._i274.OrganizationAllFeaturesNotEnabledException.serializers,
  ..._i275.PutConfigurationRecorderRequest.serializers,
  ..._i276.InvalidConfigurationRecorderNameException.serializers,
  ..._i277.InvalidRecordingGroupException.serializers,
  ..._i278.MaxNumberOfConfigurationRecordersExceededException.serializers,
  ..._i279.PutConformancePackRequest.serializers,
  ..._i280.PutConformancePackResponse.serializers,
  ..._i281.ConformancePackTemplateValidationException.serializers,
  ..._i282.MaxNumberOfConformancePacksExceededException.serializers,
  ..._i283.PutDeliveryChannelRequest.serializers,
  ..._i284.InsufficientDeliveryPolicyException.serializers,
  ..._i285.InvalidDeliveryChannelNameException.serializers,
  ..._i286.InvalidS3KeyPrefixException.serializers,
  ..._i287.InvalidS3KmsKeyArnException.serializers,
  ..._i288.InvalidSnsTopicArnException.serializers,
  ..._i289.MaxNumberOfDeliveryChannelsExceededException.serializers,
  ..._i290.NoSuchBucketException.serializers,
  ..._i291.Evaluation.serializers,
  ..._i292.PutEvaluationsRequest.serializers,
  ..._i293.PutEvaluationsResponse.serializers,
  ..._i294.InvalidResultTokenException.serializers,
  ..._i295.ExternalEvaluation.serializers,
  ..._i296.PutExternalEvaluationRequest.serializers,
  ..._i297.PutExternalEvaluationResponse.serializers,
  ..._i298.OrganizationCustomPolicyRuleMetadata.serializers,
  ..._i299.PutOrganizationConfigRuleRequest.serializers,
  ..._i300.PutOrganizationConfigRuleResponse.serializers,
  ..._i301.MaxNumberOfOrganizationConfigRulesExceededException.serializers,
  ..._i302.PutOrganizationConformancePackRequest.serializers,
  ..._i303.PutOrganizationConformancePackResponse.serializers,
  ..._i304.MaxNumberOfOrganizationConformancePacksExceededException.serializers,
  ..._i305.OrganizationConformancePackTemplateValidationException.serializers,
  ..._i306.PutRemediationConfigurationsRequest.serializers,
  ..._i307.FailedRemediationBatch.serializers,
  ..._i308.PutRemediationConfigurationsResponse.serializers,
  ..._i309.PutRemediationExceptionsRequest.serializers,
  ..._i310.FailedRemediationExceptionBatch.serializers,
  ..._i311.PutRemediationExceptionsResponse.serializers,
  ..._i312.PutResourceConfigRequest.serializers,
  ..._i313.MaxActiveResourcesExceededException.serializers,
  ..._i314.PutRetentionConfigurationRequest.serializers,
  ..._i315.PutRetentionConfigurationResponse.serializers,
  ..._i316.MaxNumberOfRetentionConfigurationsExceededException.serializers,
  ..._i317.PutStoredQueryRequest.serializers,
  ..._i318.PutStoredQueryResponse.serializers,
  ..._i319.ResourceConcurrentModificationException.serializers,
  ..._i320.TooManyTagsException.serializers,
  ..._i321.SelectAggregateResourceConfigRequest.serializers,
  ..._i322.FieldInfo.serializers,
  ..._i323.QueryInfo.serializers,
  ..._i324.SelectAggregateResourceConfigResponse.serializers,
  ..._i325.InvalidExpressionException.serializers,
  ..._i326.SelectResourceConfigRequest.serializers,
  ..._i327.SelectResourceConfigResponse.serializers,
  ..._i328.StartConfigRulesEvaluationRequest.serializers,
  ..._i329.StartConfigRulesEvaluationResponse.serializers,
  ..._i330.StartConfigurationRecorderRequest.serializers,
  ..._i331.NoAvailableDeliveryChannelException.serializers,
  ..._i332.StartRemediationExecutionRequest.serializers,
  ..._i333.StartRemediationExecutionResponse.serializers,
  ..._i334.StopConfigurationRecorderRequest.serializers,
  ..._i335.TagResourceRequest.serializers,
  ..._i336.UntagResourceRequest.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i337.BuiltList,
    [FullType(_i3.AggregateResourceIdentifier)],
  ): _i337.ListBuilder<_i3.AggregateResourceIdentifier>.new,
  const FullType(
    _i337.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i337.MapBuilder<String, String>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i6.BaseConfigurationItem)],
  ): _i337.ListBuilder<_i6.BaseConfigurationItem>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i10.ResourceKey)],
  ): _i337.ListBuilder<_i10.ResourceKey>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i40.RemediationExceptionResourceKey)],
  ): _i337.ListBuilder<_i40.RemediationExceptionResourceKey>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i42.FailedDeleteRemediationExceptionsBatch)],
  ): _i337.ListBuilder<_i42.FailedDeleteRemediationExceptionsBatch>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i59.AggregateComplianceByConfigRule)],
  ): _i337.ListBuilder<_i59.AggregateComplianceByConfigRule>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i67.AggregateComplianceByConformancePack)],
  ): _i337.ListBuilder<_i67.AggregateComplianceByConformancePack>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i70.AggregationAuthorization)],
  ): _i337.ListBuilder<_i70.AggregationAuthorization>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i73.ComplianceByConfigRule)],
  ): _i337.ListBuilder<_i73.ComplianceByConfigRule>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i54.ComplianceType)],
  ): _i337.ListBuilder<_i54.ComplianceType>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(String)],
  ): _i337.ListBuilder<String>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i76.ComplianceByResource)],
  ): _i337.ListBuilder<_i76.ComplianceByResource>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i79.ConfigRuleEvaluationStatus)],
  ): _i337.ListBuilder<_i79.ConfigRuleEvaluationStatus>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i91.ConfigRule)],
  ): _i337.ListBuilder<_i91.ConfigRule>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i87.SourceDetail)],
  ): _i337.ListBuilder<_i87.SourceDetail>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i96.AggregatedSourceStatus)],
  ): _i337.ListBuilder<_i96.AggregatedSourceStatus>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i93.AggregatedSourceStatusType)],
  ): _i337.ListBuilder<_i93.AggregatedSourceStatusType>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i101.ConfigurationAggregator)],
  ): _i337.ListBuilder<_i101.ConfigurationAggregator>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i99.AccountAggregationSource)],
  ): _i337.ListBuilder<_i99.AccountAggregationSource>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i105.ConfigurationRecorderStatus)],
  ): _i337.ListBuilder<_i105.ConfigurationRecorderStatus>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i2.ResourceType)],
  ): _i337.ListBuilder<_i2.ResourceType>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i109.ConfigurationRecorder)],
  ): _i337.ListBuilder<_i109.ConfigurationRecorder>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i113.ConformancePackRuleCompliance)],
  ): _i337.ListBuilder<_i113.ConformancePackRuleCompliance>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i118.ConformancePackStatusDetail)],
  ): _i337.ListBuilder<_i118.ConformancePackStatusDetail>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i123.ConformancePackDetail)],
  ): _i337.ListBuilder<_i123.ConformancePackDetail>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i121.ConformancePackInputParameter)],
  ): _i337.ListBuilder<_i121.ConformancePackInputParameter>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i129.DeliveryChannelStatus)],
  ): _i337.ListBuilder<_i129.DeliveryChannelStatus>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i133.DeliveryChannel)],
  ): _i337.ListBuilder<_i133.DeliveryChannel>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i137.OrganizationConfigRuleStatus)],
  ): _i337.ListBuilder<_i137.OrganizationConfigRuleStatus>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i145.OrganizationConfigRule)],
  ): _i337.ListBuilder<_i145.OrganizationConfigRule>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i141.OrganizationConfigRuleTriggerType)],
  ): _i337.ListBuilder<_i141.OrganizationConfigRuleTriggerType>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i143.OrganizationConfigRuleTriggerTypeNoSn)],
  ): _i337.ListBuilder<_i143.OrganizationConfigRuleTriggerTypeNoSn>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i149.OrganizationConformancePackStatus)],
  ): _i337.ListBuilder<_i149.OrganizationConformancePackStatus>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i152.OrganizationConformancePack)],
  ): _i337.ListBuilder<_i152.OrganizationConformancePack>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i155.PendingAggregationRequest)],
  ): _i337.ListBuilder<_i155.PendingAggregationRequest>.new,
  const FullType(
    _i337.BuiltMap,
    [
      FullType(String),
      FullType(_i162.RemediationParameterValue),
    ],
  ): _i337.MapBuilder<String, _i162.RemediationParameterValue>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i165.RemediationConfiguration)],
  ): _i337.ListBuilder<_i165.RemediationConfiguration>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i168.RemediationException)],
  ): _i337.ListBuilder<_i168.RemediationException>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i174.RemediationExecutionStatus)],
  ): _i337.ListBuilder<_i174.RemediationExecutionStatus>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i173.RemediationExecutionStep)],
  ): _i337.ListBuilder<_i173.RemediationExecutionStep>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i177.RetentionConfiguration)],
  ): _i337.ListBuilder<_i177.RetentionConfiguration>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i182.AggregateEvaluationResult)],
  ): _i337.ListBuilder<_i182.AggregateEvaluationResult>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i188.AggregateComplianceCount)],
  ): _i337.ListBuilder<_i188.AggregateComplianceCount>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i194.AggregateConformancePackComplianceSummary)],
  ): _i337.ListBuilder<_i194.AggregateConformancePackComplianceSummary>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i199.GroupedResourceCount)],
  ): _i337.ListBuilder<_i199.GroupedResourceCount>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i202.Relationship)],
  ): _i337.ListBuilder<_i202.Relationship>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i208.EvaluationResult)],
  ): _i337.ListBuilder<_i208.EvaluationResult>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i214.ComplianceSummaryByResourceType)],
  ): _i337.ListBuilder<_i214.ComplianceSummaryByResourceType>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i218.ConformancePackEvaluationResult)],
  ): _i337.ListBuilder<_i218.ConformancePackEvaluationResult>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i221.ConformancePackComplianceSummary)],
  ): _i337.ListBuilder<_i221.ConformancePackComplianceSummary>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i226.ResourceCount)],
  ): _i337.ListBuilder<_i226.ResourceCount>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i231.MemberAccountStatus)],
  ): _i337.ListBuilder<_i231.MemberAccountStatus>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i236.OrganizationConformancePackDetailedStatus)],
  ): _i337.ListBuilder<_i236.OrganizationConformancePackDetailedStatus>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i203.ConfigurationItem)],
  ): _i337.ListBuilder<_i203.ConfigurationItem>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i254.ConformancePackComplianceScore)],
  ): _i337.ListBuilder<_i254.ConformancePackComplianceScore>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i257.ResourceIdentifier)],
  ): _i337.ListBuilder<_i257.ResourceIdentifier>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i260.StoredQueryMetadata)],
  ): _i337.ListBuilder<_i260.StoredQueryMetadata>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i263.Tag)],
  ): _i337.ListBuilder<_i263.Tag>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i291.Evaluation)],
  ): _i337.ListBuilder<_i291.Evaluation>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i307.FailedRemediationBatch)],
  ): _i337.ListBuilder<_i307.FailedRemediationBatch>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i310.FailedRemediationExceptionBatch)],
  ): _i337.ListBuilder<_i310.FailedRemediationExceptionBatch>.new,
  const FullType(
    _i337.BuiltList,
    [FullType(_i322.FieldInfo)],
  ): _i337.ListBuilder<_i322.FieldInfo>.new,
};
