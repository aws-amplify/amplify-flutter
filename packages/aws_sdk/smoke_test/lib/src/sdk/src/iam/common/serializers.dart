// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/access_advisor_usage_granularity_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/access_detail.dart';
import 'package:smoke_test/src/sdk/src/iam/model/access_key.dart';
import 'package:smoke_test/src/sdk/src/iam/model/access_key_last_used.dart';
import 'package:smoke_test/src/sdk/src/iam/model/access_key_metadata.dart';
import 'package:smoke_test/src/sdk/src/iam/model/add_client_id_to_open_id_connect_provider_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/add_role_to_instance_profile_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/add_user_to_group_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/assignment_status_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/attach_group_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/attach_role_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/attach_user_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/attached_permissions_boundary.dart';
import 'package:smoke_test/src/sdk/src/iam/model/attached_policy.dart';
import 'package:smoke_test/src/sdk/src/iam/model/change_password_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/concurrent_modification_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/context_entry.dart';
import 'package:smoke_test/src/sdk/src/iam/model/context_key_type_enum.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_access_key_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_access_key_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_account_alias_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_group_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_group_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_instance_profile_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_instance_profile_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_login_profile_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_login_profile_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_open_id_connect_provider_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_open_id_connect_provider_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_policy_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_policy_version_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_policy_version_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_role_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_role_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_saml_provider_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_saml_provider_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_service_linked_role_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_service_linked_role_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_service_specific_credential_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_service_specific_credential_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_user_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_user_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_virtual_mfa_device_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_virtual_mfa_device_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/credential_report_expired_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/credential_report_not_present_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/credential_report_not_ready_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/deactivate_mfa_device_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_access_key_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_account_alias_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_conflict_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_group_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_group_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_instance_profile_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_login_profile_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_open_id_connect_provider_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_policy_version_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_role_permissions_boundary_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_role_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_role_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_saml_provider_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_server_certificate_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_service_linked_role_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_service_linked_role_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_service_specific_credential_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_signing_certificate_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_ssh_public_key_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_user_permissions_boundary_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_user_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_user_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/delete_virtual_mfa_device_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/deletion_task_failure_reason_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/deletion_task_status_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/detach_group_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/detach_role_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/detach_user_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/duplicate_certificate_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/duplicate_ssh_public_key_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/enable_mfa_device_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/encoding_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/entity_already_exists_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/entity_details.dart';
import 'package:smoke_test/src/sdk/src/iam/model/entity_info.dart';
import 'package:smoke_test/src/sdk/src/iam/model/entity_temporarily_unmodifiable_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/entity_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/error_details.dart';
import 'package:smoke_test/src/sdk/src/iam/model/evaluation_result.dart';
import 'package:smoke_test/src/sdk/src/iam/model/generate_credential_report_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/generate_organizations_access_report_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/generate_organizations_access_report_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/generate_service_last_accessed_details_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/generate_service_last_accessed_details_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_access_key_last_used_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_access_key_last_used_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_account_authorization_details_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_account_authorization_details_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_account_password_policy_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_account_summary_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_context_keys_for_custom_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_context_keys_for_policy_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_context_keys_for_principal_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_credential_report_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_group_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_group_policy_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_group_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_group_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_instance_profile_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_instance_profile_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_login_profile_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_login_profile_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_mfa_device_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_mfa_device_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_open_id_connect_provider_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_open_id_connect_provider_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_organizations_access_report_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_organizations_access_report_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_policy_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_policy_version_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_policy_version_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_role_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_role_policy_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_role_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_role_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_saml_provider_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_saml_provider_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_server_certificate_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_server_certificate_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_service_last_accessed_details_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_service_last_accessed_details_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_service_last_accessed_details_with_entities_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_service_last_accessed_details_with_entities_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_service_linked_role_deletion_status_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_service_linked_role_deletion_status_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_ssh_public_key_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_ssh_public_key_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_user_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_user_policy_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_user_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_user_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/global_endpoint_token_version.dart';
import 'package:smoke_test/src/sdk/src/iam/model/group.dart';
import 'package:smoke_test/src/sdk/src/iam/model/group_detail.dart';
import 'package:smoke_test/src/sdk/src/iam/model/instance_profile.dart';
import 'package:smoke_test/src/sdk/src/iam/model/invalid_authentication_code_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/invalid_certificate_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/invalid_input_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/invalid_public_key_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/invalid_user_type_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/job_status_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/key_pair_mismatch_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_access_keys_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_access_keys_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_account_aliases_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_account_aliases_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_attached_group_policies_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_attached_group_policies_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_attached_role_policies_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_attached_role_policies_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_attached_user_policies_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_attached_user_policies_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_entities_for_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_entities_for_policy_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_group_policies_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_group_policies_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_groups_for_user_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_groups_for_user_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_groups_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_groups_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profile_tags_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profile_tags_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profiles_for_role_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profiles_for_role_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profiles_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profiles_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_mfa_device_tags_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_mfa_device_tags_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_mfa_devices_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_mfa_devices_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_open_id_connect_provider_tags_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_open_id_connect_provider_tags_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_open_id_connect_providers_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_open_id_connect_providers_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_granting_service_access_entry.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_granting_service_access_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_granting_service_access_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_policy_tags_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_policy_tags_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_policy_versions_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_policy_versions_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_role_policies_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_role_policies_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_role_tags_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_role_tags_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_roles_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_roles_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_saml_provider_tags_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_saml_provider_tags_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_saml_providers_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_saml_providers_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_server_certificate_tags_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_server_certificate_tags_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_server_certificates_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_server_certificates_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_service_specific_credentials_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_service_specific_credentials_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_signing_certificates_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_signing_certificates_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_ssh_public_keys_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_ssh_public_keys_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_user_policies_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_user_policies_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_user_tags_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_user_tags_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_users_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_users_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_virtual_mfa_devices_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_virtual_mfa_devices_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/login_profile.dart';
import 'package:smoke_test/src/sdk/src/iam/model/malformed_certificate_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/malformed_policy_document_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/managed_policy_detail.dart';
import 'package:smoke_test/src/sdk/src/iam/model/mfa_device.dart';
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/open_id_connect_provider_list_entry.dart';
import 'package:smoke_test/src/sdk/src/iam/model/organizations_decision_detail.dart';
import 'package:smoke_test/src/sdk/src/iam/model/password_policy.dart';
import 'package:smoke_test/src/sdk/src/iam/model/password_policy_violation_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/permissions_boundary_attachment_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/permissions_boundary_decision_detail.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_detail.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_evaluation_decision_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_evaluation_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_granting_service_access.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_group.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_not_attachable_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_owner_entity_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_role.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_scope_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_source_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_usage_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_user.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_version.dart';
import 'package:smoke_test/src/sdk/src/iam/model/position.dart';
import 'package:smoke_test/src/sdk/src/iam/model/put_group_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/put_role_permissions_boundary_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/put_role_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/put_user_permissions_boundary_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/put_user_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/remove_client_id_from_open_id_connect_provider_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/remove_role_from_instance_profile_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/remove_user_from_group_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/report_format_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/report_generation_limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/report_state_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/reset_service_specific_credential_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/reset_service_specific_credential_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/resource_specific_result.dart';
import 'package:smoke_test/src/sdk/src/iam/model/resync_mfa_device_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/role.dart';
import 'package:smoke_test/src/sdk/src/iam/model/role_detail.dart';
import 'package:smoke_test/src/sdk/src/iam/model/role_last_used.dart';
import 'package:smoke_test/src/sdk/src/iam/model/role_usage_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/saml_provider_list_entry.dart';
import 'package:smoke_test/src/sdk/src/iam/model/server_certificate.dart';
import 'package:smoke_test/src/sdk/src/iam/model/server_certificate_metadata.dart';
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/service_last_accessed.dart';
import 'package:smoke_test/src/sdk/src/iam/model/service_not_supported_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/service_specific_credential.dart';
import 'package:smoke_test/src/sdk/src/iam/model/service_specific_credential_metadata.dart';
import 'package:smoke_test/src/sdk/src/iam/model/set_default_policy_version_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/set_security_token_service_preferences_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/signing_certificate.dart';
import 'package:smoke_test/src/sdk/src/iam/model/simulate_custom_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/simulate_policy_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/simulate_principal_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/sort_key_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/ssh_public_key.dart';
import 'package:smoke_test/src/sdk/src/iam/model/ssh_public_key_metadata.dart';
import 'package:smoke_test/src/sdk/src/iam/model/statement.dart';
import 'package:smoke_test/src/sdk/src/iam/model/status_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/summary_key_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart';
import 'package:smoke_test/src/sdk/src/iam/model/tag_instance_profile_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/tag_mfa_device_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/tag_open_id_connect_provider_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/tag_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/tag_role_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/tag_saml_provider_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/tag_server_certificate_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/tag_user_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/tracked_action_last_accessed.dart';
import 'package:smoke_test/src/sdk/src/iam/model/unmodifiable_entity_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/unrecognized_public_key_encoding_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/untag_instance_profile_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/untag_mfa_device_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/untag_open_id_connect_provider_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/untag_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/untag_role_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/untag_saml_provider_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/untag_server_certificate_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/untag_user_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_access_key_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_account_password_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_assume_role_policy_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_group_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_login_profile_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_open_id_connect_provider_thumbprint_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_role_description_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_role_description_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_role_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_role_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_saml_provider_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_saml_provider_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_server_certificate_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_service_specific_credential_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_signing_certificate_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_ssh_public_key_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/update_user_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/upload_server_certificate_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/upload_server_certificate_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/upload_signing_certificate_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/upload_signing_certificate_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/upload_ssh_public_key_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/upload_ssh_public_key_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/user.dart';
import 'package:smoke_test/src/sdk/src/iam/model/user_detail.dart';
import 'package:smoke_test/src/sdk/src/iam/model/virtual_mfa_device.dart';

