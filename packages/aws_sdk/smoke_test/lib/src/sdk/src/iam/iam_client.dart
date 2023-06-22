// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.iam_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i140;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/access_key_metadata.dart'
    as _i195;
import 'package:smoke_test/src/sdk/src/iam/model/add_client_id_to_open_id_connect_provider_request.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/add_role_to_instance_profile_request.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/add_user_to_group_request.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/iam/model/attach_group_policy_request.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/model/attach_role_policy_request.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/iam/model/attach_user_policy_request.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/iam/model/attached_policy.dart' as _i200;
import 'package:smoke_test/src/sdk/src/iam/model/change_password_request.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/iam/model/create_access_key_request.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/iam/model/create_access_key_response.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/iam/model/create_account_alias_request.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/iam/model/create_group_request.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/iam/model/create_group_response.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/iam/model/create_instance_profile_request.dart'
    as _i27;
import 'package:smoke_test/src/sdk/src/iam/model/create_instance_profile_response.dart'
    as _i26;
import 'package:smoke_test/src/sdk/src/iam/model/create_login_profile_request.dart'
    as _i30;
import 'package:smoke_test/src/sdk/src/iam/model/create_login_profile_response.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/iam/model/create_open_id_connect_provider_request.dart'
    as _i33;
import 'package:smoke_test/src/sdk/src/iam/model/create_open_id_connect_provider_response.dart'
    as _i32;
import 'package:smoke_test/src/sdk/src/iam/model/create_policy_request.dart'
    as _i36;
import 'package:smoke_test/src/sdk/src/iam/model/create_policy_response.dart'
    as _i35;
import 'package:smoke_test/src/sdk/src/iam/model/create_policy_version_request.dart'
    as _i39;
import 'package:smoke_test/src/sdk/src/iam/model/create_policy_version_response.dart'
    as _i38;
import 'package:smoke_test/src/sdk/src/iam/model/create_role_request.dart'
    as _i42;
import 'package:smoke_test/src/sdk/src/iam/model/create_role_response.dart'
    as _i41;
import 'package:smoke_test/src/sdk/src/iam/model/create_saml_provider_request.dart'
    as _i45;
import 'package:smoke_test/src/sdk/src/iam/model/create_saml_provider_response.dart'
    as _i44;
import 'package:smoke_test/src/sdk/src/iam/model/create_service_linked_role_request.dart'
    as _i48;
import 'package:smoke_test/src/sdk/src/iam/model/create_service_linked_role_response.dart'
    as _i47;
import 'package:smoke_test/src/sdk/src/iam/model/create_service_specific_credential_request.dart'
    as _i51;
import 'package:smoke_test/src/sdk/src/iam/model/create_service_specific_credential_response.dart'
    as _i50;
import 'package:smoke_test/src/sdk/src/iam/model/create_user_request.dart'
    as _i54;
import 'package:smoke_test/src/sdk/src/iam/model/create_user_response.dart'
    as _i53;
import 'package:smoke_test/src/sdk/src/iam/model/create_virtual_mfa_device_request.dart'
    as _i57;
import 'package:smoke_test/src/sdk/src/iam/model/create_virtual_mfa_device_response.dart'
    as _i56;
import 'package:smoke_test/src/sdk/src/iam/model/deactivate_mfa_device_request.dart'
    as _i59;
import 'package:smoke_test/src/sdk/src/iam/model/delete_access_key_request.dart'
    as _i61;
import 'package:smoke_test/src/sdk/src/iam/model/delete_account_alias_request.dart'
    as _i63;
import 'package:smoke_test/src/sdk/src/iam/model/delete_group_policy_request.dart'
    as _i68;
import 'package:smoke_test/src/sdk/src/iam/model/delete_group_request.dart'
    as _i66;
import 'package:smoke_test/src/sdk/src/iam/model/delete_instance_profile_request.dart'
    as _i70;
import 'package:smoke_test/src/sdk/src/iam/model/delete_login_profile_request.dart'
    as _i72;
import 'package:smoke_test/src/sdk/src/iam/model/delete_open_id_connect_provider_request.dart'
    as _i74;
import 'package:smoke_test/src/sdk/src/iam/model/delete_policy_request.dart'
    as _i76;
import 'package:smoke_test/src/sdk/src/iam/model/delete_policy_version_request.dart'
    as _i78;
import 'package:smoke_test/src/sdk/src/iam/model/delete_role_permissions_boundary_request.dart'
    as _i82;
import 'package:smoke_test/src/sdk/src/iam/model/delete_role_policy_request.dart'
    as _i84;
import 'package:smoke_test/src/sdk/src/iam/model/delete_role_request.dart'
    as _i80;
import 'package:smoke_test/src/sdk/src/iam/model/delete_saml_provider_request.dart'
    as _i86;
import 'package:smoke_test/src/sdk/src/iam/model/delete_server_certificate_request.dart'
    as _i90;
import 'package:smoke_test/src/sdk/src/iam/model/delete_service_linked_role_request.dart'
    as _i93;
import 'package:smoke_test/src/sdk/src/iam/model/delete_service_linked_role_response.dart'
    as _i92;
import 'package:smoke_test/src/sdk/src/iam/model/delete_service_specific_credential_request.dart'
    as _i95;
import 'package:smoke_test/src/sdk/src/iam/model/delete_signing_certificate_request.dart'
    as _i97;
import 'package:smoke_test/src/sdk/src/iam/model/delete_ssh_public_key_request.dart'
    as _i88;
import 'package:smoke_test/src/sdk/src/iam/model/delete_user_permissions_boundary_request.dart'
    as _i101;
import 'package:smoke_test/src/sdk/src/iam/model/delete_user_policy_request.dart'
    as _i103;
import 'package:smoke_test/src/sdk/src/iam/model/delete_user_request.dart'
    as _i99;
import 'package:smoke_test/src/sdk/src/iam/model/delete_virtual_mfa_device_request.dart'
    as _i105;
import 'package:smoke_test/src/sdk/src/iam/model/detach_group_policy_request.dart'
    as _i107;
import 'package:smoke_test/src/sdk/src/iam/model/detach_role_policy_request.dart'
    as _i109;
import 'package:smoke_test/src/sdk/src/iam/model/detach_user_policy_request.dart'
    as _i111;
import 'package:smoke_test/src/sdk/src/iam/model/enable_mfa_device_request.dart'
    as _i113;
import 'package:smoke_test/src/sdk/src/iam/model/evaluation_result.dart'
    as _i313;
import 'package:smoke_test/src/sdk/src/iam/model/generate_credential_report_response.dart'
    as _i115;
import 'package:smoke_test/src/sdk/src/iam/model/generate_organizations_access_report_request.dart'
    as _i118;
import 'package:smoke_test/src/sdk/src/iam/model/generate_organizations_access_report_response.dart'
    as _i117;
import 'package:smoke_test/src/sdk/src/iam/model/generate_service_last_accessed_details_request.dart'
    as _i121;
import 'package:smoke_test/src/sdk/src/iam/model/generate_service_last_accessed_details_response.dart'
    as _i120;
import 'package:smoke_test/src/sdk/src/iam/model/get_access_key_last_used_request.dart'
    as _i124;
import 'package:smoke_test/src/sdk/src/iam/model/get_access_key_last_used_response.dart'
    as _i123;
import 'package:smoke_test/src/sdk/src/iam/model/get_account_authorization_details_request.dart'
    as _i127;
import 'package:smoke_test/src/sdk/src/iam/model/get_account_authorization_details_response.dart'
    as _i126;
import 'package:smoke_test/src/sdk/src/iam/model/get_account_password_policy_response.dart'
    as _i129;
import 'package:smoke_test/src/sdk/src/iam/model/get_account_summary_response.dart'
    as _i131;
import 'package:smoke_test/src/sdk/src/iam/model/get_context_keys_for_custom_policy_request.dart'
    as _i134;
import 'package:smoke_test/src/sdk/src/iam/model/get_context_keys_for_policy_response.dart'
    as _i133;
import 'package:smoke_test/src/sdk/src/iam/model/get_context_keys_for_principal_policy_request.dart'
    as _i136;
import 'package:smoke_test/src/sdk/src/iam/model/get_credential_report_response.dart'
    as _i138;
import 'package:smoke_test/src/sdk/src/iam/model/get_group_policy_request.dart'
    as _i145;
import 'package:smoke_test/src/sdk/src/iam/model/get_group_policy_response.dart'
    as _i144;
import 'package:smoke_test/src/sdk/src/iam/model/get_group_request.dart'
    as _i142;
import 'package:smoke_test/src/sdk/src/iam/model/get_instance_profile_request.dart'
    as _i148;
import 'package:smoke_test/src/sdk/src/iam/model/get_instance_profile_response.dart'
    as _i147;
import 'package:smoke_test/src/sdk/src/iam/model/get_login_profile_request.dart'
    as _i151;
import 'package:smoke_test/src/sdk/src/iam/model/get_login_profile_response.dart'
    as _i150;
import 'package:smoke_test/src/sdk/src/iam/model/get_open_id_connect_provider_request.dart'
    as _i154;
import 'package:smoke_test/src/sdk/src/iam/model/get_open_id_connect_provider_response.dart'
    as _i153;
import 'package:smoke_test/src/sdk/src/iam/model/get_organizations_access_report_request.dart'
    as _i157;
import 'package:smoke_test/src/sdk/src/iam/model/get_organizations_access_report_response.dart'
    as _i156;
import 'package:smoke_test/src/sdk/src/iam/model/get_policy_request.dart'
    as _i160;
import 'package:smoke_test/src/sdk/src/iam/model/get_policy_response.dart'
    as _i159;
import 'package:smoke_test/src/sdk/src/iam/model/get_policy_version_request.dart'
    as _i163;
import 'package:smoke_test/src/sdk/src/iam/model/get_policy_version_response.dart'
    as _i162;
import 'package:smoke_test/src/sdk/src/iam/model/get_role_policy_request.dart'
    as _i169;
import 'package:smoke_test/src/sdk/src/iam/model/get_role_policy_response.dart'
    as _i168;
import 'package:smoke_test/src/sdk/src/iam/model/get_role_request.dart'
    as _i166;
import 'package:smoke_test/src/sdk/src/iam/model/get_role_response.dart'
    as _i165;
import 'package:smoke_test/src/sdk/src/iam/model/get_saml_provider_request.dart'
    as _i172;
import 'package:smoke_test/src/sdk/src/iam/model/get_saml_provider_response.dart'
    as _i171;
import 'package:smoke_test/src/sdk/src/iam/model/get_server_certificate_request.dart'
    as _i178;
import 'package:smoke_test/src/sdk/src/iam/model/get_server_certificate_response.dart'
    as _i177;
import 'package:smoke_test/src/sdk/src/iam/model/get_service_last_accessed_details_request.dart'
    as _i181;
import 'package:smoke_test/src/sdk/src/iam/model/get_service_last_accessed_details_response.dart'
    as _i180;
import 'package:smoke_test/src/sdk/src/iam/model/get_service_last_accessed_details_with_entities_request.dart'
    as _i184;
import 'package:smoke_test/src/sdk/src/iam/model/get_service_last_accessed_details_with_entities_response.dart'
    as _i183;
import 'package:smoke_test/src/sdk/src/iam/model/get_service_linked_role_deletion_status_request.dart'
    as _i187;
import 'package:smoke_test/src/sdk/src/iam/model/get_service_linked_role_deletion_status_response.dart'
    as _i186;
import 'package:smoke_test/src/sdk/src/iam/model/get_ssh_public_key_request.dart'
    as _i175;
import 'package:smoke_test/src/sdk/src/iam/model/get_ssh_public_key_response.dart'
    as _i174;
import 'package:smoke_test/src/sdk/src/iam/model/get_user_policy_request.dart'
    as _i193;
import 'package:smoke_test/src/sdk/src/iam/model/get_user_policy_response.dart'
    as _i192;
import 'package:smoke_test/src/sdk/src/iam/model/get_user_request.dart'
    as _i190;
import 'package:smoke_test/src/sdk/src/iam/model/get_user_response.dart'
    as _i189;
import 'package:smoke_test/src/sdk/src/iam/model/group.dart' as _i212;
import 'package:smoke_test/src/sdk/src/iam/model/instance_profile.dart'
    as _i220;
import 'package:smoke_test/src/sdk/src/iam/model/list_access_keys_request.dart'
    as _i196;
import 'package:smoke_test/src/sdk/src/iam/model/list_account_aliases_request.dart'
    as _i198;
import 'package:smoke_test/src/sdk/src/iam/model/list_attached_group_policies_request.dart'
    as _i201;
import 'package:smoke_test/src/sdk/src/iam/model/list_attached_role_policies_request.dart'
    as _i203;
import 'package:smoke_test/src/sdk/src/iam/model/list_attached_user_policies_request.dart'
    as _i205;
import 'package:smoke_test/src/sdk/src/iam/model/list_entities_for_policy_request.dart'
    as _i208;
import 'package:smoke_test/src/sdk/src/iam/model/list_entities_for_policy_response.dart'
    as _i207;
import 'package:smoke_test/src/sdk/src/iam/model/list_group_policies_request.dart'
    as _i210;
import 'package:smoke_test/src/sdk/src/iam/model/list_groups_for_user_request.dart'
    as _i215;
import 'package:smoke_test/src/sdk/src/iam/model/list_groups_request.dart'
    as _i213;
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profile_tags_request.dart'
    as _i218;
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profile_tags_response.dart'
    as _i217;
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profiles_for_role_request.dart'
    as _i223;
import 'package:smoke_test/src/sdk/src/iam/model/list_instance_profiles_request.dart'
    as _i221;
import 'package:smoke_test/src/sdk/src/iam/model/list_mfa_device_tags_request.dart'
    as _i226;
import 'package:smoke_test/src/sdk/src/iam/model/list_mfa_device_tags_response.dart'
    as _i225;
import 'package:smoke_test/src/sdk/src/iam/model/list_mfa_devices_request.dart'
    as _i229;
import 'package:smoke_test/src/sdk/src/iam/model/list_open_id_connect_provider_tags_request.dart'
    as _i232;
import 'package:smoke_test/src/sdk/src/iam/model/list_open_id_connect_provider_tags_response.dart'
    as _i231;
import 'package:smoke_test/src/sdk/src/iam/model/list_open_id_connect_providers_request.dart'
    as _i235;
import 'package:smoke_test/src/sdk/src/iam/model/list_open_id_connect_providers_response.dart'
    as _i234;
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_granting_service_access_request.dart'
    as _i241;
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_granting_service_access_response.dart'
    as _i240;
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_request.dart'
    as _i238;
import 'package:smoke_test/src/sdk/src/iam/model/list_policy_tags_request.dart'
    as _i244;
import 'package:smoke_test/src/sdk/src/iam/model/list_policy_tags_response.dart'
    as _i243;
import 'package:smoke_test/src/sdk/src/iam/model/list_policy_versions_request.dart'
    as _i247;
import 'package:smoke_test/src/sdk/src/iam/model/list_role_policies_request.dart'
    as _i249;
import 'package:smoke_test/src/sdk/src/iam/model/list_role_tags_request.dart'
    as _i252;
import 'package:smoke_test/src/sdk/src/iam/model/list_role_tags_response.dart'
    as _i251;
import 'package:smoke_test/src/sdk/src/iam/model/list_roles_request.dart'
    as _i255;
import 'package:smoke_test/src/sdk/src/iam/model/list_saml_provider_tags_request.dart'
    as _i258;
import 'package:smoke_test/src/sdk/src/iam/model/list_saml_provider_tags_response.dart'
    as _i257;
import 'package:smoke_test/src/sdk/src/iam/model/list_saml_providers_request.dart'
    as _i261;
import 'package:smoke_test/src/sdk/src/iam/model/list_saml_providers_response.dart'
    as _i260;
import 'package:smoke_test/src/sdk/src/iam/model/list_server_certificate_tags_request.dart'
    as _i267;
import 'package:smoke_test/src/sdk/src/iam/model/list_server_certificate_tags_response.dart'
    as _i266;
import 'package:smoke_test/src/sdk/src/iam/model/list_server_certificates_request.dart'
    as _i270;
import 'package:smoke_test/src/sdk/src/iam/model/list_service_specific_credentials_request.dart'
    as _i273;
import 'package:smoke_test/src/sdk/src/iam/model/list_service_specific_credentials_response.dart'
    as _i272;
import 'package:smoke_test/src/sdk/src/iam/model/list_signing_certificates_request.dart'
    as _i276;
import 'package:smoke_test/src/sdk/src/iam/model/list_ssh_public_keys_request.dart'
    as _i264;
