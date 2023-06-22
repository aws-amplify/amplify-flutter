// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i336;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/access_advisor_usage_granularity_type.dart'
    as _i99;
import 'package:smoke_test/src/sdk/src/iam/model/access_detail.dart' as _i139;
import 'package:smoke_test/src/sdk/src/iam/model/access_key.dart' as _i21;
import 'package:smoke_test/src/sdk/src/iam/model/access_key_last_used.dart'
    as _i103;
import 'package:smoke_test/src/sdk/src/iam/model/access_key_metadata.dart'
    as _i180;
import 'package:smoke_test/src/sdk/src/iam/model/add_client_id_to_open_id_connect_provider_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/add_role_to_instance_profile_request.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/iam/model/add_user_to_group_request.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/model/assignment_status_type.dart'
    as _i260;
import 'package:smoke_test/src/sdk/src/iam/model/attach_group_policy_request.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/iam/model/attach_role_policy_request.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/iam/model/attach_user_policy_request.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/iam/model/attached_permissions_boundary.dart'
    as _i31;
import 'package:smoke_test/src/sdk/src/iam/model/attached_policy.dart' as _i108;
import 'package:smoke_test/src/sdk/src/iam/model/change_password_request.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/iam/model/concurrent_modification_exception.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/iam/model/context_entry.dart' as _i278;
import 'package:smoke_test/src/sdk/src/iam/model/context_key_type_enum.dart'
    as _i277;
import 'package:smoke_test/src/sdk/src/iam/model/create_access_key_request.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/iam/model/create_access_key_response.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/iam/model/create_account_alias_request.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/iam/model/create_group_request.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/iam/model/create_group_response.dart'
    as _i27;
import 'package:smoke_test/src/sdk/src/iam/model/create_instance_profile_request.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/iam/model/create_instance_profile_response.dart'
    as _i35;
import 'package:smoke_test/src/sdk/src/iam/model/create_login_profile_request.dart'
    as _i36;
import 'package:smoke_test/src/sdk/src/iam/model/create_login_profile_response.dart'
    as _i38;
import 'package:smoke_test/src/sdk/src/iam/model/create_open_id_connect_provider_request.dart'
    as _i39;
import 'package:smoke_test/src/sdk/src/iam/model/create_open_id_connect_provider_response.dart'
    as _i40;
import 'package:smoke_test/src/sdk/src/iam/model/create_policy_request.dart'
    as _i41;
import 'package:smoke_test/src/sdk/src/iam/model/create_policy_response.dart'
    as _i43;
import 'package:smoke_test/src/sdk/src/iam/model/create_policy_version_request.dart'
    as _i45;
import 'package:smoke_test/src/sdk/src/iam/model/create_policy_version_response.dart'
    as _i47;
import 'package:smoke_test/src/sdk/src/iam/model/create_role_request.dart'
    as _i48;
import 'package:smoke_test/src/sdk/src/iam/model/create_role_response.dart'
    as _i49;
import 'package:smoke_test/src/sdk/src/iam/model/create_saml_provider_request.dart'
    as _i50;
import 'package:smoke_test/src/sdk/src/iam/model/create_saml_provider_response.dart'
    as _i51;
import 'package:smoke_test/src/sdk/src/iam/model/create_service_linked_role_request.dart'
    as _i52;
import 'package:smoke_test/src/sdk/src/iam/model/create_service_linked_role_response.dart'
    as _i53;
import 'package:smoke_test/src/sdk/src/iam/model/create_service_specific_credential_request.dart'
    as _i54;
import 'package:smoke_test/src/sdk/src/iam/model/create_service_specific_credential_response.dart'
    as _i56;
import 'package:smoke_test/src/sdk/src/iam/model/create_user_request.dart'
    as _i58;
import 'package:smoke_test/src/sdk/src/iam/model/create_user_response.dart'
    as _i60;
import 'package:smoke_test/src/sdk/src/iam/model/create_virtual_mfa_device_request.dart'
    as _i61;
import 'package:smoke_test/src/sdk/src/iam/model/create_virtual_mfa_device_response.dart'
    as _i63;
import 'package:smoke_test/src/sdk/src/iam/model/credential_report_expired_exception.dart'
    as _i123;
import 'package:smoke_test/src/sdk/src/iam/model/credential_report_not_present_exception.dart'
    as _i124;
import 'package:smoke_test/src/sdk/src/iam/model/credential_report_not_ready_exception.dart'
    as _i125;
import 'package:smoke_test/src/sdk/src/iam/model/deactivate_mfa_device_request.dart'
    as _i64;
import 'package:smoke_test/src/sdk/src/iam/model/delete_access_key_request.dart'
    as _i65;
import 'package:smoke_test/src/sdk/src/iam/model/delete_account_alias_request.dart'
    as _i66;
import 'package:smoke_test/src/sdk/src/iam/model/delete_conflict_exception.dart'
    as _i68;
import 'package:smoke_test/src/sdk/src/iam/model/delete_group_policy_request.dart'
    as _i69;
import 'package:smoke_test/src/sdk/src/iam/model/delete_group_request.dart'
    as _i67;
import 'package:smoke_test/src/sdk/src/iam/model/delete_instance_profile_request.dart'
    as _i70;
import 'package:smoke_test/src/sdk/src/iam/model/delete_login_profile_request.dart'
    as _i71;
import 'package:smoke_test/src/sdk/src/iam/model/delete_open_id_connect_provider_request.dart'
    as _i72;
import 'package:smoke_test/src/sdk/src/iam/model/delete_policy_request.dart'
    as _i73;
import 'package:smoke_test/src/sdk/src/iam/model/delete_policy_version_request.dart'
    as _i74;
import 'package:smoke_test/src/sdk/src/iam/model/delete_role_permissions_boundary_request.dart'
    as _i76;
import 'package:smoke_test/src/sdk/src/iam/model/delete_role_policy_request.dart'
    as _i77;
import 'package:smoke_test/src/sdk/src/iam/model/delete_role_request.dart'
    as _i75;
import 'package:smoke_test/src/sdk/src/iam/model/delete_saml_provider_request.dart'
    as _i78;
import 'package:smoke_test/src/sdk/src/iam/model/delete_server_certificate_request.dart'
    as _i80;
import 'package:smoke_test/src/sdk/src/iam/model/delete_service_linked_role_request.dart'
    as _i81;
import 'package:smoke_test/src/sdk/src/iam/model/delete_service_linked_role_response.dart'
    as _i82;
import 'package:smoke_test/src/sdk/src/iam/model/delete_service_specific_credential_request.dart'
    as _i83;
import 'package:smoke_test/src/sdk/src/iam/model/delete_signing_certificate_request.dart'
    as _i84;
import 'package:smoke_test/src/sdk/src/iam/model/delete_ssh_public_key_request.dart'
    as _i79;
import 'package:smoke_test/src/sdk/src/iam/model/delete_user_permissions_boundary_request.dart'
    as _i86;
import 'package:smoke_test/src/sdk/src/iam/model/delete_user_policy_request.dart'
    as _i87;
import 'package:smoke_test/src/sdk/src/iam/model/delete_user_request.dart'
    as _i85;
import 'package:smoke_test/src/sdk/src/iam/model/delete_virtual_mfa_device_request.dart'
    as _i88;
import 'package:smoke_test/src/sdk/src/iam/model/deletion_task_failure_reason_type.dart'
    as _i173;
import 'package:smoke_test/src/sdk/src/iam/model/deletion_task_status_type.dart'
    as _i171;
