// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.api_gateway_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:fixnum/fixnum.dart' as _i5;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/account.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_key.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_key_ids.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/authorizer.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/authorizers.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/base_path_mapping.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/client_certificate.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_api_key_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_authorizer_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_base_path_mapping_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_deployment_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_documentation_part_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_documentation_version_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_domain_name_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_model_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_request_validator_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_resource_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_rest_api_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_stage_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_usage_plan_key_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_usage_plan_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/create_vpc_link_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_api_key_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_authorizer_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_base_path_mapping_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_client_certificate_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_deployment_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_documentation_part_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_documentation_version_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_domain_name_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_gateway_response_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_integration_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_integration_response_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_method_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_method_response_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_model_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_request_validator_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_resource_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_rest_api_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_stage_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_usage_plan_key_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_usage_plan_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_vpc_link_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/deployment.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part_ids.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_parts.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_version.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_versions.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/domain_name.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/export_response.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/flush_stage_authorizers_cache_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/flush_stage_cache_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/gateway_response.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/gateway_responses.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/generate_client_certificate_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_account_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_api_key_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_api_keys_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_authorizer_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_authorizers_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_base_path_mapping_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_base_path_mappings_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_client_certificate_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_client_certificates_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_deployment_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_deployments_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_documentation_part_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_documentation_parts_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_documentation_version_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_documentation_versions_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_domain_name_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_domain_names_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_export_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_gateway_response_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_gateway_responses_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_integration_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_integration_response_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_method_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_method_response_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_model_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_model_template_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_models_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_request_validator_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_request_validators_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_resource_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_resources_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_rest_api_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_rest_apis_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_sdk_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_sdk_type_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_sdk_types_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_stage_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_stages_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_tags_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_plan_key_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_plan_keys_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_plan_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_plans_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_vpc_link_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_vpc_links_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/import_api_keys_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/import_documentation_parts_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/import_rest_api_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/integration.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/integration_response.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/method.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/method_response.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/model.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_gateway_response_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_integration_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_integration_response_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_method_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_method_response_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_rest_api_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/request_validator.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/request_validators.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/resource.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/rest_api.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_response.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_type.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_types.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/stage.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/stages.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/tag_resource_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/tags.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/template.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_authorizer_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_authorizer_response.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_method_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_method_response.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/untag_resource_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_account_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_api_key_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_authorizer_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_base_path_mapping_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_client_certificate_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_deployment_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_documentation_part_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_documentation_version_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_domain_name_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_gateway_response_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_integration_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_integration_response_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_method_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_method_response_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_model_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_request_validator_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_resource_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_rest_api_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_stage_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_usage_plan_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_usage_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_vpc_link_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage_plan.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage_plan_key.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/vpc_link.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_api_key_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_authorizer_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_base_path_mapping_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_deployment_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_documentation_part_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_documentation_version_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_domain_name_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_model_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_request_validator_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_resource_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_rest_api_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_stage_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_usage_plan_key_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_usage_plan_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/create_vpc_link_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_api_key_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_authorizer_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_base_path_mapping_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_client_certificate_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_deployment_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_documentation_part_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_documentation_version_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_domain_name_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_gateway_response_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_integration_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_integration_response_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_method_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_method_response_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_model_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_request_validator_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_resource_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_rest_api_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_stage_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_usage_plan_key_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_usage_plan_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/delete_vpc_link_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/flush_stage_authorizers_cache_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/flush_stage_cache_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/generate_client_certificate_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_account_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_api_key_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_api_keys_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_authorizer_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_authorizers_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_base_path_mapping_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_base_path_mappings_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_client_certificate_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_client_certificates_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_deployment_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_deployments_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_documentation_part_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_documentation_parts_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_documentation_version_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_documentation_versions_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_domain_name_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_domain_names_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_export_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_gateway_response_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_gateway_responses_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_integration_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_integration_response_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_method_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_method_response_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_model_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_model_template_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_models_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_request_validator_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_request_validators_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_resource_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_resources_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_rest_api_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_rest_apis_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_sdk_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_sdk_type_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_sdk_types_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_stage_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_stages_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_tags_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_usage_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_usage_plan_key_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_usage_plan_keys_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_usage_plan_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_usage_plans_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_vpc_link_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/get_vpc_links_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/import_api_keys_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/import_documentation_parts_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/import_rest_api_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/put_gateway_response_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/put_integration_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/put_integration_response_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/put_method_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/put_method_response_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/put_rest_api_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/tag_resource_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/test_invoke_authorizer_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/test_invoke_method_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/untag_resource_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_account_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_api_key_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_authorizer_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_base_path_mapping_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_client_certificate_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_deployment_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_documentation_part_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_documentation_version_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_domain_name_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_gateway_response_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_integration_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_integration_response_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_method_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_method_response_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_model_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_request_validator_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_resource_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_rest_api_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_stage_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_usage_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_usage_plan_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/operation/update_vpc_link_operation.dart';