import 'package:smoke_test/src/sdk/src/iam/model/list_user_policies_request.dart'
    as _i278;
import 'package:smoke_test/src/sdk/src/iam/model/list_user_tags_request.dart'
    as _i281;
import 'package:smoke_test/src/sdk/src/iam/model/list_users_request.dart'
    as _i283;
import 'package:smoke_test/src/sdk/src/iam/model/list_virtual_mfa_devices_request.dart'
    as _i286;
import 'package:smoke_test/src/sdk/src/iam/model/mfa_device.dart' as _i228;
import 'package:smoke_test/src/sdk/src/iam/model/policy.dart' as _i237;
import 'package:smoke_test/src/sdk/src/iam/model/policy_version.dart' as _i246;
import 'package:smoke_test/src/sdk/src/iam/model/put_group_policy_request.dart'
    as _i288;
import 'package:smoke_test/src/sdk/src/iam/model/put_role_permissions_boundary_request.dart'
    as _i290;
import 'package:smoke_test/src/sdk/src/iam/model/put_role_policy_request.dart'
    as _i292;
import 'package:smoke_test/src/sdk/src/iam/model/put_user_permissions_boundary_request.dart'
    as _i294;
import 'package:smoke_test/src/sdk/src/iam/model/put_user_policy_request.dart'
    as _i296;
import 'package:smoke_test/src/sdk/src/iam/model/remove_client_id_from_open_id_connect_provider_request.dart'
    as _i298;
import 'package:smoke_test/src/sdk/src/iam/model/remove_role_from_instance_profile_request.dart'
    as _i300;
import 'package:smoke_test/src/sdk/src/iam/model/remove_user_from_group_request.dart'
    as _i302;
import 'package:smoke_test/src/sdk/src/iam/model/reset_service_specific_credential_request.dart'
    as _i305;
import 'package:smoke_test/src/sdk/src/iam/model/reset_service_specific_credential_response.dart'
    as _i304;
import 'package:smoke_test/src/sdk/src/iam/model/resync_mfa_device_request.dart'
    as _i307;
import 'package:smoke_test/src/sdk/src/iam/model/role.dart' as _i254;
import 'package:smoke_test/src/sdk/src/iam/model/server_certificate_metadata.dart'
    as _i269;
import 'package:smoke_test/src/sdk/src/iam/model/set_default_policy_version_request.dart'
    as _i309;
import 'package:smoke_test/src/sdk/src/iam/model/set_security_token_service_preferences_request.dart'
    as _i311;
import 'package:smoke_test/src/sdk/src/iam/model/signing_certificate.dart'
    as _i275;
import 'package:smoke_test/src/sdk/src/iam/model/simulate_custom_policy_request.dart'
    as _i314;
import 'package:smoke_test/src/sdk/src/iam/model/simulate_principal_policy_request.dart'
    as _i316;
import 'package:smoke_test/src/sdk/src/iam/model/ssh_public_key_metadata.dart'
    as _i263;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i280;
import 'package:smoke_test/src/sdk/src/iam/model/tag_instance_profile_request.dart'
    as _i318;
import 'package:smoke_test/src/sdk/src/iam/model/tag_mfa_device_request.dart'
    as _i320;
import 'package:smoke_test/src/sdk/src/iam/model/tag_open_id_connect_provider_request.dart'
    as _i322;
import 'package:smoke_test/src/sdk/src/iam/model/tag_policy_request.dart'
    as _i324;
import 'package:smoke_test/src/sdk/src/iam/model/tag_role_request.dart'
    as _i326;
import 'package:smoke_test/src/sdk/src/iam/model/tag_saml_provider_request.dart'
    as _i328;
import 'package:smoke_test/src/sdk/src/iam/model/tag_server_certificate_request.dart'
    as _i330;
import 'package:smoke_test/src/sdk/src/iam/model/tag_user_request.dart'
    as _i332;
import 'package:smoke_test/src/sdk/src/iam/model/untag_instance_profile_request.dart'
    as _i334;
import 'package:smoke_test/src/sdk/src/iam/model/untag_mfa_device_request.dart'
    as _i336;
import 'package:smoke_test/src/sdk/src/iam/model/untag_open_id_connect_provider_request.dart'
    as _i338;
import 'package:smoke_test/src/sdk/src/iam/model/untag_policy_request.dart'
    as _i340;
import 'package:smoke_test/src/sdk/src/iam/model/untag_role_request.dart'
    as _i342;
import 'package:smoke_test/src/sdk/src/iam/model/untag_saml_provider_request.dart'
    as _i344;
import 'package:smoke_test/src/sdk/src/iam/model/untag_server_certificate_request.dart'
    as _i346;
import 'package:smoke_test/src/sdk/src/iam/model/untag_user_request.dart'
    as _i348;
import 'package:smoke_test/src/sdk/src/iam/model/update_access_key_request.dart'
    as _i350;
import 'package:smoke_test/src/sdk/src/iam/model/update_account_password_policy_request.dart'
    as _i352;
import 'package:smoke_test/src/sdk/src/iam/model/update_assume_role_policy_request.dart'
    as _i354;
import 'package:smoke_test/src/sdk/src/iam/model/update_group_request.dart'
    as _i356;
import 'package:smoke_test/src/sdk/src/iam/model/update_login_profile_request.dart'
    as _i358;
import 'package:smoke_test/src/sdk/src/iam/model/update_open_id_connect_provider_thumbprint_request.dart'
    as _i360;
import 'package:smoke_test/src/sdk/src/iam/model/update_role_description_request.dart'
    as _i366;
import 'package:smoke_test/src/sdk/src/iam/model/update_role_description_response.dart'
    as _i365;
import 'package:smoke_test/src/sdk/src/iam/model/update_role_request.dart'
    as _i363;
import 'package:smoke_test/src/sdk/src/iam/model/update_role_response.dart'
    as _i362;
import 'package:smoke_test/src/sdk/src/iam/model/update_saml_provider_request.dart'
    as _i369;
import 'package:smoke_test/src/sdk/src/iam/model/update_saml_provider_response.dart'
    as _i368;
import 'package:smoke_test/src/sdk/src/iam/model/update_server_certificate_request.dart'
    as _i373;
import 'package:smoke_test/src/sdk/src/iam/model/update_service_specific_credential_request.dart'
    as _i375;
import 'package:smoke_test/src/sdk/src/iam/model/update_signing_certificate_request.dart'
    as _i377;
import 'package:smoke_test/src/sdk/src/iam/model/update_ssh_public_key_request.dart'
    as _i371;
import 'package:smoke_test/src/sdk/src/iam/model/update_user_request.dart'
    as _i379;
import 'package:smoke_test/src/sdk/src/iam/model/upload_server_certificate_request.dart'
    as _i385;
import 'package:smoke_test/src/sdk/src/iam/model/upload_server_certificate_response.dart'
    as _i384;
import 'package:smoke_test/src/sdk/src/iam/model/upload_signing_certificate_request.dart'
    as _i388;
import 'package:smoke_test/src/sdk/src/iam/model/upload_signing_certificate_response.dart'
    as _i387;
import 'package:smoke_test/src/sdk/src/iam/model/upload_ssh_public_key_request.dart'
    as _i382;
import 'package:smoke_test/src/sdk/src/iam/model/upload_ssh_public_key_response.dart'
    as _i381;
import 'package:smoke_test/src/sdk/src/iam/model/user.dart' as _i141;
import 'package:smoke_test/src/sdk/src/iam/model/virtual_mfa_device.dart'
    as _i285;
import 'package:smoke_test/src/sdk/src/iam/operation/add_client_id_to_open_id_connect_provider_operation.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/iam/operation/add_role_to_instance_profile_operation.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/iam/operation/add_user_to_group_operation.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/iam/operation/attach_group_policy_operation.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/iam/operation/attach_role_policy_operation.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/iam/operation/attach_user_policy_operation.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/iam/operation/change_password_operation.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/iam/operation/create_access_key_operation.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/iam/operation/create_account_alias_operation.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/iam/operation/create_group_operation.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/iam/operation/create_instance_profile_operation.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/iam/operation/create_login_profile_operation.dart'
    as _i31;
import 'package:smoke_test/src/sdk/src/iam/operation/create_open_id_connect_provider_operation.dart'
    as _i34;
import 'package:smoke_test/src/sdk/src/iam/operation/create_policy_operation.dart'
    as _i37;
import 'package:smoke_test/src/sdk/src/iam/operation/create_policy_version_operation.dart'
    as _i40;
import 'package:smoke_test/src/sdk/src/iam/operation/create_role_operation.dart'
    as _i43;
import 'package:smoke_test/src/sdk/src/iam/operation/create_saml_provider_operation.dart'
    as _i46;
import 'package:smoke_test/src/sdk/src/iam/operation/create_service_linked_role_operation.dart'
    as _i49;
import 'package:smoke_test/src/sdk/src/iam/operation/create_service_specific_credential_operation.dart'
    as _i52;
import 'package:smoke_test/src/sdk/src/iam/operation/create_user_operation.dart'
    as _i55;
import 'package:smoke_test/src/sdk/src/iam/operation/create_virtual_mfa_device_operation.dart'
    as _i58;
import 'package:smoke_test/src/sdk/src/iam/operation/deactivate_mfa_device_operation.dart'
    as _i60;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_access_key_operation.dart'
    as _i62;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_account_alias_operation.dart'
    as _i64;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_account_password_policy_operation.dart'
    as _i65;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_group_operation.dart'
    as _i67;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_group_policy_operation.dart'
    as _i69;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_instance_profile_operation.dart'
    as _i71;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_login_profile_operation.dart'
    as _i73;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_open_id_connect_provider_operation.dart'
    as _i75;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_policy_operation.dart'
    as _i77;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_policy_version_operation.dart'
    as _i79;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_role_operation.dart'
    as _i81;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_role_permissions_boundary_operation.dart'
    as _i83;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_role_policy_operation.dart'
    as _i85;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_saml_provider_operation.dart'
    as _i87;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_server_certificate_operation.dart'
    as _i91;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_service_linked_role_operation.dart'
    as _i94;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_service_specific_credential_operation.dart'
    as _i96;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_signing_certificate_operation.dart'
    as _i98;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_ssh_public_key_operation.dart'
    as _i89;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_user_operation.dart'
    as _i100;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_user_permissions_boundary_operation.dart'
    as _i102;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_user_policy_operation.dart'
    as _i104;
import 'package:smoke_test/src/sdk/src/iam/operation/delete_virtual_mfa_device_operation.dart'
    as _i106;
import 'package:smoke_test/src/sdk/src/iam/operation/detach_group_policy_operation.dart'
    as _i108;
import 'package:smoke_test/src/sdk/src/iam/operation/detach_role_policy_operation.dart'
    as _i110;
import 'package:smoke_test/src/sdk/src/iam/operation/detach_user_policy_operation.dart'
    as _i112;
import 'package:smoke_test/src/sdk/src/iam/operation/enable_mfa_device_operation.dart'
    as _i114;
import 'package:smoke_test/src/sdk/src/iam/operation/generate_credential_report_operation.dart'
    as _i116;
import 'package:smoke_test/src/sdk/src/iam/operation/generate_organizations_access_report_operation.dart'
    as _i119;
import 'package:smoke_test/src/sdk/src/iam/operation/generate_service_last_accessed_details_operation.dart'
    as _i122;
import 'package:smoke_test/src/sdk/src/iam/operation/get_access_key_last_used_operation.dart'
    as _i125;
import 'package:smoke_test/src/sdk/src/iam/operation/get_account_authorization_details_operation.dart'
    as _i128;
import 'package:smoke_test/src/sdk/src/iam/operation/get_account_password_policy_operation.dart'
    as _i130;
import 'package:smoke_test/src/sdk/src/iam/operation/get_account_summary_operation.dart'
    as _i132;
import 'package:smoke_test/src/sdk/src/iam/operation/get_context_keys_for_custom_policy_operation.dart'
    as _i135;
import 'package:smoke_test/src/sdk/src/iam/operation/get_context_keys_for_principal_policy_operation.dart'
    as _i137;
import 'package:smoke_test/src/sdk/src/iam/operation/get_credential_report_operation.dart'
    as _i139;
import 'package:smoke_test/src/sdk/src/iam/operation/get_group_operation.dart'
    as _i143;
import 'package:smoke_test/src/sdk/src/iam/operation/get_group_policy_operation.dart'
    as _i146;
import 'package:smoke_test/src/sdk/src/iam/operation/get_instance_profile_operation.dart'
    as _i149;
import 'package:smoke_test/src/sdk/src/iam/operation/get_login_profile_operation.dart'
    as _i152;
import 'package:smoke_test/src/sdk/src/iam/operation/get_open_id_connect_provider_operation.dart'
    as _i155;
import 'package:smoke_test/src/sdk/src/iam/operation/get_organizations_access_report_operation.dart'
    as _i158;
import 'package:smoke_test/src/sdk/src/iam/operation/get_policy_operation.dart'
    as _i161;
import 'package:smoke_test/src/sdk/src/iam/operation/get_policy_version_operation.dart'
    as _i164;
import 'package:smoke_test/src/sdk/src/iam/operation/get_role_operation.dart'
    as _i167;
import 'package:smoke_test/src/sdk/src/iam/operation/get_role_policy_operation.dart'
    as _i170;
import 'package:smoke_test/src/sdk/src/iam/operation/get_saml_provider_operation.dart'
    as _i173;
import 'package:smoke_test/src/sdk/src/iam/operation/get_server_certificate_operation.dart'
    as _i179;
import 'package:smoke_test/src/sdk/src/iam/operation/get_service_last_accessed_details_operation.dart'
    as _i182;
import 'package:smoke_test/src/sdk/src/iam/operation/get_service_last_accessed_details_with_entities_operation.dart'
    as _i185;
import 'package:smoke_test/src/sdk/src/iam/operation/get_service_linked_role_deletion_status_operation.dart'
    as _i188;
import 'package:smoke_test/src/sdk/src/iam/operation/get_ssh_public_key_operation.dart'
    as _i176;
import 'package:smoke_test/src/sdk/src/iam/operation/get_user_operation.dart'
    as _i191;
import 'package:smoke_test/src/sdk/src/iam/operation/get_user_policy_operation.dart'
    as _i194;
import 'package:smoke_test/src/sdk/src/iam/operation/list_access_keys_operation.dart'
    as _i197;
import 'package:smoke_test/src/sdk/src/iam/operation/list_account_aliases_operation.dart'
    as _i199;
import 'package:smoke_test/src/sdk/src/iam/operation/list_attached_group_policies_operation.dart'
    as _i202;
import 'package:smoke_test/src/sdk/src/iam/operation/list_attached_role_policies_operation.dart'
    as _i204;
import 'package:smoke_test/src/sdk/src/iam/operation/list_attached_user_policies_operation.dart'
    as _i206;
import 'package:smoke_test/src/sdk/src/iam/operation/list_entities_for_policy_operation.dart'
    as _i209;
import 'package:smoke_test/src/sdk/src/iam/operation/list_group_policies_operation.dart'
    as _i211;
import 'package:smoke_test/src/sdk/src/iam/operation/list_groups_for_user_operation.dart'
    as _i216;
import 'package:smoke_test/src/sdk/src/iam/operation/list_groups_operation.dart'
    as _i214;
import 'package:smoke_test/src/sdk/src/iam/operation/list_instance_profile_tags_operation.dart'
    as _i219;
import 'package:smoke_test/src/sdk/src/iam/operation/list_instance_profiles_for_role_operation.dart'
    as _i224;
import 'package:smoke_test/src/sdk/src/iam/operation/list_instance_profiles_operation.dart'
    as _i222;
import 'package:smoke_test/src/sdk/src/iam/operation/list_mfa_device_tags_operation.dart'
    as _i227;
import 'package:smoke_test/src/sdk/src/iam/operation/list_mfa_devices_operation.dart'
    as _i230;
import 'package:smoke_test/src/sdk/src/iam/operation/list_open_id_connect_provider_tags_operation.dart'
    as _i233;
import 'package:smoke_test/src/sdk/src/iam/operation/list_open_id_connect_providers_operation.dart'
    as _i236;
import 'package:smoke_test/src/sdk/src/iam/operation/list_policies_granting_service_access_operation.dart'
    as _i242;
import 'package:smoke_test/src/sdk/src/iam/operation/list_policies_operation.dart'
    as _i239;
import 'package:smoke_test/src/sdk/src/iam/operation/list_policy_tags_operation.dart'
    as _i245;
import 'package:smoke_test/src/sdk/src/iam/operation/list_policy_versions_operation.dart'
    as _i248;