const List<_i1.SmithySerializer> serializers = [
  ...AddClientIdToOpenIdConnectProviderRequest.serializers,
  ...InvalidInputException.serializers,
  ...LimitExceededException.serializers,
  ...NoSuchEntityException.serializers,
  ...ServiceFailureException.serializers,
  ...AddRoleToInstanceProfileRequest.serializers,
  ...EntityAlreadyExistsException.serializers,
  ...UnmodifiableEntityException.serializers,
  ...AddUserToGroupRequest.serializers,
  ...AttachGroupPolicyRequest.serializers,
  ...PolicyNotAttachableException.serializers,
  ...AttachRolePolicyRequest.serializers,
  ...AttachUserPolicyRequest.serializers,
  ...ChangePasswordRequest.serializers,
  ...EntityTemporarilyUnmodifiableException.serializers,
  ...InvalidUserTypeException.serializers,
  ...PasswordPolicyViolationException.serializers,
  ...CreateAccessKeyRequest.serializers,
  ...StatusType.serializers,
  ...AccessKey.serializers,
  ...CreateAccessKeyResponse.serializers,
  ...CreateAccountAliasRequest.serializers,
  ...ConcurrentModificationException.serializers,
  ...CreateGroupRequest.serializers,
  ...Group.serializers,
  ...CreateGroupResponse.serializers,
  ...Tag.serializers,
  ...CreateInstanceProfileRequest.serializers,
  ...PermissionsBoundaryAttachmentType.serializers,
  ...AttachedPermissionsBoundary.serializers,
  ...RoleLastUsed.serializers,
  ...Role.serializers,
  ...InstanceProfile.serializers,
  ...CreateInstanceProfileResponse.serializers,
  ...CreateLoginProfileRequest.serializers,
  ...LoginProfile.serializers,
  ...CreateLoginProfileResponse.serializers,
  ...CreateOpenIdConnectProviderRequest.serializers,
  ...CreateOpenIdConnectProviderResponse.serializers,
  ...CreatePolicyRequest.serializers,
  ...Policy.serializers,
  ...CreatePolicyResponse.serializers,
  ...MalformedPolicyDocumentException.serializers,
  ...CreatePolicyVersionRequest.serializers,
  ...PolicyVersion.serializers,
  ...CreatePolicyVersionResponse.serializers,
  ...CreateRoleRequest.serializers,
  ...CreateRoleResponse.serializers,
  ...CreateSamlProviderRequest.serializers,
  ...CreateSamlProviderResponse.serializers,
  ...CreateServiceLinkedRoleRequest.serializers,
  ...CreateServiceLinkedRoleResponse.serializers,
  ...CreateServiceSpecificCredentialRequest.serializers,
  ...ServiceSpecificCredential.serializers,
  ...CreateServiceSpecificCredentialResponse.serializers,
  ...ServiceNotSupportedException.serializers,
  ...CreateUserRequest.serializers,
  ...User.serializers,
  ...CreateUserResponse.serializers,
  ...CreateVirtualMfaDeviceRequest.serializers,
  ...VirtualMfaDevice.serializers,
  ...CreateVirtualMfaDeviceResponse.serializers,
  ...DeactivateMfaDeviceRequest.serializers,
  ...DeleteAccessKeyRequest.serializers,
  ...DeleteAccountAliasRequest.serializers,
  ...DeleteGroupRequest.serializers,
  ...DeleteConflictException.serializers,
  ...DeleteGroupPolicyRequest.serializers,
  ...DeleteInstanceProfileRequest.serializers,
  ...DeleteLoginProfileRequest.serializers,
  ...DeleteOpenIdConnectProviderRequest.serializers,
  ...DeletePolicyRequest.serializers,
  ...DeletePolicyVersionRequest.serializers,
  ...DeleteRoleRequest.serializers,
  ...DeleteRolePermissionsBoundaryRequest.serializers,
  ...DeleteRolePolicyRequest.serializers,
  ...DeleteSamlProviderRequest.serializers,
  ...DeleteSshPublicKeyRequest.serializers,
  ...DeleteServerCertificateRequest.serializers,
  ...DeleteServiceLinkedRoleRequest.serializers,
  ...DeleteServiceLinkedRoleResponse.serializers,
  ...DeleteServiceSpecificCredentialRequest.serializers,
  ...DeleteSigningCertificateRequest.serializers,
  ...DeleteUserRequest.serializers,
  ...DeleteUserPermissionsBoundaryRequest.serializers,
  ...DeleteUserPolicyRequest.serializers,
  ...DeleteVirtualMfaDeviceRequest.serializers,
  ...DetachGroupPolicyRequest.serializers,
  ...DetachRolePolicyRequest.serializers,
  ...DetachUserPolicyRequest.serializers,
  ...EnableMfaDeviceRequest.serializers,
  ...InvalidAuthenticationCodeException.serializers,
  ...ReportStateType.serializers,
  ...GenerateCredentialReportResponse.serializers,
  ...GenerateOrganizationsAccessReportRequest.serializers,
  ...GenerateOrganizationsAccessReportResponse.serializers,
  ...ReportGenerationLimitExceededException.serializers,
  ...AccessAdvisorUsageGranularityType.serializers,
  ...GenerateServiceLastAccessedDetailsRequest.serializers,
  ...GenerateServiceLastAccessedDetailsResponse.serializers,
  ...GetAccessKeyLastUsedRequest.serializers,
  ...AccessKeyLastUsed.serializers,
  ...GetAccessKeyLastUsedResponse.serializers,
  ...EntityType.serializers,
  ...GetAccountAuthorizationDetailsRequest.serializers,
  ...PolicyDetail.serializers,
  ...AttachedPolicy.serializers,
  ...UserDetail.serializers,
  ...GroupDetail.serializers,
  ...RoleDetail.serializers,
  ...ManagedPolicyDetail.serializers,
  ...GetAccountAuthorizationDetailsResponse.serializers,
  ...PasswordPolicy.serializers,
  ...GetAccountPasswordPolicyResponse.serializers,
  ...SummaryKeyType.serializers,
  ...GetAccountSummaryResponse.serializers,
  ...GetContextKeysForCustomPolicyRequest.serializers,
  ...GetContextKeysForPolicyResponse.serializers,
  ...GetContextKeysForPrincipalPolicyRequest.serializers,
  ...ReportFormatType.serializers,
  ...GetCredentialReportResponse.serializers,
  ...CredentialReportExpiredException.serializers,
  ...CredentialReportNotPresentException.serializers,
  ...CredentialReportNotReadyException.serializers,
  ...GetGroupRequest.serializers,
  ...GetGroupResponse.serializers,
  ...GetGroupPolicyRequest.serializers,
  ...GetGroupPolicyResponse.serializers,
  ...GetInstanceProfileRequest.serializers,
  ...GetInstanceProfileResponse.serializers,
  ...GetLoginProfileRequest.serializers,
  ...GetLoginProfileResponse.serializers,
  ...GetMfaDeviceRequest.serializers,
  ...GetMfaDeviceResponse.serializers,
  ...GetOpenIdConnectProviderRequest.serializers,
  ...GetOpenIdConnectProviderResponse.serializers,
  ...SortKeyType.serializers,
  ...GetOrganizationsAccessReportRequest.serializers,
  ...JobStatusType.serializers,
  ...AccessDetail.serializers,
  ...ErrorDetails.serializers,
  ...GetOrganizationsAccessReportResponse.serializers,
  ...GetPolicyRequest.serializers,
  ...GetPolicyResponse.serializers,
  ...GetPolicyVersionRequest.serializers,
  ...GetPolicyVersionResponse.serializers,
  ...GetRoleRequest.serializers,
  ...GetRoleResponse.serializers,
  ...GetRolePolicyRequest.serializers,
  ...GetRolePolicyResponse.serializers,
  ...GetSamlProviderRequest.serializers,
  ...GetSamlProviderResponse.serializers,
  ...EncodingType.serializers,
  ...GetSshPublicKeyRequest.serializers,
  ...SshPublicKey.serializers,
  ...GetSshPublicKeyResponse.serializers,
  ...UnrecognizedPublicKeyEncodingException.serializers,
  ...GetServerCertificateRequest.serializers,
  ...ServerCertificateMetadata.serializers,
  ...ServerCertificate.serializers,
  ...GetServerCertificateResponse.serializers,
  ...GetServiceLastAccessedDetailsRequest.serializers,
  ...TrackedActionLastAccessed.serializers,
  ...ServiceLastAccessed.serializers,
  ...GetServiceLastAccessedDetailsResponse.serializers,
  ...GetServiceLastAccessedDetailsWithEntitiesRequest.serializers,
  ...PolicyOwnerEntityType.serializers,
  ...EntityInfo.serializers,
  ...EntityDetails.serializers,
  ...GetServiceLastAccessedDetailsWithEntitiesResponse.serializers,
  ...GetServiceLinkedRoleDeletionStatusRequest.serializers,
  ...DeletionTaskStatusType.serializers,
  ...RoleUsageType.serializers,
  ...DeletionTaskFailureReasonType.serializers,
  ...GetServiceLinkedRoleDeletionStatusResponse.serializers,
  ...GetUserRequest.serializers,
  ...GetUserResponse.serializers,
  ...GetUserPolicyRequest.serializers,
  ...GetUserPolicyResponse.serializers,
  ...ListAccessKeysRequest.serializers,
  ...AccessKeyMetadata.serializers,
  ...ListAccessKeysResponse.serializers,
  ...ListAccountAliasesRequest.serializers,
  ...ListAccountAliasesResponse.serializers,
  ...ListAttachedGroupPoliciesRequest.serializers,
  ...ListAttachedGroupPoliciesResponse.serializers,
  ...ListAttachedRolePoliciesRequest.serializers,
  ...ListAttachedRolePoliciesResponse.serializers,
  ...ListAttachedUserPoliciesRequest.serializers,
  ...ListAttachedUserPoliciesResponse.serializers,
  ...PolicyUsageType.serializers,
  ...ListEntitiesForPolicyRequest.serializers,
  ...PolicyGroup.serializers,
  ...PolicyUser.serializers,
  ...PolicyRole.serializers,
  ...ListEntitiesForPolicyResponse.serializers,
  ...ListGroupPoliciesRequest.serializers,
  ...ListGroupPoliciesResponse.serializers,
  ...ListGroupsRequest.serializers,
  ...ListGroupsResponse.serializers,
  ...ListGroupsForUserRequest.serializers,
  ...ListGroupsForUserResponse.serializers,
  ...ListInstanceProfileTagsRequest.serializers,
  ...ListInstanceProfileTagsResponse.serializers,
  ...ListInstanceProfilesRequest.serializers,
  ...ListInstanceProfilesResponse.serializers,
  ...ListInstanceProfilesForRoleRequest.serializers,
  ...ListInstanceProfilesForRoleResponse.serializers,
  ...ListMfaDeviceTagsRequest.serializers,
  ...ListMfaDeviceTagsResponse.serializers,
  ...ListMfaDevicesRequest.serializers,
  ...MfaDevice.serializers,
  ...ListMfaDevicesResponse.serializers,
  ...ListOpenIdConnectProviderTagsRequest.serializers,
  ...ListOpenIdConnectProviderTagsResponse.serializers,
  ...ListOpenIdConnectProvidersRequest.serializers,
  ...OpenIdConnectProviderListEntry.serializers,
  ...ListOpenIdConnectProvidersResponse.serializers,
  ...PolicyScopeType.serializers,
  ...ListPoliciesRequest.serializers,
  ...ListPoliciesResponse.serializers,
  ...ListPoliciesGrantingServiceAccessRequest.serializers,
  ...PolicyType.serializers,
  ...PolicyGrantingServiceAccess.serializers,
  ...ListPoliciesGrantingServiceAccessEntry.serializers,
  ...ListPoliciesGrantingServiceAccessResponse.serializers,
  ...ListPolicyTagsRequest.serializers,
  ...ListPolicyTagsResponse.serializers,
  ...ListPolicyVersionsRequest.serializers,
  ...ListPolicyVersionsResponse.serializers,
  ...ListRolePoliciesRequest.serializers,
  ...ListRolePoliciesResponse.serializers,
  ...ListRoleTagsRequest.serializers,
  ...ListRoleTagsResponse.serializers,
  ...ListRolesRequest.serializers,
  ...ListRolesResponse.serializers,
  ...ListSamlProviderTagsRequest.serializers,
  ...ListSamlProviderTagsResponse.serializers,
  ...ListSamlProvidersRequest.serializers,
  ...SamlProviderListEntry.serializers,
  ...ListSamlProvidersResponse.serializers,
  ...ListSshPublicKeysRequest.serializers,
  ...SshPublicKeyMetadata.serializers,
  ...ListSshPublicKeysResponse.serializers,
  ...ListServerCertificateTagsRequest.serializers,
  ...ListServerCertificateTagsResponse.serializers,
  ...ListServerCertificatesRequest.serializers,
  ...ListServerCertificatesResponse.serializers,
  ...ListServiceSpecificCredentialsRequest.serializers,
  ...ServiceSpecificCredentialMetadata.serializers,
  ...ListServiceSpecificCredentialsResponse.serializers,
  ...ListSigningCertificatesRequest.serializers,
  ...SigningCertificate.serializers,
  ...ListSigningCertificatesResponse.serializers,
  ...ListUserPoliciesRequest.serializers,
  ...ListUserPoliciesResponse.serializers,
  ...ListUserTagsRequest.serializers,
  ...ListUserTagsResponse.serializers,
  ...ListUsersRequest.serializers,
  ...ListUsersResponse.serializers,
  ...AssignmentStatusType.serializers,
  ...ListVirtualMfaDevicesRequest.serializers,
  ...ListVirtualMfaDevicesResponse.serializers,
  ...PutGroupPolicyRequest.serializers,
  ...PutRolePermissionsBoundaryRequest.serializers,
  ...PutRolePolicyRequest.serializers,
  ...PutUserPermissionsBoundaryRequest.serializers,
  ...PutUserPolicyRequest.serializers,
  ...RemoveClientIdFromOpenIdConnectProviderRequest.serializers,
  ...RemoveRoleFromInstanceProfileRequest.serializers,
  ...RemoveUserFromGroupRequest.serializers,
  ...ResetServiceSpecificCredentialRequest.serializers,
  ...ResetServiceSpecificCredentialResponse.serializers,
  ...ResyncMfaDeviceRequest.serializers,
  ...SetDefaultPolicyVersionRequest.serializers,
  ...GlobalEndpointTokenVersion.serializers,
  ...SetSecurityTokenServicePreferencesRequest.serializers,
  ...ContextKeyTypeEnum.serializers,
  ...ContextEntry.serializers,
  ...SimulateCustomPolicyRequest.serializers,
  ...PolicyEvaluationDecisionType.serializers,
  ...PolicySourceType.serializers,
  ...Position.serializers,
  ...Statement.serializers,
  ...OrganizationsDecisionDetail.serializers,
  ...PermissionsBoundaryDecisionDetail.serializers,
  ...ResourceSpecificResult.serializers,
  ...EvaluationResult.serializers,
  ...SimulatePolicyResponse.serializers,
  ...PolicyEvaluationException.serializers,
  ...SimulatePrincipalPolicyRequest.serializers,
  ...TagInstanceProfileRequest.serializers,
  ...TagMfaDeviceRequest.serializers,
  ...TagOpenIdConnectProviderRequest.serializers,
  ...TagPolicyRequest.serializers,
  ...TagRoleRequest.serializers,
  ...TagSamlProviderRequest.serializers,
  ...TagServerCertificateRequest.serializers,
  ...TagUserRequest.serializers,
  ...UntagInstanceProfileRequest.serializers,
  ...UntagMfaDeviceRequest.serializers,
  ...UntagOpenIdConnectProviderRequest.serializers,
  ...UntagPolicyRequest.serializers,
  ...UntagRoleRequest.serializers,
  ...UntagSamlProviderRequest.serializers,
  ...UntagServerCertificateRequest.serializers,
  ...UntagUserRequest.serializers,
  ...UpdateAccessKeyRequest.serializers,
  ...UpdateAccountPasswordPolicyRequest.serializers,
  ...UpdateAssumeRolePolicyRequest.serializers,
  ...UpdateGroupRequest.serializers,
  ...UpdateLoginProfileRequest.serializers,
  ...UpdateOpenIdConnectProviderThumbprintRequest.serializers,
  ...UpdateRoleRequest.serializers,
  ...UpdateRoleResponse.serializers,
  ...UpdateRoleDescriptionRequest.serializers,
  ...UpdateRoleDescriptionResponse.serializers,
  ...UpdateSamlProviderRequest.serializers,
  ...UpdateSamlProviderResponse.serializers,
  ...UpdateSshPublicKeyRequest.serializers,
  ...UpdateServerCertificateRequest.serializers,
  ...UpdateServiceSpecificCredentialRequest.serializers,
  ...UpdateSigningCertificateRequest.serializers,
  ...UpdateUserRequest.serializers,
  ...UploadSshPublicKeyRequest.serializers,
  ...UploadSshPublicKeyResponse.serializers,
  ...DuplicateSshPublicKeyException.serializers,
  ...InvalidPublicKeyException.serializers,
  ...UploadServerCertificateRequest.serializers,
  ...UploadServerCertificateResponse.serializers,
  ...KeyPairMismatchException.serializers,
  ...MalformedCertificateException.serializers,
  ...UploadSigningCertificateRequest.serializers,
  ...UploadSigningCertificateResponse.serializers,
  ...DuplicateCertificateException.serializers,
  ...InvalidCertificateException.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltList,
    [FullType(Tag)],
  ): _i2.ListBuilder<Tag>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Role)],
  ): _i2.ListBuilder<Role>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(String)],
  ): _i2.ListBuilder<String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(EntityType)],
  ): _i2.ListBuilder<EntityType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AttachedPolicy)],
  ): _i2.ListBuilder<AttachedPolicy>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PolicyDetail)],
  ): _i2.ListBuilder<PolicyDetail>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceProfile)],
  ): _i2.ListBuilder<InstanceProfile>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PolicyVersion)],
  ): _i2.ListBuilder<PolicyVersion>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(GroupDetail)],
  ): _i2.ListBuilder<GroupDetail>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ManagedPolicyDetail)],
  ): _i2.ListBuilder<ManagedPolicyDetail>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RoleDetail)],
  ): _i2.ListBuilder<RoleDetail>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(UserDetail)],
  ): _i2.ListBuilder<UserDetail>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(SummaryKeyType),
      FullType(int),
    ],
  ): _i2.MapBuilder<SummaryKeyType, int>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(User)],
  ): _i2.ListBuilder<User>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.MapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AccessDetail)],
  ): _i2.ListBuilder<AccessDetail>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TrackedActionLastAccessed)],
  ): _i2.ListBuilder<TrackedActionLastAccessed>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ServiceLastAccessed)],
  ): _i2.ListBuilder<ServiceLastAccessed>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(EntityDetails)],
  ): _i2.ListBuilder<EntityDetails>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RoleUsageType)],
  ): _i2.ListBuilder<RoleUsageType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AccessKeyMetadata)],
  ): _i2.ListBuilder<AccessKeyMetadata>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PolicyGroup)],
  ): _i2.ListBuilder<PolicyGroup>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PolicyRole)],
  ): _i2.ListBuilder<PolicyRole>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PolicyUser)],
  ): _i2.ListBuilder<PolicyUser>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Group)],
  ): _i2.ListBuilder<Group>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(MfaDevice)],
  ): _i2.ListBuilder<MfaDevice>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(OpenIdConnectProviderListEntry)],
  ): _i2.ListBuilder<OpenIdConnectProviderListEntry>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Policy)],
  ): _i2.ListBuilder<Policy>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PolicyGrantingServiceAccess)],
  ): _i2.ListBuilder<PolicyGrantingServiceAccess>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ListPoliciesGrantingServiceAccessEntry)],
  ): _i2.ListBuilder<ListPoliciesGrantingServiceAccessEntry>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SamlProviderListEntry)],
  ): _i2.ListBuilder<SamlProviderListEntry>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SshPublicKeyMetadata)],
  ): _i2.ListBuilder<SshPublicKeyMetadata>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ServerCertificateMetadata)],
  ): _i2.ListBuilder<ServerCertificateMetadata>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ServiceSpecificCredentialMetadata)],
  ): _i2.ListBuilder<ServiceSpecificCredentialMetadata>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SigningCertificate)],
  ): _i2.ListBuilder<SigningCertificate>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VirtualMfaDevice)],
  ): _i2.ListBuilder<VirtualMfaDevice>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(EvaluationResult)],
  ): _i2.ListBuilder<EvaluationResult>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ContextEntry)],
  ): _i2.ListBuilder<ContextEntry>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(PolicyEvaluationDecisionType),
    ],
  ): _i2.MapBuilder<String, PolicyEvaluationDecisionType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Statement)],
  ): _i2.ListBuilder<Statement>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ResourceSpecificResult)],
  ): _i2.ListBuilder<ResourceSpecificResult>.new,
};
