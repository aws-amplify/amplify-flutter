// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i214;
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i215;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/access_log_settings.dart'
    as _i58;
import 'package:smoke_test/src/sdk/src/api_gateway/model/account.dart' as _i98;
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_key.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_key_ids.dart'
    as _i173;
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_key_source_type.dart'
    as _i50;
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_keys.dart'
    as _i101;
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_keys_format.dart'
    as _i171;
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_stage.dart'
    as _i61;
import 'package:smoke_test/src/sdk/src/api_gateway/model/authorizer.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/api_gateway/model/authorizer_type.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/api_gateway/model/authorizers.dart'
    as _i104;
import 'package:smoke_test/src/sdk/src/api_gateway/model/bad_request_exception.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/api_gateway/model/base_path_mapping.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/api_gateway/model/base_path_mappings.dart'
    as _i107;
import 'package:smoke_test/src/sdk/src/api_gateway/model/cache_cluster_size.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/api_gateway/model/cache_cluster_status.dart'
    as _i55;
import 'package:smoke_test/src/sdk/src/api_gateway/model/canary_settings.dart'
    as _i53;
import 'package:smoke_test/src/sdk/src/api_gateway/model/client_certificate.dart'
    as _i96;
import 'package:smoke_test/src/sdk/src/api_gateway/model/client_certificates.dart'
    as _i110;
import 'package:smoke_test/src/sdk/src/api_gateway/model/conflict_exception.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/api_gateway/model/connection_type.dart'
    as _i43;
import 'package:smoke_test/src/sdk/src/api_gateway/model/content_handling_strategy.dart'
    as _i44;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_api_key_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_authorizer_request.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_base_path_mapping_request.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_deployment_request.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_documentation_part_request.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_documentation_version_request.dart'
    as _i26;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_domain_name_request.dart'
    as _i32;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_model_request.dart'
    as _i36;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_request_validator_request.dart'
    as _i38;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_resource_request.dart'
    as _i40;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_rest_api_request.dart'
    as _i51;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_stage_request.dart'
    as _i54;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_usage_plan_key_request.dart'
    as _i66;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_usage_plan_request.dart'
    as _i64;
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_vpc_link_request.dart'
    as _i68;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_api_key_request.dart'
    as _i71;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_authorizer_request.dart'
    as _i72;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_base_path_mapping_request.dart'
    as _i73;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_client_certificate_request.dart'
    as _i74;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_deployment_request.dart'
    as _i75;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_documentation_part_request.dart'
    as _i76;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_documentation_version_request.dart'
    as _i77;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_domain_name_request.dart'
    as _i78;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_gateway_response_request.dart'
    as _i80;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_integration_request.dart'
    as _i81;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_integration_response_request.dart'
    as _i82;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_method_request.dart'
    as _i83;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_method_response_request.dart'
    as _i84;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_model_request.dart'
    as _i85;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_request_validator_request.dart'
    as _i86;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_resource_request.dart'
    as _i87;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_rest_api_request.dart'
    as _i88;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_stage_request.dart'
    as _i89;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_usage_plan_key_request.dart'
    as _i91;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_usage_plan_request.dart'
    as _i90;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_vpc_link_request.dart'
    as _i92;
import 'package:smoke_test/src/sdk/src/api_gateway/model/deployment.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/api_gateway/model/deployment_canary_settings.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/api_gateway/model/deployments.dart'
    as _i113;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part_ids.dart'
    as _i176;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part_location.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part_type.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_parts.dart'
    as _i117;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_version.dart'
    as _i27;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_versions.dart'
    as _i120;
import 'package:smoke_test/src/sdk/src/api_gateway/model/domain_name.dart'
    as _i35;
import 'package:smoke_test/src/sdk/src/api_gateway/model/domain_name_status.dart'
    as _i33;
import 'package:smoke_test/src/sdk/src/api_gateway/model/domain_names.dart'
    as _i123;
import 'package:smoke_test/src/sdk/src/api_gateway/model/endpoint_configuration.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/api_gateway/model/endpoint_type.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/api_gateway/model/export_response.dart'
    as _i125;
import 'package:smoke_test/src/sdk/src/api_gateway/model/flush_stage_authorizers_cache_request.dart'
    as _i93;
