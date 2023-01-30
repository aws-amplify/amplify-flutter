// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.api_gateway_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i103;
import 'package:fixnum/fixnum.dart' as _i195;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/account.dart' as _i98;
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_key.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_key_ids.dart'
    as _i210;
import 'package:smoke_test/src/sdk/src/api_gateway/model/authorizer.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/api_gateway/model/authorizers.dart'
    as _i108;
import 'package:smoke_test/src/sdk/src/api_gateway/model/base_path_mapping.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/api_gateway/model/client_certificate.dart'
    as _i95;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_api_key_request.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_authorizer_request.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_base_path_mapping_request.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_deployment_request.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_documentation_part_request.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_documentation_version_request.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_domain_name_request.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_model_request.dart'
    as _i26;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_request_validator_request.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_resource_request.dart'
    as _i32;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_rest_api_request.dart'
    as _i35;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_stage_request.dart'
    as _i38;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_usage_plan_key_request.dart'
    as _i44;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_usage_plan_request.dart'
    as _i41;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_vpc_link_request.dart'
    as _i47;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_api_key_request.dart'
    as _i49;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_authorizer_request.dart'
    as _i51;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_base_path_mapping_request.dart'
    as _i53;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_client_certificate_request.dart'
    as _i55;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_deployment_request.dart'
    as _i57;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_documentation_part_request.dart'
    as _i59;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_documentation_version_request.dart'
    as _i61;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_domain_name_request.dart'
    as _i63;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_gateway_response_request.dart'
    as _i65;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_integration_request.dart'
    as _i67;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_integration_response_request.dart'
    as _i69;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_method_request.dart'
    as _i71;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_method_response_request.dart'
    as _i73;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_model_request.dart'
    as _i75;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_request_validator_request.dart'
    as _i77;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_resource_request.dart'
    as _i79;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_rest_api_request.dart'
    as _i81;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_stage_request.dart'
    as _i83;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_usage_plan_key_request.dart'
    as _i87;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_usage_plan_request.dart'
    as _i85;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_vpc_link_request.dart'
    as _i89;
import 'package:smoke_test/src/sdk/src/api_gateway/model/deployment.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part_ids.dart'
    as _i213;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_parts.dart'
    as _i125;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_version.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_versions.dart'
    as _i130;
import 'package:smoke_test/src/sdk/src/api_gateway/model/domain_name.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/api_gateway/model/export_response.dart'
    as _i137;
import 'package:smoke_test/src/sdk/src/api_gateway/model/flush_stage_authorizers_cache_request.dart'
    as _i91;
import 'package:smoke_test/src/sdk/src/api_gateway/model/flush_stage_cache_request.dart'
    as _i93;
import 'package:smoke_test/src/sdk/src/api_gateway/model/gateway_response.dart'
    as _i140;
import 'package:smoke_test/src/sdk/src/api_gateway/model/gateway_responses.dart'
    as _i143;
import 'package:smoke_test/src/sdk/src/api_gateway/model/generate_client_certificate_request.dart'
    as _i96;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_account_request.dart'
    as _i99;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_api_key_request.dart'
    as _i101;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_api_keys_request.dart'
    as _i104;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_authorizer_request.dart'
    as _i106;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_authorizers_request.dart'
    as _i109;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_base_path_mapping_request.dart'
    as _i111;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_base_path_mappings_request.dart'
    as _i113;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_client_certificate_request.dart'
    as _i115;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_client_certificates_request.dart'
    as _i117;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_deployment_request.dart'
    as _i119;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_deployments_request.dart'
    as _i121;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_documentation_part_request.dart'
    as _i123;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_documentation_parts_request.dart'
    as _i126;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_documentation_version_request.dart'
    as _i128;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_documentation_versions_request.dart'
    as _i131;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_domain_name_request.dart'
    as _i133;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_domain_names_request.dart'
    as _i135;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_export_request.dart'
    as _i138;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_gateway_response_request.dart'
    as _i141;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_gateway_responses_request.dart'
    as _i144;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_integration_request.dart'
    as _i147;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_integration_response_request.dart'
    as _i150;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_method_request.dart'
    as _i153;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_method_response_request.dart'
    as _i156;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_model_request.dart'
    as _i158;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_model_template_request.dart'
    as _i161;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_models_request.dart'
    as _i163;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_request_validator_request.dart'
    as _i165;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_request_validators_request.dart'
    as _i168;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_resource_request.dart'
    as _i170;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_resources_request.dart'
    as _i172;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_rest_api_request.dart'
    as _i174;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_rest_apis_request.dart'
    as _i176;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_sdk_request.dart'
    as _i179;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_sdk_type_request.dart'
    as _i182;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_sdk_types_request.dart'
    as _i185;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_stage_request.dart'
    as _i187;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_stages_request.dart'
    as _i190;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_tags_request.dart'
    as _i193;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_plan_key_request.dart'
    as _i200;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_plan_keys_request.dart'
    as _i202;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_plan_request.dart'
    as _i198;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_plans_request.dart'
    as _i204;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_request.dart'
    as _i196;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_vpc_link_request.dart'
    as _i206;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_vpc_links_request.dart'
    as _i208;
