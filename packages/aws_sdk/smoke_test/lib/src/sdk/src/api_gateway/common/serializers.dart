// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/access_log_settings.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/account.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_key.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_key_ids.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_key_source_type.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_keys.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_keys_format.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_stage.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/authorizer.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/authorizer_type.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/authorizers.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/bad_request_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/base_path_mapping.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/base_path_mappings.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/cache_cluster_size.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/cache_cluster_status.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/canary_settings.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/client_certificate.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/client_certificates.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/conflict_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/connection_type.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/content_handling_strategy.dart';
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
import 'package:smoke_test/src/sdk/src/api_gateway/model/deployment_canary_settings.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/deployments.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part_ids.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part_location.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part_type.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_parts.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_version.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_versions.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/domain_name.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/domain_name_status.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/domain_names.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/endpoint_configuration.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/endpoint_type.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/export_response.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/flush_stage_authorizers_cache_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/flush_stage_cache_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/gateway_response.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/gateway_response_type.dart';
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
import 'package:smoke_test/src/sdk/src/api_gateway/model/integration_type.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/location_status_type.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/method.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/method_response.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/method_setting.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/method_snapshot.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/model.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/models.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/mutual_tls_authentication.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/mutual_tls_authentication_input.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/op.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_gateway_response_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_integration_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_integration_response_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_method_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_method_response_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_mode.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_rest_api_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/quota_period_type.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/quota_settings.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/request_validator.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/request_validators.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/resource.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/resources.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/rest_api.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/rest_apis.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_configuration_property.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_response.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_type.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_types.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/security_policy.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/service_unavailable_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/stage.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/stage_key.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/stages.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/tag_resource_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/tags.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/template.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_authorizer_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_authorizer_response.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_method_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/test_invoke_method_response.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/throttle_settings.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/tls_config.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/too_many_requests_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/unauthorized_cache_control_header_strategy.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/unauthorized_exception.dart';
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
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage_plan_keys.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage_plans.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/vpc_link.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/vpc_link_status.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/vpc_links.dart';