import 'package:smoke_test/src/sdk/src/iam/model/detach_group_policy_request.dart'
    as _i89;
import 'package:smoke_test/src/sdk/src/iam/model/detach_role_policy_request.dart'
    as _i90;
import 'package:smoke_test/src/sdk/src/iam/model/detach_user_policy_request.dart'
    as _i91;
import 'package:smoke_test/src/sdk/src/iam/model/duplicate_certificate_exception.dart'
    as _i334;
import 'package:smoke_test/src/sdk/src/iam/model/duplicate_ssh_public_key_exception.dart'
    as _i326;
import 'package:smoke_test/src/sdk/src/iam/model/enable_mfa_device_request.dart'
    as _i92;
import 'package:smoke_test/src/sdk/src/iam/model/encoding_type.dart' as _i152;
import 'package:smoke_test/src/sdk/src/iam/model/entity_already_exists_exception.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/iam/model/entity_details.dart' as _i168;
import 'package:smoke_test/src/sdk/src/iam/model/entity_info.dart' as _i167;
import 'package:smoke_test/src/sdk/src/iam/model/entity_temporarily_unmodifiable_exception.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/iam/model/entity_type.dart' as _i105;
import 'package:smoke_test/src/sdk/src/iam/model/error_details.dart' as _i140;
import 'package:smoke_test/src/sdk/src/iam/model/evaluation_result.dart'
    as _i287;
import 'package:smoke_test/src/sdk/src/iam/model/generate_credential_report_response.dart'
    as _i95;
import 'package:smoke_test/src/sdk/src/iam/model/generate_organizations_access_report_request.dart'
    as _i96;
import 'package:smoke_test/src/sdk/src/iam/model/generate_organizations_access_report_response.dart'
    as _i97;
import 'package:smoke_test/src/sdk/src/iam/model/generate_service_last_accessed_details_request.dart'
    as _i100;
import 'package:smoke_test/src/sdk/src/iam/model/generate_service_last_accessed_details_response.dart'
    as _i101;
import 'package:smoke_test/src/sdk/src/iam/model/get_access_key_last_used_request.dart'
    as _i102;
import 'package:smoke_test/src/sdk/src/iam/model/get_access_key_last_used_response.dart'
    as _i104;
import 'package:smoke_test/src/sdk/src/iam/model/get_account_authorization_details_request.dart'
    as _i106;
import 'package:smoke_test/src/sdk/src/iam/model/get_account_authorization_details_response.dart'
    as _i113;
import 'package:smoke_test/src/sdk/src/iam/model/get_account_password_policy_response.dart'
    as _i115;
import 'package:smoke_test/src/sdk/src/iam/model/get_account_summary_response.dart'
    as _i117;
import 'package:smoke_test/src/sdk/src/iam/model/get_context_keys_for_custom_policy_request.dart'
    as _i118;
import 'package:smoke_test/src/sdk/src/iam/model/get_context_keys_for_policy_response.dart'
    as _i119;
import 'package:smoke_test/src/sdk/src/iam/model/get_context_keys_for_principal_policy_request.dart'
    as _i120;
import 'package:smoke_test/src/sdk/src/iam/model/get_credential_report_response.dart'
    as _i122;
import 'package:smoke_test/src/sdk/src/iam/model/get_group_policy_request.dart'
    as _i128;
import 'package:smoke_test/src/sdk/src/iam/model/get_group_policy_response.dart'
    as _i129;
import 'package:smoke_test/src/sdk/src/iam/model/get_group_request.dart'
    as _i126;
import 'package:smoke_test/src/sdk/src/iam/model/get_group_response.dart'
    as _i127;
import 'package:smoke_test/src/sdk/src/iam/model/get_instance_profile_request.dart'
    as _i130;
import 'package:smoke_test/src/sdk/src/iam/model/get_instance_profile_response.dart'
    as _i131;
import 'package:smoke_test/src/sdk/src/iam/model/get_login_profile_request.dart'
    as _i132;
import 'package:smoke_test/src/sdk/src/iam/model/get_login_profile_response.dart'
    as _i133;
import 'package:smoke_test/src/sdk/src/iam/model/get_open_id_connect_provider_request.dart'
    as _i134;
import 'package:smoke_test/src/sdk/src/iam/model/get_open_id_connect_provider_response.dart'
    as _i135;
import 'package:smoke_test/src/sdk/src/iam/model/get_organizations_access_report_request.dart'
    as _i137;
import 'package:smoke_test/src/sdk/src/iam/model/get_organizations_access_report_response.dart'
    as _i141;
import 'package:smoke_test/src/sdk/src/iam/model/get_policy_request.dart'
    as _i142;
import 'package:smoke_test/src/sdk/src/iam/model/get_policy_response.dart'
    as _i143;
import 'package:smoke_test/src/sdk/src/iam/model/get_policy_version_request.dart'
    as _i144;
import 'package:smoke_test/src/sdk/src/iam/model/get_policy_version_response.dart'
    as _i145;
import 'package:smoke_test/src/sdk/src/iam/model/get_role_policy_request.dart'
    as _i148;
import 'package:smoke_test/src/sdk/src/iam/model/get_role_policy_response.dart'
    as _i149;
import 'package:smoke_test/src/sdk/src/iam/model/get_role_request.dart'
    as _i146;
import 'package:smoke_test/src/sdk/src/iam/model/get_role_response.dart'
    as _i147;
import 'package:smoke_test/src/sdk/src/iam/model/get_saml_provider_request.dart'
    as _i150;
import 'package:smoke_test/src/sdk/src/iam/model/get_saml_provider_response.dart'
    as _i151;
import 'package:smoke_test/src/sdk/src/iam/model/get_server_certificate_request.dart'
    as _i157;
import 'package:smoke_test/src/sdk/src/iam/model/get_server_certificate_response.dart'
    as _i160;
import 'package:smoke_test/src/sdk/src/iam/model/get_service_last_accessed_details_request.dart'
    as _i161;
import 'package:smoke_test/src/sdk/src/iam/model/get_service_last_accessed_details_response.dart'
    as _i164;
import 'package:smoke_test/src/sdk/src/iam/model/get_service_last_accessed_details_with_entities_request.dart'
    as _i165;
import 'package:smoke_test/src/sdk/src/iam/model/get_service_last_accessed_details_with_entities_response.dart'
    as _i169;
import 'package:smoke_test/src/sdk/src/iam/model/get_service_linked_role_deletion_status_request.dart'
    as _i170;
import 'package:smoke_test/src/sdk/src/iam/model/get_service_linked_role_deletion_status_response.dart'
    as _i174;
import 'package:smoke_test/src/sdk/src/iam/model/get_ssh_public_key_request.dart'
    as _i153;
import 'package:smoke_test/src/sdk/src/iam/model/get_ssh_public_key_response.dart'
    as _i155;
import 'package:smoke_test/src/sdk/src/iam/model/get_user_policy_request.dart'
    as _i177;
import 'package:smoke_test/src/sdk/src/iam/model/get_user_policy_response.dart'
    as _i178;
import 'package:smoke_test/src/sdk/src/iam/model/get_user_request.dart'
    as _i175;
import 'package:smoke_test/src/sdk/src/iam/model/get_user_response.dart'
    as _i176;
import 'package:smoke_test/src/sdk/src/iam/model/global_endpoint_token_version.dart'
    as _i275;
