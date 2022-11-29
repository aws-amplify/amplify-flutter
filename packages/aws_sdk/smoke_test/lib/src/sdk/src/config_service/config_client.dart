// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.config_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i50;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_by_conformance_pack.dart'
    as _i51;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_evaluation_result.dart'
    as _i123;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_resource_identifier.dart'
    as _i175;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_status.dart'
    as _i69;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregation_authorization.dart'
    as _i54;
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_aggregate_resource_config_request.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_aggregate_resource_config_response.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_resource_config_request.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_resource_config_response.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_by_config_rule.dart'
    as _i57;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_by_resource.dart'
    as _i60;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule.dart'
    as _i66;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_evaluation_status.dart'
    as _i63;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_aggregator.dart'
    as _i72;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_item.dart'
    as _i169;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_summary.dart'
    as _i151;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_detail.dart'
    as _i87;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_status_detail.dart'
    as _i84;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_aggregation_authorization_request.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_config_rule_request.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_configuration_aggregator_request.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_configuration_recorder_request.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_conformance_pack_request.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_delivery_channel_request.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_evaluation_results_request.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_evaluation_results_response.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_organization_config_rule_request.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_organization_conformance_pack_request.dart'
    as _i27;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_pending_aggregation_request_request.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_remediation_configuration_request.dart'
    as _i32;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_remediation_configuration_response.dart'
    as _i31;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_remediation_exceptions_request.dart'
    as _i35;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_remediation_exceptions_response.dart'
    as _i34;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_resource_config_request.dart'
    as _i37;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_retention_configuration_request.dart'
    as _i39;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_stored_query_request.dart'
    as _i42;
import 'package:smoke_test/src/sdk/src/config_service/model/delete_stored_query_response.dart'
    as _i41;
import 'package:smoke_test/src/sdk/src/config_service/model/deliver_config_snapshot_request.dart'
    as _i45;
import 'package:smoke_test/src/sdk/src/config_service/model/deliver_config_snapshot_response.dart'
    as _i44;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_config_rules_request.dart'
    as _i48;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_config_rules_response.dart'
    as _i47;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_conformance_packs_request.dart'
    as _i52;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregation_authorizations_request.dart'
    as _i55;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_config_rule_request.dart'
    as _i58;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_resource_request.dart'
    as _i61;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_config_rule_evaluation_status_request.dart'
    as _i64;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_config_rules_request.dart'
    as _i67;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_aggregator_sources_status_request.dart'
    as _i70;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_aggregators_request.dart'
    as _i73;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorder_status_request.dart'
    as _i76;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorder_status_response.dart'
    as _i75;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorders_request.dart'
    as _i79;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorders_response.dart'
    as _i78;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_pack_compliance_request.dart'
    as _i82;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_pack_compliance_response.dart'
    as _i81;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_pack_status_request.dart'
    as _i85;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_conformance_packs_request.dart'
    as _i88;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channel_status_request.dart'
    as _i91;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channel_status_response.dart'
    as _i90;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channels_request.dart'
    as _i94;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_delivery_channels_response.dart'
    as _i93;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_config_rule_statuses_request.dart'
    as _i97;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_config_rules_request.dart'
    as _i100;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_conformance_pack_statuses_request.dart'
    as _i103;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_organization_conformance_packs_request.dart'
    as _i106;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_pending_aggregation_requests_request.dart'
    as _i109;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_configurations_request.dart'
    as _i112;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_configurations_response.dart'
    as _i111;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_exceptions_request.dart'
    as _i115;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_exceptions_response.dart'
    as _i114;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_execution_status_request.dart'
    as _i118;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_retention_configurations_request.dart'
    as _i121;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_result.dart'
    as _i138;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_compliance_details_by_config_rule_request.dart'
    as _i124;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_config_rule_compliance_summary_request.dart'
    as _i127;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_config_rule_compliance_summary_response.dart'
    as _i126;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_conformance_pack_compliance_summary_request.dart'
    as _i130;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_conformance_pack_compliance_summary_response.dart'
    as _i129;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_discovered_resource_counts_request.dart'
    as _i133;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_discovered_resource_counts_response.dart'
    as _i132;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_resource_config_request.dart'
    as _i136;
import 'package:smoke_test/src/sdk/src/config_service/model/get_aggregate_resource_config_response.dart'
    as _i135;
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_details_by_config_rule_request.dart'
    as _i139;
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_details_by_resource_request.dart'
    as _i141;
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_summary_by_config_rule_response.dart'
    as _i143;
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_summary_by_resource_type_request.dart'
    as _i146;
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_summary_by_resource_type_response.dart'
    as _i145;
import 'package:smoke_test/src/sdk/src/config_service/model/get_conformance_pack_compliance_details_request.dart'
    as _i149;
import 'package:smoke_test/src/sdk/src/config_service/model/get_conformance_pack_compliance_details_response.dart'
    as _i148;
import 'package:smoke_test/src/sdk/src/config_service/model/get_conformance_pack_compliance_summary_request.dart'
    as _i152;
import 'package:smoke_test/src/sdk/src/config_service/model/get_custom_rule_policy_request.dart'
    as _i155;
import 'package:smoke_test/src/sdk/src/config_service/model/get_custom_rule_policy_response.dart'
    as _i154;
import 'package:smoke_test/src/sdk/src/config_service/model/get_discovered_resource_counts_request.dart'
    as _i158;
import 'package:smoke_test/src/sdk/src/config_service/model/get_discovered_resource_counts_response.dart'
    as _i157;
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_config_rule_detailed_status_request.dart'
    as _i161;
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_conformance_pack_detailed_status_request.dart'
    as _i164;
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_custom_rule_policy_request.dart'
    as _i167;
import 'package:smoke_test/src/sdk/src/config_service/model/get_organization_custom_rule_policy_response.dart'
    as _i166;
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_config_history_request.dart'
    as _i170;
import 'package:smoke_test/src/sdk/src/config_service/model/get_stored_query_request.dart'
    as _i173;
import 'package:smoke_test/src/sdk/src/config_service/model/get_stored_query_response.dart'
    as _i172;
import 'package:smoke_test/src/sdk/src/config_service/model/list_aggregate_discovered_resources_request.dart'
    as _i176;
import 'package:smoke_test/src/sdk/src/config_service/model/list_conformance_pack_compliance_scores_request.dart'
    as _i179;
import 'package:smoke_test/src/sdk/src/config_service/model/list_conformance_pack_compliance_scores_response.dart'
    as _i178;
import 'package:smoke_test/src/sdk/src/config_service/model/list_discovered_resources_request.dart'
    as _i182;