/// ## Amazon API Gateway
///
/// Amazon API Gateway helps developers deliver robust, secure, and scalable mobile and web application back ends. API Gateway allows developers to securely connect mobile and web applications to APIs that run on Lambda, Amazon EC2, or other publicly addressable web services that are hosted outside of AWS.
class ApiGatewayClient {
  /// ## Amazon API Gateway
  ///
  /// Amazon API Gateway helps developers deliver robust, secure, and scalable mobile and web application back ends. API Gateway allows developers to securely connect mobile and web applications to APIs that run on Lambda, Amazon EC2, or other publicly addressable web services that are hosted outside of AWS.
  const ApiGatewayClient({
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

  /// Create an ApiKey resource.
  _i3.SmithyOperation<ApiKey> createApiKey(
    CreateApiKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateApiKeyOperation(
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
  _i3.SmithyOperation<Authorizer> createAuthorizer(
    CreateAuthorizerRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateAuthorizerOperation(
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
  _i3.SmithyOperation<BasePathMapping> createBasePathMapping(
    CreateBasePathMappingRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateBasePathMappingOperation(
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
  _i3.SmithyOperation<Deployment> createDeployment(
    CreateDeploymentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateDeploymentOperation(
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
  _i3.SmithyOperation<DocumentationPart> createDocumentationPart(
    CreateDocumentationPartRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateDocumentationPartOperation(
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
  _i3.SmithyOperation<DocumentationVersion> createDocumentationVersion(
    CreateDocumentationVersionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateDocumentationVersionOperation(
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
  _i3.SmithyOperation<DomainName> createDomainName(
    CreateDomainNameRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateDomainNameOperation(
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
  _i3.SmithyOperation<Model> createModel(
    CreateModelRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateModelOperation(
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
  _i3.SmithyOperation<RequestValidator> createRequestValidator(
    CreateRequestValidatorRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateRequestValidatorOperation(
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
  _i3.SmithyOperation<Resource> createResource(
    CreateResourceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateResourceOperation(
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
  _i3.SmithyOperation<RestApi> createRestApi(
    CreateRestApiRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateRestApiOperation(
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
  _i3.SmithyOperation<Stage> createStage(
    CreateStageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateStageOperation(
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
  _i3.SmithyOperation<UsagePlan> createUsagePlan(
    CreateUsagePlanRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateUsagePlanOperation(
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
  _i3.SmithyOperation<UsagePlanKey> createUsagePlanKey(
    CreateUsagePlanKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateUsagePlanKeyOperation(
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
  _i3.SmithyOperation<VpcLink> createVpcLink(
    CreateVpcLinkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateVpcLinkOperation(
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
    DeleteApiKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteApiKeyOperation(
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
    DeleteAuthorizerRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteAuthorizerOperation(
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
    DeleteBasePathMappingRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteBasePathMappingOperation(
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
    DeleteClientCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteClientCertificateOperation(
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
    DeleteDeploymentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteDeploymentOperation(
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
    DeleteDocumentationPartRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteDocumentationPartOperation(
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
    DeleteDocumentationVersionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteDocumentationVersionOperation(
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
    DeleteDomainNameRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteDomainNameOperation(
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
    DeleteGatewayResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteGatewayResponseOperation(
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
    DeleteIntegrationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteIntegrationOperation(
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
    DeleteIntegrationResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteIntegrationResponseOperation(
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
    DeleteMethodRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteMethodOperation(
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
    DeleteMethodResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteMethodResponseOperation(
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
    DeleteModelRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteModelOperation(
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
    DeleteRequestValidatorRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteRequestValidatorOperation(
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
    DeleteResourceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteResourceOperation(
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
    DeleteRestApiRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteRestApiOperation(
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
    DeleteStageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteStageOperation(
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
    DeleteUsagePlanRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteUsagePlanOperation(
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
    DeleteUsagePlanKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteUsagePlanKeyOperation(
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
    DeleteVpcLinkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteVpcLinkOperation(
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
    FlushStageAuthorizersCacheRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return FlushStageAuthorizersCacheOperation(
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
    FlushStageCacheRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return FlushStageCacheOperation(
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
  _i3.SmithyOperation<ClientCertificate> generateClientCertificate(
    GenerateClientCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GenerateClientCertificateOperation(
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
  _i3.SmithyOperation<Account> getAccount(
    GetAccountRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetAccountOperation(
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
  _i3.SmithyOperation<ApiKey> getApiKey(
    GetApiKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetApiKeyOperation(
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
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<ApiKey>, int, String>>
      getApiKeys(
    GetApiKeysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetApiKeysOperation(
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
  _i3.SmithyOperation<Authorizer> getAuthorizer(
    GetAuthorizerRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetAuthorizerOperation(
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
  _i3.SmithyOperation<Authorizers> getAuthorizers(
    GetAuthorizersRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetAuthorizersOperation(
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
  _i3.SmithyOperation<BasePathMapping> getBasePathMapping(
    GetBasePathMappingRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetBasePathMappingOperation(
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
          _i3.PaginatedResult<_i4.BuiltList<BasePathMapping>, int, String>>
      getBasePathMappings(
    GetBasePathMappingsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetBasePathMappingsOperation(
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
  _i3.SmithyOperation<ClientCertificate> getClientCertificate(
    GetClientCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetClientCertificateOperation(
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
          _i3.PaginatedResult<_i4.BuiltList<ClientCertificate>, int, String>>
      getClientCertificates(
    GetClientCertificatesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetClientCertificatesOperation(
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
  _i3.SmithyOperation<Deployment> getDeployment(
    GetDeploymentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetDeploymentOperation(
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
          _i3.PaginatedResult<_i4.BuiltList<Deployment>, int, String>>
      getDeployments(
    GetDeploymentsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetDeploymentsOperation(
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
  _i3.SmithyOperation<DocumentationPart> getDocumentationPart(
    GetDocumentationPartRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetDocumentationPartOperation(
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
  _i3.SmithyOperation<DocumentationParts> getDocumentationParts(
    GetDocumentationPartsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetDocumentationPartsOperation(
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
  _i3.SmithyOperation<DocumentationVersion> getDocumentationVersion(
    GetDocumentationVersionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetDocumentationVersionOperation(
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
  _i3.SmithyOperation<DocumentationVersions> getDocumentationVersions(
    GetDocumentationVersionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetDocumentationVersionsOperation(
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
  _i3.SmithyOperation<DomainName> getDomainName(
    GetDomainNameRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetDomainNameOperation(
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
          _i3.PaginatedResult<_i4.BuiltList<DomainName>, int, String>>
      getDomainNames(
    GetDomainNamesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetDomainNamesOperation(
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
  _i3.SmithyOperation<ExportResponse> getExport(
    GetExportRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetExportOperation(
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
  _i3.SmithyOperation<GatewayResponse> getGatewayResponse(
    GetGatewayResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetGatewayResponseOperation(
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
  _i3.SmithyOperation<GatewayResponses> getGatewayResponses(
    GetGatewayResponsesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetGatewayResponsesOperation(
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
  _i3.SmithyOperation<Integration> getIntegration(
    GetIntegrationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetIntegrationOperation(
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
  _i3.SmithyOperation<IntegrationResponse> getIntegrationResponse(
    GetIntegrationResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetIntegrationResponseOperation(
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
  _i3.SmithyOperation<Method> getMethod(
    GetMethodRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetMethodOperation(
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
  _i3.SmithyOperation<MethodResponse> getMethodResponse(
    GetMethodResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetMethodResponseOperation(
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
  _i3.SmithyOperation<Model> getModel(
    GetModelRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetModelOperation(
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
  _i3.SmithyOperation<Template> getModelTemplate(
    GetModelTemplateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetModelTemplateOperation(
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
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<Model>, int, String>>
      getModels(
    GetModelsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetModelsOperation(
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
  _i3.SmithyOperation<RequestValidator> getRequestValidator(
    GetRequestValidatorRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetRequestValidatorOperation(
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
  _i3.SmithyOperation<RequestValidators> getRequestValidators(
    GetRequestValidatorsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetRequestValidatorsOperation(
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
  _i3.SmithyOperation<Resource> getResource(
    GetResourceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetResourceOperation(
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
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<Resource>, int, String>>
      getResources(
    GetResourcesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetResourcesOperation(
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
  _i3.SmithyOperation<RestApi> getRestApi(
    GetRestApiRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetRestApiOperation(
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
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<RestApi>, int, String>>
      getRestApis(
    GetRestApisRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetRestApisOperation(
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
  _i3.SmithyOperation<SdkResponse> getSdk(
    GetSdkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetSdkOperation(
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
  _i3.SmithyOperation<SdkType> getSdkType(
    GetSdkTypeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetSdkTypeOperation(
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
  _i3.SmithyOperation<SdkTypes> getSdkTypes(
    GetSdkTypesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetSdkTypesOperation(
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
  _i3.SmithyOperation<Stage> getStage(
    GetStageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetStageOperation(
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
  _i3.SmithyOperation<Stages> getStages(
    GetStagesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetStagesOperation(
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
  _i3.SmithyOperation<Tags> getTags(
    GetTagsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetTagsOperation(
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
          _i4.BuiltListMultimap<String, _i4.BuiltList<_i5.Int64>>,
          int,
          String>> getUsage(
    GetUsageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetUsageOperation(
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
  _i3.SmithyOperation<UsagePlan> getUsagePlan(
    GetUsagePlanRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetUsagePlanOperation(
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
  _i3.SmithyOperation<UsagePlanKey> getUsagePlanKey(
    GetUsagePlanKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetUsagePlanKeyOperation(
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
          _i3.PaginatedResult<_i4.BuiltList<UsagePlanKey>, int, String>>
      getUsagePlanKeys(
    GetUsagePlanKeysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetUsagePlanKeysOperation(
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
      _i3.PaginatedResult<_i4.BuiltList<UsagePlan>, int, String>> getUsagePlans(
    GetUsagePlansRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetUsagePlansOperation(
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
  _i3.SmithyOperation<VpcLink> getVpcLink(
    GetVpcLinkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetVpcLinkOperation(
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
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<VpcLink>, int, String>>
      getVpcLinks(
    GetVpcLinksRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetVpcLinksOperation(
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
  _i3.SmithyOperation<ApiKeyIds> importApiKeys(
    ImportApiKeysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ImportApiKeysOperation(
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
  _i3.SmithyOperation<DocumentationPartIds> importDocumentationParts(
    ImportDocumentationPartsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ImportDocumentationPartsOperation(
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
  _i3.SmithyOperation<RestApi> importRestApi(
    ImportRestApiRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ImportRestApiOperation(
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
  _i3.SmithyOperation<GatewayResponse> putGatewayResponse(
    PutGatewayResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutGatewayResponseOperation(
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
  _i3.SmithyOperation<Integration> putIntegration(
    PutIntegrationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutIntegrationOperation(
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
  _i3.SmithyOperation<IntegrationResponse> putIntegrationResponse(
    PutIntegrationResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutIntegrationResponseOperation(
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
  _i3.SmithyOperation<Method> putMethod(
    PutMethodRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutMethodOperation(
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
  _i3.SmithyOperation<MethodResponse> putMethodResponse(
    PutMethodResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutMethodResponseOperation(
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
  _i3.SmithyOperation<RestApi> putRestApi(
    PutRestApiRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutRestApiOperation(
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

  /// Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body.
  _i3.SmithyOperation<TestInvokeAuthorizerResponse> testInvokeAuthorizer(
    TestInvokeAuthorizerRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return TestInvokeAuthorizerOperation(
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
  _i3.SmithyOperation<TestInvokeMethodResponse> testInvokeMethod(
    TestInvokeMethodRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return TestInvokeMethodOperation(
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

  /// Changes information about the current Account resource.
  _i3.SmithyOperation<Account> updateAccount(
    UpdateAccountRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateAccountOperation(
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
  _i3.SmithyOperation<ApiKey> updateApiKey(
    UpdateApiKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateApiKeyOperation(
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
  _i3.SmithyOperation<Authorizer> updateAuthorizer(
    UpdateAuthorizerRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateAuthorizerOperation(
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
  _i3.SmithyOperation<BasePathMapping> updateBasePathMapping(
    UpdateBasePathMappingRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateBasePathMappingOperation(
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
  _i3.SmithyOperation<ClientCertificate> updateClientCertificate(
    UpdateClientCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateClientCertificateOperation(
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
  _i3.SmithyOperation<Deployment> updateDeployment(
    UpdateDeploymentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateDeploymentOperation(
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
  _i3.SmithyOperation<DocumentationPart> updateDocumentationPart(
    UpdateDocumentationPartRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateDocumentationPartOperation(
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
  _i3.SmithyOperation<DocumentationVersion> updateDocumentationVersion(
    UpdateDocumentationVersionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateDocumentationVersionOperation(
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
  _i3.SmithyOperation<DomainName> updateDomainName(
    UpdateDomainNameRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateDomainNameOperation(
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
  _i3.SmithyOperation<GatewayResponse> updateGatewayResponse(
    UpdateGatewayResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateGatewayResponseOperation(
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
  _i3.SmithyOperation<Integration> updateIntegration(
    UpdateIntegrationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateIntegrationOperation(
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
  _i3.SmithyOperation<IntegrationResponse> updateIntegrationResponse(
    UpdateIntegrationResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateIntegrationResponseOperation(
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
  _i3.SmithyOperation<Method> updateMethod(
    UpdateMethodRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateMethodOperation(
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
  _i3.SmithyOperation<MethodResponse> updateMethodResponse(
    UpdateMethodResponseRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateMethodResponseOperation(
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
  _i3.SmithyOperation<Model> updateModel(
    UpdateModelRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateModelOperation(
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
  _i3.SmithyOperation<RequestValidator> updateRequestValidator(
    UpdateRequestValidatorRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateRequestValidatorOperation(
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
  _i3.SmithyOperation<Resource> updateResource(
    UpdateResourceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateResourceOperation(
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
  _i3.SmithyOperation<RestApi> updateRestApi(
    UpdateRestApiRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateRestApiOperation(
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
  _i3.SmithyOperation<Stage> updateStage(
    UpdateStageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateStageOperation(
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
  _i3.SmithyOperation<Usage> updateUsage(
    UpdateUsageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateUsageOperation(
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
  _i3.SmithyOperation<UsagePlan> updateUsagePlan(
    UpdateUsagePlanRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateUsagePlanOperation(
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
  _i3.SmithyOperation<VpcLink> updateVpcLink(
    UpdateVpcLinkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateVpcLinkOperation(
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