import 'package:smoke_test/src/sdk/src/iam/model/group.dart' as _i26;
import 'package:smoke_test/src/sdk/src/iam/model/group_detail.dart' as _i110;
import 'package:smoke_test/src/sdk/src/iam/model/instance_profile.dart' as _i34;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_authentication_code_exception.dart'
    as _i93;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_certificate_exception.dart'
    as _i335;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_input_exception.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_public_key_exception.dart'
    as _i327;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_user_type_exception.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/iam/model/job_status_type.dart' as _i138;
import 'package:smoke_test/src/sdk/src/iam/model/key_pair_mismatch_exception.dart'
    as _i330;
import 'package:smoke_test/src/sdk/src/iam/model/limit_exceeded_exception.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/list_access_keys_request.dart'
    as _i179;
import 'package:smoke_test/src/sdk/src/iam/model/list_access_keys_response.dart'
    as _i181;
import 'package:smoke_test/src/sdk/src/iam/model/list_account_aliases_request.dart'
    as _i182;
import 'package:smoke_test/src/sdk/src/iam/model/list_account_aliases_response.dart'
    as _i183;
import 'package:smoke_test/src/sdk/src/iam/model/list_attached_group_policies_request.dart'
    as _i184;
import 'package:smoke_test/src/sdk/src/iam/model/list_attached_group_policies_response.dart'
    as _i185;
import 'package:smoke_test/src/sdk/src/iam/model/list_attached_role_policies_request.dart'
    as _i186;
import 'package:smoke_test/src/sdk/src/iam/model/list_attached_role_policies_response.dart'
    as _i187;
import 'package:smoke_test/src/sdk/src/iam/model/list_attached_user_policies_request.dart'
    as _i188;
import 'package:smoke_test/src/sdk/src/iam/model/list_attached_user_policies_response.dart'
    as _i189;
import 'package:smoke_test/src/sdk/src/iam/model/list_entities_for_policy_request.dart'
    as _i191;
import 'package:smoke_test/src/sdk/src/iam/model/list_entities_for_policy_response.dart'
    as _i195;
import 'package:smoke_test/src/sdk/src/iam/model/list_group_policies_request.dart'
    as _i196;
import 'package:smoke_test/src/sdk/src/iam/model/list_group_policies_response.dart'
    as _i197;
import 'package:smoke_test/src/sdk/src/iam/model/list_groups_for_user_request.dart'
    as _i200;
import 'package:smoke_test/src/sdk/src/iam/model/list_groups_for_user_response.dart'
    as _i201;
import 'package:smoke_test/src/sdk/src/iam/model/list_groups_request.dart'
    as _i198;
import 'package:smoke_test/src/sdk/src/iam/model/list_groups_response.dart'
    as _i199;
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profile_tags_request.dart'
    as _i202;
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profile_tags_response.dart'
    as _i203;
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profiles_for_role_request.dart'
    as _i206;
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profiles_for_role_response.dart'
    as _i207;
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profiles_request.dart'
    as _i204;
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profiles_response.dart'
    as _i205;
import 'package:smoke_test/src/sdk/src/iam/model/list_mfa_device_tags_request.dart'
    as _i208;
import 'package:smoke_test/src/sdk/src/iam/model/list_mfa_device_tags_response.dart'
    as _i209;
import 'package:smoke_test/src/sdk/src/iam/model/list_mfa_devices_request.dart'
    as _i210;
import 'package:smoke_test/src/sdk/src/iam/model/list_mfa_devices_response.dart'
    as _i212;
import 'package:smoke_test/src/sdk/src/iam/model/list_open_id_connect_provider_tags_request.dart'
    as _i213;
import 'package:smoke_test/src/sdk/src/iam/model/list_open_id_connect_provider_tags_response.dart'
    as _i214;
import 'package:smoke_test/src/sdk/src/iam/model/list_open_id_connect_providers_request.dart'
    as _i215;
import 'package:smoke_test/src/sdk/src/iam/model/list_open_id_connect_providers_response.dart'
    as _i217;
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_granting_service_access_entry.dart'
    as _i224;
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_granting_service_access_request.dart'
    as _i221;
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_granting_service_access_response.dart'
    as _i225;
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_request.dart'
    as _i219;
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_response.dart'
    as _i220;
import 'package:smoke_test/src/sdk/src/iam/model/list_policy_tags_request.dart'
    as _i226;
import 'package:smoke_test/src/sdk/src/iam/model/list_policy_tags_response.dart'
    as _i227;
import 'package:smoke_test/src/sdk/src/iam/model/list_policy_versions_request.dart'
    as _i228;
import 'package:smoke_test/src/sdk/src/iam/model/list_policy_versions_response.dart'
    as _i229;
import 'package:smoke_test/src/sdk/src/iam/model/list_role_policies_request.dart'
    as _i230;
import 'package:smoke_test/src/sdk/src/iam/model/list_role_policies_response.dart'
    as _i231;
import 'package:smoke_test/src/sdk/src/iam/model/list_role_tags_request.dart'
    as _i232;
import 'package:smoke_test/src/sdk/src/iam/model/list_role_tags_response.dart'
    as _i233;
import 'package:smoke_test/src/sdk/src/iam/model/list_roles_request.dart'
    as _i234;
import 'package:smoke_test/src/sdk/src/iam/model/list_roles_response.dart'
    as _i235;
import 'package:smoke_test/src/sdk/src/iam/model/list_saml_provider_tags_request.dart'
    as _i236;
import 'package:smoke_test/src/sdk/src/iam/model/list_saml_provider_tags_response.dart'
    as _i237;
import 'package:smoke_test/src/sdk/src/iam/model/list_saml_providers_request.dart'
    as _i238;
import 'package:smoke_test/src/sdk/src/iam/model/list_saml_providers_response.dart'
    as _i240;
import 'package:smoke_test/src/sdk/src/iam/model/list_server_certificate_tags_request.dart'
    as _i244;
import 'package:smoke_test/src/sdk/src/iam/model/list_server_certificate_tags_response.dart'
    as _i245;
import 'package:smoke_test/src/sdk/src/iam/model/list_server_certificates_request.dart'
    as _i246;
import 'package:smoke_test/src/sdk/src/iam/model/list_server_certificates_response.dart'
    as _i247;
import 'package:smoke_test/src/sdk/src/iam/model/list_service_specific_credentials_request.dart'
    as _i248;
import 'package:smoke_test/src/sdk/src/iam/model/list_service_specific_credentials_response.dart'
    as _i250;
import 'package:smoke_test/src/sdk/src/iam/model/list_signing_certificates_request.dart'
    as _i251;
import 'package:smoke_test/src/sdk/src/iam/model/list_signing_certificates_response.dart'
    as _i253;
import 'package:smoke_test/src/sdk/src/iam/model/list_ssh_public_keys_request.dart'
    as _i241;
import 'package:smoke_test/src/sdk/src/iam/model/list_ssh_public_keys_response.dart'
    as _i243;
import 'package:smoke_test/src/sdk/src/iam/model/list_user_policies_request.dart'
    as _i254;
import 'package:smoke_test/src/sdk/src/iam/model/list_user_policies_response.dart'
    as _i255;
import 'package:smoke_test/src/sdk/src/iam/model/list_user_tags_request.dart'
    as _i256;
import 'package:smoke_test/src/sdk/src/iam/model/list_user_tags_response.dart'
    as _i257;
import 'package:smoke_test/src/sdk/src/iam/model/list_users_request.dart'
    as _i258;
import 'package:smoke_test/src/sdk/src/iam/model/list_users_response.dart'
    as _i259;