import 'package:smoke_test/src/sdk/src/config_service/model/list_stored_queries_request.dart'
    as _i185;
import 'package:smoke_test/src/sdk/src/config_service/model/list_stored_queries_response.dart'
    as _i184;
import 'package:smoke_test/src/sdk/src/config_service/model/list_tags_for_resource_request.dart'
    as _i188;
import 'package:smoke_test/src/sdk/src/config_service/model/member_account_status.dart'
    as _i160;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule.dart'
    as _i99;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule_status.dart'
    as _i96;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack.dart'
    as _i105;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack_detailed_status.dart'
    as _i163;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack_status.dart'
    as _i102;
import 'package:smoke_test/src/sdk/src/config_service/model/pending_aggregation_request.dart'
    as _i108;
import 'package:smoke_test/src/sdk/src/config_service/model/put_aggregation_authorization_request.dart'
    as _i191;
import 'package:smoke_test/src/sdk/src/config_service/model/put_aggregation_authorization_response.dart'
    as _i190;
import 'package:smoke_test/src/sdk/src/config_service/model/put_config_rule_request.dart'
    as _i193;
import 'package:smoke_test/src/sdk/src/config_service/model/put_configuration_aggregator_request.dart'
    as _i196;
import 'package:smoke_test/src/sdk/src/config_service/model/put_configuration_aggregator_response.dart'
    as _i195;
import 'package:smoke_test/src/sdk/src/config_service/model/put_configuration_recorder_request.dart'
    as _i198;
import 'package:smoke_test/src/sdk/src/config_service/model/put_conformance_pack_request.dart'
    as _i201;
import 'package:smoke_test/src/sdk/src/config_service/model/put_conformance_pack_response.dart'
    as _i200;
import 'package:smoke_test/src/sdk/src/config_service/model/put_delivery_channel_request.dart'
    as _i203;
import 'package:smoke_test/src/sdk/src/config_service/model/put_evaluations_request.dart'
    as _i206;
import 'package:smoke_test/src/sdk/src/config_service/model/put_evaluations_response.dart'
    as _i205;
import 'package:smoke_test/src/sdk/src/config_service/model/put_external_evaluation_request.dart'
    as _i209;
import 'package:smoke_test/src/sdk/src/config_service/model/put_external_evaluation_response.dart'
    as _i208;
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_config_rule_request.dart'
    as _i212;
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_config_rule_response.dart'
    as _i211;
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_conformance_pack_request.dart'
    as _i215;
import 'package:smoke_test/src/sdk/src/config_service/model/put_organization_conformance_pack_response.dart'
    as _i214;
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_configurations_request.dart'
    as _i218;
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_configurations_response.dart'
    as _i217;
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_exceptions_request.dart'
    as _i221;
import 'package:smoke_test/src/sdk/src/config_service/model/put_remediation_exceptions_response.dart'
    as _i220;
import 'package:smoke_test/src/sdk/src/config_service/model/put_resource_config_request.dart'
    as _i223;
import 'package:smoke_test/src/sdk/src/config_service/model/put_retention_configuration_request.dart'
    as _i226;
import 'package:smoke_test/src/sdk/src/config_service/model/put_retention_configuration_response.dart'
    as _i225;
import 'package:smoke_test/src/sdk/src/config_service/model/put_stored_query_request.dart'
    as _i229;
import 'package:smoke_test/src/sdk/src/config_service/model/put_stored_query_response.dart'
    as _i228;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_execution_status.dart'
    as _i117;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_identifier.dart'
    as _i181;
import 'package:smoke_test/src/sdk/src/config_service/model/retention_configuration.dart'
    as _i120;
import 'package:smoke_test/src/sdk/src/config_service/model/select_aggregate_resource_config_request.dart'
    as _i231;
import 'package:smoke_test/src/sdk/src/config_service/model/select_resource_config_request.dart'
    as _i233;
import 'package:smoke_test/src/sdk/src/config_service/model/start_config_rules_evaluation_request.dart'
    as _i236;
import 'package:smoke_test/src/sdk/src/config_service/model/start_config_rules_evaluation_response.dart'
    as _i235;
import 'package:smoke_test/src/sdk/src/config_service/model/start_configuration_recorder_request.dart'
    as _i238;
import 'package:smoke_test/src/sdk/src/config_service/model/start_remediation_execution_request.dart'
    as _i241;
import 'package:smoke_test/src/sdk/src/config_service/model/start_remediation_execution_response.dart'
    as _i240;
import 'package:smoke_test/src/sdk/src/config_service/model/stop_configuration_recorder_request.dart'
    as _i243;
import 'package:smoke_test/src/sdk/src/config_service/model/tag.dart' as _i187;
import 'package:smoke_test/src/sdk/src/config_service/model/tag_resource_request.dart'
    as _i245;
import 'package:smoke_test/src/sdk/src/config_service/model/untag_resource_request.dart'
    as _i247;
import 'package:smoke_test/src/sdk/src/config_service/operation/batch_get_aggregate_resource_config_operation.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/operation/batch_get_resource_config_operation.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_aggregation_authorization_operation.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_config_rule_operation.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_configuration_aggregator_operation.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_configuration_recorder_operation.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_conformance_pack_operation.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_delivery_channel_operation.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_evaluation_results_operation.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_organization_config_rule_operation.dart'
    as _i26;
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_organization_conformance_pack_operation.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_pending_aggregation_request_operation.dart'
    as _i30;
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_remediation_configuration_operation.dart'
    as _i33;
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_remediation_exceptions_operation.dart'
    as _i36;
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_resource_config_operation.dart'
    as _i38;
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_retention_configuration_operation.dart'
    as _i40;
import 'package:smoke_test/src/sdk/src/config_service/operation/delete_stored_query_operation.dart'
    as _i43;
import 'package:smoke_test/src/sdk/src/config_service/operation/deliver_config_snapshot_operation.dart'
    as _i46;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_aggregate_compliance_by_config_rules_operation.dart'
    as _i49;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_aggregate_compliance_by_conformance_packs_operation.dart'
    as _i53;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_aggregation_authorizations_operation.dart'
    as _i56;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_compliance_by_config_rule_operation.dart'
    as _i59;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_compliance_by_resource_operation.dart'
    as _i62;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_config_rule_evaluation_status_operation.dart'
    as _i65;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_config_rules_operation.dart'
    as _i68;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_configuration_aggregator_sources_status_operation.dart'
    as _i71;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_configuration_aggregators_operation.dart'
    as _i74;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_configuration_recorder_status_operation.dart'
    as _i77;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_configuration_recorders_operation.dart'
    as _i80;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_conformance_pack_compliance_operation.dart'
    as _i83;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_conformance_pack_status_operation.dart'
    as _i86;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_conformance_packs_operation.dart'
    as _i89;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_delivery_channel_status_operation.dart'
    as _i92;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_delivery_channels_operation.dart'
    as _i95;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_organization_config_rule_statuses_operation.dart'
    as _i98;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_organization_config_rules_operation.dart'
    as _i101;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_organization_conformance_pack_statuses_operation.dart'
    as _i104;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_organization_conformance_packs_operation.dart'
    as _i107;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_pending_aggregation_requests_operation.dart'
    as _i110;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_remediation_configurations_operation.dart'
    as _i113;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_remediation_exceptions_operation.dart'
    as _i116;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_remediation_execution_status_operation.dart'
    as _i119;