const List<_i1.SmithySerializer> serializers = [
  ...StageKey.serializers,
  ...CreateApiKeyRequest.serializers,
  ...ApiKey.serializers,
  ...BadRequestException.serializers,
  ...ConflictException.serializers,
  ...LimitExceededException.serializers,
  ...NotFoundException.serializers,
  ...TooManyRequestsException.serializers,
  ...UnauthorizedException.serializers,
  ...AuthorizerType.serializers,
  ...CreateAuthorizerRequest.serializers,
  ...Authorizer.serializers,
  ...CreateBasePathMappingRequest.serializers,
  ...BasePathMapping.serializers,
  ...CacheClusterSize.serializers,
  ...DeploymentCanarySettings.serializers,
  ...CreateDeploymentRequest.serializers,
  ...MethodSnapshot.serializers,
  ...Deployment.serializers,
  ...ServiceUnavailableException.serializers,
  ...DocumentationPartType.serializers,
  ...DocumentationPartLocation.serializers,
  ...CreateDocumentationPartRequest.serializers,
  ...DocumentationPart.serializers,
  ...CreateDocumentationVersionRequest.serializers,
  ...DocumentationVersion.serializers,
  ...EndpointType.serializers,
  ...EndpointConfiguration.serializers,
  ...SecurityPolicy.serializers,
  ...MutualTlsAuthenticationInput.serializers,
  ...CreateDomainNameRequest.serializers,
  ...DomainNameStatus.serializers,
  ...MutualTlsAuthentication.serializers,
  ...DomainName.serializers,
  ...CreateModelRequest.serializers,
  ...Model.serializers,
  ...CreateRequestValidatorRequest.serializers,
  ...RequestValidator.serializers,
  ...CreateResourceRequest.serializers,
  ...MethodResponse.serializers,
  ...IntegrationType.serializers,
  ...ConnectionType.serializers,
  ...ContentHandlingStrategy.serializers,
  ...IntegrationResponse.serializers,
  ...TlsConfig.serializers,
  ...Integration.serializers,
  ...Method.serializers,
  ...Resource.serializers,
  ...ApiKeySourceType.serializers,
  ...CreateRestApiRequest.serializers,
  ...RestApi.serializers,
  ...CanarySettings.serializers,
  ...CreateStageRequest.serializers,
  ...CacheClusterStatus.serializers,
  ...UnauthorizedCacheControlHeaderStrategy.serializers,
  ...MethodSetting.serializers,
  ...AccessLogSettings.serializers,
  ...Stage.serializers,
  ...ThrottleSettings.serializers,
  ...ApiStage.serializers,
  ...QuotaPeriodType.serializers,
  ...QuotaSettings.serializers,
  ...CreateUsagePlanRequest.serializers,
  ...UsagePlan.serializers,
  ...CreateUsagePlanKeyRequest.serializers,
  ...UsagePlanKey.serializers,
  ...CreateVpcLinkRequest.serializers,
  ...VpcLinkStatus.serializers,
  ...VpcLink.serializers,
  ...DeleteApiKeyRequest.serializers,
  ...DeleteAuthorizerRequest.serializers,
  ...DeleteBasePathMappingRequest.serializers,
  ...DeleteClientCertificateRequest.serializers,
  ...DeleteDeploymentRequest.serializers,
  ...DeleteDocumentationPartRequest.serializers,
  ...DeleteDocumentationVersionRequest.serializers,
  ...DeleteDomainNameRequest.serializers,
  ...GatewayResponseType.serializers,
  ...DeleteGatewayResponseRequest.serializers,
  ...DeleteIntegrationRequest.serializers,
  ...DeleteIntegrationResponseRequest.serializers,
  ...DeleteMethodRequest.serializers,
  ...DeleteMethodResponseRequest.serializers,
  ...DeleteModelRequest.serializers,
  ...DeleteRequestValidatorRequest.serializers,
  ...DeleteResourceRequest.serializers,
  ...DeleteRestApiRequest.serializers,
  ...DeleteStageRequest.serializers,
  ...DeleteUsagePlanRequest.serializers,
  ...DeleteUsagePlanKeyRequest.serializers,
  ...DeleteVpcLinkRequest.serializers,
  ...FlushStageAuthorizersCacheRequest.serializers,
  ...FlushStageCacheRequest.serializers,
  ...GenerateClientCertificateRequest.serializers,
  ...ClientCertificate.serializers,
  ...GetAccountRequest.serializers,
  ...Account.serializers,
  ...GetApiKeyRequest.serializers,
  ...GetApiKeysRequest.serializers,
  ...ApiKeys.serializers,
  ...GetAuthorizerRequest.serializers,
  ...GetAuthorizersRequest.serializers,
  ...Authorizers.serializers,
  ...GetBasePathMappingRequest.serializers,
  ...GetBasePathMappingsRequest.serializers,
  ...BasePathMappings.serializers,
  ...GetClientCertificateRequest.serializers,
  ...GetClientCertificatesRequest.serializers,
  ...ClientCertificates.serializers,
  ...GetDeploymentRequest.serializers,
  ...GetDeploymentsRequest.serializers,
  ...Deployments.serializers,
  ...GetDocumentationPartRequest.serializers,
  ...LocationStatusType.serializers,
  ...GetDocumentationPartsRequest.serializers,
  ...DocumentationParts.serializers,
  ...GetDocumentationVersionRequest.serializers,
  ...GetDocumentationVersionsRequest.serializers,
  ...DocumentationVersions.serializers,
  ...GetDomainNameRequest.serializers,
  ...GetDomainNamesRequest.serializers,
  ...DomainNames.serializers,
  ...GetExportRequest.serializers,
  ...ExportResponse.serializers,
  ...GetGatewayResponseRequest.serializers,
  ...GatewayResponse.serializers,
  ...GetGatewayResponsesRequest.serializers,
  ...GatewayResponses.serializers,
  ...GetIntegrationRequest.serializers,
  ...GetIntegrationResponseRequest.serializers,
  ...GetMethodRequest.serializers,
  ...GetMethodResponseRequest.serializers,
  ...GetModelRequest.serializers,
  ...GetModelTemplateRequest.serializers,
  ...Template.serializers,
  ...GetModelsRequest.serializers,
  ...Models.serializers,
  ...GetRequestValidatorRequest.serializers,
  ...GetRequestValidatorsRequest.serializers,
  ...RequestValidators.serializers,
  ...GetResourceRequest.serializers,
  ...GetResourcesRequest.serializers,
  ...Resources.serializers,
  ...GetRestApiRequest.serializers,
  ...GetRestApisRequest.serializers,
  ...RestApis.serializers,
  ...GetSdkRequest.serializers,
  ...SdkResponse.serializers,
  ...GetSdkTypeRequest.serializers,
  ...SdkConfigurationProperty.serializers,
  ...SdkType.serializers,
  ...GetSdkTypesRequest.serializers,
  ...SdkTypes.serializers,
  ...GetStageRequest.serializers,
  ...GetStagesRequest.serializers,
  ...Stages.serializers,
  ...GetTagsRequest.serializers,
  ...Tags.serializers,
  ...GetUsageRequest.serializers,
  ...Usage.serializers,
  ...GetUsagePlanRequest.serializers,
  ...GetUsagePlanKeyRequest.serializers,
  ...GetUsagePlanKeysRequest.serializers,
  ...UsagePlanKeys.serializers,
  ...GetUsagePlansRequest.serializers,
  ...UsagePlans.serializers,
  ...GetVpcLinkRequest.serializers,
  ...GetVpcLinksRequest.serializers,
  ...VpcLinks.serializers,
  ...ApiKeysFormat.serializers,
  ...ImportApiKeysRequest.serializers,
  ...ApiKeyIds.serializers,
  ...PutMode.serializers,
  ...ImportDocumentationPartsRequest.serializers,
  ...DocumentationPartIds.serializers,
  ...ImportRestApiRequest.serializers,
  ...PutGatewayResponseRequest.serializers,
  ...PutIntegrationRequest.serializers,
  ...PutIntegrationResponseRequest.serializers,
  ...PutMethodRequest.serializers,
  ...PutMethodResponseRequest.serializers,
  ...PutRestApiRequest.serializers,
  ...TagResourceRequest.serializers,
  ...TestInvokeAuthorizerRequest.serializers,
  ...TestInvokeAuthorizerResponse.serializers,
  ...TestInvokeMethodRequest.serializers,
  ...TestInvokeMethodResponse.serializers,
  ...UntagResourceRequest.serializers,
  ...Op.serializers,
  ...PatchOperation.serializers,
  ...UpdateAccountRequest.serializers,
  ...UpdateApiKeyRequest.serializers,
  ...UpdateAuthorizerRequest.serializers,
  ...UpdateBasePathMappingRequest.serializers,
  ...UpdateClientCertificateRequest.serializers,
  ...UpdateDeploymentRequest.serializers,
  ...UpdateDocumentationPartRequest.serializers,
  ...UpdateDocumentationVersionRequest.serializers,
  ...UpdateDomainNameRequest.serializers,
  ...UpdateGatewayResponseRequest.serializers,
  ...UpdateIntegrationRequest.serializers,
  ...UpdateIntegrationResponseRequest.serializers,
  ...UpdateMethodRequest.serializers,
  ...UpdateMethodResponseRequest.serializers,
  ...UpdateModelRequest.serializers,
  ...UpdateRequestValidatorRequest.serializers,
  ...UpdateResourceRequest.serializers,
  ...UpdateRestApiRequest.serializers,
  ...UpdateStageRequest.serializers,
  ...UpdateUsageRequest.serializers,
  ...UpdateUsagePlanRequest.serializers,
  ...UpdateVpcLinkRequest.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltList,
    [FullType(StageKey)],
  ): _i2.ListBuilder<StageKey>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.MapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(String)],
  ): _i2.ListBuilder<String>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(MethodSnapshot),
    ],
  ): _i2.MapBuilder<String, MethodSnapshot>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(
        _i2.BuiltMap,
        [
          FullType(String),
          FullType(MethodSnapshot),
        ],
      ),
    ],
  ): _i2.MapBuilder<String, _i2.BuiltMap<String, MethodSnapshot>>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(EndpointType)],
  ): _i2.ListBuilder<EndpointType>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(bool),
    ],
  ): _i2.MapBuilder<String, bool>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(IntegrationResponse),
    ],
  ): _i2.MapBuilder<String, IntegrationResponse>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(MethodResponse),
    ],
  ): _i2.MapBuilder<String, MethodResponse>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(Method),
    ],
  ): _i2.MapBuilder<String, Method>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(MethodSetting),
    ],
  ): _i2.MapBuilder<String, MethodSetting>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(ThrottleSettings),
    ],
  ): _i2.MapBuilder<String, ThrottleSettings>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ApiStage)],
  ): _i2.ListBuilder<ApiStage>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ApiKey)],
  ): _i2.ListBuilder<ApiKey>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Authorizer)],
  ): _i2.ListBuilder<Authorizer>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(BasePathMapping)],
  ): _i2.ListBuilder<BasePathMapping>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ClientCertificate)],
  ): _i2.ListBuilder<ClientCertificate>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Deployment)],
  ): _i2.ListBuilder<Deployment>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DocumentationPart)],
  ): _i2.ListBuilder<DocumentationPart>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DocumentationVersion)],
  ): _i2.ListBuilder<DocumentationVersion>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DomainName)],
  ): _i2.ListBuilder<DomainName>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(GatewayResponse)],
  ): _i2.ListBuilder<GatewayResponse>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Model)],
  ): _i2.ListBuilder<Model>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RequestValidator)],
  ): _i2.ListBuilder<RequestValidator>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Resource)],
  ): _i2.ListBuilder<Resource>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RestApi)],
  ): _i2.ListBuilder<RestApi>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SdkConfigurationProperty)],
  ): _i2.ListBuilder<SdkConfigurationProperty>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SdkType)],
  ): _i2.ListBuilder<SdkType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Stage)],
  ): _i2.ListBuilder<Stage>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(_i3.Int64)],
  ): _i2.ListBuilder<_i3.Int64>.new,
  const FullType(
    _i2.BuiltListMultimap,
    [
      FullType(String),
      FullType(
        _i2.BuiltList,
        [FullType(_i3.Int64)],
      ),
    ],
  ): _i2.ListMultimapBuilder<String, _i2.BuiltList<_i3.Int64>>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(UsagePlanKey)],
  ): _i2.ListBuilder<UsagePlanKey>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(UsagePlan)],
  ): _i2.ListBuilder<UsagePlan>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VpcLink)],
  ): _i2.ListBuilder<VpcLink>.new,
  const FullType(
    _i2.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PatchOperation)],
  ): _i2.ListBuilder<PatchOperation>.new,
};