import 'package:smoke_test/src/sdk/src/iam/model/list_virtual_mfa_devices_request.dart'
    as _i261;
import 'package:smoke_test/src/sdk/src/iam/model/list_virtual_mfa_devices_response.dart'
    as _i262;
import 'package:smoke_test/src/sdk/src/iam/model/login_profile.dart' as _i37;
import 'package:smoke_test/src/sdk/src/iam/model/malformed_certificate_exception.dart'
    as _i331;
import 'package:smoke_test/src/sdk/src/iam/model/malformed_policy_document_exception.dart'
    as _i44;
import 'package:smoke_test/src/sdk/src/iam/model/managed_policy_detail.dart'
    as _i112;
import 'package:smoke_test/src/sdk/src/iam/model/mfa_device.dart' as _i211;
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/iam/model/open_id_connect_provider_list_entry.dart'
    as _i216;
import 'package:smoke_test/src/sdk/src/iam/model/organizations_decision_detail.dart'
    as _i284;
import 'package:smoke_test/src/sdk/src/iam/model/password_policy.dart' as _i114;
import 'package:smoke_test/src/sdk/src/iam/model/password_policy_violation_exception.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/iam/model/permissions_boundary_attachment_type.dart'
    as _i30;
import 'package:smoke_test/src/sdk/src/iam/model/permissions_boundary_decision_detail.dart'
    as _i285;
import 'package:smoke_test/src/sdk/src/iam/model/policy.dart' as _i42;
import 'package:smoke_test/src/sdk/src/iam/model/policy_detail.dart' as _i107;
import 'package:smoke_test/src/sdk/src/iam/model/policy_evaluation_decision_type.dart'
    as _i280;
import 'package:smoke_test/src/sdk/src/iam/model/policy_evaluation_exception.dart'
    as _i289;
import 'package:smoke_test/src/sdk/src/iam/model/policy_granting_service_access.dart'
    as _i223;
import 'package:smoke_test/src/sdk/src/iam/model/policy_group.dart' as _i192;
import 'package:smoke_test/src/sdk/src/iam/model/policy_not_attachable_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/iam/model/policy_owner_entity_type.dart'
    as _i166;
import 'package:smoke_test/src/sdk/src/iam/model/policy_role.dart' as _i194;
import 'package:smoke_test/src/sdk/src/iam/model/policy_scope_type.dart'
    as _i218;
import 'package:smoke_test/src/sdk/src/iam/model/policy_source_type.dart'
    as _i281;
import 'package:smoke_test/src/sdk/src/iam/model/policy_type.dart' as _i222;
import 'package:smoke_test/src/sdk/src/iam/model/policy_usage_type.dart'
    as _i190;
import 'package:smoke_test/src/sdk/src/iam/model/policy_user.dart' as _i193;
import 'package:smoke_test/src/sdk/src/iam/model/policy_version.dart' as _i46;
import 'package:smoke_test/src/sdk/src/iam/model/position.dart' as _i282;
import 'package:smoke_test/src/sdk/src/iam/model/put_group_policy_request.dart'
    as _i263;
import 'package:smoke_test/src/sdk/src/iam/model/put_role_permissions_boundary_request.dart'
    as _i264;
import 'package:smoke_test/src/sdk/src/iam/model/put_role_policy_request.dart'
    as _i265;
import 'package:smoke_test/src/sdk/src/iam/model/put_user_permissions_boundary_request.dart'
    as _i266;
import 'package:smoke_test/src/sdk/src/iam/model/put_user_policy_request.dart'
    as _i267;
import 'package:smoke_test/src/sdk/src/iam/model/remove_client_id_from_open_id_connect_provider_request.dart'
    as _i268;
import 'package:smoke_test/src/sdk/src/iam/model/remove_role_from_instance_profile_request.dart'
    as _i269;
import 'package:smoke_test/src/sdk/src/iam/model/remove_user_from_group_request.dart'
    as _i270;
import 'package:smoke_test/src/sdk/src/iam/model/report_format_type.dart'
    as _i121;
import 'package:smoke_test/src/sdk/src/iam/model/report_generation_limit_exceeded_exception.dart'
    as _i98;
import 'package:smoke_test/src/sdk/src/iam/model/report_state_type.dart'
    as _i94;
import 'package:smoke_test/src/sdk/src/iam/model/reset_service_specific_credential_request.dart'
    as _i271;
import 'package:smoke_test/src/sdk/src/iam/model/reset_service_specific_credential_response.dart'
    as _i272;
import 'package:smoke_test/src/sdk/src/iam/model/resource_specific_result.dart'
    as _i286;
import 'package:smoke_test/src/sdk/src/iam/model/resync_mfa_device_request.dart'
    as _i273;
import 'package:smoke_test/src/sdk/src/iam/model/role.dart' as _i33;
import 'package:smoke_test/src/sdk/src/iam/model/role_detail.dart' as _i111;
import 'package:smoke_test/src/sdk/src/iam/model/role_last_used.dart' as _i32;
import 'package:smoke_test/src/sdk/src/iam/model/role_usage_type.dart' as _i172;
import 'package:smoke_test/src/sdk/src/iam/model/saml_provider_list_entry.dart'
    as _i239;
import 'package:smoke_test/src/sdk/src/iam/model/server_certificate.dart'
    as _i159;
import 'package:smoke_test/src/sdk/src/iam/model/server_certificate_metadata.dart'
    as _i158;
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/service_last_accessed.dart'
    as _i163;
import 'package:smoke_test/src/sdk/src/iam/model/service_not_supported_exception.dart'
    as _i57;
import 'package:smoke_test/src/sdk/src/iam/model/service_specific_credential.dart'
    as _i55;
import 'package:smoke_test/src/sdk/src/iam/model/service_specific_credential_metadata.dart'
    as _i249;
import 'package:smoke_test/src/sdk/src/iam/model/set_default_policy_version_request.dart'
    as _i274;
import 'package:smoke_test/src/sdk/src/iam/model/set_security_token_service_preferences_request.dart'
    as _i276;
import 'package:smoke_test/src/sdk/src/iam/model/signing_certificate.dart'
    as _i252;
import 'package:smoke_test/src/sdk/src/iam/model/simulate_custom_policy_request.dart'
    as _i279;
import 'package:smoke_test/src/sdk/src/iam/model/simulate_policy_response.dart'
    as _i288;
import 'package:smoke_test/src/sdk/src/iam/model/simulate_principal_policy_request.dart'
    as _i290;
import 'package:smoke_test/src/sdk/src/iam/model/sort_key_type.dart' as _i136;
import 'package:smoke_test/src/sdk/src/iam/model/ssh_public_key.dart' as _i154;
import 'package:smoke_test/src/sdk/src/iam/model/ssh_public_key_metadata.dart'
    as _i242;
import 'package:smoke_test/src/sdk/src/iam/model/statement.dart' as _i283;
import 'package:smoke_test/src/sdk/src/iam/model/status_type.dart' as _i20;
import 'package:smoke_test/src/sdk/src/iam/model/summary_key_type.dart'
    as _i116;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i28;
import 'package:smoke_test/src/sdk/src/iam/model/tag_instance_profile_request.dart'
    as _i291;
import 'package:smoke_test/src/sdk/src/iam/model/tag_mfa_device_request.dart'
    as _i292;
import 'package:smoke_test/src/sdk/src/iam/model/tag_open_id_connect_provider_request.dart'
    as _i293;
import 'package:smoke_test/src/sdk/src/iam/model/tag_policy_request.dart'
    as _i294;
