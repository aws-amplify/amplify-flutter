// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

/// # Amazon Cognito Identity Provider
///
/// Using the Amazon Cognito User Pools API, you can create a user pool to manage directories and users. You can authenticate a user to obtain tokens related to user identity and access policies.
///
/// This API reference provides information about user pools in Amazon Cognito User Pools.
///
/// For more information, see the [Amazon Cognito Documentation](https://docs.aws.amazon.com/cognito/latest/developerguide/what-is-amazon-cognito.html).
library amplify_auth_cognito.cognito_identity_provider;

export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/cognito_identity_provider_client.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/alias_exists_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/associate_software_token_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/associate_software_token_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/attribute_type.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/auth_flow_type.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/authentication_result_type.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/challenge_name_type.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/change_password_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/change_password_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/code_delivery_details_type.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/code_delivery_failure_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/code_mismatch_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/concurrent_modification_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/confirm_device_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/confirm_device_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/confirm_forgot_password_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/confirm_forgot_password_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/confirm_sign_up_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/confirm_sign_up_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/delete_user_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/delivery_medium_type.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/device_remembered_status_type.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/device_secret_verifier_config_type.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/device_type.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/enable_software_token_mfa_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/expired_code_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/forget_device_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/forgot_password_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/forgot_password_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/get_device_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/get_device_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/get_user_attribute_verification_code_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/get_user_attribute_verification_code_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/get_user_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/get_user_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/global_sign_out_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/global_sign_out_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/initiate_auth_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/initiate_auth_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_email_role_access_policy_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_lambda_response_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_password_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_sms_role_access_policy_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_sms_role_trust_relationship_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_user_pool_configuration_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/limit_exceeded_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/list_devices_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/list_devices_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/mfa_method_not_found_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/mfa_option_type.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/new_device_metadata_type.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/password_reset_required_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/resend_confirmation_code_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/resend_confirmation_code_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/respond_to_auth_challenge_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/respond_to_auth_challenge_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/revoke_token_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/revoke_token_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/sign_up_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/sign_up_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/software_token_mfa_not_found_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/too_many_failed_attempts_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/unauthorized_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/unexpected_lambda_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/unsupported_operation_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/unsupported_token_type_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/update_device_status_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/update_device_status_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/update_user_attributes_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/update_user_attributes_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/user_lambda_validation_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/user_not_confirmed_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/username_exists_exception.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/verify_software_token_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/verify_software_token_response.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/verify_software_token_response_type.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/verify_user_attribute_request.dart';
export 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/verify_user_attribute_response.dart';