import 'package:smoke_test/src/sdk/src/api_gateway/model/flush_stage_cache_request.dart'
    as _i94;
import 'package:smoke_test/src/sdk/src/api_gateway/model/gateway_response.dart'
    as _i127;
import 'package:smoke_test/src/sdk/src/api_gateway/model/gateway_response_type.dart'
    as _i79;
import 'package:smoke_test/src/sdk/src/api_gateway/model/gateway_responses.dart'
    as _i129;
import 'package:smoke_test/src/sdk/src/api_gateway/model/generate_client_certificate_request.dart'
    as _i95;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_account_request.dart'
    as _i97;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_api_key_request.dart'
    as _i99;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_api_keys_request.dart'
    as _i100;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_authorizer_request.dart'
    as _i102;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_authorizers_request.dart'
    as _i103;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_base_path_mapping_request.dart'
    as _i105;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_base_path_mappings_request.dart'
    as _i106;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_client_certificate_request.dart'
    as _i108;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_client_certificates_request.dart'
    as _i109;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_deployment_request.dart'
    as _i111;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_deployments_request.dart'
    as _i112;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_documentation_part_request.dart'
    as _i114;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_documentation_parts_request.dart'
    as _i116;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_documentation_version_request.dart'
    as _i118;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_documentation_versions_request.dart'
    as _i119;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_domain_name_request.dart'
    as _i121;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_domain_names_request.dart'
    as _i122;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_export_request.dart'
    as _i124;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_gateway_response_request.dart'
    as _i126;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_gateway_responses_request.dart'
    as _i128;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_integration_request.dart'
    as _i130;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_integration_response_request.dart'
    as _i131;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_method_request.dart'
    as _i132;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_method_response_request.dart'
    as _i133;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_model_request.dart'
    as _i134;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_model_template_request.dart'
    as _i135;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_models_request.dart'
    as _i137;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_request_validator_request.dart'
    as _i139;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_request_validators_request.dart'
    as _i140;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_resource_request.dart'
    as _i142;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_resources_request.dart'
    as _i143;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_rest_api_request.dart'
    as _i145;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_rest_apis_request.dart'
    as _i146;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_sdk_request.dart'
    as _i148;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_sdk_type_request.dart'
    as _i150;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_sdk_types_request.dart'
    as _i153;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_stage_request.dart'
    as _i155;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_stages_request.dart'
    as _i156;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_tags_request.dart'
    as _i158;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_plan_key_request.dart'
    as _i163;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_plan_keys_request.dart'
    as _i164;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_plan_request.dart'
    as _i162;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_plans_request.dart'
    as _i166;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_request.dart'
    as _i160;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_vpc_link_request.dart'
    as _i168;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_vpc_links_request.dart'
    as _i169;
import 'package:smoke_test/src/sdk/src/api_gateway/model/import_api_keys_request.dart'
    as _i172;
import 'package:smoke_test/src/sdk/src/api_gateway/model/import_documentation_parts_request.dart'
    as _i175;
import 'package:smoke_test/src/sdk/src/api_gateway/model/import_rest_api_request.dart'
    as _i177;
import 'package:smoke_test/src/sdk/src/api_gateway/model/integration.dart'
    as _i47;
import 'package:smoke_test/src/sdk/src/api_gateway/model/integration_response.dart'
    as _i45;
import 'package:smoke_test/src/sdk/src/api_gateway/model/integration_type.dart'
    as _i42;
import 'package:smoke_test/src/sdk/src/api_gateway/model/limit_exceeded_exception.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/api_gateway/model/location_status_type.dart'
    as _i115;
import 'package:smoke_test/src/sdk/src/api_gateway/model/method.dart' as _i48;
import 'package:smoke_test/src/sdk/src/api_gateway/model/method_response.dart'
    as _i41;
import 'package:smoke_test/src/sdk/src/api_gateway/model/method_setting.dart'
    as _i57;
import 'package:smoke_test/src/sdk/src/api_gateway/model/method_snapshot.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/api_gateway/model/model.dart' as _i37;
import 'package:smoke_test/src/sdk/src/api_gateway/model/models.dart' as _i138;
import 'package:smoke_test/src/sdk/src/api_gateway/model/mutual_tls_authentication.dart'
    as _i34;