import 'package:smoke_test/src/sdk/src/config_service/operation/describe_retention_configurations_operation.dart'
    as _i122;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_aggregate_compliance_details_by_config_rule_operation.dart'
    as _i125;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_aggregate_config_rule_compliance_summary_operation.dart'
    as _i128;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_aggregate_conformance_pack_compliance_summary_operation.dart'
    as _i131;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_aggregate_discovered_resource_counts_operation.dart'
    as _i134;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_aggregate_resource_config_operation.dart'
    as _i137;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_compliance_details_by_config_rule_operation.dart'
    as _i140;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_compliance_details_by_resource_operation.dart'
    as _i142;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_compliance_summary_by_config_rule_operation.dart'
    as _i144;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_compliance_summary_by_resource_type_operation.dart'
    as _i147;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_conformance_pack_compliance_details_operation.dart'
    as _i150;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_conformance_pack_compliance_summary_operation.dart'
    as _i153;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_custom_rule_policy_operation.dart'
    as _i156;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_discovered_resource_counts_operation.dart'
    as _i159;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_organization_config_rule_detailed_status_operation.dart'
    as _i162;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_organization_conformance_pack_detailed_status_operation.dart'
    as _i165;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_organization_custom_rule_policy_operation.dart'
    as _i168;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_resource_config_history_operation.dart'
    as _i171;
import 'package:smoke_test/src/sdk/src/config_service/operation/get_stored_query_operation.dart'
    as _i174;
import 'package:smoke_test/src/sdk/src/config_service/operation/list_aggregate_discovered_resources_operation.dart'
    as _i177;
import 'package:smoke_test/src/sdk/src/config_service/operation/list_conformance_pack_compliance_scores_operation.dart'
    as _i180;
import 'package:smoke_test/src/sdk/src/config_service/operation/list_discovered_resources_operation.dart'
    as _i183;
import 'package:smoke_test/src/sdk/src/config_service/operation/list_stored_queries_operation.dart'
    as _i186;
import 'package:smoke_test/src/sdk/src/config_service/operation/list_tags_for_resource_operation.dart'
    as _i189;
import 'package:smoke_test/src/sdk/src/config_service/operation/put_aggregation_authorization_operation.dart'
    as _i192;
import 'package:smoke_test/src/sdk/src/config_service/operation/put_config_rule_operation.dart'
    as _i194;
import 'package:smoke_test/src/sdk/src/config_service/operation/put_configuration_aggregator_operation.dart'
    as _i197;
import 'package:smoke_test/src/sdk/src/config_service/operation/put_configuration_recorder_operation.dart'
    as _i199;
import 'package:smoke_test/src/sdk/src/config_service/operation/put_conformance_pack_operation.dart'
    as _i202;
import 'package:smoke_test/src/sdk/src/config_service/operation/put_delivery_channel_operation.dart'
    as _i204;
import 'package:smoke_test/src/sdk/src/config_service/operation/put_evaluations_operation.dart'
    as _i207;
import 'package:smoke_test/src/sdk/src/config_service/operation/put_external_evaluation_operation.dart'
    as _i210;
import 'package:smoke_test/src/sdk/src/config_service/operation/put_organization_config_rule_operation.dart'
    as _i213;
import 'package:smoke_test/src/sdk/src/config_service/operation/put_organization_conformance_pack_operation.dart'
    as _i216;
import 'package:smoke_test/src/sdk/src/config_service/operation/put_remediation_configurations_operation.dart'
    as _i219;
import 'package:smoke_test/src/sdk/src/config_service/operation/put_remediation_exceptions_operation.dart'
    as _i222;
import 'package:smoke_test/src/sdk/src/config_service/operation/put_resource_config_operation.dart'
    as _i224;
import 'package:smoke_test/src/sdk/src/config_service/operation/put_retention_configuration_operation.dart'
    as _i227;
import 'package:smoke_test/src/sdk/src/config_service/operation/put_stored_query_operation.dart'
    as _i230;
import 'package:smoke_test/src/sdk/src/config_service/operation/select_aggregate_resource_config_operation.dart'
    as _i232;
import 'package:smoke_test/src/sdk/src/config_service/operation/select_resource_config_operation.dart'
    as _i234;
import 'package:smoke_test/src/sdk/src/config_service/operation/start_config_rules_evaluation_operation.dart'
    as _i237;
import 'package:smoke_test/src/sdk/src/config_service/operation/start_configuration_recorder_operation.dart'
    as _i239;
import 'package:smoke_test/src/sdk/src/config_service/operation/start_remediation_execution_operation.dart'
    as _i242;
import 'package:smoke_test/src/sdk/src/config_service/operation/stop_configuration_recorder_operation.dart'
    as _i244;
import 'package:smoke_test/src/sdk/src/config_service/operation/tag_resource_operation.dart'
    as _i246;