import 'package:smoke_test/src/sdk/src/iam/model/tag_role_request.dart'
    as _i295;
import 'package:smoke_test/src/sdk/src/iam/model/tag_saml_provider_request.dart'
    as _i296;
import 'package:smoke_test/src/sdk/src/iam/model/tag_server_certificate_request.dart'
    as _i297;
import 'package:smoke_test/src/sdk/src/iam/model/tag_user_request.dart'
    as _i298;
import 'package:smoke_test/src/sdk/src/iam/model/tracked_action_last_accessed.dart'
    as _i162;
import 'package:smoke_test/src/sdk/src/iam/model/unmodifiable_entity_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/iam/model/unrecognized_public_key_encoding_exception.dart'
    as _i156;
import 'package:smoke_test/src/sdk/src/iam/model/untag_instance_profile_request.dart'
    as _i299;
import 'package:smoke_test/src/sdk/src/iam/model/untag_mfa_device_request.dart'
    as _i300;
import 'package:smoke_test/src/sdk/src/iam/model/untag_open_id_connect_provider_request.dart'
    as _i301;
import 'package:smoke_test/src/sdk/src/iam/model/untag_policy_request.dart'
    as _i302;
import 'package:smoke_test/src/sdk/src/iam/model/untag_role_request.dart'
    as _i303;
import 'package:smoke_test/src/sdk/src/iam/model/untag_saml_provider_request.dart'
    as _i304;
import 'package:smoke_test/src/sdk/src/iam/model/untag_server_certificate_request.dart'
    as _i305;
import 'package:smoke_test/src/sdk/src/iam/model/untag_user_request.dart'
    as _i306;
import 'package:smoke_test/src/sdk/src/iam/model/update_access_key_request.dart'
    as _i307;
import 'package:smoke_test/src/sdk/src/iam/model/update_account_password_policy_request.dart'
    as _i308;
import 'package:smoke_test/src/sdk/src/iam/model/update_assume_role_policy_request.dart'
    as _i309;
import 'package:smoke_test/src/sdk/src/iam/model/update_group_request.dart'
    as _i310;
import 'package:smoke_test/src/sdk/src/iam/model/update_login_profile_request.dart'
    as _i311;
import 'package:smoke_test/src/sdk/src/iam/model/update_open_id_connect_provider_thumbprint_request.dart'
    as _i312;
import 'package:smoke_test/src/sdk/src/iam/model/update_role_description_request.dart'
    as _i315;
import 'package:smoke_test/src/sdk/src/iam/model/update_role_description_response.dart'
    as _i316;
import 'package:smoke_test/src/sdk/src/iam/model/update_role_request.dart'
    as _i313;
import 'package:smoke_test/src/sdk/src/iam/model/update_role_response.dart'
    as _i314;
import 'package:smoke_test/src/sdk/src/iam/model/update_saml_provider_request.dart'
    as _i317;
import 'package:smoke_test/src/sdk/src/iam/model/update_saml_provider_response.dart'
    as _i318;
import 'package:smoke_test/src/sdk/src/iam/model/update_server_certificate_request.dart'
    as _i320;
import 'package:smoke_test/src/sdk/src/iam/model/update_service_specific_credential_request.dart'
    as _i321;
import 'package:smoke_test/src/sdk/src/iam/model/update_signing_certificate_request.dart'
    as _i322;
import 'package:smoke_test/src/sdk/src/iam/model/update_ssh_public_key_request.dart'
    as _i319;
import 'package:smoke_test/src/sdk/src/iam/model/update_user_request.dart'
    as _i323;
import 'package:smoke_test/src/sdk/src/iam/model/upload_server_certificate_request.dart'
    as _i328;
import 'package:smoke_test/src/sdk/src/iam/model/upload_server_certificate_response.dart'
    as _i329;
import 'package:smoke_test/src/sdk/src/iam/model/upload_signing_certificate_request.dart'
    as _i332;
import 'package:smoke_test/src/sdk/src/iam/model/upload_signing_certificate_response.dart'
    as _i333;
import 'package:smoke_test/src/sdk/src/iam/model/upload_ssh_public_key_request.dart'
    as _i324;
import 'package:smoke_test/src/sdk/src/iam/model/upload_ssh_public_key_response.dart'
    as _i325;