import 'package:smoke_test/src/sdk/src/iam/operation/list_role_policies_operation.dart'
    as _i250;
import 'package:smoke_test/src/sdk/src/iam/operation/list_role_tags_operation.dart'
    as _i253;
import 'package:smoke_test/src/sdk/src/iam/operation/list_roles_operation.dart'
    as _i256;
import 'package:smoke_test/src/sdk/src/iam/operation/list_saml_provider_tags_operation.dart'
    as _i259;
import 'package:smoke_test/src/sdk/src/iam/operation/list_saml_providers_operation.dart'
    as _i262;
import 'package:smoke_test/src/sdk/src/iam/operation/list_server_certificate_tags_operation.dart'
    as _i268;
import 'package:smoke_test/src/sdk/src/iam/operation/list_server_certificates_operation.dart'
    as _i271;
import 'package:smoke_test/src/sdk/src/iam/operation/list_service_specific_credentials_operation.dart'
    as _i274;
import 'package:smoke_test/src/sdk/src/iam/operation/list_signing_certificates_operation.dart'
    as _i277;
import 'package:smoke_test/src/sdk/src/iam/operation/list_ssh_public_keys_operation.dart'
    as _i265;
import 'package:smoke_test/src/sdk/src/iam/operation/list_user_policies_operation.dart'
    as _i279;
import 'package:smoke_test/src/sdk/src/iam/operation/list_user_tags_operation.dart'
    as _i282;
import 'package:smoke_test/src/sdk/src/iam/operation/list_users_operation.dart'
    as _i284;
import 'package:smoke_test/src/sdk/src/iam/operation/list_virtual_mfa_devices_operation.dart'
    as _i287;
import 'package:smoke_test/src/sdk/src/iam/operation/put_group_policy_operation.dart'
    as _i289;
import 'package:smoke_test/src/sdk/src/iam/operation/put_role_permissions_boundary_operation.dart'
    as _i291;
import 'package:smoke_test/src/sdk/src/iam/operation/put_role_policy_operation.dart'
    as _i293;
import 'package:smoke_test/src/sdk/src/iam/operation/put_user_permissions_boundary_operation.dart'
    as _i295;
import 'package:smoke_test/src/sdk/src/iam/operation/put_user_policy_operation.dart'
    as _i297;
import 'package:smoke_test/src/sdk/src/iam/operation/remove_client_id_from_open_id_connect_provider_operation.dart'
    as _i299;
import 'package:smoke_test/src/sdk/src/iam/operation/remove_role_from_instance_profile_operation.dart'
    as _i301;
import 'package:smoke_test/src/sdk/src/iam/operation/remove_user_from_group_operation.dart'
    as _i303;
import 'package:smoke_test/src/sdk/src/iam/operation/reset_service_specific_credential_operation.dart'
    as _i306;
import 'package:smoke_test/src/sdk/src/iam/operation/resync_mfa_device_operation.dart'
    as _i308;
import 'package:smoke_test/src/sdk/src/iam/operation/set_default_policy_version_operation.dart'
    as _i310;
import 'package:smoke_test/src/sdk/src/iam/operation/set_security_token_service_preferences_operation.dart'
    as _i312;
import 'package:smoke_test/src/sdk/src/iam/operation/simulate_custom_policy_operation.dart'
    as _i315;
import 'package:smoke_test/src/sdk/src/iam/operation/simulate_principal_policy_operation.dart'
    as _i317;
import 'package:smoke_test/src/sdk/src/iam/operation/tag_instance_profile_operation.dart'
    as _i319;
import 'package:smoke_test/src/sdk/src/iam/operation/tag_mfa_device_operation.dart'
    as _i321;
import 'package:smoke_test/src/sdk/src/iam/operation/tag_open_id_connect_provider_operation.dart'
    as _i323;
import 'package:smoke_test/src/sdk/src/iam/operation/tag_policy_operation.dart'
    as _i325;
import 'package:smoke_test/src/sdk/src/iam/operation/tag_role_operation.dart'
    as _i327;
import 'package:smoke_test/src/sdk/src/iam/operation/tag_saml_provider_operation.dart'
    as _i329;
import 'package:smoke_test/src/sdk/src/iam/operation/tag_server_certificate_operation.dart'
    as _i331;
import 'package:smoke_test/src/sdk/src/iam/operation/tag_user_operation.dart'
    as _i333;
import 'package:smoke_test/src/sdk/src/iam/operation/untag_instance_profile_operation.dart'
    as _i335;
import 'package:smoke_test/src/sdk/src/iam/operation/untag_mfa_device_operation.dart'
    as _i337;
import 'package:smoke_test/src/sdk/src/iam/operation/untag_open_id_connect_provider_operation.dart'
    as _i339;
import 'package:smoke_test/src/sdk/src/iam/operation/untag_policy_operation.dart'
    as _i341;
import 'package:smoke_test/src/sdk/src/iam/operation/untag_role_operation.dart'
    as _i343;
import 'package:smoke_test/src/sdk/src/iam/operation/untag_saml_provider_operation.dart'
    as _i345;
import 'package:smoke_test/src/sdk/src/iam/operation/untag_server_certificate_operation.dart'
    as _i347;
import 'package:smoke_test/src/sdk/src/iam/operation/untag_user_operation.dart'
    as _i349;
import 'package:smoke_test/src/sdk/src/iam/operation/update_access_key_operation.dart'
    as _i351;
import 'package:smoke_test/src/sdk/src/iam/operation/update_account_password_policy_operation.dart'
    as _i353;
import 'package:smoke_test/src/sdk/src/iam/operation/update_assume_role_policy_operation.dart'
    as _i355;
import 'package:smoke_test/src/sdk/src/iam/operation/update_group_operation.dart'
    as _i357;
import 'package:smoke_test/src/sdk/src/iam/operation/update_login_profile_operation.dart'
    as _i359;
import 'package:smoke_test/src/sdk/src/iam/operation/update_open_id_connect_provider_thumbprint_operation.dart'
    as _i361;
import 'package:smoke_test/src/sdk/src/iam/operation/update_role_description_operation.dart'
    as _i367;
import 'package:smoke_test/src/sdk/src/iam/operation/update_role_operation.dart'
    as _i364;
import 'package:smoke_test/src/sdk/src/iam/operation/update_saml_provider_operation.dart'
    as _i370;
import 'package:smoke_test/src/sdk/src/iam/operation/update_server_certificate_operation.dart'
    as _i374;
import 'package:smoke_test/src/sdk/src/iam/operation/update_service_specific_credential_operation.dart'
    as _i376;
import 'package:smoke_test/src/sdk/src/iam/operation/update_signing_certificate_operation.dart'
    as _i378;
import 'package:smoke_test/src/sdk/src/iam/operation/update_ssh_public_key_operation.dart'
    as _i372;
import 'package:smoke_test/src/sdk/src/iam/operation/update_user_operation.dart'
    as _i380;
import 'package:smoke_test/src/sdk/src/iam/operation/upload_server_certificate_operation.dart'
    as _i386;
import 'package:smoke_test/src/sdk/src/iam/operation/upload_signing_certificate_operation.dart'
    as _i389;
import 'package:smoke_test/src/sdk/src/iam/operation/upload_ssh_public_key_operation.dart'
    as _i383;

