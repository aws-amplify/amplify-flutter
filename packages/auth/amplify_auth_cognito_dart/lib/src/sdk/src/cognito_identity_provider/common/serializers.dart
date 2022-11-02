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

// Generated with smithy-dart 0.2.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/alias_exists_exception.dart'
    as _i36;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart'
    as _i25;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/associate_software_token_request.dart'
    as _i2;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/associate_software_token_response.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/attribute_type.dart'
    as _i48;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/auth_flow_type.dart'
    as _i58;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/authentication_result_type.dart'
    as _i62;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/challenge_name_type.dart'
    as _i60;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/change_password_request.dart'
    as _i11;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/change_password_response.dart'
    as _i12;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_delivery_details_type.dart'
    as _i41;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_delivery_failure_exception.dart'
    as _i43;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_mismatch_exception.dart'
    as _i29;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/concurrent_modification_exception.dart'
    as _i4;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_device_request.dart'
    as _i20;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_device_response.dart'
    as _i21;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_forgot_password_request.dart'
    as _i27;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_forgot_password_response.dart'
    as _i28;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_sign_up_request.dart'
    as _i34;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_sign_up_response.dart'
    as _i35;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/delete_user_request.dart'
    as _i37;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/delivery_medium_type.dart'
    as _i40;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/device_remembered_status_type.dart'
    as _i78;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/device_secret_verifier_config_type.dart'
    as _i19;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/device_type.dart'
    as _i49;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/enable_software_token_mfa_exception.dart'
    as _i86;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/expired_code_exception.dart'
    as _i30;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forbidden_exception.dart'
    as _i5;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forget_device_request.dart'
    as _i38;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forgot_password_request.dart'
    as _i39;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forgot_password_response.dart'
    as _i42;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/get_device_request.dart'
    as _i47;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/get_device_response.dart'
    as _i50;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/get_user_attribute_verification_code_request.dart'
    as _i54;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/get_user_attribute_verification_code_response.dart'
    as _i55;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/get_user_request.dart'
    as _i51;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/get_user_response.dart'
    as _i53;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/global_sign_out_request.dart'
    as _i56;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/global_sign_out_response.dart'
    as _i57;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/initiate_auth_request.dart'
    as _i59;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/initiate_auth_response.dart'
    as _i63;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart'
    as _i6;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_email_role_access_policy_exception.dart'
    as _i44;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_lambda_response_exception.dart'
    as _i22;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart'
    as _i7;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_password_exception.dart'
    as _i13;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_sms_role_access_policy_exception.dart'
    as _i45;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_sms_role_trust_relationship_exception.dart'
    as _i46;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_user_pool_configuration_exception.dart'
    as _i23;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/limit_exceeded_exception.dart'
    as _i14;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/list_devices_request.dart'
    as _i64;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/list_devices_response.dart'
    as _i65;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/mfa_method_not_found_exception.dart'
    as _i70;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/mfa_option_type.dart'
    as _i52;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/new_device_metadata_type.dart'
    as _i61;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart'
    as _i8;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/password_reset_required_exception.dart'
    as _i15;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/resend_confirmation_code_request.dart'
    as _i66;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/resend_confirmation_code_response.dart'
    as _i67;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart'
    as _i9;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/respond_to_auth_challenge_request.dart'
    as _i68;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/respond_to_auth_challenge_response.dart'
    as _i69;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/revoke_token_request.dart'
    as _i71;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/revoke_token_response.dart'
    as _i72;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/sign_up_request.dart'
    as _i76;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/sign_up_response.dart'
    as _i77;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/software_token_mfa_not_found_exception.dart'
    as _i10;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/too_many_failed_attempts_exception.dart'
    as _i31;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart'
    as _i16;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/unauthorized_exception.dart'
    as _i73;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/unexpected_lambda_exception.dart'
    as _i32;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/unsupported_operation_exception.dart'
    as _i74;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/unsupported_token_type_exception.dart'
    as _i75;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/update_device_status_request.dart'
    as _i79;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/update_device_status_response.dart'
    as _i80;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/update_user_attributes_request.dart'
    as _i81;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/update_user_attributes_response.dart'
    as _i82;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart'
    as _i26;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_lambda_validation_exception.dart'
    as _i33;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_confirmed_exception.dart'
    as _i17;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart'
    as _i18;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/username_exists_exception.dart'
    as _i24;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/verify_software_token_request.dart'
    as _i83;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/verify_software_token_response.dart'
    as _i85;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/verify_software_token_response_type.dart'
    as _i84;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/verify_user_attribute_request.dart'
    as _i87;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/verify_user_attribute_response.dart'
    as _i88;