import 'package:smoke_test/src/sdk/src/iam/model/user.dart' as _i59;
import 'package:smoke_test/src/sdk/src/iam/model/user_detail.dart' as _i109;
import 'package:smoke_test/src/sdk/src/iam/model/virtual_mfa_device.dart'
    as _i62;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.AddClientIdToOpenIdConnectProviderRequest.serializers,
  ..._i3.InvalidInputException.serializers,
  ..._i4.LimitExceededException.serializers,
  ..._i5.NoSuchEntityException.serializers,
  ..._i6.ServiceFailureException.serializers,
  ..._i7.AddRoleToInstanceProfileRequest.serializers,
  ..._i8.EntityAlreadyExistsException.serializers,
  ..._i9.UnmodifiableEntityException.serializers,
  ..._i10.AddUserToGroupRequest.serializers,
  ..._i11.AttachGroupPolicyRequest.serializers,
  ..._i12.PolicyNotAttachableException.serializers,
  ..._i13.AttachRolePolicyRequest.serializers,
  ..._i14.AttachUserPolicyRequest.serializers,
  ..._i15.ChangePasswordRequest.serializers,
  ..._i16.EntityTemporarilyUnmodifiableException.serializers,
  ..._i17.InvalidUserTypeException.serializers,
  ..._i18.PasswordPolicyViolationException.serializers,
  ..._i19.CreateAccessKeyRequest.serializers,
  ..._i20.StatusType.serializers,
  ..._i21.AccessKey.serializers,
  ..._i22.CreateAccessKeyResponse.serializers,
  ..._i23.CreateAccountAliasRequest.serializers,
  ..._i24.ConcurrentModificationException.serializers,
  ..._i25.CreateGroupRequest.serializers,
  ..._i26.Group.serializers,
  ..._i27.CreateGroupResponse.serializers,
  ..._i28.Tag.serializers,
  ..._i29.CreateInstanceProfileRequest.serializers,
  ..._i30.PermissionsBoundaryAttachmentType.serializers,
  ..._i31.AttachedPermissionsBoundary.serializers,
  ..._i32.RoleLastUsed.serializers,
  ..._i33.Role.serializers,
  ..._i34.InstanceProfile.serializers,
  ..._i35.CreateInstanceProfileResponse.serializers,
  ..._i36.CreateLoginProfileRequest.serializers,
  ..._i37.LoginProfile.serializers,
  ..._i38.CreateLoginProfileResponse.serializers,
  ..._i39.CreateOpenIdConnectProviderRequest.serializers,
  ..._i40.CreateOpenIdConnectProviderResponse.serializers,
  ..._i41.CreatePolicyRequest.serializers,
  ..._i42.Policy.serializers,
  ..._i43.CreatePolicyResponse.serializers,
  ..._i44.MalformedPolicyDocumentException.serializers,
  ..._i45.CreatePolicyVersionRequest.serializers,
  ..._i46.PolicyVersion.serializers,
  ..._i47.CreatePolicyVersionResponse.serializers,
  ..._i48.CreateRoleRequest.serializers,
  ..._i49.CreateRoleResponse.serializers,
  ..._i50.CreateSamlProviderRequest.serializers,
  ..._i51.CreateSamlProviderResponse.serializers,
  ..._i52.CreateServiceLinkedRoleRequest.serializers,
  ..._i53.CreateServiceLinkedRoleResponse.serializers,
  ..._i54.CreateServiceSpecificCredentialRequest.serializers,
  ..._i55.ServiceSpecificCredential.serializers,
  ..._i56.CreateServiceSpecificCredentialResponse.serializers,
  ..._i57.ServiceNotSupportedException.serializers,
  ..._i58.CreateUserRequest.serializers,
  ..._i59.User.serializers,
  ..._i60.CreateUserResponse.serializers,
  ..._i61.CreateVirtualMfaDeviceRequest.serializers,
  ..._i62.VirtualMfaDevice.serializers,
  ..._i63.CreateVirtualMfaDeviceResponse.serializers,
  ..._i64.DeactivateMfaDeviceRequest.serializers,
  ..._i65.DeleteAccessKeyRequest.serializers,
  ..._i66.DeleteAccountAliasRequest.serializers,
  ..._i67.DeleteGroupRequest.serializers,
  ..._i68.DeleteConflictException.serializers,
  ..._i69.DeleteGroupPolicyRequest.serializers,
  ..._i70.DeleteInstanceProfileRequest.serializers,
  ..._i71.DeleteLoginProfileRequest.serializers,
  ..._i72.DeleteOpenIdConnectProviderRequest.serializers,
  ..._i73.DeletePolicyRequest.serializers,
  ..._i74.DeletePolicyVersionRequest.serializers,
  ..._i75.DeleteRoleRequest.serializers,
  ..._i76.DeleteRolePermissionsBoundaryRequest.serializers,
  ..._i77.DeleteRolePolicyRequest.serializers,
  ..._i78.DeleteSamlProviderRequest.serializers,
  ..._i79.DeleteSshPublicKeyRequest.serializers,
  ..._i80.DeleteServerCertificateRequest.serializers,
  ..._i81.DeleteServiceLinkedRoleRequest.serializers,
  ..._i82.DeleteServiceLinkedRoleResponse.serializers,
  ..._i83.DeleteServiceSpecificCredentialRequest.serializers,
  ..._i84.DeleteSigningCertificateRequest.serializers,
  ..._i85.DeleteUserRequest.serializers,
  ..._i86.DeleteUserPermissionsBoundaryRequest.serializers,
  ..._i87.DeleteUserPolicyRequest.serializers,
  ..._i88.DeleteVirtualMfaDeviceRequest.serializers,
  ..._i89.DetachGroupPolicyRequest.serializers,
  ..._i90.DetachRolePolicyRequest.serializers,
  ..._i91.DetachUserPolicyRequest.serializers,
  ..._i92.EnableMfaDeviceRequest.serializers,
  ..._i93.InvalidAuthenticationCodeException.serializers,
  ..._i94.ReportStateType.serializers,
  ..._i95.GenerateCredentialReportResponse.serializers,
  ..._i96.GenerateOrganizationsAccessReportRequest.serializers,
  ..._i97.GenerateOrganizationsAccessReportResponse.serializers,
  ..._i98.ReportGenerationLimitExceededException.serializers,
  ..._i99.AccessAdvisorUsageGranularityType.serializers,
  ..._i100.GenerateServiceLastAccessedDetailsRequest.serializers,
  ..._i101.GenerateServiceLastAccessedDetailsResponse.serializers,
  ..._i102.GetAccessKeyLastUsedRequest.serializers,
  ..._i103.AccessKeyLastUsed.serializers,
  ..._i104.GetAccessKeyLastUsedResponse.serializers,
  ..._i105.EntityType.serializers,
  ..._i106.GetAccountAuthorizationDetailsRequest.serializers,
  ..._i107.PolicyDetail.serializers,
  ..._i108.AttachedPolicy.serializers,
  ..._i109.UserDetail.serializers,
  ..._i110.GroupDetail.serializers,
  ..._i111.RoleDetail.serializers,
  ..._i112.ManagedPolicyDetail.serializers,
  ..._i113.GetAccountAuthorizationDetailsResponse.serializers,
  ..._i114.PasswordPolicy.serializers,
  ..._i115.GetAccountPasswordPolicyResponse.serializers,
  ..._i116.SummaryKeyType.serializers,
  ..._i117.GetAccountSummaryResponse.serializers,
  ..._i118.GetContextKeysForCustomPolicyRequest.serializers,
  ..._i119.GetContextKeysForPolicyResponse.serializers,
  ..._i120.GetContextKeysForPrincipalPolicyRequest.serializers,
  ..._i121.ReportFormatType.serializers,
  ..._i122.GetCredentialReportResponse.serializers,
  ..._i123.CredentialReportExpiredException.serializers,
  ..._i124.CredentialReportNotPresentException.serializers,
  ..._i125.CredentialReportNotReadyException.serializers,
  ..._i126.GetGroupRequest.serializers,
  ..._i127.GetGroupResponse.serializers,
  ..._i128.GetGroupPolicyRequest.serializers,
  ..._i129.GetGroupPolicyResponse.serializers,
  ..._i130.GetInstanceProfileRequest.serializers,
  ..._i131.GetInstanceProfileResponse.serializers,
  ..._i132.GetLoginProfileRequest.serializers,
  ..._i133.GetLoginProfileResponse.serializers,
  ..._i134.GetOpenIdConnectProviderRequest.serializers,
  ..._i135.GetOpenIdConnectProviderResponse.serializers,
  ..._i136.SortKeyType.serializers,
  ..._i137.GetOrganizationsAccessReportRequest.serializers,
  ..._i138.JobStatusType.serializers,
  ..._i139.AccessDetail.serializers,
  ..._i140.ErrorDetails.serializers,
  ..._i141.GetOrganizationsAccessReportResponse.serializers,
  ..._i142.GetPolicyRequest.serializers,
  ..._i143.GetPolicyResponse.serializers,
  ..._i144.GetPolicyVersionRequest.serializers,
  ..._i145.GetPolicyVersionResponse.serializers,
  ..._i146.GetRoleRequest.serializers,
  ..._i147.GetRoleResponse.serializers,
  ..._i148.GetRolePolicyRequest.serializers,
  ..._i149.GetRolePolicyResponse.serializers,
  ..._i150.GetSamlProviderRequest.serializers,
  ..._i151.GetSamlProviderResponse.serializers,
  ..._i152.EncodingType.serializers,
  ..._i153.GetSshPublicKeyRequest.serializers,
  ..._i154.SshPublicKey.serializers,
  ..._i155.GetSshPublicKeyResponse.serializers,
  ..._i156.UnrecognizedPublicKeyEncodingException.serializers,
  ..._i157.GetServerCertificateRequest.serializers,
  ..._i158.ServerCertificateMetadata.serializers,
  ..._i159.ServerCertificate.serializers,
  ..._i160.GetServerCertificateResponse.serializers,
  ..._i161.GetServiceLastAccessedDetailsRequest.serializers,
  ..._i162.TrackedActionLastAccessed.serializers,
  ..._i163.ServiceLastAccessed.serializers,
  ..._i164.GetServiceLastAccessedDetailsResponse.serializers,
  ..._i165.GetServiceLastAccessedDetailsWithEntitiesRequest.serializers,
  ..._i166.PolicyOwnerEntityType.serializers,
  ..._i167.EntityInfo.serializers,
  ..._i168.EntityDetails.serializers,
  ..._i169.GetServiceLastAccessedDetailsWithEntitiesResponse.serializers,
  ..._i170.GetServiceLinkedRoleDeletionStatusRequest.serializers,
  ..._i171.DeletionTaskStatusType.serializers,
  ..._i172.RoleUsageType.serializers,
  ..._i173.DeletionTaskFailureReasonType.serializers,
  ..._i174.GetServiceLinkedRoleDeletionStatusResponse.serializers,
  ..._i175.GetUserRequest.serializers,
  ..._i176.GetUserResponse.serializers,
  ..._i177.GetUserPolicyRequest.serializers,
  ..._i178.GetUserPolicyResponse.serializers,
  ..._i179.ListAccessKeysRequest.serializers,
  ..._i180.AccessKeyMetadata.serializers,
  ..._i181.ListAccessKeysResponse.serializers,
  ..._i182.ListAccountAliasesRequest.serializers,
  ..._i183.ListAccountAliasesResponse.serializers,
  ..._i184.ListAttachedGroupPoliciesRequest.serializers,
  ..._i185.ListAttachedGroupPoliciesResponse.serializers,
  ..._i186.ListAttachedRolePoliciesRequest.serializers,
  ..._i187.ListAttachedRolePoliciesResponse.serializers,
  ..._i188.ListAttachedUserPoliciesRequest.serializers,
  ..._i189.ListAttachedUserPoliciesResponse.serializers,
  ..._i190.PolicyUsageType.serializers,
  ..._i191.ListEntitiesForPolicyRequest.serializers,
  ..._i192.PolicyGroup.serializers,
  ..._i193.PolicyUser.serializers,
  ..._i194.PolicyRole.serializers,
  ..._i195.ListEntitiesForPolicyResponse.serializers,
  ..._i196.ListGroupPoliciesRequest.serializers,
  ..._i197.ListGroupPoliciesResponse.serializers,
  ..._i198.ListGroupsRequest.serializers,
  ..._i199.ListGroupsResponse.serializers,
  ..._i200.ListGroupsForUserRequest.serializers,
  ..._i201.ListGroupsForUserResponse.serializers,
  ..._i202.ListInstanceProfileTagsRequest.serializers,
  ..._i203.ListInstanceProfileTagsResponse.serializers,
  ..._i204.ListInstanceProfilesRequest.serializers,
  ..._i205.ListInstanceProfilesResponse.serializers,
  ..._i206.ListInstanceProfilesForRoleRequest.serializers,
  ..._i207.ListInstanceProfilesForRoleResponse.serializers,
  ..._i208.ListMfaDeviceTagsRequest.serializers,
  ..._i209.ListMfaDeviceTagsResponse.serializers,
  ..._i210.ListMfaDevicesRequest.serializers,
  ..._i211.MfaDevice.serializers,
  ..._i212.ListMfaDevicesResponse.serializers,
  ..._i213.ListOpenIdConnectProviderTagsRequest.serializers,
  ..._i214.ListOpenIdConnectProviderTagsResponse.serializers,
  ..._i215.ListOpenIdConnectProvidersRequest.serializers,
  ..._i216.OpenIdConnectProviderListEntry.serializers,
  ..._i217.ListOpenIdConnectProvidersResponse.serializers,
  ..._i218.PolicyScopeType.serializers,
  ..._i219.ListPoliciesRequest.serializers,
  ..._i220.ListPoliciesResponse.serializers,
  ..._i221.ListPoliciesGrantingServiceAccessRequest.serializers,
  ..._i222.PolicyType.serializers,
  ..._i223.PolicyGrantingServiceAccess.serializers,
  ..._i224.ListPoliciesGrantingServiceAccessEntry.serializers,
  ..._i225.ListPoliciesGrantingServiceAccessResponse.serializers,
  ..._i226.ListPolicyTagsRequest.serializers,
  ..._i227.ListPolicyTagsResponse.serializers,
  ..._i228.ListPolicyVersionsRequest.serializers,
  ..._i229.ListPolicyVersionsResponse.serializers,
  ..._i230.ListRolePoliciesRequest.serializers,
  ..._i231.ListRolePoliciesResponse.serializers,
  ..._i232.ListRoleTagsRequest.serializers,
  ..._i233.ListRoleTagsResponse.serializers,
  ..._i234.ListRolesRequest.serializers,
  ..._i235.ListRolesResponse.serializers,
  ..._i236.ListSamlProviderTagsRequest.serializers,
  ..._i237.ListSamlProviderTagsResponse.serializers,
  ..._i238.ListSamlProvidersRequest.serializers,
  ..._i239.SamlProviderListEntry.serializers,
  ..._i240.ListSamlProvidersResponse.serializers,
  ..._i241.ListSshPublicKeysRequest.serializers,
  ..._i242.SshPublicKeyMetadata.serializers,
  ..._i243.ListSshPublicKeysResponse.serializers,
  ..._i244.ListServerCertificateTagsRequest.serializers,
  ..._i245.ListServerCertificateTagsResponse.serializers,
  ..._i246.ListServerCertificatesRequest.serializers,
  ..._i247.ListServerCertificatesResponse.serializers,
  ..._i248.ListServiceSpecificCredentialsRequest.serializers,
  ..._i249.ServiceSpecificCredentialMetadata.serializers,
  ..._i250.ListServiceSpecificCredentialsResponse.serializers,
  ..._i251.ListSigningCertificatesRequest.serializers,
  ..._i252.SigningCertificate.serializers,
  ..._i253.ListSigningCertificatesResponse.serializers,
  ..._i254.ListUserPoliciesRequest.serializers,
  ..._i255.ListUserPoliciesResponse.serializers,
  ..._i256.ListUserTagsRequest.serializers,
  ..._i257.ListUserTagsResponse.serializers,
  ..._i258.ListUsersRequest.serializers,
  ..._i259.ListUsersResponse.serializers,
  ..._i260.AssignmentStatusType.serializers,
  ..._i261.ListVirtualMfaDevicesRequest.serializers,
  ..._i262.ListVirtualMfaDevicesResponse.serializers,
  ..._i263.PutGroupPolicyRequest.serializers,
  ..._i264.PutRolePermissionsBoundaryRequest.serializers,
  ..._i265.PutRolePolicyRequest.serializers,
  ..._i266.PutUserPermissionsBoundaryRequest.serializers,
  ..._i267.PutUserPolicyRequest.serializers,
  ..._i268.RemoveClientIdFromOpenIdConnectProviderRequest.serializers,
  ..._i269.RemoveRoleFromInstanceProfileRequest.serializers,
  ..._i270.RemoveUserFromGroupRequest.serializers,
  ..._i271.ResetServiceSpecificCredentialRequest.serializers,
  ..._i272.ResetServiceSpecificCredentialResponse.serializers,
  ..._i273.ResyncMfaDeviceRequest.serializers,
  ..._i274.SetDefaultPolicyVersionRequest.serializers,
  ..._i275.GlobalEndpointTokenVersion.serializers,
  ..._i276.SetSecurityTokenServicePreferencesRequest.serializers,
  ..._i277.ContextKeyTypeEnum.serializers,
  ..._i278.ContextEntry.serializers,
  ..._i279.SimulateCustomPolicyRequest.serializers,
  ..._i280.PolicyEvaluationDecisionType.serializers,
  ..._i281.PolicySourceType.serializers,
  ..._i282.Position.serializers,
  ..._i283.Statement.serializers,
  ..._i284.OrganizationsDecisionDetail.serializers,
  ..._i285.PermissionsBoundaryDecisionDetail.serializers,
  ..._i286.ResourceSpecificResult.serializers,
  ..._i287.EvaluationResult.serializers,
  ..._i288.SimulatePolicyResponse.serializers,
  ..._i289.PolicyEvaluationException.serializers,
  ..._i290.SimulatePrincipalPolicyRequest.serializers,
  ..._i291.TagInstanceProfileRequest.serializers,
  ..._i292.TagMfaDeviceRequest.serializers,
  ..._i293.TagOpenIdConnectProviderRequest.serializers,
  ..._i294.TagPolicyRequest.serializers,
  ..._i295.TagRoleRequest.serializers,
  ..._i296.TagSamlProviderRequest.serializers,
  ..._i297.TagServerCertificateRequest.serializers,
  ..._i298.TagUserRequest.serializers,
  ..._i299.UntagInstanceProfileRequest.serializers,
  ..._i300.UntagMfaDeviceRequest.serializers,
  ..._i301.UntagOpenIdConnectProviderRequest.serializers,
  ..._i302.UntagPolicyRequest.serializers,
  ..._i303.UntagRoleRequest.serializers,
  ..._i304.UntagSamlProviderRequest.serializers,
  ..._i305.UntagServerCertificateRequest.serializers,
  ..._i306.UntagUserRequest.serializers,
  ..._i307.UpdateAccessKeyRequest.serializers,
  ..._i308.UpdateAccountPasswordPolicyRequest.serializers,
  ..._i309.UpdateAssumeRolePolicyRequest.serializers,
  ..._i310.UpdateGroupRequest.serializers,
  ..._i311.UpdateLoginProfileRequest.serializers,
  ..._i312.UpdateOpenIdConnectProviderThumbprintRequest.serializers,
  ..._i313.UpdateRoleRequest.serializers,
  ..._i314.UpdateRoleResponse.serializers,
  ..._i315.UpdateRoleDescriptionRequest.serializers,
  ..._i316.UpdateRoleDescriptionResponse.serializers,
  ..._i317.UpdateSamlProviderRequest.serializers,
  ..._i318.UpdateSamlProviderResponse.serializers,
  ..._i319.UpdateSshPublicKeyRequest.serializers,
  ..._i320.UpdateServerCertificateRequest.serializers,
  ..._i321.UpdateServiceSpecificCredentialRequest.serializers,
  ..._i322.UpdateSigningCertificateRequest.serializers,
  ..._i323.UpdateUserRequest.serializers,
  ..._i324.UploadSshPublicKeyRequest.serializers,
  ..._i325.UploadSshPublicKeyResponse.serializers,
  ..._i326.DuplicateSshPublicKeyException.serializers,
  ..._i327.InvalidPublicKeyException.serializers,
  ..._i328.UploadServerCertificateRequest.serializers,
  ..._i329.UploadServerCertificateResponse.serializers,
  ..._i330.KeyPairMismatchException.serializers,
  ..._i331.MalformedCertificateException.serializers,
  ..._i332.UploadSigningCertificateRequest.serializers,
  ..._i333.UploadSigningCertificateResponse.serializers,
  ..._i334.DuplicateCertificateException.serializers,
  ..._i335.InvalidCertificateException.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i336.BuiltList,
    [FullType(_i28.Tag)],
  ): _i336.ListBuilder<_i28.Tag>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i33.Role)],
  ): _i336.ListBuilder<_i33.Role>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(String)],
  ): _i336.ListBuilder<String>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i105.EntityType)],
  ): _i336.ListBuilder<_i105.EntityType>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i108.AttachedPolicy)],
  ): _i336.ListBuilder<_i108.AttachedPolicy>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i107.PolicyDetail)],
  ): _i336.ListBuilder<_i107.PolicyDetail>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i34.InstanceProfile)],
  ): _i336.ListBuilder<_i34.InstanceProfile>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i46.PolicyVersion)],
  ): _i336.ListBuilder<_i46.PolicyVersion>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i110.GroupDetail)],
  ): _i336.ListBuilder<_i110.GroupDetail>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i112.ManagedPolicyDetail)],
  ): _i336.ListBuilder<_i112.ManagedPolicyDetail>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i111.RoleDetail)],
  ): _i336.ListBuilder<_i111.RoleDetail>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i109.UserDetail)],
  ): _i336.ListBuilder<_i109.UserDetail>.new,
  const FullType(
    _i336.BuiltMap,
    [
      FullType(_i116.SummaryKeyType),
      FullType(int),
    ],
  ): _i336.MapBuilder<_i116.SummaryKeyType, int>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i59.User)],
  ): _i336.ListBuilder<_i59.User>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i139.AccessDetail)],
  ): _i336.ListBuilder<_i139.AccessDetail>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i162.TrackedActionLastAccessed)],
  ): _i336.ListBuilder<_i162.TrackedActionLastAccessed>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i163.ServiceLastAccessed)],
  ): _i336.ListBuilder<_i163.ServiceLastAccessed>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i168.EntityDetails)],
  ): _i336.ListBuilder<_i168.EntityDetails>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i172.RoleUsageType)],
  ): _i336.ListBuilder<_i172.RoleUsageType>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i180.AccessKeyMetadata)],
  ): _i336.ListBuilder<_i180.AccessKeyMetadata>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i192.PolicyGroup)],
  ): _i336.ListBuilder<_i192.PolicyGroup>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i194.PolicyRole)],
  ): _i336.ListBuilder<_i194.PolicyRole>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i193.PolicyUser)],
  ): _i336.ListBuilder<_i193.PolicyUser>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i26.Group)],
  ): _i336.ListBuilder<_i26.Group>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i211.MfaDevice)],
  ): _i336.ListBuilder<_i211.MfaDevice>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i216.OpenIdConnectProviderListEntry)],
  ): _i336.ListBuilder<_i216.OpenIdConnectProviderListEntry>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i42.Policy)],
  ): _i336.ListBuilder<_i42.Policy>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i223.PolicyGrantingServiceAccess)],
  ): _i336.ListBuilder<_i223.PolicyGrantingServiceAccess>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i224.ListPoliciesGrantingServiceAccessEntry)],
  ): _i336.ListBuilder<_i224.ListPoliciesGrantingServiceAccessEntry>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i239.SamlProviderListEntry)],
  ): _i336.ListBuilder<_i239.SamlProviderListEntry>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i242.SshPublicKeyMetadata)],
  ): _i336.ListBuilder<_i242.SshPublicKeyMetadata>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i158.ServerCertificateMetadata)],
  ): _i336.ListBuilder<_i158.ServerCertificateMetadata>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i249.ServiceSpecificCredentialMetadata)],
  ): _i336.ListBuilder<_i249.ServiceSpecificCredentialMetadata>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i252.SigningCertificate)],
  ): _i336.ListBuilder<_i252.SigningCertificate>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i62.VirtualMfaDevice)],
  ): _i336.ListBuilder<_i62.VirtualMfaDevice>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i287.EvaluationResult)],
  ): _i336.ListBuilder<_i287.EvaluationResult>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i278.ContextEntry)],
  ): _i336.ListBuilder<_i278.ContextEntry>.new,
  const FullType(
    _i336.BuiltMap,
    [
      FullType(String),
      FullType(_i280.PolicyEvaluationDecisionType),
    ],
  ): _i336.MapBuilder<String, _i280.PolicyEvaluationDecisionType>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i283.Statement)],
  ): _i336.ListBuilder<_i283.Statement>.new,
  const FullType(
    _i336.BuiltList,
    [FullType(_i286.ResourceSpecificResult)],
  ): _i336.ListBuilder<_i286.ResourceSpecificResult>.new,
};