/// ## Identity and Access Management
///
/// Identity and Access Management (IAM) is a web service for securely controlling access to Amazon Web Services services. With IAM, you can centrally manage users, security credentials such as access keys, and permissions that control which Amazon Web Services resources users and applications can access. For more information about IAM, see [Identity and Access Management (IAM)](http://aws.amazon.com/iam/) and the [Identity and Access Management User Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/).
class IamClient {
  /// ## Identity and Access Management
  ///
  /// Identity and Access Management (IAM) is a web service for securely controlling access to Amazon Web Services services. With IAM, you can centrally manage users, security credentials such as access keys, and permissions that control which Amazon Web Services resources users and applications can access. For more information about IAM, see [Identity and Access Management (IAM)](http://aws.amazon.com/iam/) and the [Identity and Access Management User Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/).
  const IamClient({
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

  /// Adds a new client ID (also known as audience) to the list of client IDs already registered for the specified IAM OpenID Connect (OIDC) provider resource.
  ///
  /// This operation is idempotent; it does not fail or return an error if you add an existing client ID to the provider.
  _i3.SmithyOperation<void> addClientIdToOpenIdConnectProvider(
    _i4.AddClientIdToOpenIdConnectProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i5.AddClientIdToOpenIdConnectProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds the specified IAM role to the specified instance profile. An instance profile can contain only one role, and this quota cannot be increased. You can remove the existing role and then add a different role to an instance profile. You must then wait for the change to appear across all of Amazon Web Services because of [eventual consistency](https://en.wikipedia.org/wiki/Eventual_consistency). To force the change, you must [disassociate the instance profile](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DisassociateIamInstanceProfile.html) and then [associate the instance profile](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AssociateIamInstanceProfile.html), or you can stop your instance and then restart it.
  ///
  /// The caller of this operation must be granted the `PassRole` permission on the IAM role by a permissions policy.
  ///
  /// For more information about roles, see [Working with roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html). For more information about instance profiles, see [About instance profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).
  _i3.SmithyOperation<void> addRoleToInstanceProfile(
    _i6.AddRoleToInstanceProfileRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i7.AddRoleToInstanceProfileOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds the specified user to the specified group.
  _i3.SmithyOperation<void> addUserToGroup(
    _i8.AddUserToGroupRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i9.AddUserToGroupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Attaches the specified managed policy to the specified IAM group.
  ///
  /// You use this operation to attach a managed policy to a group. To embed an inline policy in a group, use PutGroupPolicy.
  ///
  /// As a best practice, you can validate your IAM policies. To learn more, see [Validating IAM policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html) in the _IAM User Guide_.
  ///
  /// For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> attachGroupPolicy(
    _i10.AttachGroupPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i11.AttachGroupPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Attaches the specified managed policy to the specified IAM role. When you attach a managed policy to a role, the managed policy becomes part of the role's permission (access) policy.
  ///
  /// You cannot use a managed policy as the role's trust policy. The role's trust policy is created at the same time as the role, using CreateRole. You can update a role's trust policy using UpdateAssumeRolePolicy.
  ///
  /// Use this operation to attach a _managed_ policy to a role. To embed an inline policy in a role, use PutRolePolicy. For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// As a best practice, you can validate your IAM policies. To learn more, see [Validating IAM policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> attachRolePolicy(
    _i12.AttachRolePolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i13.AttachRolePolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Attaches the specified managed policy to the specified user.
  ///
  /// You use this operation to attach a _managed_ policy to a user. To embed an inline policy in a user, use PutUserPolicy.
  ///
  /// As a best practice, you can validate your IAM policies. To learn more, see [Validating IAM policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html) in the _IAM User Guide_.
  ///
  /// For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> attachUserPolicy(
    _i14.AttachUserPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i15.AttachUserPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Changes the password of the IAM user who is calling this operation. This operation can be performed using the CLI, the Amazon Web Services API, or the **My Security Credentials** page in the Amazon Web Services Management Console. The Amazon Web Services account root user password is not affected by this operation.
  ///
  /// Use UpdateLoginProfile to use the CLI, the Amazon Web Services API, or the **Users** page in the IAM console to change the password for any IAM user. For more information about modifying passwords, see [Managing passwords](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> changePassword(
    _i16.ChangePasswordRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i17.ChangePasswordOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new Amazon Web Services secret access key and corresponding Amazon Web Services access key ID for the specified user. The default status for new keys is `Active`.
  ///
  /// If you do not specify a user name, IAM determines the user name implicitly based on the Amazon Web Services access key ID signing the request. This operation works for access keys under the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root user credentials. This is true even if the Amazon Web Services account has no associated users.
  ///
  /// For information about quotas on the number of keys you can create, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
  ///
  /// To ensure the security of your Amazon Web Services account, the secret access key is accessible only during key and user creation. You must save the key (for example, in a text file) if you want to be able to access it again. If a secret key is lost, you can delete the access keys for the associated user and then create new keys.
  _i3.SmithyOperation<_i18.CreateAccessKeyResponse> createAccessKey(
    _i19.CreateAccessKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i20.CreateAccessKeyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates an alias for your Amazon Web Services account. For information about using an Amazon Web Services account alias, see [Creating, deleting, and listing an Amazon Web Services account alias](https://docs.aws.amazon.com/signin/latest/userguide/CreateAccountAlias.html) in the _Amazon Web Services Sign-In User Guide_.
  _i3.SmithyOperation<void> createAccountAlias(
    _i21.CreateAccountAliasRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i22.CreateAccountAliasOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new group.
  ///
  /// For information about the number of groups you can create, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i23.CreateGroupResponse> createGroup(
    _i24.CreateGroupRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i25.CreateGroupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new instance profile. For information about instance profiles, see [Using roles for applications on Amazon EC2](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html) in the _IAM User Guide_, and [Instance profiles](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html#ec2-instance-profile) in the _Amazon EC2 User Guide_.
  ///
  /// For information about the number of instance profiles you can create, see [IAM object quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i26.CreateInstanceProfileResponse> createInstanceProfile(
    _i27.CreateInstanceProfileRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i28.CreateInstanceProfileOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a password for the specified IAM user. A password allows an IAM user to access Amazon Web Services services through the Amazon Web Services Management Console.
  ///
  /// You can use the CLI, the Amazon Web Services API, or the **Users** page in the IAM console to create a password for any IAM user. Use ChangePassword to update your own existing password in the **My Security Credentials** page in the Amazon Web Services Management Console.
  ///
  /// For more information about managing passwords, see [Managing passwords](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i29.CreateLoginProfileResponse> createLoginProfile(
    _i30.CreateLoginProfileRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i31.CreateLoginProfileOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates an IAM entity to describe an identity provider (IdP) that supports [OpenID Connect (OIDC)](http://openid.net/connect/).
  ///
  /// The OIDC provider that you create with this operation can be used as a principal in a role's trust policy. Such a policy establishes a trust relationship between Amazon Web Services and the OIDC provider.
  ///
  /// If you are using an OIDC identity provider from Google, Facebook, or Amazon Cognito, you don't need to create a separate IAM identity provider. These OIDC identity providers are already built-in to Amazon Web Services and are available for your use. Instead, you can move directly to creating new roles using your identity provider. To learn more, see [Creating a role for web identity or OpenID connect federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_oidc.html) in the _IAM User Guide_.
  ///
  /// When you create the IAM OIDC provider, you specify the following:
  ///
  /// *   The URL of the OIDC identity provider (IdP) to trust
  ///
  /// *   A list of client IDs (also known as audiences) that identify the application or applications allowed to authenticate using the OIDC provider
  ///
  /// *   A list of tags that are attached to the specified IAM OIDC provider
  ///
  /// *   A list of thumbprints of one or more server certificates that the IdP uses
  ///
  ///
  /// You get all of this information from the OIDC IdP you want to use to access Amazon Web Services.
  ///
  /// Amazon Web Services secures communication with some OIDC identity providers (IdPs) through our library of trusted certificate authorities (CAs) instead of using a certificate thumbprint to verify your IdP server certificate. These OIDC IdPs include Google, Auth0, and those that use an Amazon S3 bucket to host a JSON Web Key Set (JWKS) endpoint. In these cases, your legacy thumbprint remains in your configuration, but is no longer used for validation.
  ///
  /// The trust for the OIDC provider is derived from the IAM provider that this operation creates. Therefore, it is best to limit access to the CreateOpenIDConnectProvider operation to highly privileged users.
  _i3.SmithyOperation<_i32.CreateOpenIdConnectProviderResponse>
      createOpenIdConnectProvider(
    _i33.CreateOpenIdConnectProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i34.CreateOpenIdConnectProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new managed policy for your Amazon Web Services account.
  ///
  /// This operation creates a policy version with a version identifier of `v1` and sets v1 as the policy's default version. For more information about policy versions, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the _IAM User Guide_.
  ///
  /// As a best practice, you can validate your IAM policies. To learn more, see [Validating IAM policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html) in the _IAM User Guide_.
  ///
  /// For more information about managed policies in general, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i35.CreatePolicyResponse> createPolicy(
    _i36.CreatePolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i37.CreatePolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new version of the specified managed policy. To update a managed policy, you create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must delete an existing version using DeletePolicyVersion before you create a new version.
  ///
  /// Optionally, you can set the new version as the policy's default version. The default version is the version that is in effect for the IAM users, groups, and roles to which the policy is attached.
  ///
  /// For more information about managed policy versions, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i38.CreatePolicyVersionResponse> createPolicyVersion(
    _i39.CreatePolicyVersionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i40.CreatePolicyVersionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new role for your Amazon Web Services account. For more information about roles, see [IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html). For information about quotas for role names and the number of roles you can create, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i41.CreateRoleResponse> createRole(
    _i42.CreateRoleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i43.CreateRoleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates an IAM resource that describes an identity provider (IdP) that supports SAML 2.0.
  ///
  /// The SAML provider resource that you create with this operation can be used as a principal in an IAM role's trust policy. Such a policy can enable federated users who sign in using the SAML IdP to assume the role. You can create an IAM role that supports Web-based single sign-on (SSO) to the Amazon Web Services Management Console or one that supports API access to Amazon Web Services.
  ///
  /// When you create the SAML provider resource, you upload a SAML metadata document that you get from your IdP. That document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that the IdP sends. You must generate the metadata document using the identity management software that is used as your organization's IdP.
  ///
  /// This operation requires [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  ///
  /// For more information, see [Enabling SAML 2.0 federated users to access the Amazon Web Services Management Console](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html) and [About SAML 2.0-based federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i44.CreateSamlProviderResponse> createSamlProvider(
    _i45.CreateSamlProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i46.CreateSamlProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates an IAM role that is linked to a specific Amazon Web Services service. The service controls the attached policies and when the role can be deleted. This helps ensure that the service is not broken by an unexpectedly changed or deleted role, which could put your Amazon Web Services resources into an unknown state. Allowing the service to control the role helps improve service stability and proper cleanup when a service and its role are no longer needed. For more information, see [Using service-linked roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html) in the _IAM User Guide_.
  ///
  /// To attach a policy to this service-linked role, you must make the request using the Amazon Web Services service that depends on this role.
  _i3.SmithyOperation<_i47.CreateServiceLinkedRoleResponse>
      createServiceLinkedRole(
    _i48.CreateServiceLinkedRoleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i49.CreateServiceLinkedRoleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Generates a set of credentials consisting of a user name and password that can be used to access the service specified in the request. These credentials are generated by IAM, and can be used only for the specified service.
  ///
  /// You can have a maximum of two sets of service-specific credentials for each supported service per user.
  ///
  /// You can create service-specific credentials for CodeCommit and Amazon Keyspaces (for Apache Cassandra).
  ///
  /// You can reset the password to a new service-generated value by calling ResetServiceSpecificCredential.
  ///
  /// For more information about service-specific credentials, see [Using IAM with CodeCommit: Git credentials, SSH keys, and Amazon Web Services access keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_ssh-keys.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i50.CreateServiceSpecificCredentialResponse>
      createServiceSpecificCredential(
    _i51.CreateServiceSpecificCredentialRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i52.CreateServiceSpecificCredentialOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new IAM user for your Amazon Web Services account.
  ///
  /// For information about quotas for the number of IAM users you can create, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i53.CreateUserResponse> createUser(
    _i54.CreateUserRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i55.CreateUserOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new virtual MFA device for the Amazon Web Services account. After creating the virtual MFA, use EnableMFADevice to attach the MFA device to an IAM user. For more information about creating and working with virtual MFA devices, see [Using a virtual MFA device](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html) in the _IAM User Guide_.
  ///
  /// For information about the maximum number of MFA devices you can create, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
  ///
  /// The seed information contained in the QR code and the Base32 string should be treated like any other secret access information. In other words, protect the seed information as you would your Amazon Web Services access keys or your passwords. After you provision your virtual device, you should ensure that the information is destroyed following secure procedures.
  _i3.SmithyOperation<_i56.CreateVirtualMfaDeviceResponse>
      createVirtualMfaDevice(
    _i57.CreateVirtualMfaDeviceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i58.CreateVirtualMfaDeviceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deactivates the specified MFA device and removes it from association with the user name for which it was originally enabled.
  ///
  /// For more information about creating and working with virtual MFA devices, see [Enabling a virtual multi-factor authentication (MFA) device](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> deactivateMfaDevice(
    _i59.DeactivateMfaDeviceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i60.DeactivateMfaDeviceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the access key pair associated with the specified IAM user.
  ///
  /// If you do not specify a user name, IAM determines the user name implicitly based on the Amazon Web Services access key ID signing the request. This operation works for access keys under the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated users.
  _i3.SmithyOperation<void> deleteAccessKey(
    _i61.DeleteAccessKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i62.DeleteAccessKeyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified Amazon Web Services account alias. For information about using an Amazon Web Services account alias, see [Creating, deleting, and listing an Amazon Web Services account alias](https://docs.aws.amazon.com/signin/latest/userguide/CreateAccountAlias.html) in the _Amazon Web Services Sign-In User Guide_.
  _i3.SmithyOperation<void> deleteAccountAlias(
    _i63.DeleteAccountAliasRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i64.DeleteAccountAliasOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the password policy for the Amazon Web Services account. There are no parameters.
  _i3.SmithyOperation<void> deleteAccountPasswordPolicy({
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i65.DeleteAccountPasswordPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i3.Unit(),
      client: client ?? _client,
    );
  }

  /// Deletes the specified IAM group. The group must not contain any users or have any attached policies.
  _i3.SmithyOperation<void> deleteGroup(
    _i66.DeleteGroupRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i67.DeleteGroupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified inline policy that is embedded in the specified IAM group.
  ///
  /// A group can also have managed policies attached to it. To detach a managed policy from a group, use DetachGroupPolicy. For more information about policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> deleteGroupPolicy(
    _i68.DeleteGroupPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i69.DeleteGroupPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified instance profile. The instance profile must not have an associated role.
  ///
  /// Make sure that you do not have any Amazon EC2 instances running with the instance profile you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.
  ///
  /// For more information about instance profiles, see [About instance profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).
  _i3.SmithyOperation<void> deleteInstanceProfile(
    _i70.DeleteInstanceProfileRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i71.DeleteInstanceProfileOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the password for the specified IAM user, For more information, see [Managing passwords for IAM users](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_admin-change-user.html).
  ///
  /// You can use the CLI, the Amazon Web Services API, or the **Users** page in the IAM console to delete a password for any IAM user. You can use ChangePassword to update, but not delete, your own password in the **My Security Credentials** page in the Amazon Web Services Management Console.
  ///
  /// Deleting a user's password does not prevent a user from accessing Amazon Web Services through the command line interface or the API. To prevent all user access, you must also either make any access keys inactive or delete them. For more information about making keys inactive or deleting them, see UpdateAccessKey and DeleteAccessKey.
  _i3.SmithyOperation<void> deleteLoginProfile(
    _i72.DeleteLoginProfileRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i73.DeleteLoginProfileOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes an OpenID Connect identity provider (IdP) resource object in IAM.
  ///
  /// Deleting an IAM OIDC provider resource does not update any roles that reference the provider as a principal in their trust policies. Any attempt to assume a role that references a deleted provider fails.
  ///
  /// This operation is idempotent; it does not fail or return an error if you call the operation for a provider that does not exist.
  _i3.SmithyOperation<void> deleteOpenIdConnectProvider(
    _i74.DeleteOpenIdConnectProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i75.DeleteOpenIdConnectProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified managed policy.
  ///
  /// Before you can delete a managed policy, you must first detach the policy from all users, groups, and roles that it is attached to. In addition, you must delete all the policy's versions. The following steps describe the process for deleting a managed policy:
  ///
  /// *   Detach the policy from all users, groups, and roles that the policy is attached to, using DetachUserPolicy, DetachGroupPolicy, or DetachRolePolicy. To list all the users, groups, and roles that a policy is attached to, use ListEntitiesForPolicy.
  ///
  /// *   Delete all versions of the policy using DeletePolicyVersion. To list the policy's versions, use ListPolicyVersions. You cannot use DeletePolicyVersion to delete the version that is marked as the default version. You delete the policy's default version in the next step of the process.
  ///
  /// *   Delete the policy (this automatically deletes the policy's default version) using this operation.
  ///
  ///
  /// For information about managed policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> deletePolicy(
    _i76.DeletePolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i77.DeletePolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified version from the specified managed policy.
  ///
  /// You cannot delete the default version from a policy using this operation. To delete the default version from a policy, use DeletePolicy. To find out which version of a policy is marked as the default version, use ListPolicyVersions.
  ///
  /// For information about versions for managed policies, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> deletePolicyVersion(
    _i78.DeletePolicyVersionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i79.DeletePolicyVersionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified role. Unlike the Amazon Web Services Management Console, when you delete a role programmatically, you must delete the items attached to the role manually, or the deletion fails. For more information, see [Deleting an IAM role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_manage_delete.html#roles-managingrole-deleting-cli). Before attempting to delete a role, remove the following attached items:
  ///
  /// *   Inline policies (DeleteRolePolicy)
  ///
  /// *   Attached managed policies (DetachRolePolicy)
  ///
  /// *   Instance profile (RemoveRoleFromInstanceProfile)
  ///
  /// *   Optional – Delete instance profile after detaching from role for resource clean up (DeleteInstanceProfile)
  ///
  ///
  /// Make sure that you do not have any Amazon EC2 instances running with the role you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.
  _i3.SmithyOperation<void> deleteRole(
    _i80.DeleteRoleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i81.DeleteRoleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the permissions boundary for the specified IAM role.
  ///
  /// You cannot set the boundary for a service-linked role.
  ///
  /// Deleting the permissions boundary for a role might increase its permissions. For example, it might allow anyone who assumes the role to perform all the actions granted in its permissions policies.
  _i3.SmithyOperation<void> deleteRolePermissionsBoundary(
    _i82.DeleteRolePermissionsBoundaryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i83.DeleteRolePermissionsBoundaryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified inline policy that is embedded in the specified IAM role.
  ///
  /// A role can also have managed policies attached to it. To detach a managed policy from a role, use DetachRolePolicy. For more information about policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> deleteRolePolicy(
    _i84.DeleteRolePolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i85.DeleteRolePolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a SAML provider resource in IAM.
  ///
  /// Deleting the provider resource from IAM does not update any roles that reference the SAML provider resource's ARN as a principal in their trust policies. Any attempt to assume a role that references a non-existent provider resource ARN fails.
  ///
  /// This operation requires [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  _i3.SmithyOperation<void> deleteSamlProvider(
    _i86.DeleteSamlProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i87.DeleteSamlProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified SSH public key.
  ///
  /// The SSH public key deleted by this operation is used only for authenticating the associated IAM user to an CodeCommit repository. For more information about using SSH keys to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html) in the _CodeCommit User Guide_.
  _i3.SmithyOperation<void> deleteSshPublicKey(
    _i88.DeleteSshPublicKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i89.DeleteSshPublicKeyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified server certificate.
  ///
  /// For more information about working with server certificates, see [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the _IAM User Guide_. This topic also includes a list of Amazon Web Services services that can use the server certificates that you manage with IAM.
  ///
  /// If you are using a server certificate with Elastic Load Balancing, deleting the certificate could have implications for your application. If Elastic Load Balancing doesn't detect the deletion of bound certificates, it may continue to use the certificates. This could cause Elastic Load Balancing to stop accepting traffic. We recommend that you remove the reference to the certificate from Elastic Load Balancing before using this command to delete the certificate. For more information, see [DeleteLoadBalancerListeners](https://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/API_DeleteLoadBalancerListeners.html) in the _Elastic Load Balancing API Reference_.
  _i3.SmithyOperation<void> deleteServerCertificate(
    _i90.DeleteServerCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i91.DeleteServerCertificateOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Submits a service-linked role deletion request and returns a `DeletionTaskId`, which you can use to check the status of the deletion. Before you call this operation, confirm that the role has no active sessions and that any resources used by the role in the linked service are deleted. If you call this operation more than once for the same service-linked role and an earlier deletion task is not complete, then the `DeletionTaskId` of the earlier request is returned.
  ///
  /// If you submit a deletion request for a service-linked role whose linked service is still accessing a resource, then the deletion task fails. If it fails, the GetServiceLinkedRoleDeletionStatus operation returns the reason for the failure, usually including the resources that must be deleted. To delete the service-linked role, you must first remove those resources from the linked service and then submit the deletion request again. Resources are specific to the service that is linked to the role. For more information about removing resources from a service, see the [Amazon Web Services documentation](http://docs.aws.amazon.com/) for your service.
  ///
  /// For more information about service-linked roles, see [Roles terms and concepts: Amazon Web Services service-linked role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role) in the _IAM User Guide_.
  _i3.SmithyOperation<_i92.DeleteServiceLinkedRoleResponse>
      deleteServiceLinkedRole(
    _i93.DeleteServiceLinkedRoleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i94.DeleteServiceLinkedRoleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified service-specific credential.
  _i3.SmithyOperation<void> deleteServiceSpecificCredential(
    _i95.DeleteServiceSpecificCredentialRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i96.DeleteServiceSpecificCredentialOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a signing certificate associated with the specified IAM user.
  ///
  /// If you do not specify a user name, IAM determines the user name implicitly based on the Amazon Web Services access key ID signing the request. This operation works for access keys under the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated IAM users.
  _i3.SmithyOperation<void> deleteSigningCertificate(
    _i97.DeleteSigningCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i98.DeleteSigningCertificateOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified IAM user. Unlike the Amazon Web Services Management Console, when you delete a user programmatically, you must delete the items attached to the user manually, or the deletion fails. For more information, see [Deleting an IAM user](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_deleting_cli). Before attempting to delete a user, remove the following items:
  ///
  /// *   Password (DeleteLoginProfile)
  ///
  /// *   Access keys (DeleteAccessKey)
  ///
  /// *   Signing certificate (DeleteSigningCertificate)
  ///
  /// *   SSH public key (DeleteSSHPublicKey)
  ///
  /// *   Git credentials (DeleteServiceSpecificCredential)
  ///
  /// *   Multi-factor authentication (MFA) device (DeactivateMFADevice, DeleteVirtualMFADevice)
  ///
  /// *   Inline policies (DeleteUserPolicy)
  ///
  /// *   Attached managed policies (DetachUserPolicy)
  ///
  /// *   Group memberships (RemoveUserFromGroup)
  _i3.SmithyOperation<void> deleteUser(
    _i99.DeleteUserRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i100.DeleteUserOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the permissions boundary for the specified IAM user.
  ///
  /// Deleting the permissions boundary for a user might increase its permissions by allowing the user to perform all the actions granted in its permissions policies.
  _i3.SmithyOperation<void> deleteUserPermissionsBoundary(
    _i101.DeleteUserPermissionsBoundaryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i102.DeleteUserPermissionsBoundaryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified inline policy that is embedded in the specified IAM user.
  ///
  /// A user can also have managed policies attached to it. To detach a managed policy from a user, use DetachUserPolicy. For more information about policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> deleteUserPolicy(
    _i103.DeleteUserPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i104.DeleteUserPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a virtual MFA device.
  ///
  /// You must deactivate a user's virtual MFA device before you can delete it. For information about deactivating MFA devices, see DeactivateMFADevice.
  _i3.SmithyOperation<void> deleteVirtualMfaDevice(
    _i105.DeleteVirtualMfaDeviceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i106.DeleteVirtualMfaDeviceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified managed policy from the specified IAM group.
  ///
  /// A group can also have inline policies embedded with it. To delete an inline policy, use DeleteGroupPolicy. For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> detachGroupPolicy(
    _i107.DetachGroupPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i108.DetachGroupPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified managed policy from the specified role.
  ///
  /// A role can also have inline policies embedded with it. To delete an inline policy, use DeleteRolePolicy. For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> detachRolePolicy(
    _i109.DetachRolePolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i110.DetachRolePolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified managed policy from the specified user.
  ///
  /// A user can also have inline policies embedded with it. To delete an inline policy, use DeleteUserPolicy. For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> detachUserPolicy(
    _i111.DetachUserPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i112.DetachUserPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Enables the specified MFA device and associates it with the specified IAM user. When enabled, the MFA device is required for every subsequent login by the IAM user associated with the device.
  _i3.SmithyOperation<void> enableMfaDevice(
    _i113.EnableMfaDeviceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i114.EnableMfaDeviceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Generates a credential report for the Amazon Web Services account. For more information about the credential report, see [Getting credential reports](https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i115.GenerateCredentialReportResponse>
      generateCredentialReport({
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i116.GenerateCredentialReportOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i3.Unit(),
      client: client ?? _client,
    );
  }

  /// Generates a report for service last accessed data for Organizations. You can generate a report for any entities (organization root, organizational unit, or account) or policies in your organization.
  ///
  /// To call this operation, you must be signed in using your Organizations management account credentials. You can use your long-term IAM user or root user credentials, or temporary credentials from assuming an IAM role. SCPs must be enabled for your organization root. You must have the required IAM and Organizations permissions. For more information, see [Refining permissions using service last accessed data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html) in the _IAM User Guide_.
  ///
  /// You can generate a service last accessed data report for entities by specifying only the entity's path. This data includes a list of services that are allowed by any service control policies (SCPs) that apply to the entity.
  ///
  /// You can generate a service last accessed data report for a policy by specifying an entity's path and an optional Organizations policy ID. This data includes a list of services that are allowed by the specified SCP.
  ///
  /// For each service in both report types, the data includes the most recent account activity that the policy allows to account principals in the entity or the entity's children. For important information about the data, reporting period, permissions required, troubleshooting, and supported Regions see [Reducing permissions using service last accessed data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html) in the _IAM User Guide_.
  ///
  /// The data includes all attempts to access Amazon Web Services, not just the successful ones. This includes all attempts that were made using the Amazon Web Services Management Console, the Amazon Web Services API through any of the SDKs, or any of the command line tools. An unexpected entry in the service last accessed data does not mean that an account has been compromised, because the request might have been denied. Refer to your CloudTrail logs as the authoritative source for information about all API calls and whether they were successful or denied access. For more information, see [Logging IAM events with CloudTrail](https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html) in the _IAM User Guide_.
  ///
  /// This operation returns a `JobId`. Use this parameter in the `GetOrganizationsAccessReport` operation to check the status of the report generation. To check the status of this request, use the `JobId` parameter in the `GetOrganizationsAccessReport` operation and test the `JobStatus` response parameter. When the job is complete, you can retrieve the report.
  ///
  /// To generate a service last accessed data report for entities, specify an entity path without specifying the optional Organizations policy ID. The type of entity that you specify determines the data returned in the report.
  ///
  /// *   **Root** – When you specify the organizations root as the entity, the resulting report lists all of the services allowed by SCPs that are attached to your root. For each service, the report includes data for all accounts in your organization except the management account, because the management account is not limited by SCPs.
  ///
  /// *   **OU** – When you specify an organizational unit (OU) as the entity, the resulting report lists all of the services allowed by SCPs that are attached to the OU and its parents. For each service, the report includes data for all accounts in the OU or its children. This data excludes the management account, because the management account is not limited by SCPs.
  ///
  /// *   **management account** – When you specify the management account, the resulting report lists all Amazon Web Services services, because the management account is not limited by SCPs. For each service, the report includes data for only the management account.
  ///
  /// *   **Account** – When you specify another account as the entity, the resulting report lists all of the services allowed by SCPs that are attached to the account and its parents. For each service, the report includes data for only the specified account.
  ///
  ///
  /// To generate a service last accessed data report for policies, specify an entity path and the optional Organizations policy ID. The type of entity that you specify determines the data returned for each service.
  ///
  /// *   **Root** – When you specify the root entity and a policy ID, the resulting report lists all of the services that are allowed by the specified SCP. For each service, the report includes data for all accounts in your organization to which the SCP applies. This data excludes the management account, because the management account is not limited by SCPs. If the SCP is not attached to any entities in the organization, then the report will return a list of services with no data.
  ///
  /// *   **OU** – When you specify an OU entity and a policy ID, the resulting report lists all of the services that are allowed by the specified SCP. For each service, the report includes data for all accounts in the OU or its children to which the SCP applies. This means that other accounts outside the OU that are affected by the SCP might not be included in the data. This data excludes the management account, because the management account is not limited by SCPs. If the SCP is not attached to the OU or one of its children, the report will return a list of services with no data.
  ///
  /// *   **management account** – When you specify the management account, the resulting report lists all Amazon Web Services services, because the management account is not limited by SCPs. If you specify a policy ID in the CLI or API, the policy is ignored. For each service, the report includes data for only the management account.
  ///
  /// *   **Account** – When you specify another account entity and a policy ID, the resulting report lists all of the services that are allowed by the specified SCP. For each service, the report includes data for only the specified account. This means that other accounts in the organization that are affected by the SCP might not be included in the data. If the SCP is not attached to the account, the report will return a list of services with no data.
  ///
  ///
  /// Service last accessed data does not use other policy types when determining whether a principal could access a service. These other policy types include identity-based policies, resource-based policies, access control lists, IAM permissions boundaries, and STS assume role policies. It only applies SCP logic. For more about the evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics) in the _IAM User Guide_.
  ///
  /// For more information about service last accessed data, see [Reducing policy scope by viewing user activity](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i117.GenerateOrganizationsAccessReportResponse>
      generateOrganizationsAccessReport(
    _i118.GenerateOrganizationsAccessReportRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i119.GenerateOrganizationsAccessReportOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Generates a report that includes details about when an IAM resource (user, group, role, or policy) was last used in an attempt to access Amazon Web Services services. Recent activity usually appears within four hours. IAM reports activity for at least the last 400 days, or less if your Region began supporting this feature within the last year. For more information, see [Regions where data is tracked](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period).
  ///
  /// The service last accessed data includes all attempts to access an Amazon Web Services API, not just the successful ones. This includes all attempts that were made using the Amazon Web Services Management Console, the Amazon Web Services API through any of the SDKs, or any of the command line tools. An unexpected entry in the service last accessed data does not mean that your account has been compromised, because the request might have been denied. Refer to your CloudTrail logs as the authoritative source for information about all API calls and whether they were successful or denied access. For more information, see [Logging IAM events with CloudTrail](https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html) in the _IAM User Guide_.
  ///
  /// The `GenerateServiceLastAccessedDetails` operation returns a `JobId`. Use this parameter in the following operations to retrieve the following details from your report:
  ///
  /// *   GetServiceLastAccessedDetails – Use this operation for users, groups, roles, or policies to list every Amazon Web Services service that the resource could access using permissions policies. For each service, the response includes information about the most recent access attempt.
  ///
  ///     The `JobId` returned by `GenerateServiceLastAccessedDetail` must be used by the same role within a session, or by the same user when used to call `GetServiceLastAccessedDetail`.
  ///
  /// *   GetServiceLastAccessedDetailsWithEntities – Use this operation for groups and policies to list information about the associated entities (users or roles) that attempted to access a specific Amazon Web Services service.
  ///
  ///
  /// To check the status of the `GenerateServiceLastAccessedDetails` request, use the `JobId` parameter in the same operations and test the `JobStatus` response parameter.
  ///
  /// For additional information about the permissions policies that allow an identity (user, group, or role) to access specific services, use the ListPoliciesGrantingServiceAccess operation.
  ///
  /// Service last accessed data does not use other policy types when determining whether a resource could access a service. These other policy types include resource-based policies, access control lists, Organizations policies, IAM permissions boundaries, and STS assume role policies. It only applies permissions policy logic. For more about the evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics) in the _IAM User Guide_.
  ///
  /// For more information about service and action last accessed data, see [Reducing permissions using service last accessed data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i120.GenerateServiceLastAccessedDetailsResponse>
      generateServiceLastAccessedDetails(
    _i121.GenerateServiceLastAccessedDetailsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i122.GenerateServiceLastAccessedDetailsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves information about when the specified access key was last used. The information includes the date and time of last use, along with the Amazon Web Services service and Region that were specified in the last request made with that key.
  _i3.SmithyOperation<_i123.GetAccessKeyLastUsedResponse> getAccessKeyLastUsed(
    _i124.GetAccessKeyLastUsedRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i125.GetAccessKeyLastUsedOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves information about all IAM users, groups, roles, and policies in your Amazon Web Services account, including their relationships to one another. Use this operation to obtain a snapshot of the configuration of IAM permissions (users, groups, roles, and policies) in your account.
  ///
  /// Policies returned by this operation are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the `decode` method of the `java.net.URLDecoder` utility class in the Java SDK. Other languages and SDKs provide similar functionality.
  ///
  /// You can optionally filter the results using the `Filter` parameter. You can paginate the results using the `MaxItems` and `Marker` parameters.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i126.GetAccountAuthorizationDetailsResponse, int,
          String>> getAccountAuthorizationDetails(
    _i127.GetAccountAuthorizationDetailsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i128.GetAccountAuthorizationDetailsOperation(
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

  /// Retrieves the password policy for the Amazon Web Services account. This tells you the complexity requirements and mandatory rotation periods for the IAM user passwords in your account. For more information about using a password policy, see [Managing an IAM password policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html).
  _i3.SmithyOperation<_i129.GetAccountPasswordPolicyResponse>
      getAccountPasswordPolicy({
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i130.GetAccountPasswordPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i3.Unit(),
      client: client ?? _client,
    );
  }

  /// Retrieves information about IAM entity usage and IAM quotas in the Amazon Web Services account.
  ///
  /// For information about IAM quotas, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i131.GetAccountSummaryResponse> getAccountSummary({
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i132.GetAccountSummaryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i3.Unit(),
      client: client ?? _client,
    );
  }

  /// Gets a list of all of the context keys referenced in the input policies. The policies are supplied as a list of one or more strings. To get the context keys from policies associated with an IAM user, group, or role, use GetContextKeysForPrincipalPolicy.
  ///
  /// Context keys are variables maintained by Amazon Web Services and its services that provide details about the context of an API query request. Context keys can be evaluated by testing against a value specified in an IAM policy. Use `GetContextKeysForCustomPolicy` to understand what key names and values you must supply when you call SimulateCustomPolicy. Note that all parameters are shown in unencoded form here for clarity but must be URL encoded to be included as a part of a real HTML request.
  _i3.SmithyOperation<_i133.GetContextKeysForPolicyResponse>
      getContextKeysForCustomPolicy(
    _i134.GetContextKeysForCustomPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i135.GetContextKeysForCustomPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Gets a list of all of the context keys referenced in all the IAM policies that are attached to the specified IAM entity. The entity can be an IAM user, group, or role. If you specify a user, then the request also includes all of the policies attached to groups that the user is a member of.
  ///
  /// You can optionally include a list of one or more additional policies, specified as strings. If you want to include _only_ a list of policies by string, use GetContextKeysForCustomPolicy instead.
  ///
  /// **Note:** This operation discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use GetContextKeysForCustomPolicy instead.
  ///
  /// Context keys are variables maintained by Amazon Web Services and its services that provide details about the context of an API query request. Context keys can be evaluated by testing against a value in an IAM policy. Use GetContextKeysForPrincipalPolicy to understand what key names and values you must supply when you call SimulatePrincipalPolicy.
  _i3.SmithyOperation<_i133.GetContextKeysForPolicyResponse>
      getContextKeysForPrincipalPolicy(
    _i136.GetContextKeysForPrincipalPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i137.GetContextKeysForPrincipalPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves a credential report for the Amazon Web Services account. For more information about the credential report, see [Getting credential reports](https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i138.GetCredentialReportResponse> getCredentialReport({
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i139.GetCredentialReportOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i3.Unit(),
      client: client ?? _client,
    );
  }

  /// Returns a list of IAM users that are in the specified IAM group. You can paginate the results using the `MaxItems` and `Marker` parameters.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i141.User>, int, String>> getGroup(
    _i142.GetGroupRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i143.GetGroupOperation(
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

  /// Retrieves the specified inline policy document that is embedded in the specified IAM group.
  ///
  /// Policies returned by this operation are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the `decode` method of the `java.net.URLDecoder` utility class in the Java SDK. Other languages and SDKs provide similar functionality.
  ///
  /// An IAM group can also have managed policies attached to it. To retrieve a managed policy document that is attached to a group, use GetPolicy to determine the policy's default version, then use GetPolicyVersion to retrieve the policy document.
  ///
  /// For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i144.GetGroupPolicyResponse> getGroupPolicy(
    _i145.GetGroupPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i146.GetGroupPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves information about the specified instance profile, including the instance profile's path, GUID, ARN, and role. For more information about instance profiles, see [About instance profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i147.GetInstanceProfileResponse> getInstanceProfile(
    _i148.GetInstanceProfileRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i149.GetInstanceProfileOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves the user name for the specified IAM user. A login profile is created when you create a password for the user to access the Amazon Web Services Management Console. If the user does not exist or does not have a password, the operation returns a 404 (`NoSuchEntity`) error.
  ///
  /// If you create an IAM user with access to the console, the `CreateDate` reflects the date you created the initial password for the user.
  ///
  /// If you create an IAM user with programmatic access, and then later add a password for the user to access the Amazon Web Services Management Console, the `CreateDate` reflects the initial password creation date. A user with programmatic access does not have a login profile unless you create a password for the user to access the Amazon Web Services Management Console.
  _i3.SmithyOperation<_i150.GetLoginProfileResponse> getLoginProfile(
    _i151.GetLoginProfileRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i152.GetLoginProfileOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns information about the specified OpenID Connect (OIDC) provider resource object in IAM.
  _i3.SmithyOperation<_i153.GetOpenIdConnectProviderResponse>
      getOpenIdConnectProvider(
    _i154.GetOpenIdConnectProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i155.GetOpenIdConnectProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves the service last accessed data report for Organizations that was previously generated using the `GenerateOrganizationsAccessReport` operation. This operation retrieves the status of your report job and the report contents.
  ///
  /// Depending on the parameters that you passed when you generated the report, the data returned could include different information. For details, see GenerateOrganizationsAccessReport.
  ///
  /// To call this operation, you must be signed in to the management account in your organization. SCPs must be enabled for your organization root. You must have permissions to perform this operation. For more information, see [Refining permissions using service last accessed data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html) in the _IAM User Guide_.
  ///
  /// For each service that principals in an account (root user, IAM users, or IAM roles) could access using SCPs, the operation returns details about the most recent access attempt. If there was no attempt, the service is listed without details about the most recent attempt to access the service. If the operation fails, it returns the reason that it failed.
  ///
  /// By default, the list is sorted by service namespace.
  _i3.SmithyOperation<_i156.GetOrganizationsAccessReportResponse>
      getOrganizationsAccessReport(
    _i157.GetOrganizationsAccessReportRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i158.GetOrganizationsAccessReportOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves information about the specified managed policy, including the policy's default version and the total number of IAM users, groups, and roles to which the policy is attached. To retrieve the list of the specific users, groups, and roles that the policy is attached to, use ListEntitiesForPolicy. This operation returns metadata about the policy. To retrieve the actual policy document for a specific version of the policy, use GetPolicyVersion.
  ///
  /// This operation retrieves information about managed policies. To retrieve information about an inline policy that is embedded with an IAM user, group, or role, use GetUserPolicy, GetGroupPolicy, or GetRolePolicy.
  ///
  /// For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i159.GetPolicyResponse> getPolicy(
    _i160.GetPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i161.GetPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves information about the specified version of the specified managed policy, including the policy document.
  ///
  /// Policies returned by this operation are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the `decode` method of the `java.net.URLDecoder` utility class in the Java SDK. Other languages and SDKs provide similar functionality.
  ///
  /// To list the available versions for a policy, use ListPolicyVersions.
  ///
  /// This operation retrieves information about managed policies. To retrieve information about an inline policy that is embedded in a user, group, or role, use GetUserPolicy, GetGroupPolicy, or GetRolePolicy.
  ///
  /// For more information about the types of policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// For more information about managed policy versions, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i162.GetPolicyVersionResponse> getPolicyVersion(
    _i163.GetPolicyVersionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i164.GetPolicyVersionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves information about the specified role, including the role's path, GUID, ARN, and the role's trust policy that grants permission to assume the role. For more information about roles, see [Working with roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).
  ///
  /// Policies returned by this operation are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the `decode` method of the `java.net.URLDecoder` utility class in the Java SDK. Other languages and SDKs provide similar functionality.
  _i3.SmithyOperation<_i165.GetRoleResponse> getRole(
    _i166.GetRoleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i167.GetRoleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves the specified inline policy document that is embedded with the specified IAM role.
  ///
  /// Policies returned by this operation are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the `decode` method of the `java.net.URLDecoder` utility class in the Java SDK. Other languages and SDKs provide similar functionality.
  ///
  /// An IAM role can also have managed policies attached to it. To retrieve a managed policy document that is attached to a role, use GetPolicy to determine the policy's default version, then use GetPolicyVersion to retrieve the policy document.
  ///
  /// For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// For more information about roles, see [Using roles to delegate permissions and federate identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html).
  _i3.SmithyOperation<_i168.GetRolePolicyResponse> getRolePolicy(
    _i169.GetRolePolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i170.GetRolePolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the SAML provider metadocument that was uploaded when the IAM SAML provider resource object was created or updated.
  ///
  /// This operation requires [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  _i3.SmithyOperation<_i171.GetSamlProviderResponse> getSamlProvider(
    _i172.GetSamlProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i173.GetSamlProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves the specified SSH public key, including metadata about the key.
  ///
  /// The SSH public key retrieved by this operation is used only for authenticating the associated IAM user to an CodeCommit repository. For more information about using SSH keys to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html) in the _CodeCommit User Guide_.
  _i3.SmithyOperation<_i174.GetSshPublicKeyResponse> getSshPublicKey(
    _i175.GetSshPublicKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i176.GetSshPublicKeyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves information about the specified server certificate stored in IAM.
  ///
  /// For more information about working with server certificates, see [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the _IAM User Guide_. This topic includes a list of Amazon Web Services services that can use the server certificates that you manage with IAM.
  _i3.SmithyOperation<_i177.GetServerCertificateResponse> getServerCertificate(
    _i178.GetServerCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i179.GetServerCertificateOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves a service last accessed report that was created using the `GenerateServiceLastAccessedDetails` operation. You can use the `JobId` parameter in `GetServiceLastAccessedDetails` to retrieve the status of your report job. When the report is complete, you can retrieve the generated report. The report includes a list of Amazon Web Services services that the resource (user, group, role, or managed policy) can access.
  ///
  /// Service last accessed data does not use other policy types when determining whether a resource could access a service. These other policy types include resource-based policies, access control lists, Organizations policies, IAM permissions boundaries, and STS assume role policies. It only applies permissions policy logic. For more about the evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics) in the _IAM User Guide_.
  ///
  /// For each service that the resource could access using permissions policies, the operation returns details about the most recent access attempt. If there was no attempt, the service is listed without details about the most recent attempt to access the service. If the operation fails, the `GetServiceLastAccessedDetails` operation returns the reason that it failed.
  ///
  /// The `GetServiceLastAccessedDetails` operation returns a list of services. This list includes the number of entities that have attempted to access the service and the date and time of the last attempt. It also returns the ARN of the following entity, depending on the resource ARN that you used to generate the report:
  ///
  /// *   **User** – Returns the user ARN that you used to generate the report
  ///
  /// *   **Group** – Returns the ARN of the group member (user) that last attempted to access the service
  ///
  /// *   **Role** – Returns the role ARN that you used to generate the report
  ///
  /// *   **Policy** – Returns the ARN of the user or role that last used the policy to attempt to access the service
  ///
  ///
  /// By default, the list is sorted by service namespace.
  ///
  /// If you specified `ACTION_LEVEL` granularity when you generated the report, this operation returns service and action last accessed data. This includes the most recent access attempt for each tracked action within a service. Otherwise, this operation returns only service data.
  ///
  /// For more information about service and action last accessed data, see [Reducing permissions using service last accessed data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i180.GetServiceLastAccessedDetailsResponse>
      getServiceLastAccessedDetails(
    _i181.GetServiceLastAccessedDetailsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i182.GetServiceLastAccessedDetailsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// After you generate a group or policy report using the `GenerateServiceLastAccessedDetails` operation, you can use the `JobId` parameter in `GetServiceLastAccessedDetailsWithEntities`. This operation retrieves the status of your report job and a list of entities that could have used group or policy permissions to access the specified service.
  ///
  /// *   **Group** – For a group report, this operation returns a list of users in the group that could have used the group’s policies in an attempt to access the service.
  ///
  /// *   **Policy** – For a policy report, this operation returns a list of entities (users or roles) that could have used the policy in an attempt to access the service.
  ///
  ///
  /// You can also use this operation for user or role reports to retrieve details about those entities.
  ///
  /// If the operation fails, the `GetServiceLastAccessedDetailsWithEntities` operation returns the reason that it failed.
  ///
  /// By default, the list of associated entities is sorted by date, with the most recent access listed first.
  _i3.SmithyOperation<_i183.GetServiceLastAccessedDetailsWithEntitiesResponse>
      getServiceLastAccessedDetailsWithEntities(
    _i184.GetServiceLastAccessedDetailsWithEntitiesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i185.GetServiceLastAccessedDetailsWithEntitiesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves the status of your service-linked role deletion. After you use DeleteServiceLinkedRole to submit a service-linked role for deletion, you can use the `DeletionTaskId` parameter in `GetServiceLinkedRoleDeletionStatus` to check the status of the deletion. If the deletion fails, this operation returns the reason that it failed, if that information is returned by the service.
  _i3.SmithyOperation<_i186.GetServiceLinkedRoleDeletionStatusResponse>
      getServiceLinkedRoleDeletionStatus(
    _i187.GetServiceLinkedRoleDeletionStatusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i188.GetServiceLinkedRoleDeletionStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves information about the specified IAM user, including the user's creation date, path, unique ID, and ARN.
  ///
  /// If you do not specify a user name, IAM determines the user name implicitly based on the Amazon Web Services access key ID used to sign the request to this operation.
  _i3.SmithyOperation<_i189.GetUserResponse> getUser(
    _i190.GetUserRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i191.GetUserOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves the specified inline policy document that is embedded in the specified IAM user.
  ///
  /// Policies returned by this operation are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the `decode` method of the `java.net.URLDecoder` utility class in the Java SDK. Other languages and SDKs provide similar functionality.
  ///
  /// An IAM user can also have managed policies attached to it. To retrieve a managed policy document that is attached to a user, use GetPolicy to determine the policy's default version. Then use GetPolicyVersion to retrieve the policy document.
  ///
  /// For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i192.GetUserPolicyResponse> getUserPolicy(
    _i193.GetUserPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i194.GetUserPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns information about the access key IDs associated with the specified IAM user. If there is none, the operation returns an empty list.
  ///
  /// Although each user is limited to a small number of keys, you can still paginate the results using the `MaxItems` and `Marker` parameters.
  ///
  /// If the `UserName` is not specified, the user name is determined implicitly based on the Amazon Web Services access key ID used to sign the request. If a temporary access key is used, then `UserName` is required. If a long-term key is assigned to the user, then `UserName` is not required. This operation works for access keys under the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated users.
  ///
  /// To ensure the security of your Amazon Web Services account, the secret access key is accessible only during key and user creation.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i195.AccessKeyMetadata>, int,
          String>> listAccessKeys(
    _i196.ListAccessKeysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i197.ListAccessKeysOperation(
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

  /// Lists the account alias associated with the Amazon Web Services account (Note: you can have only one). For information about using an Amazon Web Services account alias, see [Creating, deleting, and listing an Amazon Web Services account alias](https://docs.aws.amazon.com/signin/latest/userguide/CreateAccountAlias.html) in the _Amazon Web Services Sign-In User Guide_.
  _i3.SmithyOperation<_i3.PaginatedResult<_i140.BuiltList<String>, int, String>>
      listAccountAliases(
    _i198.ListAccountAliasesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i199.ListAccountAliasesOperation(
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

  /// Lists all managed policies that are attached to the specified IAM group.
  ///
  /// An IAM group can also have inline policies embedded with it. To list the inline policies for a group, use ListGroupPolicies. For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters. You can use the `PathPrefix` parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the operation returns an empty list.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i200.AttachedPolicy>, int,
          String>> listAttachedGroupPolicies(
    _i201.ListAttachedGroupPoliciesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i202.ListAttachedGroupPoliciesOperation(
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

  /// Lists all managed policies that are attached to the specified IAM role.
  ///
  /// An IAM role can also have inline policies embedded with it. To list the inline policies for a role, use ListRolePolicies. For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters. You can use the `PathPrefix` parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified role (or none that match the specified path prefix), the operation returns an empty list.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i200.AttachedPolicy>, int,
          String>> listAttachedRolePolicies(
    _i203.ListAttachedRolePoliciesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i204.ListAttachedRolePoliciesOperation(
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

  /// Lists all managed policies that are attached to the specified IAM user.
  ///
  /// An IAM user can also have inline policies embedded with it. To list the inline policies for a user, use ListUserPolicies. For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters. You can use the `PathPrefix` parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the operation returns an empty list.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i200.AttachedPolicy>, int,
          String>> listAttachedUserPolicies(
    _i205.ListAttachedUserPoliciesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i206.ListAttachedUserPoliciesOperation(
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

  /// Lists all IAM users, groups, and roles that the specified managed policy is attached to.
  ///
  /// You can use the optional `EntityFilter` parameter to limit the results to a particular type of entity (users, groups, or roles). For example, to list only the roles that are attached to the specified policy, set `EntityFilter` to `Role`.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i207.ListEntitiesForPolicyResponse, int, String>>
      listEntitiesForPolicy(
    _i208.ListEntitiesForPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i209.ListEntitiesForPolicyOperation(
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

  /// Lists the names of the inline policies that are embedded in the specified IAM group.
  ///
  /// An IAM group can also have managed policies attached to it. To list the managed policies that are attached to a group, use ListAttachedGroupPolicies. For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters. If there are no inline policies embedded with the specified group, the operation returns an empty list.
  _i3.SmithyOperation<_i3.PaginatedResult<_i140.BuiltList<String>, int, String>>
      listGroupPolicies(
    _i210.ListGroupPoliciesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i211.ListGroupPoliciesOperation(
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

  /// Lists the IAM groups that have the specified path prefix.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i140.BuiltList<_i212.Group>, int, String>>
      listGroups(
    _i213.ListGroupsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i214.ListGroupsOperation(
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

  /// Lists the IAM groups that the specified IAM user belongs to.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i140.BuiltList<_i212.Group>, int, String>>
      listGroupsForUser(
    _i215.ListGroupsForUserRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i216.ListGroupsForUserOperation(
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

  /// Lists the tags that are attached to the specified IAM instance profile. The returned list of tags is sorted by tag key. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i217.ListInstanceProfileTagsResponse>
      listInstanceProfileTags(
    _i218.ListInstanceProfileTagsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i219.ListInstanceProfileTagsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Lists the instance profiles that have the specified path prefix. If there are none, the operation returns an empty list. For more information about instance profiles, see [About instance profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).
  ///
  /// IAM resource-listing operations return a subset of the available attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for an instance profile, see GetInstanceProfile.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i220.InstanceProfile>, int,
          String>> listInstanceProfiles(
    _i221.ListInstanceProfilesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i222.ListInstanceProfilesOperation(
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

  /// Lists the instance profiles that have the specified associated IAM role. If there are none, the operation returns an empty list. For more information about instance profiles, go to [About instance profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i220.InstanceProfile>, int,
          String>> listInstanceProfilesForRole(
    _i223.ListInstanceProfilesForRoleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i224.ListInstanceProfilesForRoleOperation(
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

  /// Lists the tags that are attached to the specified IAM virtual multi-factor authentication (MFA) device. The returned list of tags is sorted by tag key. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i225.ListMfaDeviceTagsResponse> listMfaDeviceTags(
    _i226.ListMfaDeviceTagsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i227.ListMfaDeviceTagsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Lists the MFA devices for an IAM user. If the request includes a IAM user name, then this operation lists all the MFA devices associated with the specified user. If you do not specify a user name, IAM determines the user name implicitly based on the Amazon Web Services access key ID signing the request for this operation.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i140.BuiltList<_i228.MfaDevice>, int, String>>
      listMfaDevices(
    _i229.ListMfaDevicesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i230.ListMfaDevicesOperation(
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

  /// Lists the tags that are attached to the specified OpenID Connect (OIDC)-compatible identity provider. The returned list of tags is sorted by tag key. For more information, see [About web identity federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html).
  ///
  /// For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i231.ListOpenIdConnectProviderTagsResponse>
      listOpenIdConnectProviderTags(
    _i232.ListOpenIdConnectProviderTagsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i233.ListOpenIdConnectProviderTagsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Lists information about the IAM OpenID Connect (OIDC) provider resource objects defined in the Amazon Web Services account.
  ///
  /// IAM resource-listing operations return a subset of the available attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for an OIDC provider, see GetOpenIDConnectProvider.
  _i3.SmithyOperation<_i234.ListOpenIdConnectProvidersResponse>
      listOpenIdConnectProviders(
    _i235.ListOpenIdConnectProvidersRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i236.ListOpenIdConnectProvidersOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Lists all the managed policies that are available in your Amazon Web Services account, including your own customer-defined managed policies and all Amazon Web Services managed policies.
  ///
  /// You can filter the list of policies that is returned using the optional `OnlyAttached`, `Scope`, and `PathPrefix` parameters. For example, to list only the customer managed policies in your Amazon Web Services account, set `Scope` to `Local`. To list only Amazon Web Services managed policies, set `Scope` to `AWS`.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters.
  ///
  /// For more information about managed policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// IAM resource-listing operations return a subset of the available attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a customer manged policy, see GetPolicy.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i140.BuiltList<_i237.Policy>, int, String>>
      listPolicies(
    _i238.ListPoliciesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i239.ListPoliciesOperation(
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

  /// Retrieves a list of policies that the IAM identity (user, group, or role) can use to access each specified service.
  ///
  /// This operation does not use other policy types when determining whether a resource could access a service. These other policy types include resource-based policies, access control lists, Organizations policies, IAM permissions boundaries, and STS assume role policies. It only applies permissions policy logic. For more about the evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics) in the _IAM User Guide_.
  ///
  /// The list of policies returned by the operation depends on the ARN of the identity that you provide.
  ///
  /// *   **User** – The list of policies includes the managed and inline policies that are attached to the user directly. The list also includes any additional managed and inline policies that are attached to the group to which the user belongs.
  ///
  /// *   **Group** – The list of policies includes only the managed and inline policies that are attached to the group directly. Policies that are attached to the group’s user are not included.
  ///
  /// *   **Role** – The list of policies includes only the managed and inline policies that are attached to the role.
  ///
  ///
  /// For each managed policy, this operation returns the ARN and policy name. For each inline policy, it returns the policy name and the entity to which it is attached. Inline policies do not have an ARN. For more information about these policy types, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// Policies that are attached to users and roles as permissions boundaries are not returned. To view which managed policy is currently used to set the permissions boundary for a user or role, use the GetUser or GetRole operations.
  _i3.SmithyOperation<_i240.ListPoliciesGrantingServiceAccessResponse>
      listPoliciesGrantingServiceAccess(
    _i241.ListPoliciesGrantingServiceAccessRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i242.ListPoliciesGrantingServiceAccessOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Lists the tags that are attached to the specified IAM customer managed policy. The returned list of tags is sorted by tag key. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i243.ListPolicyTagsResponse> listPolicyTags(
    _i244.ListPolicyTagsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i245.ListPolicyTagsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Lists information about the versions of the specified managed policy, including the version that is currently set as the policy's default version.
  ///
  /// For more information about managed policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i246.PolicyVersion>, int,
          String>> listPolicyVersions(
    _i247.ListPolicyVersionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i248.ListPolicyVersionsOperation(
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

  /// Lists the names of the inline policies that are embedded in the specified IAM role.
  ///
  /// An IAM role can also have managed policies attached to it. To list the managed policies that are attached to a role, use ListAttachedRolePolicies. For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters. If there are no inline policies embedded with the specified role, the operation returns an empty list.
  _i3.SmithyOperation<_i3.PaginatedResult<_i140.BuiltList<String>, int, String>>
      listRolePolicies(
    _i249.ListRolePoliciesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i250.ListRolePoliciesOperation(
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

  /// Lists the tags that are attached to the specified role. The returned list of tags is sorted by tag key. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i251.ListRoleTagsResponse> listRoleTags(
    _i252.ListRoleTagsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i253.ListRoleTagsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Lists the IAM roles that have the specified path prefix. If there are none, the operation returns an empty list. For more information about roles, see [Working with roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).
  ///
  /// IAM resource-listing operations return a subset of the available attributes for the resource. This operation does not return the following attributes, even though they are an attribute of the returned object:
  ///
  /// *   PermissionsBoundary
  ///
  /// *   RoleLastUsed
  ///
  /// *   Tags
  ///
  ///
  /// To view all of the information for a role, see GetRole.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i254.Role>, int, String>> listRoles(
    _i255.ListRolesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i256.ListRolesOperation(
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

  /// Lists the tags that are attached to the specified Security Assertion Markup Language (SAML) identity provider. The returned list of tags is sorted by tag key. For more information, see [About SAML 2.0-based federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html).
  ///
  /// For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i257.ListSamlProviderTagsResponse> listSamlProviderTags(
    _i258.ListSamlProviderTagsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i259.ListSamlProviderTagsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Lists the SAML provider resource objects defined in IAM in the account. IAM resource-listing operations return a subset of the available attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a SAML provider, see GetSAMLProvider.
  ///
  /// This operation requires [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  _i3.SmithyOperation<_i260.ListSamlProvidersResponse> listSamlProviders(
    _i261.ListSamlProvidersRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i262.ListSamlProvidersOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns information about the SSH public keys associated with the specified IAM user. If none exists, the operation returns an empty list.
  ///
  /// The SSH public keys returned by this operation are used only for authenticating the IAM user to an CodeCommit repository. For more information about using SSH keys to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html) in the _CodeCommit User Guide_.
  ///
  /// Although each user is limited to a small number of keys, you can still paginate the results using the `MaxItems` and `Marker` parameters.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i263.SshPublicKeyMetadata>, int,
          String>> listSshPublicKeys(
    _i264.ListSshPublicKeysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i265.ListSshPublicKeysOperation(
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

  /// Lists the tags that are attached to the specified IAM server certificate. The returned list of tags is sorted by tag key. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// For certificates in a Region supported by Certificate Manager (ACM), we recommend that you don't use IAM server certificates. Instead, use ACM to provision, manage, and deploy your server certificates. For more information about IAM server certificates, [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i266.ListServerCertificateTagsResponse>
      listServerCertificateTags(
    _i267.ListServerCertificateTagsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i268.ListServerCertificateTagsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Lists the server certificates stored in IAM that have the specified path prefix. If none exist, the operation returns an empty list.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters.
  ///
  /// For more information about working with server certificates, see [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the _IAM User Guide_. This topic also includes a list of Amazon Web Services services that can use the server certificates that you manage with IAM.
  ///
  /// IAM resource-listing operations return a subset of the available attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a servercertificate, see GetServerCertificate.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i269.ServerCertificateMetadata>, int,
          String>> listServerCertificates(
    _i270.ListServerCertificatesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i271.ListServerCertificatesOperation(
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

  /// Returns information about the service-specific credentials associated with the specified IAM user. If none exists, the operation returns an empty list. The service-specific credentials returned by this operation are used only for authenticating the IAM user to a specific service. For more information about using service-specific credentials to authenticate to an Amazon Web Services service, see [Set up service-specific credentials](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html) in the CodeCommit User Guide.
  _i3.SmithyOperation<_i272.ListServiceSpecificCredentialsResponse>
      listServiceSpecificCredentials(
    _i273.ListServiceSpecificCredentialsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i274.ListServiceSpecificCredentialsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns information about the signing certificates associated with the specified IAM user. If none exists, the operation returns an empty list.
  ///
  /// Although each user is limited to a small number of signing certificates, you can still paginate the results using the `MaxItems` and `Marker` parameters.
  ///
  /// If the `UserName` field is not specified, the user name is determined implicitly based on the Amazon Web Services access key ID used to sign the request for this operation. This operation works for access keys under the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated users.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i275.SigningCertificate>, int,
          String>> listSigningCertificates(
    _i276.ListSigningCertificatesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i277.ListSigningCertificatesOperation(
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

  /// Lists the names of the inline policies embedded in the specified IAM user.
  ///
  /// An IAM user can also have managed policies attached to it. To list the managed policies that are attached to a user, use ListAttachedUserPolicies. For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters. If there are no inline policies embedded with the specified user, the operation returns an empty list.
  _i3.SmithyOperation<_i3.PaginatedResult<_i140.BuiltList<String>, int, String>>
      listUserPolicies(
    _i278.ListUserPoliciesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i279.ListUserPoliciesOperation(
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

  /// Lists the tags that are attached to the specified IAM user. The returned list of tags is sorted by tag key. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i140.BuiltList<_i280.Tag>, int, String>>
      listUserTags(
    _i281.ListUserTagsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i282.ListUserTagsOperation(
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

  /// Lists the IAM users that have the specified path prefix. If no path prefix is specified, the operation returns all users in the Amazon Web Services account. If there are none, the operation returns an empty list.
  ///
  /// IAM resource-listing operations return a subset of the available attributes for the resource. This operation does not return the following attributes, even though they are an attribute of the returned object:
  ///
  /// *   PermissionsBoundary
  ///
  /// *   Tags
  ///
  ///
  /// To view all of the information for a user, see GetUser.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i141.User>, int, String>> listUsers(
    _i283.ListUsersRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i284.ListUsersOperation(
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

  /// Lists the virtual MFA devices defined in the Amazon Web Services account by assignment status. If you do not specify an assignment status, the operation returns a list of all virtual MFA devices. Assignment status can be `Assigned`, `Unassigned`, or `Any`.
  ///
  /// IAM resource-listing operations return a subset of the available attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view tag information for a virtual MFA device, see ListMFADeviceTags.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i285.VirtualMfaDevice>, int,
          String>> listVirtualMfaDevices(
    _i286.ListVirtualMfaDevicesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i287.ListVirtualMfaDevicesOperation(
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

  /// Adds or updates an inline policy document that is embedded in the specified IAM group.
  ///
  /// A user can also have managed policies attached to it. To attach a managed policy to a group, use AttachGroupPolicy. To create a new managed policy, use CreatePolicy. For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// For information about the maximum number of inline policies that you can embed in a group, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
  ///
  /// Because policy documents can be large, you should use POST rather than GET when calling `PutGroupPolicy`. For general information about using the Query API with IAM, see [Making query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> putGroupPolicy(
    _i288.PutGroupPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i289.PutGroupPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds or updates the policy that is specified as the IAM role's permissions boundary. You can use an Amazon Web Services managed policy or a customer managed policy to set the boundary for a role. Use the boundary to control the maximum permissions that the role can have. Setting a permissions boundary is an advanced feature that can affect the permissions for the role.
  ///
  /// You cannot set the boundary for a service-linked role.
  ///
  /// Policies used as permissions boundaries do not provide permissions. You must also attach a permissions policy to the role. To learn how the effective permissions for a role are evaluated, see [IAM JSON policy evaluation logic](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html) in the IAM User Guide.
  _i3.SmithyOperation<void> putRolePermissionsBoundary(
    _i290.PutRolePermissionsBoundaryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i291.PutRolePermissionsBoundaryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds or updates an inline policy document that is embedded in the specified IAM role.
  ///
  /// When you embed an inline policy in a role, the inline policy is used as part of the role's access (permissions) policy. The role's trust policy is created at the same time as the role, using CreateRole. You can update a role's trust policy using UpdateAssumeRolePolicy. For more information about IAM roles, see [Using roles to delegate permissions and federate identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html).
  ///
  /// A role can also have a managed policy attached to it. To attach a managed policy to a role, use AttachRolePolicy. To create a new managed policy, use CreatePolicy. For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// For information about the maximum number of inline policies that you can embed with a role, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
  ///
  /// Because policy documents can be large, you should use POST rather than GET when calling `PutRolePolicy`. For general information about using the Query API with IAM, see [Making query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> putRolePolicy(
    _i292.PutRolePolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i293.PutRolePolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds or updates the policy that is specified as the IAM user's permissions boundary. You can use an Amazon Web Services managed policy or a customer managed policy to set the boundary for a user. Use the boundary to control the maximum permissions that the user can have. Setting a permissions boundary is an advanced feature that can affect the permissions for the user.
  ///
  /// Policies that are used as permissions boundaries do not provide permissions. You must also attach a permissions policy to the user. To learn how the effective permissions for a user are evaluated, see [IAM JSON policy evaluation logic](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html) in the IAM User Guide.
  _i3.SmithyOperation<void> putUserPermissionsBoundary(
    _i294.PutUserPermissionsBoundaryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i295.PutUserPermissionsBoundaryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds or updates an inline policy document that is embedded in the specified IAM user.
  ///
  /// An IAM user can also have a managed policy attached to it. To attach a managed policy to a user, use AttachUserPolicy. To create a new managed policy, use CreatePolicy. For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// For information about the maximum number of inline policies that you can embed in a user, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
  ///
  /// Because policy documents can be large, you should use POST rather than GET when calling `PutUserPolicy`. For general information about using the Query API with IAM, see [Making query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> putUserPolicy(
    _i296.PutUserPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i297.PutUserPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified client ID (also known as audience) from the list of client IDs registered for the specified IAM OpenID Connect (OIDC) provider resource object.
  ///
  /// This operation is idempotent; it does not fail or return an error if you try to remove a client ID that does not exist.
  _i3.SmithyOperation<void> removeClientIdFromOpenIdConnectProvider(
    _i298.RemoveClientIdFromOpenIdConnectProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i299.RemoveClientIdFromOpenIdConnectProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified IAM role from the specified EC2 instance profile.
  ///
  /// Make sure that you do not have any Amazon EC2 instances running with the role you are about to remove from the instance profile. Removing a role from an instance profile that is associated with a running instance might break any applications running on the instance.
  ///
  /// For more information about IAM roles, see [Working with roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html). For more information about instance profiles, see [About instance profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).
  _i3.SmithyOperation<void> removeRoleFromInstanceProfile(
    _i300.RemoveRoleFromInstanceProfileRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i301.RemoveRoleFromInstanceProfileOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified user from the specified group.
  _i3.SmithyOperation<void> removeUserFromGroup(
    _i302.RemoveUserFromGroupRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i303.RemoveUserFromGroupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Resets the password for a service-specific credential. The new password is Amazon Web Services generated and cryptographically strong. It cannot be configured by the user. Resetting the password immediately invalidates the previous password associated with this user.
  _i3.SmithyOperation<_i304.ResetServiceSpecificCredentialResponse>
      resetServiceSpecificCredential(
    _i305.ResetServiceSpecificCredentialRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i306.ResetServiceSpecificCredentialOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Synchronizes the specified MFA device with its IAM resource object on the Amazon Web Services servers.
  ///
  /// For more information about creating and working with virtual MFA devices, see [Using a virtual MFA device](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> resyncMfaDevice(
    _i307.ResyncMfaDeviceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i308.ResyncMfaDeviceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Sets the specified version of the specified policy as the policy's default (operative) version.
  ///
  /// This operation affects all users, groups, and roles that the policy is attached to. To list the users, groups, and roles that the policy is attached to, use ListEntitiesForPolicy.
  ///
  /// For information about managed policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> setDefaultPolicyVersion(
    _i309.SetDefaultPolicyVersionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i310.SetDefaultPolicyVersionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Sets the specified version of the global endpoint token as the token version used for the Amazon Web Services account.
  ///
  /// By default, Security Token Service (STS) is available as a global service, and all STS requests go to a single endpoint at `https://sts.amazonaws.com`. Amazon Web Services recommends using Regional STS endpoints to reduce latency, build in redundancy, and increase session token availability. For information about Regional endpoints for STS, see [Security Token Service endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/sts.html) in the _Amazon Web Services General Reference_.
  ///
  /// If you make an STS call to the global endpoint, the resulting session tokens might be valid in some Regions but not others. It depends on the version that is set in this operation. Version 1 tokens are valid only in Amazon Web Services Regions that are available by default. These tokens do not work in manually enabled Regions, such as Asia Pacific (Hong Kong). Version 2 tokens are valid in all Regions. However, version 2 tokens are longer and might affect systems where you temporarily store tokens. For information, see [Activating and deactivating STS in an Amazon Web Services Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html) in the _IAM User Guide_.
  ///
  /// To view the current session token version, see the `GlobalEndpointTokenVersion` entry in the response of the GetAccountSummary operation.
  _i3.SmithyOperation<void> setSecurityTokenServicePreferences(
    _i311.SetSecurityTokenServicePreferencesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i312.SetSecurityTokenServicePreferencesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Simulate how a set of IAM policies and optionally a resource-based policy works with a list of API operations and Amazon Web Services resources to determine the policies' effective permissions. The policies are provided as strings.
  ///
  /// The simulation does not perform the API operations; it only checks the authorization to determine if the simulated policies allow or deny the operations. You can simulate resources that don't exist in your account.
  ///
  /// If you want to simulate existing policies that are attached to an IAM user, group, or role, use SimulatePrincipalPolicy instead.
  ///
  /// Context keys are variables that are maintained by Amazon Web Services and its services and which provide details about the context of an API query request. You can use the `Condition` element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use GetContextKeysForCustomPolicy.
  ///
  /// If the output is long, you can use `MaxItems` and `Marker` parameters to paginate the results.
  ///
  /// The IAM policy simulator evaluates statements in the identity-based policy and the inputs that you provide during simulation. The policy simulator results can differ from your live Amazon Web Services environment. We recommend that you check your policies against your live Amazon Web Services environment after testing using the policy simulator to confirm that you have the desired results. For more information about using the policy simulator, see [Testing IAM policies with the IAM policy simulator](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html) in the _IAM User Guide_.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i313.EvaluationResult>, int,
          String>> simulateCustomPolicy(
    _i314.SimulateCustomPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i315.SimulateCustomPolicyOperation(
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

  /// Simulate how a set of IAM policies attached to an IAM entity works with a list of API operations and Amazon Web Services resources to determine the policies' effective permissions. The entity can be an IAM user, group, or role. If you specify a user, then the simulation also includes all of the policies that are attached to groups that the user belongs to. You can simulate resources that don't exist in your account.
  ///
  /// You can optionally include a list of one or more additional policies specified as strings to include in the simulation. If you want to simulate only policies specified as strings, use SimulateCustomPolicy instead.
  ///
  /// You can also optionally include one resource-based policy to be evaluated with each of the resources included in the simulation for IAM users only.
  ///
  /// The simulation does not perform the API operations; it only checks the authorization to determine if the simulated policies allow or deny the operations.
  ///
  /// **Note:** This operation discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use SimulateCustomPolicy instead.
  ///
  /// Context keys are variables maintained by Amazon Web Services and its services that provide details about the context of an API query request. You can use the `Condition` element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use GetContextKeysForPrincipalPolicy.
  ///
  /// If the output is long, you can use the `MaxItems` and `Marker` parameters to paginate the results.
  ///
  /// The IAM policy simulator evaluates statements in the identity-based policy and the inputs that you provide during simulation. The policy simulator results can differ from your live Amazon Web Services environment. We recommend that you check your policies against your live Amazon Web Services environment after testing using the policy simulator to confirm that you have the desired results. For more information about using the policy simulator, see [Testing IAM policies with the IAM policy simulator](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html) in the _IAM User Guide_.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i140.BuiltList<_i313.EvaluationResult>, int,
          String>> simulatePrincipalPolicy(
    _i316.SimulatePrincipalPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i317.SimulatePrincipalPolicyOperation(
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

  /// Adds one or more tags to an IAM instance profile. If a tag with the same key name already exists, then that tag is overwritten with the new value.
  ///
  /// Each tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:
  ///
  /// *   **Administrative grouping and discovery** \- Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name _Project_ and the value _MyImportantProject_. Or search for all resources with the key name _Cost Center_ and the value _41200_.
  ///
  /// *   **Access control** \- Include tags in IAM user-based and resource-based policies. You can use tags to restrict access to only an IAM instance profile that has a specified tag attached. For examples of policies that show how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the _IAM User Guide_.
  ///
  ///
  /// *   If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// *   Amazon Web Services always interprets the tag `Value` as a single string. If you need to store an array, you can store comma-separated values in the string. However, you must interpret the value in your code.
  _i3.SmithyOperation<void> tagInstanceProfile(
    _i318.TagInstanceProfileRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i319.TagInstanceProfileOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds one or more tags to an IAM virtual multi-factor authentication (MFA) device. If a tag with the same key name already exists, then that tag is overwritten with the new value.
  ///
  /// A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:
  ///
  /// *   **Administrative grouping and discovery** \- Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name _Project_ and the value _MyImportantProject_. Or search for all resources with the key name _Cost Center_ and the value _41200_.
  ///
  /// *   **Access control** \- Include tags in IAM user-based and resource-based policies. You can use tags to restrict access to only an IAM virtual MFA device that has a specified tag attached. For examples of policies that show how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the _IAM User Guide_.
  ///
  ///
  /// *   If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// *   Amazon Web Services always interprets the tag `Value` as a single string. If you need to store an array, you can store comma-separated values in the string. However, you must interpret the value in your code.
  _i3.SmithyOperation<void> tagMfaDevice(
    _i320.TagMfaDeviceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i321.TagMfaDeviceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds one or more tags to an OpenID Connect (OIDC)-compatible identity provider. For more information about these providers, see [About web identity federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html). If a tag with the same key name already exists, then that tag is overwritten with the new value.
  ///
  /// A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:
  ///
  /// *   **Administrative grouping and discovery** \- Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name _Project_ and the value _MyImportantProject_. Or search for all resources with the key name _Cost Center_ and the value _41200_.
  ///
  /// *   **Access control** \- Include tags in IAM identity-based and resource-based policies. You can use tags to restrict access to only an OIDC provider that has a specified tag attached. For examples of policies that show how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the _IAM User Guide_.
  ///
  ///
  /// *   If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// *   Amazon Web Services always interprets the tag `Value` as a single string. If you need to store an array, you can store comma-separated values in the string. However, you must interpret the value in your code.
  _i3.SmithyOperation<void> tagOpenIdConnectProvider(
    _i322.TagOpenIdConnectProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i323.TagOpenIdConnectProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds one or more tags to an IAM customer managed policy. If a tag with the same key name already exists, then that tag is overwritten with the new value.
  ///
  /// A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:
  ///
  /// *   **Administrative grouping and discovery** \- Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name _Project_ and the value _MyImportantProject_. Or search for all resources with the key name _Cost Center_ and the value _41200_.
  ///
  /// *   **Access control** \- Include tags in IAM user-based and resource-based policies. You can use tags to restrict access to only an IAM customer managed policy that has a specified tag attached. For examples of policies that show how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the _IAM User Guide_.
  ///
  ///
  /// *   If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// *   Amazon Web Services always interprets the tag `Value` as a single string. If you need to store an array, you can store comma-separated values in the string. However, you must interpret the value in your code.
  _i3.SmithyOperation<void> tagPolicy(
    _i324.TagPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i325.TagPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds one or more tags to an IAM role. The role can be a regular role or a service-linked role. If a tag with the same key name already exists, then that tag is overwritten with the new value.
  ///
  /// A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:
  ///
  /// *   **Administrative grouping and discovery** \- Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name _Project_ and the value _MyImportantProject_. Or search for all resources with the key name _Cost Center_ and the value _41200_.
  ///
  /// *   **Access control** \- Include tags in IAM user-based and resource-based policies. You can use tags to restrict access to only an IAM role that has a specified tag attached. You can also restrict access to only those resources that have a certain tag attached. For examples of policies that show how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the _IAM User Guide_.
  ///
  /// *   **Cost allocation** \- Use tags to help track which individuals and teams are using which Amazon Web Services resources.
  ///
  ///
  /// *   If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// *   Amazon Web Services always interprets the tag `Value` as a single string. If you need to store an array, you can store comma-separated values in the string. However, you must interpret the value in your code.
  ///
  ///
  /// For more information about tagging, see [Tagging IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> tagRole(
    _i326.TagRoleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i327.TagRoleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds one or more tags to a Security Assertion Markup Language (SAML) identity provider. For more information about these providers, see [About SAML 2.0-based federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html) . If a tag with the same key name already exists, then that tag is overwritten with the new value.
  ///
  /// A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:
  ///
  /// *   **Administrative grouping and discovery** \- Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name _Project_ and the value _MyImportantProject_. Or search for all resources with the key name _Cost Center_ and the value _41200_.
  ///
  /// *   **Access control** \- Include tags in IAM user-based and resource-based policies. You can use tags to restrict access to only a SAML identity provider that has a specified tag attached. For examples of policies that show how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the _IAM User Guide_.
  ///
  ///
  /// *   If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// *   Amazon Web Services always interprets the tag `Value` as a single string. If you need to store an array, you can store comma-separated values in the string. However, you must interpret the value in your code.
  _i3.SmithyOperation<void> tagSamlProvider(
    _i328.TagSamlProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i329.TagSamlProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds one or more tags to an IAM server certificate. If a tag with the same key name already exists, then that tag is overwritten with the new value.
  ///
  /// For certificates in a Region supported by Certificate Manager (ACM), we recommend that you don't use IAM server certificates. Instead, use ACM to provision, manage, and deploy your server certificates. For more information about IAM server certificates, [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the _IAM User Guide_.
  ///
  /// A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:
  ///
  /// *   **Administrative grouping and discovery** \- Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name _Project_ and the value _MyImportantProject_. Or search for all resources with the key name _Cost Center_ and the value _41200_.
  ///
  /// *   **Access control** \- Include tags in IAM user-based and resource-based policies. You can use tags to restrict access to only a server certificate that has a specified tag attached. For examples of policies that show how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the _IAM User Guide_.
  ///
  /// *   **Cost allocation** \- Use tags to help track which individuals and teams are using which Amazon Web Services resources.
  ///
  ///
  /// *   If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// *   Amazon Web Services always interprets the tag `Value` as a single string. If you need to store an array, you can store comma-separated values in the string. However, you must interpret the value in your code.
  _i3.SmithyOperation<void> tagServerCertificate(
    _i330.TagServerCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i331.TagServerCertificateOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds one or more tags to an IAM user. If a tag with the same key name already exists, then that tag is overwritten with the new value.
  ///
  /// A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:
  ///
  /// *   **Administrative grouping and discovery** \- Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name _Project_ and the value _MyImportantProject_. Or search for all resources with the key name _Cost Center_ and the value _41200_.
  ///
  /// *   **Access control** \- Include tags in IAM identity-based and resource-based policies. You can use tags to restrict access to only an IAM requesting user that has a specified tag attached. You can also restrict access to only those resources that have a certain tag attached. For examples of policies that show how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the _IAM User Guide_.
  ///
  /// *   **Cost allocation** \- Use tags to help track which individuals and teams are using which Amazon Web Services resources.
  ///
  ///
  /// *   If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// *   Amazon Web Services always interprets the tag `Value` as a single string. If you need to store an array, you can store comma-separated values in the string. However, you must interpret the value in your code.
  ///
  ///
  /// For more information about tagging, see [Tagging IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> tagUser(
    _i332.TagUserRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i333.TagUserOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified tags from the IAM instance profile. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> untagInstanceProfile(
    _i334.UntagInstanceProfileRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i335.UntagInstanceProfileOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified tags from the IAM virtual multi-factor authentication (MFA) device. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> untagMfaDevice(
    _i336.UntagMfaDeviceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i337.UntagMfaDeviceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified tags from the specified OpenID Connect (OIDC)-compatible identity provider in IAM. For more information about OIDC providers, see [About web identity federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html). For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> untagOpenIdConnectProvider(
    _i338.UntagOpenIdConnectProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i339.UntagOpenIdConnectProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified tags from the customer managed policy. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> untagPolicy(
    _i340.UntagPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i341.UntagPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified tags from the role. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> untagRole(
    _i342.UntagRoleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i343.UntagRoleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified tags from the specified Security Assertion Markup Language (SAML) identity provider in IAM. For more information about these providers, see [About web identity federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html). For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> untagSamlProvider(
    _i344.UntagSamlProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i345.UntagSamlProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified tags from the IAM server certificate. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// For certificates in a Region supported by Certificate Manager (ACM), we recommend that you don't use IAM server certificates. Instead, use ACM to provision, manage, and deploy your server certificates. For more information about IAM server certificates, [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> untagServerCertificate(
    _i346.UntagServerCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i347.UntagServerCertificateOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified tags from the user. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> untagUser(
    _i348.UntagUserRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i349.UntagUserOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Changes the status of the specified access key from Active to Inactive, or vice versa. This operation can be used to disable a user's key as part of a key rotation workflow.
  ///
  /// If the `UserName` is not specified, the user name is determined implicitly based on the Amazon Web Services access key ID used to sign the request. If a temporary access key is used, then `UserName` is required. If a long-term key is assigned to the user, then `UserName` is not required. This operation works for access keys under the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated users.
  ///
  /// For information about rotating keys, see [Managing keys and certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> updateAccessKey(
    _i350.UpdateAccessKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i351.UpdateAccessKeyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Updates the password policy settings for the Amazon Web Services account.
  ///
  /// This operation does not support partial updates. No parameters are required, but if you do not specify a parameter, that parameter's value reverts to its default value. See the **Request Parameters** section for each parameter's default value. Also note that some parameters do not allow the default parameter to be explicitly set. Instead, to invoke the default value, do not include that parameter when you invoke the operation.
  ///
  /// For more information about using a password policy, see [Managing an IAM password policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> updateAccountPasswordPolicy(
    _i352.UpdateAccountPasswordPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i353.UpdateAccountPasswordPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Updates the policy that grants an IAM entity permission to assume a role. This is typically referred to as the "role trust policy". For more information about roles, see [Using roles to delegate permissions and federate identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html).
  _i3.SmithyOperation<void> updateAssumeRolePolicy(
    _i354.UpdateAssumeRolePolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i355.UpdateAssumeRolePolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Updates the name and/or the path of the specified IAM group.
  ///
  /// You should understand the implications of changing a group's path or name. For more information, see [Renaming users and groups](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html) in the _IAM User Guide_.
  ///
  /// The person making the request (the principal), must have permission to change the role group with the old name and the new name. For example, to change the group named `Managers` to `MGRs`, the principal must have a policy that allows them to update both groups. If the principal has permission to update the `Managers` group, but not the `MGRs` group, then the update fails. For more information about permissions, see [Access management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html).
  _i3.SmithyOperation<void> updateGroup(
    _i356.UpdateGroupRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i357.UpdateGroupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Changes the password for the specified IAM user. You can use the CLI, the Amazon Web Services API, or the **Users** page in the IAM console to change the password for any IAM user. Use ChangePassword to change your own password in the **My Security Credentials** page in the Amazon Web Services Management Console.
  ///
  /// For more information about modifying passwords, see [Managing passwords](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> updateLoginProfile(
    _i358.UpdateLoginProfileRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i359.UpdateLoginProfileOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Replaces the existing list of server certificate thumbprints associated with an OpenID Connect (OIDC) provider resource object with a new list of thumbprints.
  ///
  /// The list that you pass with this operation completely replaces the existing list of thumbprints. (The lists are not merged.)
  ///
  /// Typically, you need to update a thumbprint only when the identity provider certificate changes, which occurs rarely. However, if the provider's certificate _does_ change, any attempt to assume an IAM role that specifies the OIDC provider as a principal fails until the certificate thumbprint is updated.
  ///
  /// Amazon Web Services secures communication with some OIDC identity providers (IdPs) through our library of trusted certificate authorities (CAs) instead of using a certificate thumbprint to verify your IdP server certificate. These OIDC IdPs include Google, Auth0, and those that use an Amazon S3 bucket to host a JSON Web Key Set (JWKS) endpoint. In these cases, your legacy thumbprint remains in your configuration, but is no longer used for validation.
  ///
  /// Trust for the OIDC provider is derived from the provider certificate and is validated by the thumbprint. Therefore, it is best to limit access to the `UpdateOpenIDConnectProviderThumbprint` operation to highly privileged users.
  _i3.SmithyOperation<void> updateOpenIdConnectProviderThumbprint(
    _i360.UpdateOpenIdConnectProviderThumbprintRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i361.UpdateOpenIdConnectProviderThumbprintOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Updates the description or maximum session duration setting of a role.
  _i3.SmithyOperation<_i362.UpdateRoleResponse> updateRole(
    _i363.UpdateRoleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i364.UpdateRoleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Use UpdateRole instead.
  ///
  /// Modifies only the description of a role. This operation performs the same function as the `Description` parameter in the `UpdateRole` operation.
  _i3.SmithyOperation<_i365.UpdateRoleDescriptionResponse>
      updateRoleDescription(
    _i366.UpdateRoleDescriptionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i367.UpdateRoleDescriptionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Updates the metadata document for an existing SAML provider resource object.
  ///
  /// This operation requires [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  _i3.SmithyOperation<_i368.UpdateSamlProviderResponse> updateSamlProvider(
    _i369.UpdateSamlProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i370.UpdateSamlProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Sets the status of an IAM user's SSH public key to active or inactive. SSH public keys that are inactive cannot be used for authentication. This operation can be used to disable a user's SSH public key as part of a key rotation work flow.
  ///
  /// The SSH public key affected by this operation is used only for authenticating the associated IAM user to an CodeCommit repository. For more information about using SSH keys to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html) in the _CodeCommit User Guide_.
  _i3.SmithyOperation<void> updateSshPublicKey(
    _i371.UpdateSshPublicKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i372.UpdateSshPublicKeyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Updates the name and/or the path of the specified server certificate stored in IAM.
  ///
  /// For more information about working with server certificates, see [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the _IAM User Guide_. This topic also includes a list of Amazon Web Services services that can use the server certificates that you manage with IAM.
  ///
  /// You should understand the implications of changing a server certificate's path or name. For more information, see [Renaming a server certificate](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs_manage.html#RenamingServerCerts) in the _IAM User Guide_.
  ///
  /// The person making the request (the principal), must have permission to change the server certificate with the old name and the new name. For example, to change the certificate named `ProductionCert` to `ProdCert`, the principal must have a policy that allows them to update both certificates. If the principal has permission to update the `ProductionCert` group, but not the `ProdCert` certificate, then the update fails. For more information about permissions, see [Access management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html) in the _IAM User Guide_.
  _i3.SmithyOperation<void> updateServerCertificate(
    _i373.UpdateServerCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i374.UpdateServerCertificateOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Sets the status of a service-specific credential to `Active` or `Inactive`. Service-specific credentials that are inactive cannot be used for authentication to the service. This operation can be used to disable a user's service-specific credential as part of a credential rotation work flow.
  _i3.SmithyOperation<void> updateServiceSpecificCredential(
    _i375.UpdateServiceSpecificCredentialRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i376.UpdateServiceSpecificCredentialOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Changes the status of the specified user signing certificate from active to disabled, or vice versa. This operation can be used to disable an IAM user's signing certificate as part of a certificate rotation work flow.
  ///
  /// If the `UserName` field is not specified, the user name is determined implicitly based on the Amazon Web Services access key ID used to sign the request. This operation works for access keys under the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated users.
  _i3.SmithyOperation<void> updateSigningCertificate(
    _i377.UpdateSigningCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i378.UpdateSigningCertificateOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Updates the name and/or the path of the specified IAM user.
  ///
  /// You should understand the implications of changing an IAM user's path or name. For more information, see [Renaming an IAM user](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming) and [Renaming an IAM group](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html) in the _IAM User Guide_.
  ///
  /// To change a user name, the requester must have appropriate permissions on both the source object and the target object. For example, to change Bob to Robert, the entity making the request must have permission on Bob and Robert, or must have permission on all (*). For more information about permissions, see [Permissions and policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html).
  _i3.SmithyOperation<void> updateUser(
    _i379.UpdateUserRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i380.UpdateUserOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Uploads an SSH public key and associates it with the specified IAM user.
  ///
  /// The SSH public key uploaded by this operation can be used only for authenticating the associated IAM user to an CodeCommit repository. For more information about using SSH keys to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html) in the _CodeCommit User Guide_.
  _i3.SmithyOperation<_i381.UploadSshPublicKeyResponse> uploadSshPublicKey(
    _i382.UploadSshPublicKeyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i383.UploadSshPublicKeyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Uploads a server certificate entity for the Amazon Web Services account. The server certificate entity includes a public key certificate, a private key, and an optional certificate chain, which should all be PEM-encoded.
  ///
  /// We recommend that you use [Certificate Manager](https://docs.aws.amazon.com/acm/) to provision, manage, and deploy your server certificates. With ACM you can request a certificate, deploy it to Amazon Web Services resources, and let ACM handle certificate renewals for you. Certificates provided by ACM are free. For more information about using ACM, see the [Certificate Manager User Guide](https://docs.aws.amazon.com/acm/latest/userguide/).
  ///
  /// For more information about working with server certificates, see [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the _IAM User Guide_. This topic includes a list of Amazon Web Services services that can use the server certificates that you manage with IAM.
  ///
  /// For information about the number of server certificates you can upload, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
  ///
  /// Because the body of the public key certificate, private key, and the certificate chain can be large, you should use POST rather than GET when calling `UploadServerCertificate`. For information about setting up signatures and authorization through the API, see [Signing Amazon Web Services API requests](https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html) in the _Amazon Web Services General Reference_. For general information about using the Query API with IAM, see [Calling the API by making HTTP query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i384.UploadServerCertificateResponse>
      uploadServerCertificate(
    _i385.UploadServerCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i386.UploadServerCertificateOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Uploads an X.509 signing certificate and associates it with the specified IAM user. Some Amazon Web Services services require you to use certificates to validate requests that are signed with a corresponding private key. When you upload the certificate, its default status is `Active`.
  ///
  /// For information about when you would use an X.509 signing certificate, see [Managing server certificates in IAM](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the _IAM User Guide_.
  ///
  /// If the `UserName` is not specified, the IAM user name is determined implicitly based on the Amazon Web Services access key ID used to sign the request. This operation works for access keys under the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated users.
  ///
  /// Because the body of an X.509 certificate can be large, you should use POST rather than GET when calling `UploadSigningCertificate`. For information about setting up signatures and authorization through the API, see [Signing Amazon Web Services API requests](https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html) in the _Amazon Web Services General Reference_. For general information about using the Query API with IAM, see [Making query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html) in the _IAM User Guide_.
  _i3.SmithyOperation<_i387.UploadSigningCertificateResponse>
      uploadSigningCertificate(
    _i388.UploadSigningCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i389.UploadSigningCertificateOperation(
      region: _region,
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