import 'package:smoke_test/src/sdk/src/api_gateway/model/import_api_keys_request.dart'
    as _i211;
import 'package:smoke_test/src/sdk/src/api_gateway/model/import_documentation_parts_request.dart'
    as _i214;
import 'package:smoke_test/src/sdk/src/api_gateway/model/import_rest_api_request.dart'
    as _i216;
import 'package:smoke_test/src/sdk/src/api_gateway/model/integration.dart'
    as _i146;
import 'package:smoke_test/src/sdk/src/api_gateway/model/integration_response.dart'
    as _i149;
import 'package:smoke_test/src/sdk/src/api_gateway/model/method.dart' as _i152;
import 'package:smoke_test/src/sdk/src/api_gateway/model/method_response.dart'
    as _i155;
import 'package:smoke_test/src/sdk/src/api_gateway/model/model.dart' as _i25;
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_gateway_response_request.dart'
    as _i218;
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_integration_request.dart'
    as _i220;
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_integration_response_request.dart'
    as _i222;
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_method_request.dart'
    as _i224;
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_method_response_request.dart'
    as _i226;
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_rest_api_request.dart'
    as _i228;
import 'package:smoke_test/src/sdk/src/api_gateway/model/request_validator.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/api_gateway/model/request_validators.dart'
    as _i167;
import 'package:smoke_test/src/sdk/src/api_gateway/model/resource.dart' as _i31;
import 'package:smoke_test/src/sdk/src/api_gateway/model/rest_api.dart' as _i34;
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_response.dart'
    as _i178;
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_type.dart'
    as _i181;
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_types.dart'
    as _i184;
import 'package:smoke_test/src/sdk/src/api_gateway/model/stage.dart' as _i37;
import 'package:smoke_test/src/sdk/src/api_gateway/model/stages.dart' as _i189;
import 'package:smoke_test/src/sdk/src/api_gateway/model/tag_resource_request.dart'
    as _i230;
import 'package:smoke_test/src/sdk/src/api_gateway/model/tags.dart' as _i192;
import 'package:smoke_test/src/sdk/src/api_gateway/model/template.dart'
    as _i160;
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_authorizer_request.dart'
    as _i233;
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_authorizer_response.dart'
    as _i232;
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_method_request.dart'
    as _i236;
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_method_response.dart'
    as _i235;
import 'package:smoke_test/src/sdk/src/api_gateway/model/untag_resource_request.dart'
    as _i238;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_account_request.dart'
    as _i240;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_api_key_request.dart'
    as _i242;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_authorizer_request.dart'
    as _i244;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_base_path_mapping_request.dart'
    as _i246;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_client_certificate_request.dart'
    as _i248;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_deployment_request.dart'
    as _i250;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_documentation_part_request.dart'
    as _i252;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_documentation_version_request.dart'
    as _i254;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_domain_name_request.dart'
    as _i256;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_gateway_response_request.dart'
    as _i258;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_integration_request.dart'
    as _i260;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_integration_response_request.dart'
    as _i262;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_method_request.dart'
    as _i264;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_method_response_request.dart'
    as _i266;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_model_request.dart'
    as _i268;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_request_validator_request.dart'
    as _i270;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_resource_request.dart'
    as _i272;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_rest_api_request.dart'
    as _i274;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_stage_request.dart'
    as _i276;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_usage_plan_request.dart'
    as _i281;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_usage_request.dart'
    as _i279;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_vpc_link_request.dart'
    as _i283;
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage.dart' as _i278;
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage_plan.dart'
    as _i40;
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage_plan_key.dart'
    as _i43;