import 'package:smoke_test/src/sdk/src/api_gateway/model/mutual_tls_authentication_input.dart'
    as _i31;
import 'package:smoke_test/src/sdk/src/api_gateway/model/not_found_exception.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/api_gateway/model/op.dart' as _i190;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i191;
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_gateway_response_request.dart'
    as _i178;
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_integration_request.dart'
    as _i179;
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_integration_response_request.dart'
    as _i180;
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_method_request.dart'
    as _i181;
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_method_response_request.dart'
    as _i182;
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_mode.dart'
    as _i174;
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_rest_api_request.dart'
    as _i183;
import 'package:smoke_test/src/sdk/src/api_gateway/model/quota_period_type.dart'
    as _i62;
import 'package:smoke_test/src/sdk/src/api_gateway/model/quota_settings.dart'
    as _i63;
import 'package:smoke_test/src/sdk/src/api_gateway/model/request_validator.dart'
    as _i39;
import 'package:smoke_test/src/sdk/src/api_gateway/model/request_validators.dart'
    as _i141;
import 'package:smoke_test/src/sdk/src/api_gateway/model/resource.dart' as _i49;
import 'package:smoke_test/src/sdk/src/api_gateway/model/resources.dart'
    as _i144;
import 'package:smoke_test/src/sdk/src/api_gateway/model/rest_api.dart' as _i52;
import 'package:smoke_test/src/sdk/src/api_gateway/model/rest_apis.dart'
    as _i147;
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_configuration_property.dart'
    as _i151;
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_response.dart'
    as _i149;
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_type.dart'
    as _i152;
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_types.dart'
    as _i154;
import 'package:smoke_test/src/sdk/src/api_gateway/model/security_policy.dart'
    as _i30;
import 'package:smoke_test/src/sdk/src/api_gateway/model/service_unavailable_exception.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/api_gateway/model/stage.dart' as _i59;
import 'package:smoke_test/src/sdk/src/api_gateway/model/stage_key.dart' as _i2;
import 'package:smoke_test/src/sdk/src/api_gateway/model/stages.dart' as _i157;
import 'package:smoke_test/src/sdk/src/api_gateway/model/tag_resource_request.dart'
    as _i184;
import 'package:smoke_test/src/sdk/src/api_gateway/model/tags.dart' as _i159;
import 'package:smoke_test/src/sdk/src/api_gateway/model/template.dart'
    as _i136;
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_authorizer_request.dart'
    as _i185;
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_authorizer_response.dart'
    as _i186;
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_method_request.dart'
    as _i187;
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_method_response.dart'
    as _i188;
import 'package:smoke_test/src/sdk/src/api_gateway/model/throttle_settings.dart'
    as _i60;
import 'package:smoke_test/src/sdk/src/api_gateway/model/tls_config.dart'
    as _i46;
import 'package:smoke_test/src/sdk/src/api_gateway/model/too_many_requests_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/api_gateway/model/unauthorized_cache_control_header_strategy.dart'
    as _i56;
import 'package:smoke_test/src/sdk/src/api_gateway/model/unauthorized_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/api_gateway/model/untag_resource_request.dart'
    as _i189;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_account_request.dart'
    as _i192;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_api_key_request.dart'
    as _i193;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_authorizer_request.dart'
    as _i194;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_base_path_mapping_request.dart'
    as _i195;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_client_certificate_request.dart'
    as _i196;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_deployment_request.dart'
    as _i197;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_documentation_part_request.dart'
    as _i198;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_documentation_version_request.dart'
    as _i199;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_domain_name_request.dart'
    as _i200;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_gateway_response_request.dart'
    as _i201;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_integration_request.dart'
    as _i202;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_integration_response_request.dart'
    as _i203;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_method_request.dart'
    as _i204;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_method_response_request.dart'
    as _i205;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_model_request.dart'
    as _i206;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_request_validator_request.dart'
    as _i207;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_resource_request.dart'
    as _i208;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_rest_api_request.dart'
    as _i209;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_stage_request.dart'
    as _i210;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_usage_plan_request.dart'
    as _i212;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_usage_request.dart'
    as _i211;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_vpc_link_request.dart'
    as _i213;
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage.dart' as _i161;
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage_plan.dart'
    as _i65;
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage_plan_key.dart'
    as _i67;
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage_plan_keys.dart'
    as _i165;
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage_plans.dart'
    as _i167;