import 'package:smoke_test/src/sdk/src/config_service/operation/untag_resource_operation.dart'
    as _i248;

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
    required _i2.AWSCredentialsProvider credentialsProvider,
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  /// Returns the current configuration items for resources that are present in your Config aggregator. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty `unprocessedResourceIdentifiers` list.
  ///
  /// *   The API does not return results for deleted resources.
  ///
  /// *   The API does not return tags and relationships.
  _i3.SmithyOperation<_i4.BatchGetAggregateResourceConfigResponse>
      batchGetAggregateResourceConfig(
    _i5.BatchGetAggregateResourceConfigRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i6.BatchGetAggregateResourceConfigOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
  _i3.SmithyOperation<_i7.BatchGetResourceConfigResponse>
      batchGetResourceConfig(
    _i8.BatchGetResourceConfigRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i9.BatchGetResourceConfigOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the authorization granted to the specified configuration aggregator account in a specified region.
  _i3.SmithyOperation<void> deleteAggregationAuthorization(
    _i10.DeleteAggregationAuthorizationRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i11.DeleteAggregationAuthorizationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
    _i12.DeleteConfigRuleRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i13.DeleteConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified configuration aggregator and the aggregated data associated with the aggregator.
  _i3.SmithyOperation<void> deleteConfigurationAggregator(
    _i14.DeleteConfigurationAggregatorRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i15.DeleteConfigurationAggregatorOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
    _i16.DeleteConfigurationRecorderRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i17.DeleteConfigurationRecorderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified conformance pack and all the Config rules, remediation actions, and all evaluation results within that conformance pack.
  ///
  /// Config sets the conformance pack to `DELETE\_IN\_PROGRESS` until the deletion is complete. You cannot update a conformance pack while it is in this state.
  _i3.SmithyOperation<void> deleteConformancePack(
    _i18.DeleteConformancePackRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i19.DeleteConformancePackOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the delivery channel.
  ///
  /// Before you can delete the delivery channel, you must stop the configuration recorder by using the StopConfigurationRecorder action.
  _i3.SmithyOperation<void> deleteDeliveryChannel(
    _i20.DeleteDeliveryChannelRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i21.DeleteDeliveryChannelOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the evaluation results for the specified Config rule. You can specify one Config rule per request. After you delete the evaluation results, you can call the StartConfigRulesEvaluation API to start evaluating your Amazon Web Services resources against the rule.
  _i3.SmithyOperation<_i22.DeleteEvaluationResultsResponse>
      deleteEvaluationResults(
    _i23.DeleteEvaluationResultsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i24.DeleteEvaluationResultsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified organization Config rule and all of its evaluation results from all member accounts in that organization.
  ///
  /// Only a master account and a delegated administrator account can delete an organization Config rule. When calling this API with a delegated administrator, you must ensure Organizations `ListDelegatedAdministrator` permissions are added.
  ///
  /// Config sets the state of a rule to DELETE\_IN\_PROGRESS until the deletion is complete. You cannot update a rule while it is in this state.
  _i3.SmithyOperation<void> deleteOrganizationConfigRule(
    _i25.DeleteOrganizationConfigRuleRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i26.DeleteOrganizationConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified organization conformance pack and all of the Config rules and remediation actions from all member accounts in that organization.
  ///
  /// Only a master account or a delegated administrator account can delete an organization conformance pack. When calling this API with a delegated administrator, you must ensure Organizations `ListDelegatedAdministrator` permissions are added.
  ///
  /// Config sets the state of a conformance pack to DELETE\_IN\_PROGRESS until the deletion is complete. You cannot update a conformance pack while it is in this state.
  _i3.SmithyOperation<void> deleteOrganizationConformancePack(
    _i27.DeleteOrganizationConformancePackRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i28.DeleteOrganizationConformancePackOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes pending authorization requests for a specified aggregator account in a specified region.
  _i3.SmithyOperation<void> deletePendingAggregationRequest(
    _i29.DeletePendingAggregationRequestRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i30.DeletePendingAggregationRequestOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the remediation configuration.
  _i3.SmithyOperation<_i31.DeleteRemediationConfigurationResponse>
      deleteRemediationConfiguration(
    _i32.DeleteRemediationConfigurationRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i33.DeleteRemediationConfigurationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes one or more remediation exceptions mentioned in the resource keys.
  ///
  /// Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource. Remediation exceptions blocks auto-remediation until the exception is cleared.
  _i3.SmithyOperation<_i34.DeleteRemediationExceptionsResponse>
      deleteRemediationExceptions(
    _i35.DeleteRemediationExceptionsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i36.DeleteRemediationExceptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Records the configuration state for a custom resource that has been deleted. This API records a new ConfigurationItem with a ResourceDeleted status. You can retrieve the ConfigurationItems recorded for this resource in your Config History.
  _i3.SmithyOperation<void> deleteResourceConfig(
    _i37.DeleteResourceConfigRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i38.DeleteResourceConfigOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the retention configuration.
  _i3.SmithyOperation<void> deleteRetentionConfiguration(
    _i39.DeleteRetentionConfigurationRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i40.DeleteRetentionConfigurationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the stored query for a single Amazon Web Services account and a single Amazon Web Services Region.
  _i3.SmithyOperation<_i41.DeleteStoredQueryResponse> deleteStoredQuery(
    _i42.DeleteStoredQueryRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i43.DeleteStoredQueryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
  _i3.SmithyOperation<_i44.DeliverConfigSnapshotResponse> deliverConfigSnapshot(
    _i45.DeliverConfigSnapshotRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i46.DeliverConfigSnapshotOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of compliant and noncompliant rules with the number of resources for compliant and noncompliant rules. Does not display rules that do not have compliance results.
  ///
  /// The results can return an empty result page, but if you have a `nextToken`, the results are displayed on the next page.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i47.DescribeAggregateComplianceByConfigRulesResponse,
          int, String>> describeAggregateComplianceByConfigRules(
    _i48.DescribeAggregateComplianceByConfigRulesRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i49.DescribeAggregateComplianceByConfigRulesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of the conformance packs and their associated compliance status with the count of compliant and noncompliant Config rules within each conformance pack. Also returns the total rule count which includes compliant rules, noncompliant rules, and rules that cannot be evaluated due to insufficient data.
  ///
  /// The results can return an empty result page, but if you have a `nextToken`, the results are displayed on the next page.
  _i3.SmithyOperation<
      _i3.PaginatedResult<
          _i50.BuiltList<_i51.AggregateComplianceByConformancePack>,
          int,
          String>> describeAggregateComplianceByConformancePacks(
    _i52.DescribeAggregateComplianceByConformancePacksRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i53.DescribeAggregateComplianceByConformancePacksOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of authorizations granted to various aggregator accounts and regions.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i54.AggregationAuthorization>, int,
          String>> describeAggregationAuthorizations(
    _i55.DescribeAggregationAuthorizationsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i56.DescribeAggregationAuthorizationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
      _i3.PaginatedResult<_i50.BuiltList<_i57.ComplianceByConfigRule>, void,
          String>> describeComplianceByConfigRule(
    _i58.DescribeComplianceByConfigRuleRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i59.DescribeComplianceByConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
      _i3.PaginatedResult<_i50.BuiltList<_i60.ComplianceByResource>, int,
          String>> describeComplianceByResource(
    _i61.DescribeComplianceByResourceRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i62.DescribeComplianceByResourceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns status information for each of your Config managed rules. The status includes information such as the last time Config invoked the rule, the last time Config failed to invoke the rule, and the related error for the last failure.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i63.ConfigRuleEvaluationStatus>, int,
          String>> describeConfigRuleEvaluationStatus(
    _i64.DescribeConfigRuleEvaluationStatusRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i65.DescribeConfigRuleEvaluationStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns details about your Config rules.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i50.BuiltList<_i66.ConfigRule>, void, String>>
      describeConfigRules(
    _i67.DescribeConfigRulesRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i68.DescribeConfigRulesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns status information for sources within an aggregator. The status includes information about the last time Config verified authorization between the source account and an aggregator account. In case of a failure, the status contains the related error code or message.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i69.AggregatedSourceStatus>, int,
          String>> describeConfigurationAggregatorSourcesStatus(
    _i70.DescribeConfigurationAggregatorSourcesStatusRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i71.DescribeConfigurationAggregatorSourcesStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the details of one or more configuration aggregators. If the configuration aggregator is not specified, this action returns the details for all the configuration aggregators associated with the account.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i72.ConfigurationAggregator>, int,
          String>> describeConfigurationAggregators(
    _i73.DescribeConfigurationAggregatorsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i74.DescribeConfigurationAggregatorsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the current status of the specified configuration recorder. If a configuration recorder is not specified, this action returns the status of all configuration recorders associated with the account.
  ///
  /// Currently, you can specify only one configuration recorder per region in your account.
  _i3.SmithyOperation<_i75.DescribeConfigurationRecorderStatusResponse>
      describeConfigurationRecorderStatus(
    _i76.DescribeConfigurationRecorderStatusRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i77.DescribeConfigurationRecorderStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the details for the specified configuration recorders. If the configuration recorder is not specified, this action returns the details for all configuration recorders associated with the account.
  ///
  /// Currently, you can specify only one configuration recorder per region in your account.
  _i3.SmithyOperation<_i78.DescribeConfigurationRecordersResponse>
      describeConfigurationRecorders(
    _i79.DescribeConfigurationRecordersRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i80.DescribeConfigurationRecordersOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns compliance details for each rule in that conformance pack.
  ///
  /// You must provide exact rule names.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i81.DescribeConformancePackComplianceResponse, int,
          String>> describeConformancePackCompliance(
    _i82.DescribeConformancePackComplianceRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i83.DescribeConformancePackComplianceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Provides one or more conformance packs deployment status.
  ///
  /// If there are no conformance packs then you will see an empty result.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i84.ConformancePackStatusDetail>, int,
          String>> describeConformancePackStatus(
    _i85.DescribeConformancePackStatusRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i86.DescribeConformancePackStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of one or more conformance packs.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i87.ConformancePackDetail>, int,
          String>> describeConformancePacks(
    _i88.DescribeConformancePacksRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i89.DescribeConformancePacksOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the current status of the specified delivery channel. If a delivery channel is not specified, this action returns the current status of all delivery channels associated with the account.
  ///
  /// Currently, you can specify only one delivery channel per region in your account.
  _i3.SmithyOperation<_i90.DescribeDeliveryChannelStatusResponse>
      describeDeliveryChannelStatus(
    _i91.DescribeDeliveryChannelStatusRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i92.DescribeDeliveryChannelStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns details about the specified delivery channel. If a delivery channel is not specified, this action returns the details of all delivery channels associated with the account.
  ///
  /// Currently, you can specify only one delivery channel per region in your account.
  _i3.SmithyOperation<_i93.DescribeDeliveryChannelsResponse>
      describeDeliveryChannels(
    _i94.DescribeDeliveryChannelsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i95.DescribeDeliveryChannelsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
      _i3.PaginatedResult<_i50.BuiltList<_i96.OrganizationConfigRuleStatus>,
          int, String>> describeOrganizationConfigRuleStatuses(
    _i97.DescribeOrganizationConfigRuleStatusesRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i98.DescribeOrganizationConfigRuleStatusesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
      _i3.PaginatedResult<_i50.BuiltList<_i99.OrganizationConfigRule>, int,
          String>> describeOrganizationConfigRules(
    _i100.DescribeOrganizationConfigRulesRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i101.DescribeOrganizationConfigRulesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
      _i3.PaginatedResult<
          _i50.BuiltList<_i102.OrganizationConformancePackStatus>,
          int,
          String>> describeOrganizationConformancePackStatuses(
    _i103.DescribeOrganizationConformancePackStatusesRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i104.DescribeOrganizationConformancePackStatusesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
      _i3.PaginatedResult<_i50.BuiltList<_i105.OrganizationConformancePack>,
          int, String>> describeOrganizationConformancePacks(
    _i106.DescribeOrganizationConformancePacksRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i107.DescribeOrganizationConformancePacksOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of all pending aggregation requests.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i108.PendingAggregationRequest>, int,
          String>> describePendingAggregationRequests(
    _i109.DescribePendingAggregationRequestsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i110.DescribePendingAggregationRequestsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the details of one or more remediation configurations.
  _i3.SmithyOperation<_i111.DescribeRemediationConfigurationsResponse>
      describeRemediationConfigurations(
    _i112.DescribeRemediationConfigurationsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i113.DescribeRemediationConfigurationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
      _i3.PaginatedResult<_i114.DescribeRemediationExceptionsResponse, int,
          String>> describeRemediationExceptions(
    _i115.DescribeRemediationExceptionsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i116.DescribeRemediationExceptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Provides a detailed view of a Remediation Execution for a set of resources including state, timestamps for when steps for the remediation execution occur, and any error messages for steps that have failed. When you specify the limit and the next token, you receive a paginated response.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i117.RemediationExecutionStatus>, int,
          String>> describeRemediationExecutionStatus(
    _i118.DescribeRemediationExecutionStatusRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i119.DescribeRemediationExecutionStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the details of one or more retention configurations. If the retention configuration name is not specified, this action returns the details for all the retention configurations for that account.
  ///
  /// Currently, Config supports only one retention configuration per region in your account.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i120.RetentionConfiguration>, void,
          String>> describeRetentionConfigurations(
    _i121.DescribeRetentionConfigurationsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i122.DescribeRetentionConfigurationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the evaluation results for the specified Config rule for a specific resource in a rule. The results indicate which Amazon Web Services resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.
  ///
  /// The results can return an empty result page. But if you have a `nextToken`, the results are displayed on the next page.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i123.AggregateEvaluationResult>, int,
          String>> getAggregateComplianceDetailsByConfigRule(
    _i124.GetAggregateComplianceDetailsByConfigRuleRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i125.GetAggregateComplianceDetailsByConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.
  ///
  /// The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i126.GetAggregateConfigRuleComplianceSummaryResponse,
          int, String>> getAggregateConfigRuleComplianceSummary(
    _i127.GetAggregateConfigRuleComplianceSummaryRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i128.GetAggregateConfigRuleComplianceSummaryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the count of compliant and noncompliant conformance packs across all Amazon Web Services accounts and Amazon Web Services Regions in an aggregator. You can filter based on Amazon Web Services account ID or Amazon Web Services Region.
  ///
  /// The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page.
  _i3.SmithyOperation<
      _i3.PaginatedResult<
          _i129.GetAggregateConformancePackComplianceSummaryResponse,
          int,
          String>> getAggregateConformancePackComplianceSummary(
    _i130.GetAggregateConformancePackComplianceSummaryRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i131.GetAggregateConformancePackComplianceSummaryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the resource counts across accounts and regions that are present in your Config aggregator. You can request the resource counts by providing filters and GroupByKey.
  ///
  /// For example, if the input contains accountID 12345678910 and region us-east-1 in filters, the API returns the count of resources in account ID 12345678910 and region us-east-1. If the input contains ACCOUNT_ID as a GroupByKey, the API returns resource counts for all source accounts that are present in your aggregator.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i132.GetAggregateDiscoveredResourceCountsResponse,
          int, String>> getAggregateDiscoveredResourceCounts(
    _i133.GetAggregateDiscoveredResourceCountsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i134.GetAggregateDiscoveredResourceCountsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns configuration item that is aggregated for your specific resource in a specific source account and region.
  _i3.SmithyOperation<_i135.GetAggregateResourceConfigResponse>
      getAggregateResourceConfig(
    _i136.GetAggregateResourceConfigRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i137.GetAggregateResourceConfigOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the evaluation results for the specified Config rule. The results indicate which Amazon Web Services resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i138.EvaluationResult>, int,
          String>> getComplianceDetailsByConfigRule(
    _i139.GetComplianceDetailsByConfigRuleRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i140.GetComplianceDetailsByConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the evaluation results for the specified Amazon Web Services resource. The results indicate which Config rules were used to evaluate the resource, when each rule was last used, and whether the resource complies with each rule.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i138.EvaluationResult>, void,
          String>> getComplianceDetailsByResource(
    _i141.GetComplianceDetailsByResourceRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i142.GetComplianceDetailsByResourceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the number of Config rules that are compliant and noncompliant, up to a maximum of 25 for each.
  _i3.SmithyOperation<_i143.GetComplianceSummaryByConfigRuleResponse>
      getComplianceSummaryByConfigRule({_i1.AWSHttpClient? client}) {
    return _i144.GetComplianceSummaryByConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      const _i3.Unit(),
      client: client ?? _client,
    );
  }

  /// Returns the number of resources that are compliant and the number that are noncompliant. You can specify one or more resource types to get these numbers for each resource type. The maximum number returned is 100.
  _i3.SmithyOperation<_i145.GetComplianceSummaryByResourceTypeResponse>
      getComplianceSummaryByResourceType(
    _i146.GetComplianceSummaryByResourceTypeRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i147.GetComplianceSummaryByResourceTypeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns compliance details of a conformance pack for all Amazon Web Services resources that are monitered by conformance pack.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i148.GetConformancePackComplianceDetailsResponse,
          int, String>> getConformancePackComplianceDetails(
    _i149.GetConformancePackComplianceDetailsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i150.GetConformancePackComplianceDetailsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns compliance details for the conformance pack based on the cumulative compliance results of all the rules in that conformance pack.
  _i3.SmithyOperation<
      _i3.PaginatedResult<
          _i50.BuiltList<_i151.ConformancePackComplianceSummary>,
          int,
          String>> getConformancePackComplianceSummary(
    _i152.GetConformancePackComplianceSummaryRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i153.GetConformancePackComplianceSummaryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the policy definition containing the logic for your Config Custom Policy rule.
  _i3.SmithyOperation<_i154.GetCustomRulePolicyResponse> getCustomRulePolicy(
    _i155.GetCustomRulePolicyRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i156.GetCustomRulePolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
      _i3.PaginatedResult<_i157.GetDiscoveredResourceCountsResponse, int,
          String>> getDiscoveredResourceCounts(
    _i158.GetDiscoveredResourceCountsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i159.GetDiscoveredResourceCountsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns detailed status for each member account within an organization for a given organization Config rule.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i160.MemberAccountStatus>, int,
          String>> getOrganizationConfigRuleDetailedStatus(
    _i161.GetOrganizationConfigRuleDetailedStatusRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i162.GetOrganizationConfigRuleDetailedStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns detailed status for each member account within an organization for a given organization conformance pack.
  _i3.SmithyOperation<
      _i3.PaginatedResult<
          _i50.BuiltList<_i163.OrganizationConformancePackDetailedStatus>,
          int,
          String>> getOrganizationConformancePackDetailedStatus(
    _i164.GetOrganizationConformancePackDetailedStatusRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i165.GetOrganizationConformancePackDetailedStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the policy definition containing the logic for your organization Config Custom Policy rule.
  _i3.SmithyOperation<_i166.GetOrganizationCustomRulePolicyResponse>
      getOrganizationCustomRulePolicy(
    _i167.GetOrganizationCustomRulePolicyRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i168.GetOrganizationCustomRulePolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
      _i3.PaginatedResult<_i50.BuiltList<_i169.ConfigurationItem>, int,
          String>> getResourceConfigHistory(
    _i170.GetResourceConfigHistoryRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i171.GetResourceConfigHistoryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the details of a specific stored query.
  _i3.SmithyOperation<_i172.GetStoredQueryResponse> getStoredQuery(
    _i173.GetStoredQueryRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i174.GetStoredQueryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Accepts a resource type and returns a list of resource identifiers that are aggregated for a specific resource type across accounts and regions. A resource identifier includes the resource type, ID, (if available) the custom resource name, source account, and source region. You can narrow the results to include only resources that have specific resource IDs, or a resource name, or source account ID, or source region.
  ///
  /// For example, if the input consists of accountID 12345678910 and the region is us-east-1 for resource type `AWS::EC2::Instance` then the API returns all the EC2 instance identifiers of accountID 12345678910 and region us-east-1.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i50.BuiltList<_i175.AggregateResourceIdentifier>,
          int, String>> listAggregateDiscoveredResources(
    _i176.ListAggregateDiscoveredResourcesRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i177.ListAggregateDiscoveredResourcesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of conformance pack compliance scores. A compliance score is the percentage of the number of compliant rule-resource combinations in a conformance pack compared to the number of total possible rule-resource combinations in the conformance pack. This metric provides you with a high-level view of the compliance state of your conformance packs, and can be used to identify, investigate, and understand the level of compliance in your conformance packs.
  ///
  /// Conformance packs with no evaluation results will have a compliance score of `INSUFFICIENT_DATA`.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i178.ListConformancePackComplianceScoresResponse,
          int, String>> listConformancePackComplianceScores(
    _i179.ListConformancePackComplianceScoresRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i180.ListConformancePackComplianceScoresOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
      _i3.PaginatedResult<_i50.BuiltList<_i181.ResourceIdentifier>, int,
          String>> listDiscoveredResources(
    _i182.ListDiscoveredResourcesRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i183.ListDiscoveredResourcesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Lists the stored queries for a single Amazon Web Services account and a single Amazon Web Services Region. The default is 100.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i184.ListStoredQueriesResponse, int, String>>
      listStoredQueries(
    _i185.ListStoredQueriesRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i186.ListStoredQueriesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// List the tags for Config resource.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i50.BuiltList<_i187.Tag>, int, String>>
      listTagsForResource(
    _i188.ListTagsForResourceRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i189.ListTagsForResourceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Authorizes the aggregator account and region to collect data from the source account and region.
  _i3.SmithyOperation<_i190.PutAggregationAuthorizationResponse>
      putAggregationAuthorization(
    _i191.PutAggregationAuthorizationRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i192.PutAggregationAuthorizationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds or updates an Config rule to evaluate if your Amazon Web Services resources comply with your desired configurations. For information on how many Config rules you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
  ///
  /// There are two types of rules: Config Custom Rules and Config Managed Rules. You can use `PutConfigRule` to create both Config custom rules and Config managed rules.
  ///
  /// Custom rules are rules that you can create using either Guard or Lambda functions. Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)) is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. Lambda uses custom code that you upload to evaluate a custom rule. If you are adding a new Custom Lambda rule, you first need to create an Lambda function that the rule invokes to evaluate your resources. When you use `PutConfigRule` to add a Custom Lambda rule to Config, you must specify the Amazon Resource Name (ARN) that Lambda assigns to the function. You specify the ARN in the `SourceIdentifier` key. This key is part of the `Source` object, which is part of the `ConfigRule` object.
  ///
  /// Managed rules are predefined, customizable rules created by Config. For a list of managed rules, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html). If you are adding an Config managed rule, you must specify the rule's identifier for the `SourceIdentifier` key.
  ///
  /// For any new rule that you add, specify the `ConfigRuleName` in the `ConfigRule` object. Do not specify the `ConfigRuleArn` or the `ConfigRuleId`. These values are generated by Config for new rules.
  ///
  /// If you are updating a rule that you added previously, you can specify the rule by `ConfigRuleName`, `ConfigRuleId`, or `ConfigRuleArn` in the `ConfigRule` data type that you use in this request.
  ///
  /// For more information about developing and using Config rules, see [Evaluating Amazon Web Services resource Configurations with Config](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html) in the _Config Developer Guide_.
  _i3.SmithyOperation<void> putConfigRule(
    _i193.PutConfigRuleRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i194.PutConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
  _i3.SmithyOperation<_i195.PutConfigurationAggregatorResponse>
      putConfigurationAggregator(
    _i196.PutConfigurationAggregatorRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i197.PutConfigurationAggregatorOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new configuration recorder to record the selected resource configurations.
  ///
  /// You can use this action to change the role `roleARN` or the `recordingGroup` of an existing recorder. To change the role, call the action on the existing configuration recorder and specify a role.
  ///
  /// Currently, you can specify only one configuration recorder per region in your account.
  ///
  /// If `ConfigurationRecorder` does not have the **recordingGroup** parameter specified, the default is to record all supported resource types.
  _i3.SmithyOperation<void> putConfigurationRecorder(
    _i198.PutConfigurationRecorderRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i199.PutConfigurationRecorderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates or updates a conformance pack. A conformance pack is a collection of Config rules that can be easily deployed in an account and a region and across Amazon Web Services Organization. For information on how many conformance packs you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the Config Developer Guide.
  ///
  /// This API creates a service-linked role `AWSServiceRoleForConfigConforms` in your account. The service-linked role is created only when the role does not exist in your account.
  ///
  /// You must specify one and only one of the`TemplateS3Uri`, `TemplateBody` or `TemplateSSMDocumentDetails` parameters.
  _i3.SmithyOperation<_i200.PutConformancePackResponse> putConformancePack(
    _i201.PutConformancePackRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i202.PutConformancePackOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
    _i203.PutDeliveryChannelRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i204.PutDeliveryChannelOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Used by an Lambda function to deliver evaluation results to Config. This action is required in every Lambda function that is invoked by an Config rule.
  _i3.SmithyOperation<_i205.PutEvaluationsResponse> putEvaluations(
    _i206.PutEvaluationsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i207.PutEvaluationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Add or updates the evaluations for process checks. This API checks if the rule is a process check when the name of the Config rule is provided.
  _i3.SmithyOperation<_i208.PutExternalEvaluationResponse>
      putExternalEvaluation(
    _i209.PutExternalEvaluationRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i210.PutExternalEvaluationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds or updates an Config rule for your entire organization to evaluate if your Amazon Web Services resources comply with your desired configurations. For information on how many organization Config rules you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
  ///
  /// Only a master account and a delegated administrator can create or update an organization Config rule. When calling this API with a delegated administrator, you must ensure Organizations `ListDelegatedAdministrator` permissions are added. An organization can have up to 3 delegated administrators.
  ///
  /// This API enables organization service access through the `EnableAWSServiceAccess` action and creates a service-linked role `AWSServiceRoleForConfigMultiAccountSetup` in the master or delegated administrator account of your organization. The service-linked role is created only when the role does not exist in the caller account. Config verifies the existence of role with `GetRole` action.
  ///
  /// To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization `register-delegated-administrator` for `config-multiaccountsetup.amazonaws.com`.
  ///
  /// There are two types of rules: Config Custom Rules and Config Managed Rules. You can use `PutOrganizationConfigRule` to create both Config custom rules and Config managed rules.
  ///
  /// Custom rules are rules that you can create using either Guard or Lambda functions. Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)) is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. Lambda uses custom code that you upload to evaluate a custom rule. If you are adding a new Custom Lambda rule, you first need to create an Lambda function in the master account or a delegated administrator that the rule invokes to evaluate your resources. You also need to create an IAM role in the managed account that can be assumed by the Lambda function. When you use `PutOrganizationConfigRule` to add a Custom Lambda rule to Config, you must specify the Amazon Resource Name (ARN) that Lambda assigns to the function.
  ///
  /// Managed rules are predefined, customizable rules created by Config. For a list of managed rules, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html). If you are adding an Config managed rule, you must specify the rule's identifier for the `RuleIdentifier` key.
  ///
  /// Prerequisite: Ensure you call `EnableAllFeatures` API to enable all features in an organization.
  ///
  /// Make sure to specify one of either `OrganizationCustomPolicyRuleMetadata` for Custom Policy rules, `OrganizationCustomRuleMetadata` for Custom Lambda rules, or `OrganizationManagedRuleMetadata` for managed rules.
  _i3.SmithyOperation<_i211.PutOrganizationConfigRuleResponse>
      putOrganizationConfigRule(
    _i212.PutOrganizationConfigRuleRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i213.PutOrganizationConfigRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deploys conformance packs across member accounts in an Amazon Web Services Organization. For information on how many organization conformance packs and how many Config rules you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the Config Developer Guide.
  ///
  /// Only a master account and a delegated administrator can call this API. When calling this API with a delegated administrator, you must ensure Organizations `ListDelegatedAdministrator` permissions are added. An organization can have up to 3 delegated administrators.
  ///
  /// This API enables organization service access for `config-multiaccountsetup.amazonaws.com` through the `EnableAWSServiceAccess` action and creates a service-linked role `AWSServiceRoleForConfigMultiAccountSetup` in the master or delegated administrator account of your organization. The service-linked role is created only when the role does not exist in the caller account. To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization `register-delegate-admin` for `config-multiaccountsetup.amazonaws.com`.
  ///
  /// Prerequisite: Ensure you call `EnableAllFeatures` API to enable all features in an organization.
  ///
  /// You must specify either the `TemplateS3Uri` or the `TemplateBody` parameter, but not both. If you provide both Config uses the `TemplateS3Uri` parameter and ignores the `TemplateBody` parameter.
  ///
  /// Config sets the state of a conformance pack to CREATE\_IN\_PROGRESS and UPDATE\_IN\_PROGRESS until the conformance pack is created or updated. You cannot update a conformance pack while it is in this state.
  _i3.SmithyOperation<_i214.PutOrganizationConformancePackResponse>
      putOrganizationConformancePack(
    _i215.PutOrganizationConformancePackRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i216.PutOrganizationConformancePackOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
  _i3.SmithyOperation<_i217.PutRemediationConfigurationsResponse>
      putRemediationConfigurations(
    _i218.PutRemediationConfigurationsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i219.PutRemediationConfigurationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// A remediation exception is when a specific resource is no longer considered for auto-remediation. This API adds a new exception or updates an existing exception for a specific resource with a specific Config rule.
  ///
  /// Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource. Remediation exceptions blocks auto-remediation until the exception is cleared.
  _i3.SmithyOperation<_i220.PutRemediationExceptionsResponse>
      putRemediationExceptions(
    _i221.PutRemediationExceptionsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i222.PutRemediationExceptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
    _i223.PutResourceConfigRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i224.PutResourceConfigOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates and updates the retention configuration with details about retention period (number of days) that Config stores your historical information. The API creates the `RetentionConfiguration` object and names the object as **default**. When you have a `RetentionConfiguration` object named **default**, calling the API modifies the default object.
  ///
  /// Currently, Config supports only one retention configuration per region in your account.
  _i3.SmithyOperation<_i225.PutRetentionConfigurationResponse>
      putRetentionConfiguration(
    _i226.PutRetentionConfigurationRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i227.PutRetentionConfigurationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Saves a new query or updates an existing saved query. The `QueryName` must be unique for a single Amazon Web Services account and a single Amazon Web Services Region. You can create upto 300 queries in a single Amazon Web Services account and a single Amazon Web Services Region.
  _i3.SmithyOperation<_i228.PutStoredQueryResponse> putStoredQuery(
    _i229.PutStoredQueryRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i230.PutStoredQueryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Accepts a structured query language (SQL) SELECT command and an aggregator to query configuration state of Amazon Web Services resources across multiple accounts and regions, performs the corresponding search, and returns resource configurations matching the properties.
  ///
  /// For more information about query components, see the [**Query Components**](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html) section in the Config Developer Guide.
  ///
  /// If you run an aggregation query (i.e., using `GROUP BY` or using aggregate functions such as `COUNT`; e.g., `SELECT resourceId, COUNT(*) WHERE resourceType = 'AWS::IAM::Role' GROUP BY resourceId`) and do not specify the `MaxResults` or the `Limit` query parameters, the default page size is set to 500.
  ///
  /// If you run a non-aggregation query (i.e., not using `GROUP BY` or aggregate function; e.g., `SELECT * WHERE resourceType = 'AWS::IAM::Role'`) and do not specify the `MaxResults` or the `Limit` query parameters, the default page size is set to 25.
  _i3.SmithyOperation<_i3.PaginatedResult<_i50.BuiltList<String>, int, String>>
      selectAggregateResourceConfig(
    _i231.SelectAggregateResourceConfigRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i232.SelectAggregateResourceConfigOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Accepts a structured query language (SQL) `SELECT` command, performs the corresponding search, and returns resource configurations matching the properties.
  ///
  /// For more information about query components, see the [**Query Components**](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html) section in the _Config Developer Guide_.
  _i3.SmithyOperation<_i3.PaginatedResult<_i50.BuiltList<String>, int, String>>
      selectResourceConfig(
    _i233.SelectResourceConfigRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i234.SelectResourceConfigOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
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
  _i3.SmithyOperation<_i235.StartConfigRulesEvaluationResponse>
      startConfigRulesEvaluation(
    _i236.StartConfigRulesEvaluationRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i237.StartConfigRulesEvaluationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Starts recording configurations of the Amazon Web Services resources you have selected to record in your Amazon Web Services account.
  ///
  /// You must have created at least one delivery channel to successfully start the configuration recorder.
  _i3.SmithyOperation<void> startConfigurationRecorder(
    _i238.StartConfigurationRecorderRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i239.StartConfigurationRecorderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Runs an on-demand remediation for the specified Config rules against the last known remediation configuration. It runs an execution against the current state of your resources. Remediation execution is asynchronous.
  ///
  /// You can specify up to 100 resource keys per request. An existing StartRemediationExecution call for the specified resource keys must complete before you can call the API again.
  _i3.SmithyOperation<_i240.StartRemediationExecutionResponse>
      startRemediationExecution(
    _i241.StartRemediationExecutionRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i242.StartRemediationExecutionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Stops recording configurations of the Amazon Web Services resources you have selected to record in your Amazon Web Services account.
  _i3.SmithyOperation<void> stopConfigurationRecorder(
    _i243.StopConfigurationRecorderRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i244.StopConfigurationRecorderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.
  _i3.SmithyOperation<void> tagResource(
    _i245.TagResourceRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i246.TagResourceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes specified tags from a resource.
  _i3.SmithyOperation<void> untagResource(
    _i247.UntagResourceRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i248.UntagResourceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