import 'package:smoke_test/src/sdk/src/api_gateway/model/vpc_link.dart' as _i46;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_api_key_operation.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_authorizer_operation.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_base_path_mapping_operation.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_deployment_operation.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_documentation_part_operation.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_documentation_version_operation.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_domain_name_operation.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_model_operation.dart'
    as _i27;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_request_validator_operation.dart'
    as _i30;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_resource_operation.dart'
    as _i33;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_rest_api_operation.dart'
    as _i36;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_stage_operation.dart'
    as _i39;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_usage_plan_key_operation.dart'
    as _i45;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_usage_plan_operation.dart'
    as _i42;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_vpc_link_operation.dart'
    as _i48;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_api_key_operation.dart'
    as _i50;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_authorizer_operation.dart'
    as _i52;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_base_path_mapping_operation.dart'
    as _i54;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_client_certificate_operation.dart'
    as _i56;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_deployment_operation.dart'
    as _i58;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_documentation_part_operation.dart'
    as _i60;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_documentation_version_operation.dart'
    as _i62;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_domain_name_operation.dart'
    as _i64;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_gateway_response_operation.dart'
    as _i66;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_integration_operation.dart'
    as _i68;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_integration_response_operation.dart'
    as _i70;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_method_operation.dart'
    as _i72;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_method_response_operation.dart'
    as _i74;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_model_operation.dart'
    as _i76;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_request_validator_operation.dart'
    as _i78;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_resource_operation.dart'
    as _i80;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_rest_api_operation.dart'
    as _i82;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_stage_operation.dart'
    as _i84;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_usage_plan_key_operation.dart'
    as _i88;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_usage_plan_operation.dart'
    as _i86;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_vpc_link_operation.dart'
    as _i90;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/flush_stage_authorizers_cache_operation.dart'
    as _i92;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/flush_stage_cache_operation.dart'
    as _i94;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/generate_client_certificate_operation.dart'
    as _i97;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_account_operation.dart'
    as _i100;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_api_key_operation.dart'
    as _i102;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_api_keys_operation.dart'
    as _i105;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_authorizer_operation.dart'
    as _i107;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_authorizers_operation.dart'
    as _i110;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_base_path_mapping_operation.dart'
    as _i112;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_base_path_mappings_operation.dart'
    as _i114;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_client_certificate_operation.dart'
    as _i116;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_client_certificates_operation.dart'
    as _i118;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_deployment_operation.dart'
    as _i120;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_deployments_operation.dart'
    as _i122;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_documentation_part_operation.dart'
    as _i124;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_documentation_parts_operation.dart'
    as _i127;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_documentation_version_operation.dart'
    as _i129;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_documentation_versions_operation.dart'
    as _i132;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_domain_name_operation.dart'
    as _i134;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_domain_names_operation.dart'
    as _i136;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_export_operation.dart'
    as _i139;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_gateway_response_operation.dart'
    as _i142;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_gateway_responses_operation.dart'
    as _i145;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_integration_operation.dart'
    as _i148;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_integration_response_operation.dart'
    as _i151;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_method_operation.dart'
    as _i154;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_method_response_operation.dart'
    as _i157;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_model_operation.dart'
    as _i159;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_model_template_operation.dart'
    as _i162;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_models_operation.dart'
    as _i164;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_request_validator_operation.dart'
    as _i166;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_request_validators_operation.dart'
    as _i169;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_resource_operation.dart'
    as _i171;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_resources_operation.dart'
    as _i173;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_rest_api_operation.dart'
    as _i175;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_rest_apis_operation.dart'
    as _i177;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_sdk_operation.dart'
    as _i180;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_sdk_type_operation.dart'
    as _i183;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_sdk_types_operation.dart'
    as _i186;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_stage_operation.dart'
    as _i188;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_stages_operation.dart'
    as _i191;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_tags_operation.dart'
    as _i194;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_usage_operation.dart'
    as _i197;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_usage_plan_key_operation.dart'
    as _i201;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_usage_plan_keys_operation.dart'
    as _i203;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_usage_plan_operation.dart'
    as _i199;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_usage_plans_operation.dart'
    as _i205;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_vpc_link_operation.dart'
    as _i207;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_vpc_links_operation.dart'
    as _i209;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/import_api_keys_operation.dart'
    as _i212;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/import_documentation_parts_operation.dart'
    as _i215;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/import_rest_api_operation.dart'
    as _i217;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/put_gateway_response_operation.dart'
    as _i219;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/put_integration_operation.dart'
    as _i221;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/put_integration_response_operation.dart'
    as _i223;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/put_method_operation.dart'
    as _i225;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/put_method_response_operation.dart'
    as _i227;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/put_rest_api_operation.dart'
    as _i229;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/tag_resource_operation.dart'
    as _i231;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/test_invoke_authorizer_operation.dart'
    as _i234;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/test_invoke_method_operation.dart'
    as _i237;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/untag_resource_operation.dart'
    as _i239;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_account_operation.dart'
    as _i241;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_api_key_operation.dart'
    as _i243;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_authorizer_operation.dart'
    as _i245;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_base_path_mapping_operation.dart'
    as _i247;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_client_certificate_operation.dart'
    as _i249;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_deployment_operation.dart'
    as _i251;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_documentation_part_operation.dart'
    as _i253;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_documentation_version_operation.dart'
    as _i255;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_domain_name_operation.dart'
    as _i257;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_gateway_response_operation.dart'
    as _i259;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_integration_operation.dart'
    as _i261;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_integration_response_operation.dart'
    as _i263;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_method_operation.dart'
    as _i265;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_method_response_operation.dart'
    as _i267;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_model_operation.dart'
    as _i269;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_request_validator_operation.dart'
    as _i271;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_resource_operation.dart'
    as _i273;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_rest_api_operation.dart'
    as _i275;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_stage_operation.dart'
    as _i277;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_usage_operation.dart'
    as _i280;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_usage_plan_operation.dart'
    as _i282;
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_vpc_link_operation.dart'
    as _i284;