import 'package:smoke_test/src/sdk/src/api_gateway/model/vpc_link.dart' as _i70;
import 'package:smoke_test/src/sdk/src/api_gateway/model/vpc_link_status.dart'
    as _i69;
import 'package:smoke_test/src/sdk/src/api_gateway/model/vpc_links.dart'
    as _i170;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.StageKey.serializers,
  ..._i3.CreateApiKeyRequest.serializers,
  ..._i4.ApiKey.serializers,
  ..._i5.BadRequestException.serializers,
  ..._i6.ConflictException.serializers,
  ..._i7.LimitExceededException.serializers,
  ..._i8.NotFoundException.serializers,
  ..._i9.TooManyRequestsException.serializers,
  ..._i10.UnauthorizedException.serializers,
  ..._i11.AuthorizerType.serializers,
  ..._i12.CreateAuthorizerRequest.serializers,
  ..._i13.Authorizer.serializers,
  ..._i14.CreateBasePathMappingRequest.serializers,
  ..._i15.BasePathMapping.serializers,
  ..._i16.CacheClusterSize.serializers,
  ..._i17.DeploymentCanarySettings.serializers,
  ..._i18.CreateDeploymentRequest.serializers,
  ..._i19.MethodSnapshot.serializers,
  ..._i20.Deployment.serializers,
  ..._i21.ServiceUnavailableException.serializers,
  ..._i22.DocumentationPartType.serializers,
  ..._i23.DocumentationPartLocation.serializers,
  ..._i24.CreateDocumentationPartRequest.serializers,
  ..._i25.DocumentationPart.serializers,
  ..._i26.CreateDocumentationVersionRequest.serializers,
  ..._i27.DocumentationVersion.serializers,
  ..._i28.EndpointType.serializers,
  ..._i29.EndpointConfiguration.serializers,
  ..._i30.SecurityPolicy.serializers,
  ..._i31.MutualTlsAuthenticationInput.serializers,
  ..._i32.CreateDomainNameRequest.serializers,
  ..._i33.DomainNameStatus.serializers,
  ..._i34.MutualTlsAuthentication.serializers,
  ..._i35.DomainName.serializers,
  ..._i36.CreateModelRequest.serializers,
  ..._i37.Model.serializers,
  ..._i38.CreateRequestValidatorRequest.serializers,
  ..._i39.RequestValidator.serializers,
  ..._i40.CreateResourceRequest.serializers,
  ..._i41.MethodResponse.serializers,
  ..._i42.IntegrationType.serializers,
  ..._i43.ConnectionType.serializers,
  ..._i44.ContentHandlingStrategy.serializers,
  ..._i45.IntegrationResponse.serializers,
  ..._i46.TlsConfig.serializers,
  ..._i47.Integration.serializers,
  ..._i48.Method.serializers,
  ..._i49.Resource.serializers,
  ..._i50.ApiKeySourceType.serializers,
  ..._i51.CreateRestApiRequest.serializers,
  ..._i52.RestApi.serializers,
  ..._i53.CanarySettings.serializers,
  ..._i54.CreateStageRequest.serializers,
  ..._i55.CacheClusterStatus.serializers,
  ..._i56.UnauthorizedCacheControlHeaderStrategy.serializers,
  ..._i57.MethodSetting.serializers,
  ..._i58.AccessLogSettings.serializers,
  ..._i59.Stage.serializers,
  ..._i60.ThrottleSettings.serializers,
  ..._i61.ApiStage.serializers,
  ..._i62.QuotaPeriodType.serializers,
  ..._i63.QuotaSettings.serializers,
  ..._i64.CreateUsagePlanRequest.serializers,
  ..._i65.UsagePlan.serializers,
  ..._i66.CreateUsagePlanKeyRequest.serializers,
  ..._i67.UsagePlanKey.serializers,
  ..._i68.CreateVpcLinkRequest.serializers,
  ..._i69.VpcLinkStatus.serializers,
  ..._i70.VpcLink.serializers,
  ..._i71.DeleteApiKeyRequest.serializers,
  ..._i72.DeleteAuthorizerRequest.serializers,
  ..._i73.DeleteBasePathMappingRequest.serializers,
  ..._i74.DeleteClientCertificateRequest.serializers,
  ..._i75.DeleteDeploymentRequest.serializers,
  ..._i76.DeleteDocumentationPartRequest.serializers,
  ..._i77.DeleteDocumentationVersionRequest.serializers,
  ..._i78.DeleteDomainNameRequest.serializers,
  ..._i79.GatewayResponseType.serializers,
  ..._i80.DeleteGatewayResponseRequest.serializers,
  ..._i81.DeleteIntegrationRequest.serializers,
  ..._i82.DeleteIntegrationResponseRequest.serializers,
  ..._i83.DeleteMethodRequest.serializers,
  ..._i84.DeleteMethodResponseRequest.serializers,
  ..._i85.DeleteModelRequest.serializers,
  ..._i86.DeleteRequestValidatorRequest.serializers,
  ..._i87.DeleteResourceRequest.serializers,
  ..._i88.DeleteRestApiRequest.serializers,
  ..._i89.DeleteStageRequest.serializers,
  ..._i90.DeleteUsagePlanRequest.serializers,
  ..._i91.DeleteUsagePlanKeyRequest.serializers,
  ..._i92.DeleteVpcLinkRequest.serializers,
  ..._i93.FlushStageAuthorizersCacheRequest.serializers,
  ..._i94.FlushStageCacheRequest.serializers,
  ..._i95.GenerateClientCertificateRequest.serializers,
  ..._i96.ClientCertificate.serializers,
  ..._i97.GetAccountRequest.serializers,
  ..._i98.Account.serializers,
  ..._i99.GetApiKeyRequest.serializers,
  ..._i100.GetApiKeysRequest.serializers,
  ..._i101.ApiKeys.serializers,
  ..._i102.GetAuthorizerRequest.serializers,
  ..._i103.GetAuthorizersRequest.serializers,
  ..._i104.Authorizers.serializers,
  ..._i105.GetBasePathMappingRequest.serializers,
  ..._i106.GetBasePathMappingsRequest.serializers,
  ..._i107.BasePathMappings.serializers,
  ..._i108.GetClientCertificateRequest.serializers,
  ..._i109.GetClientCertificatesRequest.serializers,
  ..._i110.ClientCertificates.serializers,
  ..._i111.GetDeploymentRequest.serializers,
  ..._i112.GetDeploymentsRequest.serializers,
  ..._i113.Deployments.serializers,
  ..._i114.GetDocumentationPartRequest.serializers,
  ..._i115.LocationStatusType.serializers,
  ..._i116.GetDocumentationPartsRequest.serializers,
  ..._i117.DocumentationParts.serializers,
  ..._i118.GetDocumentationVersionRequest.serializers,
  ..._i119.GetDocumentationVersionsRequest.serializers,
  ..._i120.DocumentationVersions.serializers,
  ..._i121.GetDomainNameRequest.serializers,
  ..._i122.GetDomainNamesRequest.serializers,
  ..._i123.DomainNames.serializers,
  ..._i124.GetExportRequest.serializers,
  ..._i125.ExportResponse.serializers,
  ..._i126.GetGatewayResponseRequest.serializers,
  ..._i127.GatewayResponse.serializers,
  ..._i128.GetGatewayResponsesRequest.serializers,
  ..._i129.GatewayResponses.serializers,
  ..._i130.GetIntegrationRequest.serializers,
  ..._i131.GetIntegrationResponseRequest.serializers,
  ..._i132.GetMethodRequest.serializers,
  ..._i133.GetMethodResponseRequest.serializers,
  ..._i134.GetModelRequest.serializers,
  ..._i135.GetModelTemplateRequest.serializers,
  ..._i136.Template.serializers,
  ..._i137.GetModelsRequest.serializers,
  ..._i138.Models.serializers,
  ..._i139.GetRequestValidatorRequest.serializers,
  ..._i140.GetRequestValidatorsRequest.serializers,
  ..._i141.RequestValidators.serializers,
  ..._i142.GetResourceRequest.serializers,
  ..._i143.GetResourcesRequest.serializers,
  ..._i144.Resources.serializers,
  ..._i145.GetRestApiRequest.serializers,
  ..._i146.GetRestApisRequest.serializers,
  ..._i147.RestApis.serializers,
  ..._i148.GetSdkRequest.serializers,
  ..._i149.SdkResponse.serializers,
  ..._i150.GetSdkTypeRequest.serializers,
  ..._i151.SdkConfigurationProperty.serializers,
  ..._i152.SdkType.serializers,
  ..._i153.GetSdkTypesRequest.serializers,
  ..._i154.SdkTypes.serializers,
  ..._i155.GetStageRequest.serializers,
  ..._i156.GetStagesRequest.serializers,
  ..._i157.Stages.serializers,
  ..._i158.GetTagsRequest.serializers,
  ..._i159.Tags.serializers,
  ..._i160.GetUsageRequest.serializers,
  ..._i161.Usage.serializers,
  ..._i162.GetUsagePlanRequest.serializers,
  ..._i163.GetUsagePlanKeyRequest.serializers,
  ..._i164.GetUsagePlanKeysRequest.serializers,
  ..._i165.UsagePlanKeys.serializers,
  ..._i166.GetUsagePlansRequest.serializers,
  ..._i167.UsagePlans.serializers,
  ..._i168.GetVpcLinkRequest.serializers,
  ..._i169.GetVpcLinksRequest.serializers,
  ..._i170.VpcLinks.serializers,
  ..._i171.ApiKeysFormat.serializers,
  ..._i172.ImportApiKeysRequest.serializers,
  ..._i173.ApiKeyIds.serializers,
  ..._i174.PutMode.serializers,
  ..._i175.ImportDocumentationPartsRequest.serializers,
  ..._i176.DocumentationPartIds.serializers,
  ..._i177.ImportRestApiRequest.serializers,
  ..._i178.PutGatewayResponseRequest.serializers,
  ..._i179.PutIntegrationRequest.serializers,
  ..._i180.PutIntegrationResponseRequest.serializers,
  ..._i181.PutMethodRequest.serializers,
  ..._i182.PutMethodResponseRequest.serializers,
  ..._i183.PutRestApiRequest.serializers,
  ..._i184.TagResourceRequest.serializers,
  ..._i185.TestInvokeAuthorizerRequest.serializers,
  ..._i186.TestInvokeAuthorizerResponse.serializers,
  ..._i187.TestInvokeMethodRequest.serializers,
  ..._i188.TestInvokeMethodResponse.serializers,
  ..._i189.UntagResourceRequest.serializers,
  ..._i190.Op.serializers,
  ..._i191.PatchOperation.serializers,
  ..._i192.UpdateAccountRequest.serializers,
  ..._i193.UpdateApiKeyRequest.serializers,
  ..._i194.UpdateAuthorizerRequest.serializers,
  ..._i195.UpdateBasePathMappingRequest.serializers,
  ..._i196.UpdateClientCertificateRequest.serializers,
  ..._i197.UpdateDeploymentRequest.serializers,
  ..._i198.UpdateDocumentationPartRequest.serializers,
  ..._i199.UpdateDocumentationVersionRequest.serializers,
  ..._i200.UpdateDomainNameRequest.serializers,
  ..._i201.UpdateGatewayResponseRequest.serializers,
  ..._i202.UpdateIntegrationRequest.serializers,
  ..._i203.UpdateIntegrationResponseRequest.serializers,
  ..._i204.UpdateMethodRequest.serializers,
  ..._i205.UpdateMethodResponseRequest.serializers,
  ..._i206.UpdateModelRequest.serializers,
  ..._i207.UpdateRequestValidatorRequest.serializers,
  ..._i208.UpdateResourceRequest.serializers,
  ..._i209.UpdateRestApiRequest.serializers,
  ..._i210.UpdateStageRequest.serializers,
  ..._i211.UpdateUsageRequest.serializers,
  ..._i212.UpdateUsagePlanRequest.serializers,
  ..._i213.UpdateVpcLinkRequest.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i214.BuiltList,
    [FullType(_i2.StageKey)],
  ): _i214.ListBuilder<_i2.StageKey>.new,
  const FullType(
    _i214.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i214.MapBuilder<String, String>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(String)],
  ): _i214.ListBuilder<String>.new,
  const FullType(
    _i214.BuiltMap,
    [
      FullType(String),
      FullType(_i19.MethodSnapshot),
    ],
  ): _i214.MapBuilder<String, _i19.MethodSnapshot>.new,
  const FullType(
    _i214.BuiltMap,
    [
      FullType(String),
      FullType(
        _i214.BuiltMap,
        [
          FullType(String),
          FullType(_i19.MethodSnapshot),
        ],
      ),
    ],
  ): _i214.MapBuilder<String, _i214.BuiltMap<String, _i19.MethodSnapshot>>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i28.EndpointType)],
  ): _i214.ListBuilder<_i28.EndpointType>.new,
  const FullType(
    _i214.BuiltMap,
    [
      FullType(String),
      FullType(bool),
    ],
  ): _i214.MapBuilder<String, bool>.new,
  const FullType(
    _i214.BuiltMap,
    [
      FullType(String),
      FullType(_i45.IntegrationResponse),
    ],
  ): _i214.MapBuilder<String, _i45.IntegrationResponse>.new,
  const FullType(
    _i214.BuiltMap,
    [
      FullType(String),
      FullType(_i41.MethodResponse),
    ],
  ): _i214.MapBuilder<String, _i41.MethodResponse>.new,
  const FullType(
    _i214.BuiltMap,
    [
      FullType(String),
      FullType(_i48.Method),
    ],
  ): _i214.MapBuilder<String, _i48.Method>.new,
  const FullType(
    _i214.BuiltMap,
    [
      FullType(String),
      FullType(_i57.MethodSetting),
    ],
  ): _i214.MapBuilder<String, _i57.MethodSetting>.new,
  const FullType(
    _i214.BuiltMap,
    [
      FullType(String),
      FullType(_i60.ThrottleSettings),
    ],
  ): _i214.MapBuilder<String, _i60.ThrottleSettings>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i61.ApiStage)],
  ): _i214.ListBuilder<_i61.ApiStage>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i4.ApiKey)],
  ): _i214.ListBuilder<_i4.ApiKey>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i13.Authorizer)],
  ): _i214.ListBuilder<_i13.Authorizer>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i15.BasePathMapping)],
  ): _i214.ListBuilder<_i15.BasePathMapping>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i96.ClientCertificate)],
  ): _i214.ListBuilder<_i96.ClientCertificate>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i20.Deployment)],
  ): _i214.ListBuilder<_i20.Deployment>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i25.DocumentationPart)],
  ): _i214.ListBuilder<_i25.DocumentationPart>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i27.DocumentationVersion)],
  ): _i214.ListBuilder<_i27.DocumentationVersion>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i35.DomainName)],
  ): _i214.ListBuilder<_i35.DomainName>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i127.GatewayResponse)],
  ): _i214.ListBuilder<_i127.GatewayResponse>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i37.Model)],
  ): _i214.ListBuilder<_i37.Model>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i39.RequestValidator)],
  ): _i214.ListBuilder<_i39.RequestValidator>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i49.Resource)],
  ): _i214.ListBuilder<_i49.Resource>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i52.RestApi)],
  ): _i214.ListBuilder<_i52.RestApi>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i151.SdkConfigurationProperty)],
  ): _i214.ListBuilder<_i151.SdkConfigurationProperty>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i152.SdkType)],
  ): _i214.ListBuilder<_i152.SdkType>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i59.Stage)],
  ): _i214.ListBuilder<_i59.Stage>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i215.Int64)],
  ): _i214.ListBuilder<_i215.Int64>.new,
  const FullType(
    _i214.BuiltListMultimap,
    [
      FullType(String),
      FullType(
        _i214.BuiltList,
        [FullType(_i215.Int64)],
      ),
    ],
  ): _i214.ListMultimapBuilder<String, _i214.BuiltList<_i215.Int64>>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i67.UsagePlanKey)],
  ): _i214.ListBuilder<_i67.UsagePlanKey>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i65.UsagePlan)],
  ): _i214.ListBuilder<_i65.UsagePlan>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i70.VpcLink)],
  ): _i214.ListBuilder<_i70.VpcLink>.new,
  const FullType(
    _i214.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i214.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i214.BuiltList,
    [FullType(_i191.PatchOperation)],
  ): _i214.ListBuilder<_i191.PatchOperation>.new,
};