import 'package:built_collection/built_collection.dart' as _i89;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.AssociateSoftwareTokenRequest.serializers,
  ..._i3.AssociateSoftwareTokenResponse.serializers,
  ..._i4.ConcurrentModificationException.serializers,
  ..._i5.ForbiddenException.serializers,
  ..._i6.InternalErrorException.serializers,
  ..._i7.InvalidParameterException.serializers,
  ..._i8.NotAuthorizedException.serializers,
  ..._i9.ResourceNotFoundException.serializers,
  ..._i10.SoftwareTokenMfaNotFoundException.serializers,
  ..._i11.ChangePasswordRequest.serializers,
  ..._i12.ChangePasswordResponse.serializers,
  ..._i13.InvalidPasswordException.serializers,
  ..._i14.LimitExceededException.serializers,
  ..._i15.PasswordResetRequiredException.serializers,
  ..._i16.TooManyRequestsException.serializers,
  ..._i17.UserNotConfirmedException.serializers,
  ..._i18.UserNotFoundException.serializers,
  ..._i19.DeviceSecretVerifierConfigType.serializers,
  ..._i20.ConfirmDeviceRequest.serializers,
  ..._i21.ConfirmDeviceResponse.serializers,
  ..._i22.InvalidLambdaResponseException.serializers,
  ..._i23.InvalidUserPoolConfigurationException.serializers,
  ..._i24.UsernameExistsException.serializers,
  ..._i25.AnalyticsMetadataType.serializers,
  ..._i26.UserContextDataType.serializers,
  ..._i27.ConfirmForgotPasswordRequest.serializers,
  ..._i28.ConfirmForgotPasswordResponse.serializers,
  ..._i29.CodeMismatchException.serializers,
  ..._i30.ExpiredCodeException.serializers,
  ..._i31.TooManyFailedAttemptsException.serializers,
  ..._i32.UnexpectedLambdaException.serializers,
  ..._i33.UserLambdaValidationException.serializers,
  ..._i34.ConfirmSignUpRequest.serializers,
  ..._i35.ConfirmSignUpResponse.serializers,
  ..._i36.AliasExistsException.serializers,
  ..._i37.DeleteUserRequest.serializers,
  ..._i38.ForgetDeviceRequest.serializers,
  ..._i39.ForgotPasswordRequest.serializers,
  ..._i40.DeliveryMediumType.serializers,
  ..._i41.CodeDeliveryDetailsType.serializers,
  ..._i42.ForgotPasswordResponse.serializers,
  ..._i43.CodeDeliveryFailureException.serializers,
  ..._i44.InvalidEmailRoleAccessPolicyException.serializers,
  ..._i45.InvalidSmsRoleAccessPolicyException.serializers,
  ..._i46.InvalidSmsRoleTrustRelationshipException.serializers,
  ..._i47.GetDeviceRequest.serializers,
  ..._i48.AttributeType.serializers,
  ..._i49.DeviceType.serializers,
  ..._i50.GetDeviceResponse.serializers,
  ..._i51.GetUserRequest.serializers,
  ..._i52.MfaOptionType.serializers,
  ..._i53.GetUserResponse.serializers,
  ..._i54.GetUserAttributeVerificationCodeRequest.serializers,
  ..._i55.GetUserAttributeVerificationCodeResponse.serializers,
  ..._i56.GlobalSignOutRequest.serializers,
  ..._i57.GlobalSignOutResponse.serializers,
  ..._i58.AuthFlowType.serializers,
  ..._i59.InitiateAuthRequest.serializers,
  ..._i60.ChallengeNameType.serializers,
  ..._i61.NewDeviceMetadataType.serializers,
  ..._i62.AuthenticationResultType.serializers,
  ..._i63.InitiateAuthResponse.serializers,
  ..._i64.ListDevicesRequest.serializers,
  ..._i65.ListDevicesResponse.serializers,
  ..._i66.ResendConfirmationCodeRequest.serializers,
  ..._i67.ResendConfirmationCodeResponse.serializers,
  ..._i68.RespondToAuthChallengeRequest.serializers,
  ..._i69.RespondToAuthChallengeResponse.serializers,
  ..._i70.MfaMethodNotFoundException.serializers,
  ..._i71.RevokeTokenRequest.serializers,
  ..._i72.RevokeTokenResponse.serializers,
  ..._i73.UnauthorizedException.serializers,
  ..._i74.UnsupportedOperationException.serializers,
  ..._i75.UnsupportedTokenTypeException.serializers,
  ..._i76.SignUpRequest.serializers,
  ..._i77.SignUpResponse.serializers,
  ..._i78.DeviceRememberedStatusType.serializers,
  ..._i79.UpdateDeviceStatusRequest.serializers,
  ..._i80.UpdateDeviceStatusResponse.serializers,
  ..._i81.UpdateUserAttributesRequest.serializers,
  ..._i82.UpdateUserAttributesResponse.serializers,
  ..._i83.VerifySoftwareTokenRequest.serializers,
  ..._i84.VerifySoftwareTokenResponseType.serializers,
  ..._i85.VerifySoftwareTokenResponse.serializers,
  ..._i86.EnableSoftwareTokenMfaException.serializers,
  ..._i87.VerifyUserAttributeRequest.serializers,
  ..._i88.VerifyUserAttributeResponse.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i89.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i89.MapBuilder<String, String>.new,
  const FullType(
    _i89.BuiltList,
    [FullType(_i48.AttributeType)],
  ): _i89.ListBuilder<_i48.AttributeType>.new,
  const FullType(
    _i89.BuiltList,
    [FullType(_i52.MfaOptionType)],
  ): _i89.ListBuilder<_i52.MfaOptionType>.new,
  const FullType(
    _i89.BuiltList,
    [FullType(String)],
  ): _i89.ListBuilder<String>.new,
  const FullType(
    _i89.BuiltList,
    [FullType(_i49.DeviceType)],
  ): _i89.ListBuilder<_i49.DeviceType>.new,
  const FullType(
    _i89.BuiltList,
    [FullType(_i41.CodeDeliveryDetailsType)],
  ): _i89.ListBuilder<_i41.CodeDeliveryDetailsType>.new,
};