/// ## Amazon API Gateway
///
/// Amazon API Gateway helps developers deliver robust, secure, and scalable mobile and web application back ends. API Gateway allows developers to securely connect mobile and web applications to APIs that run on AWS Lambda, Amazon EC2, or other publicly addressable web services that are hosted outside of AWS.
class ApiGatewayClient {
  /// ## Amazon API Gateway
  ///
  /// Amazon API Gateway helps developers deliver robust, secure, and scalable mobile and web application back ends. API Gateway allows developers to securely connect mobile and web applications to APIs that run on AWS Lambda, Amazon EC2, or other publicly addressable web services that are hosted outside of AWS.
  const ApiGatewayClient({
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

  /// Create an ApiKey resource.
  _i3.SmithyOperation<_i4.ApiKey> createApiKey(
    _i5.CreateApiKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i6.CreateApiKeyOperation(
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

  /// Adds a new Authorizer resource to an existing RestApi resource.
  _i3.SmithyOperation<_i7.Authorizer> createAuthorizer(
    _i8.CreateAuthorizerRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i9.CreateAuthorizerOperation(
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

  /// Creates a new BasePathMapping resource.
  _i3.SmithyOperation<_i10.BasePathMapping> createBasePathMapping(
    _i11.CreateBasePathMappingRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i12.CreateBasePathMappingOperation(
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

  /// Creates a Deployment resource, which makes a specified RestApi callable over the internet.
  _i3.SmithyOperation<_i13.Deployment> createDeployment(
    _i14.CreateDeploymentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i15.CreateDeploymentOperation(
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

  /// Creates a documentation part.
  _i3.SmithyOperation<_i16.DocumentationPart> createDocumentationPart(
    _i17.CreateDocumentationPartRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i18.CreateDocumentationPartOperation(
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

  /// Creates a documentation version
  _i3.SmithyOperation<_i19.DocumentationVersion> createDocumentationVersion(
    _i20.CreateDocumentationVersionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i21.CreateDocumentationVersionOperation(
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

  /// Creates a new domain name.
  _i3.SmithyOperation<_i22.DomainName> createDomainName(
    _i23.CreateDomainNameRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i24.CreateDomainNameOperation(
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

  /// Adds a new Model resource to an existing RestApi resource.
  _i3.SmithyOperation<_i25.Model> createModel(
    _i26.CreateModelRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i27.CreateModelOperation(
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

  /// Creates a RequestValidator of a given RestApi.
  _i3.SmithyOperation<_i28.RequestValidator> createRequestValidator(
    _i29.CreateRequestValidatorRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i30.CreateRequestValidatorOperation(
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

  /// Creates a Resource resource.
  _i3.SmithyOperation<_i31.Resource> createResource(
    _i32.CreateResourceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i33.CreateResourceOperation(
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

  /// Creates a new RestApi resource.
  _i3.SmithyOperation<_i34.RestApi> createRestApi(
    _i35.CreateRestApiRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i36.CreateRestApiOperation(
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

  /// Creates a new Stage resource that references a pre-existing Deployment for the API.
  _i3.SmithyOperation<_i37.Stage> createStage(
    _i38.CreateStageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i39.CreateStageOperation(
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

  /// Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload.
  _i3.SmithyOperation<_i40.UsagePlan> createUsagePlan(
    _i41.CreateUsagePlanRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i42.CreateUsagePlanOperation(
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

  /// Creates a usage plan key for adding an existing API key to a usage plan.
  _i3.SmithyOperation<_i43.UsagePlanKey> createUsagePlanKey(
    _i44.CreateUsagePlanKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i45.CreateUsagePlanKeyOperation(
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

  /// Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.
  _i3.SmithyOperation<_i46.VpcLink> createVpcLink(
    _i47.CreateVpcLinkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i48.CreateVpcLinkOperation(
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

  /// Deletes the ApiKey resource.
  _i3.SmithyOperation<void> deleteApiKey(
    _i49.DeleteApiKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i50.DeleteApiKeyOperation(
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

  /// Deletes an existing Authorizer resource.
  _i3.SmithyOperation<void> deleteAuthorizer(
    _i51.DeleteAuthorizerRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i52.DeleteAuthorizerOperation(
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

  /// Deletes the BasePathMapping resource.
  _i3.SmithyOperation<void> deleteBasePathMapping(
    _i53.DeleteBasePathMappingRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i54.DeleteBasePathMappingOperation(
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

  /// Deletes the ClientCertificate resource.
  _i3.SmithyOperation<void> deleteClientCertificate(
    _i55.DeleteClientCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i56.DeleteClientCertificateOperation(
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

  /// Deletes a Deployment resource. Deleting a deployment will only succeed if there are no Stage resources associated with it.
  _i3.SmithyOperation<void> deleteDeployment(
    _i57.DeleteDeploymentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i58.DeleteDeploymentOperation(
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

  /// Deletes a documentation part
  _i3.SmithyOperation<void> deleteDocumentationPart(
    _i59.DeleteDocumentationPartRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i60.DeleteDocumentationPartOperation(
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

  /// Deletes a documentation version.
  _i3.SmithyOperation<void> deleteDocumentationVersion(
    _i61.DeleteDocumentationVersionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i62.DeleteDocumentationVersionOperation(
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

  /// Deletes the DomainName resource.
  _i3.SmithyOperation<void> deleteDomainName(
    _i63.DeleteDomainNameRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i64.DeleteDomainNameOperation(
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

  /// Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings.
  _i3.SmithyOperation<void> deleteGatewayResponse(
    _i65.DeleteGatewayResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i66.DeleteGatewayResponseOperation(
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

  /// Represents a delete integration.
  _i3.SmithyOperation<void> deleteIntegration(
    _i67.DeleteIntegrationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i68.DeleteIntegrationOperation(
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

  /// Represents a delete integration response.
  _i3.SmithyOperation<void> deleteIntegrationResponse(
    _i69.DeleteIntegrationResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i70.DeleteIntegrationResponseOperation(
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

  /// Deletes an existing Method resource.
  _i3.SmithyOperation<void> deleteMethod(
    _i71.DeleteMethodRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i72.DeleteMethodOperation(
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

  /// Deletes an existing MethodResponse resource.
  _i3.SmithyOperation<void> deleteMethodResponse(
    _i73.DeleteMethodResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i74.DeleteMethodResponseOperation(
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

  /// Deletes a model.
  _i3.SmithyOperation<void> deleteModel(
    _i75.DeleteModelRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i76.DeleteModelOperation(
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

  /// Deletes a RequestValidator of a given RestApi.
  _i3.SmithyOperation<void> deleteRequestValidator(
    _i77.DeleteRequestValidatorRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i78.DeleteRequestValidatorOperation(
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

  /// Deletes a Resource resource.
  _i3.SmithyOperation<void> deleteResource(
    _i79.DeleteResourceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i80.DeleteResourceOperation(
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

  /// Deletes the specified API.
  _i3.SmithyOperation<void> deleteRestApi(
    _i81.DeleteRestApiRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i82.DeleteRestApiOperation(
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

  /// Deletes a Stage resource.
  _i3.SmithyOperation<void> deleteStage(
    _i83.DeleteStageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i84.DeleteStageOperation(
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

  /// Deletes a usage plan of a given plan Id.
  _i3.SmithyOperation<void> deleteUsagePlan(
    _i85.DeleteUsagePlanRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i86.DeleteUsagePlanOperation(
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

  /// Deletes a usage plan key and remove the underlying API key from the associated usage plan.
  _i3.SmithyOperation<void> deleteUsagePlanKey(
    _i87.DeleteUsagePlanKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i88.DeleteUsagePlanKeyOperation(
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

  /// Deletes an existing VpcLink of a specified identifier.
  _i3.SmithyOperation<void> deleteVpcLink(
    _i89.DeleteVpcLinkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i90.DeleteVpcLinkOperation(
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

  /// Flushes all authorizer cache entries on a stage.
  _i3.SmithyOperation<void> flushStageAuthorizersCache(
    _i91.FlushStageAuthorizersCacheRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i92.FlushStageAuthorizersCacheOperation(
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

  /// Flushes a stage's cache.
  _i3.SmithyOperation<void> flushStageCache(
    _i93.FlushStageCacheRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i94.FlushStageCacheOperation(
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

  /// Generates a ClientCertificate resource.
  _i3.SmithyOperation<_i95.ClientCertificate> generateClientCertificate(
    _i96.GenerateClientCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i97.GenerateClientCertificateOperation(
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

  /// Gets information about the current Account resource.
  _i3.SmithyOperation<_i98.Account> getAccount(
    _i99.GetAccountRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i100.GetAccountOperation(
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

  /// Gets information about the current ApiKey resource.
  _i3.SmithyOperation<_i4.ApiKey> getApiKey(
    _i101.GetApiKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i102.GetApiKeyOperation(
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

  /// Gets information about the current ApiKeys resource.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i103.BuiltList<_i4.ApiKey>, int, String>> getApiKeys(
    _i104.GetApiKeysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i105.GetApiKeysOperation(
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

  /// Describe an existing Authorizer resource.
  _i3.SmithyOperation<_i7.Authorizer> getAuthorizer(
    _i106.GetAuthorizerRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i107.GetAuthorizerOperation(
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

  /// Describe an existing Authorizers resource.
  _i3.SmithyOperation<_i108.Authorizers> getAuthorizers(
    _i109.GetAuthorizersRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i110.GetAuthorizersOperation(
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

  /// Describe a BasePathMapping resource.
  _i3.SmithyOperation<_i10.BasePathMapping> getBasePathMapping(
    _i111.GetBasePathMappingRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i112.GetBasePathMappingOperation(
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

  /// Represents a collection of BasePathMapping resources.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i103.BuiltList<_i10.BasePathMapping>, int,
          String>> getBasePathMappings(
    _i113.GetBasePathMappingsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i114.GetBasePathMappingsOperation(
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

  /// Gets information about the current ClientCertificate resource.
  _i3.SmithyOperation<_i95.ClientCertificate> getClientCertificate(
    _i115.GetClientCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i116.GetClientCertificateOperation(
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

  /// Gets a collection of ClientCertificate resources.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i103.BuiltList<_i95.ClientCertificate>, int,
          String>> getClientCertificates(
    _i117.GetClientCertificatesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i118.GetClientCertificatesOperation(
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

  /// Gets information about a Deployment resource.
  _i3.SmithyOperation<_i13.Deployment> getDeployment(
    _i119.GetDeploymentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i120.GetDeploymentOperation(
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

  /// Gets information about a Deployments collection.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i103.BuiltList<_i13.Deployment>, int, String>>
      getDeployments(
    _i121.GetDeploymentsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i122.GetDeploymentsOperation(
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

  /// Gets a documentation part.
  _i3.SmithyOperation<_i16.DocumentationPart> getDocumentationPart(
    _i123.GetDocumentationPartRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i124.GetDocumentationPartOperation(
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

  /// Gets documentation parts.
  _i3.SmithyOperation<_i125.DocumentationParts> getDocumentationParts(
    _i126.GetDocumentationPartsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i127.GetDocumentationPartsOperation(
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

  /// Gets a documentation version.
  _i3.SmithyOperation<_i19.DocumentationVersion> getDocumentationVersion(
    _i128.GetDocumentationVersionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i129.GetDocumentationVersionOperation(
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

  /// Gets documentation versions.
  _i3.SmithyOperation<_i130.DocumentationVersions> getDocumentationVersions(
    _i131.GetDocumentationVersionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i132.GetDocumentationVersionsOperation(
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

  /// Represents a domain name that is contained in a simpler, more intuitive URL that can be called.
  _i3.SmithyOperation<_i22.DomainName> getDomainName(
    _i133.GetDomainNameRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i134.GetDomainNameOperation(
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

  /// Represents a collection of DomainName resources.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i103.BuiltList<_i22.DomainName>, int, String>>
      getDomainNames(
    _i135.GetDomainNamesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i136.GetDomainNamesOperation(
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

  /// Exports a deployed version of a RestApi in a specified format.
  _i3.SmithyOperation<_i137.ExportResponse> getExport(
    _i138.GetExportRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i139.GetExportOperation(
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

  /// Gets a GatewayResponse of a specified response type on the given RestApi.
  _i3.SmithyOperation<_i140.GatewayResponse> getGatewayResponse(
    _i141.GetGatewayResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i142.GetGatewayResponseOperation(
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

  /// Gets the GatewayResponses collection on the given RestApi. If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default GatewayResponses collection for the supported response types.
  _i3.SmithyOperation<_i143.GatewayResponses> getGatewayResponses(
    _i144.GetGatewayResponsesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i145.GetGatewayResponsesOperation(
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

  /// Get the integration settings.
  _i3.SmithyOperation<_i146.Integration> getIntegration(
    _i147.GetIntegrationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i148.GetIntegrationOperation(
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

  /// Represents a get integration response.
  _i3.SmithyOperation<_i149.IntegrationResponse> getIntegrationResponse(
    _i150.GetIntegrationResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i151.GetIntegrationResponseOperation(
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

  /// Describe an existing Method resource.
  _i3.SmithyOperation<_i152.Method> getMethod(
    _i153.GetMethodRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i154.GetMethodOperation(
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

  /// Describes a MethodResponse resource.
  _i3.SmithyOperation<_i155.MethodResponse> getMethodResponse(
    _i156.GetMethodResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i157.GetMethodResponseOperation(
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

  /// Describes an existing model defined for a RestApi resource.
  _i3.SmithyOperation<_i25.Model> getModel(
    _i158.GetModelRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i159.GetModelOperation(
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

  /// Generates a sample mapping template that can be used to transform a payload into the structure of a model.
  _i3.SmithyOperation<_i160.Template> getModelTemplate(
    _i161.GetModelTemplateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i162.GetModelTemplateOperation(
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

  /// Describes existing Models defined for a RestApi resource.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i103.BuiltList<_i25.Model>, int, String>> getModels(
    _i163.GetModelsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i164.GetModelsOperation(
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

  /// Gets a RequestValidator of a given RestApi.
  _i3.SmithyOperation<_i28.RequestValidator> getRequestValidator(
    _i165.GetRequestValidatorRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i166.GetRequestValidatorOperation(
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

  /// Gets the RequestValidators collection of a given RestApi.
  _i3.SmithyOperation<_i167.RequestValidators> getRequestValidators(
    _i168.GetRequestValidatorsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i169.GetRequestValidatorsOperation(
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

  /// Lists information about a resource.
  _i3.SmithyOperation<_i31.Resource> getResource(
    _i170.GetResourceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i171.GetResourceOperation(
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

  /// Lists information about a collection of Resource resources.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i103.BuiltList<_i31.Resource>, int, String>>
      getResources(
    _i172.GetResourcesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i173.GetResourcesOperation(
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

  /// Lists the RestApi resource in the collection.
  _i3.SmithyOperation<_i34.RestApi> getRestApi(
    _i174.GetRestApiRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i175.GetRestApiOperation(
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

  /// Lists the RestApis resources for your collection.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i103.BuiltList<_i34.RestApi>, int, String>>
      getRestApis(
    _i176.GetRestApisRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i177.GetRestApisOperation(
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

  /// Generates a client SDK for a RestApi and Stage.
  _i3.SmithyOperation<_i178.SdkResponse> getSdk(
    _i179.GetSdkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i180.GetSdkOperation(
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

  /// Gets an SDK type.
  _i3.SmithyOperation<_i181.SdkType> getSdkType(
    _i182.GetSdkTypeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i183.GetSdkTypeOperation(
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

  /// Gets SDK types
  _i3.SmithyOperation<_i184.SdkTypes> getSdkTypes(
    _i185.GetSdkTypesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i186.GetSdkTypesOperation(
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

  /// Gets information about a Stage resource.
  _i3.SmithyOperation<_i37.Stage> getStage(
    _i187.GetStageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i188.GetStageOperation(
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

  /// Gets information about one or more Stage resources.
  _i3.SmithyOperation<_i189.Stages> getStages(
    _i190.GetStagesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i191.GetStagesOperation(
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

  /// Gets the Tags collection for a given resource.
  _i3.SmithyOperation<_i192.Tags> getTags(
    _i193.GetTagsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i194.GetTagsOperation(
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

  /// Gets the usage data of a usage plan in a specified time interval.
  _i3.SmithyOperation<
      _i3.PaginatedResult<
          _i103.BuiltListMultimap<String, _i103.BuiltList<_i195.Int64>>,
          int,
          String>> getUsage(
    _i196.GetUsageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i197.GetUsageOperation(
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

  /// Gets a usage plan of a given plan identifier.
  _i3.SmithyOperation<_i40.UsagePlan> getUsagePlan(
    _i198.GetUsagePlanRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i199.GetUsagePlanOperation(
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

  /// Gets a usage plan key of a given key identifier.
  _i3.SmithyOperation<_i43.UsagePlanKey> getUsagePlanKey(
    _i200.GetUsagePlanKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i201.GetUsagePlanKeyOperation(
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

  /// Gets all the usage plan keys representing the API keys added to a specified usage plan.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i103.BuiltList<_i43.UsagePlanKey>, int, String>>
      getUsagePlanKeys(
    _i202.GetUsagePlanKeysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i203.GetUsagePlanKeysOperation(
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

  /// Gets all the usage plans of the caller's account.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i103.BuiltList<_i40.UsagePlan>, int, String>>
      getUsagePlans(
    _i204.GetUsagePlansRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i205.GetUsagePlansOperation(
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

  /// Gets a specified VPC link under the caller's account in a region.
  _i3.SmithyOperation<_i46.VpcLink> getVpcLink(
    _i206.GetVpcLinkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i207.GetVpcLinkOperation(
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

  /// Gets the VpcLinks collection under the caller's account in a selected region.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i103.BuiltList<_i46.VpcLink>, int, String>>
      getVpcLinks(
    _i208.GetVpcLinksRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i209.GetVpcLinksOperation(
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

  /// Import API keys from an external source, such as a CSV-formatted file.
  _i3.SmithyOperation<_i210.ApiKeyIds> importApiKeys(
    _i211.ImportApiKeysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i212.ImportApiKeysOperation(
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

  /// Imports documentation parts
  _i3.SmithyOperation<_i213.DocumentationPartIds> importDocumentationParts(
    _i214.ImportDocumentationPartsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i215.ImportDocumentationPartsOperation(
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

  /// A feature of the API Gateway control service for creating a new API from an external API definition file.
  _i3.SmithyOperation<_i34.RestApi> importRestApi(
    _i216.ImportRestApiRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i217.ImportRestApiOperation(
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

  /// Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi.
  _i3.SmithyOperation<_i140.GatewayResponse> putGatewayResponse(
    _i218.PutGatewayResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i219.PutGatewayResponseOperation(
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

  /// Sets up a method's integration.
  _i3.SmithyOperation<_i146.Integration> putIntegration(
    _i220.PutIntegrationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i221.PutIntegrationOperation(
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

  /// Represents a put integration.
  _i3.SmithyOperation<_i149.IntegrationResponse> putIntegrationResponse(
    _i222.PutIntegrationResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i223.PutIntegrationResponseOperation(
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

  /// Add a method to an existing Resource resource.
  _i3.SmithyOperation<_i152.Method> putMethod(
    _i224.PutMethodRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i225.PutMethodOperation(
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

  /// Adds a MethodResponse to an existing Method resource.
  _i3.SmithyOperation<_i155.MethodResponse> putMethodResponse(
    _i226.PutMethodResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i227.PutMethodResponseOperation(
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

  /// A feature of the API Gateway control service for updating an existing API with an input of external API definitions. The update can take the form of merging the supplied definition into the existing API or overwriting the existing API.
  _i3.SmithyOperation<_i34.RestApi> putRestApi(
    _i228.PutRestApiRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i229.PutRestApiOperation(
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

  /// Adds or updates a tag on a given resource.
  _i3.SmithyOperation<void> tagResource(
    _i230.TagResourceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i231.TagResourceOperation(
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

  /// Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body.
  _i3.SmithyOperation<_i232.TestInvokeAuthorizerResponse> testInvokeAuthorizer(
    _i233.TestInvokeAuthorizerRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i234.TestInvokeAuthorizerOperation(
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

  /// Simulate the invocation of a Method in your RestApi with headers, parameters, and an incoming request body.
  _i3.SmithyOperation<_i235.TestInvokeMethodResponse> testInvokeMethod(
    _i236.TestInvokeMethodRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i237.TestInvokeMethodOperation(
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

  /// Removes a tag from a given resource.
  _i3.SmithyOperation<void> untagResource(
    _i238.UntagResourceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i239.UntagResourceOperation(
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

  /// Changes information about the current Account resource.
  _i3.SmithyOperation<_i98.Account> updateAccount(
    _i240.UpdateAccountRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i241.UpdateAccountOperation(
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

  /// Changes information about an ApiKey resource.
  _i3.SmithyOperation<_i4.ApiKey> updateApiKey(
    _i242.UpdateApiKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i243.UpdateApiKeyOperation(
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

  /// Updates an existing Authorizer resource.
  _i3.SmithyOperation<_i7.Authorizer> updateAuthorizer(
    _i244.UpdateAuthorizerRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i245.UpdateAuthorizerOperation(
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

  /// Changes information about the BasePathMapping resource.
  _i3.SmithyOperation<_i10.BasePathMapping> updateBasePathMapping(
    _i246.UpdateBasePathMappingRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i247.UpdateBasePathMappingOperation(
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

  /// Changes information about an ClientCertificate resource.
  _i3.SmithyOperation<_i95.ClientCertificate> updateClientCertificate(
    _i248.UpdateClientCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i249.UpdateClientCertificateOperation(
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

  /// Changes information about a Deployment resource.
  _i3.SmithyOperation<_i13.Deployment> updateDeployment(
    _i250.UpdateDeploymentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i251.UpdateDeploymentOperation(
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

  /// Updates a documentation part.
  _i3.SmithyOperation<_i16.DocumentationPart> updateDocumentationPart(
    _i252.UpdateDocumentationPartRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i253.UpdateDocumentationPartOperation(
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

  /// Updates a documentation version.
  _i3.SmithyOperation<_i19.DocumentationVersion> updateDocumentationVersion(
    _i254.UpdateDocumentationVersionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i255.UpdateDocumentationVersionOperation(
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

  /// Changes information about the DomainName resource.
  _i3.SmithyOperation<_i22.DomainName> updateDomainName(
    _i256.UpdateDomainNameRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i257.UpdateDomainNameOperation(
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

  /// Updates a GatewayResponse of a specified response type on the given RestApi.
  _i3.SmithyOperation<_i140.GatewayResponse> updateGatewayResponse(
    _i258.UpdateGatewayResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i259.UpdateGatewayResponseOperation(
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

  /// Represents an update integration.
  _i3.SmithyOperation<_i146.Integration> updateIntegration(
    _i260.UpdateIntegrationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i261.UpdateIntegrationOperation(
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

  /// Represents an update integration response.
  _i3.SmithyOperation<_i149.IntegrationResponse> updateIntegrationResponse(
    _i262.UpdateIntegrationResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i263.UpdateIntegrationResponseOperation(
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

  /// Updates an existing Method resource.
  _i3.SmithyOperation<_i152.Method> updateMethod(
    _i264.UpdateMethodRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i265.UpdateMethodOperation(
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

  /// Updates an existing MethodResponse resource.
  _i3.SmithyOperation<_i155.MethodResponse> updateMethodResponse(
    _i266.UpdateMethodResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i267.UpdateMethodResponseOperation(
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

  /// Changes information about a model.
  _i3.SmithyOperation<_i25.Model> updateModel(
    _i268.UpdateModelRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i269.UpdateModelOperation(
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

  /// Updates a RequestValidator of a given RestApi.
  _i3.SmithyOperation<_i28.RequestValidator> updateRequestValidator(
    _i270.UpdateRequestValidatorRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i271.UpdateRequestValidatorOperation(
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

  /// Changes information about a Resource resource.
  _i3.SmithyOperation<_i31.Resource> updateResource(
    _i272.UpdateResourceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i273.UpdateResourceOperation(
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

  /// Changes information about the specified API.
  _i3.SmithyOperation<_i34.RestApi> updateRestApi(
    _i274.UpdateRestApiRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i275.UpdateRestApiOperation(
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

  /// Changes information about a Stage resource.
  _i3.SmithyOperation<_i37.Stage> updateStage(
    _i276.UpdateStageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i277.UpdateStageOperation(
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

  /// Grants a temporary extension to the remaining quota of a usage plan associated with a specified API key.
  _i3.SmithyOperation<_i278.Usage> updateUsage(
    _i279.UpdateUsageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i280.UpdateUsageOperation(
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

  /// Updates a usage plan of a given plan Id.
  _i3.SmithyOperation<_i40.UsagePlan> updateUsagePlan(
    _i281.UpdateUsagePlanRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i282.UpdateUsagePlanOperation(
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

  /// Updates an existing VpcLink of a specified identifier.
  _i3.SmithyOperation<_i46.VpcLink> updateVpcLink(
    _i283.UpdateVpcLinkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i284.UpdateVpcLinkOperation(
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
